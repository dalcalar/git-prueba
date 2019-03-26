 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9117", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9117COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vdEs, vcOl, vtB1, vlIn, vpAg, vfBi, vcBi
 STORE SPACE(02) TO ccOd
 STORE SPACE(30) TO vcOl
 STORE SPACE(70) TO vdEs
 STORE "00" TO vcOd
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 08 TO muFi
 STORE 112 TO muCo
 SET READBORDER ON
 DO p00_9117a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9117a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9117a
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
                DO orD_0000a WITH "9117", "U", "F9117DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9117", "U", "F9117COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9117cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9117a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9117a WITH "1"
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
                     DO orD_0000a WITH "9117", "U", "F9117DES", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9117a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9117", "U", "F9117COD", "A"
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
           CASE mkEy=k_Ctrl_end .AND. viTe=3
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
                               DO deL_9117a
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
                     CASE f9117cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9117a
                          DO diS_9117a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9117cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9117a
                          DO diS_9117a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vcOd=f9117cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9117cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9117a
                          DO diS_9117a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9117cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9117cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9117a
                          DO diS_9117a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=3
                          DO grA_9117a
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
                STORE 3 TO ciTx
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
                STORE 3 TO ciTx
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
                     DO grA_9117a
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
                     @mMF2,mMC2+11.9 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+08.7 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+08.7 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+27 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,80,70
           CASE viTe=3
                @mFI0+5.5,mCO0+27 Edit vCOL Font "&mLetAri",9  Style "NQ" Size 1,40,30
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
      CASE viTe=1 .AND. vcOd="00"
           STORE "Código no puede ser 00...               " TO mmSj
      CASE viTe=1
           SEEK vcOd
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(30) TO vcOl
                STORE SPACE(70) TO vdEs
           ELSE
                DO muE_9117a
           ENDIF
           IF vcOd<>ccOd
                DO diS_9117a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vcOl))=0
      CASE viTe=3 .AND. LEN(ALLTRIM(vcOl))<>0 .AND. AT(",", vcOl)=0
           STORE "Los colores son números que se separan por 2 comas..."  ;
                 TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vcOl))<>0 .AND. AT(",", vcOl, 2)=0
           STORE "Los colores son números que se separan por 2 comas..."  ;
                 TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vcOl))<>0 .AND. AT(",", vcOl, 3)<>0
           STORE "Los colores son números que se separan sólo por 2 comas..."  ;
                 TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vcOl))<>0
           PRIVATE pnM1, pnM2, pcL1, pcL2, pcL3, psW0, piTe
           STORE AT(",", vcOl, 1) TO pnM1
           STORE AT(",", vcOl, 2) TO pnM2
           STORE SUBSTR(vcOl, 1, pnM1-1) TO pcL1
           STORE SUBSTR(vcOl, pnM1+1, pnM2-pnM1-1) TO pcL2
           STORE SUBSTR(vcOl, pnM2+1, 10) TO pcL3
           STORE ALLTRIM(pcL1) TO pcL1
           STORE ALLTRIM(pcL2) TO pcL2
           STORE ALLTRIM(pcL3) TO pcL3
           DO WHILE .T.
                IF LEN(ALLTRIM(pcL1))>1 .AND. SUBSTR(pcL1, 1, 1)="0"
                     STORE ALLTRIM(SUBSTR(pcL1, 2, 10)) TO pcL1
                ELSE
                     EXIT
                ENDIF
           ENDDO
           DO WHILE .T.
                IF LEN(ALLTRIM(pcL2))>1 .AND. SUBSTR(pcL2, 1, 1)="0"
                     STORE ALLTRIM(SUBSTR(pcL2, 2, 10)) TO pcL2
                ELSE
                     EXIT
                ENDIF
           ENDDO
           DO WHILE .T.
                IF LEN(ALLTRIM(pcL3))>1 .AND. SUBSTR(pcL3, 1, 1)="0"
                     STORE ALLTRIM(SUBSTR(pcL3, 2, 10)) TO pcL3
                ELSE
                     EXIT
                ENDIF
           ENDDO
           STORE 0 TO psW0
           STORE LEN(ALLTRIM(pcL1)) TO pfI1
           STORE LEN(ALLTRIM(pcL2)) TO pfI2
           STORE LEN(ALLTRIM(pcL3)) TO pfI3
           STORE 1 TO piTe
           DO WHILE .T.
                IF piTe>pfI1
                     EXIT
                ENDIF
                IF SUBSTR(pcL1, piTe, 1)>="0" .AND. SUBSTR(pcL1, piTe, 1)<="9"
                ELSE
                     STORE 1 TO psW0
                     EXIT
                ENDIF
                STORE piTe+1 TO piTe
           ENDDO
           IF psW0=0
                STORE 1 TO piTe
                DO WHILE .T.
                     IF piTe>pfI2
                          EXIT
                     ENDIF
                     IF SUBSTR(pcL2, piTe, 1)>="0" .AND. SUBSTR(pcL2,  ;
                        piTe, 1)<="9"
                     ELSE
                          STORE 1 TO psW0
                          EXIT
                     ENDIF
                     STORE piTe+1 TO piTe
                ENDDO
           ENDIF
           IF psW0=0
                STORE 1 TO piTe
                DO WHILE .T.
                     IF piTe>pfI3
                          EXIT
                     ENDIF
                     IF SUBSTR(pcL3, piTe, 1)>="0" .AND. SUBSTR(pcL3,  ;
                        piTe, 1)<="9"
                     ELSE
                          STORE 1 TO psW0
                          EXIT
                     ENDIF
                     STORE piTe+1 TO piTe
                ENDDO
           ENDIF
           IF psW0<>0
                STORE "Los colores son números que se separan sólo por 2 comas..."  ;
                      TO mmSj
           ELSE
                DO coLbln
                STORE ALLTRIM(pcL1+","+pcL2+","+pcL3) TO vcOl
                @mFI0+5.5,mCO0+27 Say vCOL Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S30"
                Set Color to RGB(&vCOL)
                @mFI0+3.5,mCO0+27 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S70"
           ENDIF
           RELEASE pnM1, pnM2, pcL1, pcL2, pcL3, psW0, piTe
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9117a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9117cod TO vcOd
 STORE f9117des TO vdEs
 STORE f9117col TO vcOl
ENDPROC
*
PROCEDURE Dis_9117a
 DO coLbln
 @mFI0+3.5,mCO0+27 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S70"
 @mFI0+5.5,mCO0+27 Say vCOL Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S30"
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9117a
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9117cod WITH vcOd
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
 REPLACE f9117des WITH ALLTRIM(vdEs)
 REPLACE f9117col WITH ALLTRIM(vcOl)
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9117a
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
 REPLACE f9117cod WITH SPACE(02)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9117a
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
 DO reP_9117a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9117a
 PRIVATE ptAm
 STORE 10 TO mcLn
 STORE 91 TO ptAm
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
           DO cb1_0000a WITH "Estados de Servicios", "PUM9117A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Cód"         Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+7  Say "Descripcion" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+97 Say "Color"       Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Cód"         Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+7  Say "Descripcion" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+97 Say "Color"       Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+01 Say F9117COD Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+07 Say F9117DES Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+95 Say Space(5) Font "&mLetAri",9 Style "NT" Size 1,5
                     @vLIN,mCLN+97 Say F9117COL Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN+01 Say F9117COD Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+07 Say F9117DES Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+95 Say Space(5) Font "&mLetSwi",9 Style "NT" Size 1,5
                     @vLIN,mCLN+97 Say F9117COL Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9117a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+23.8 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-15,mCO0+28 to mFI0+29,mCO0+mUCO+20 Font "&mLetCou",13 Style "NQ" Prompt Field F9117DES+" :"+F9117COD Scroll Color Scheme 10 Footer "ESTADOS DE SERVICIOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Estados de Servicios"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1, mmC2+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.5,mCO0+2 Say "CÓDIGO:"     Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+4 Say "DESCRIPCION" Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+4 Say "COLOR RGB"   Font "&mLetAri",10 Style "NT"
 DO coLbln
 SET READBORDER ON
 @mFI0+0.4,mCO0+20 Get  vCOD        Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+3.5,mCO0+27 Edit vDES        Font "&mLetAri",9  Style "NQ" Size 1,80,70
 @mFI0+5.5,mCO0+27 Edit vCOL        Font "&mLetAri",9  Style "NQ" Size 1,40,30
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9117a
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
           mcCc>=mcO0+2.1 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+4.2 .AND. mcCc<=mcO0+90
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.321 .AND. mfIl<=mfI0+6.536 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+4.2 .AND. mcCc<=mcO0+60.2
           STORE 03 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9117a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este  Mantenimiento, es un programa  utilitario, en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Estados de los Servicios que figurarán en el Siste-"
 @ pfIl+2, 3 SAY "ma. Se pueden crear Estados de Servicios del 01 al 99."
 @ pfIl+4, 3 SAY  ;
   "Los colores RGB se pueden sacar de la Tabla del Paint. El modelo a usar"
 @ pfIl+5, 3 SAY "es el siguiente: Ejemplo del Rojo"
 @ pfIl+6, 3 SAY "COLOR RGB: 255,0,0"
 STORE pfIl+8 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vdEs, vcOl, vtB1, vlIn, vpAg, vfBi, vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
