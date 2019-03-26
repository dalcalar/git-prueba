 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vdEs, vdIn, vfOt, vtB1, vlIn, vpAg,  ;
        vfBi, vcBi
 PUBLIC vvSb, vvD1, vvD2, vvH1, vvH2, vcSb, vcD1, vcD2, vcH1, vcH2
 STORE SPACE(02) TO ccOd
 STORE SPACE(40) TO vfOt
 STORE SPACE(30) TO vdEs, vdIn
 STORE SPACE(04) TO vvSb, vcSb
 STORE SPACE(12) TO vvD1, vvD2, vvH1, vvH2, vcD1, vcD2, vcH1, vcH2
 STORE "00" TO vcOd
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 120 TO muCo
 STORE 22 TO muFi
 SET READBORDER ON
 DO p00_9216a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9216a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9216a
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
                DO orD_0000a WITH "9216", "U", "F9216DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9216", "U", "F9216COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9216cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9216a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9216a WITH "1"
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
                     DO orD_0000a WITH "9216", "U", "F9216DES", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9216a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9216", "U", "F9216COD", "A"
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
           CASE mkEy=k_Ctrl_end .AND. viTe=13
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<8
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
                               DO deL_9216a
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
                     CASE f9216cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9216a
                          DO diS_9216a
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
                     CASE f9216cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9216a
                          DO diS_9216a
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
                     IF vcOd=f9216cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9216cod=vcOd
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9216a
                          DO diS_9216a
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9216cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9216cod=vcOd
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9216a
                          DO diS_9216a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=13
                               DO grA_9216a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=03
                               STORE 09 TO viTe
                          CASE viTe=08 .OR. viTe=13
                               DO grA_9216a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe>=04 .AND. viTe<=08
                               STORE viTe+5 TO viTe
                          CASE viTe=13
                               DO grA_9216a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe>08
                          STORE viTe-5 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 13 TO ciTx
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
                STORE 13 TO ciTx
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
                     DO grA_9216a
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
           @mMF2,mMC2 Say Space(99) Font "&mLetRom",9 Style "BQ" Size 1,99
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+14.9 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..."  Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+12.2 Say "CAMPO DE 30 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."    Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+12.2 Say "CAMPO DE 40 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe=4 .OR. viTe=9
                     @mMF2,mMC2+12.2 Say "CAMPO DE 04 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
                CASE viTe>4 .AND. viTe<>9
                     @mMF2,mMC2+12.2 Say "CAMPO DE 12 CARACTERES ALFANUMÉRICOS, PUEDE ESTAR VACÍO SI NO SE USA" Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+03.5,mCO0+60 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,54,30
           CASE viTe=3
                @mFI0+05.5,mCO0+60 Edit vFOT Font "&mLetAri",9  Style "NQ" Size 1,54,40
           CASE viTe=4
                @mFI0+11.0,mCO0+32 Edit vVSB Font "&mLetAri",9  Style "NQ" Size 1,06,04
           CASE viTe=5
                @mFI0+13.0,mCO0+32 Edit vVD1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=6
                @mFI0+15.0,mCO0+32 Edit vVD2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=7
                @mFI0+17.0,mCO0+32 Edit vVH1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=8
                @mFI0+19.0,mCO0+32 Edit vVH2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=9
                @mFI0+11.0,mCO0+94 Edit vCSB Font "&mLetAri",9  Style "NQ" Size 1,06,04
           CASE viTe=10
                @mFI0+13.0,mCO0+94 Edit vCH1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=11
                @mFI0+15.0,mCO0+94 Edit vCH2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=12
                @mFI0+17.0,mCO0+94 Edit vCD1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
           CASE viTe=13
                @mFI0+19.0,mCO0+94 Edit vCD2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
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
                STORE SPACE(40) TO vfOt
                STORE SPACE(04) TO vvSb, vcSb
                STORE SPACE(30) TO vdEs, vdIn
                STORE SPACE(12) TO vvD1, vvD2, vvH1, vvH2, vcD1, vcD2,  ;
                      vcH1, vcH2
           ELSE
                DO muE_9216a
           ENDIF
           IF vcOd<>ccOd
                DO diS_9216a
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
PROCEDURE Mue_9216a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9216cod TO vcOd
 STORE f9216des TO vdEs
 STORE f9216din TO vdIn
 STORE f9216fot TO vfOt
 STORE f9216vsb TO vvSb
 STORE f9216csb TO vcSb
 STORE f9216vd1 TO vvD1
 STORE f9216vd2 TO vvD2
 STORE f9216vh1 TO vvH1
 STORE f9216vh2 TO vvH2
 STORE f9216cd1 TO vcD1
 STORE f9216cd2 TO vcD2
 STORE f9216ch1 TO vcH1
 STORE f9216ch2 TO vcH2
ENDPROC
*
PROCEDURE Dis_9216a
 DO coLbln
 @mFI0+03.5,mCO0+60 Say vDES Font "&mLetAri",9  Style "NQ" Size 1,54 Pict "@S30"
 @mFI0+05.5,mCO0+60 Say vFOT Font "&mLetAri",9  Style "NQ" Size 1,54 Pict "@S40"
 @mFI0+11.0,mCO0+32 Say vVSB Font "&mLetAri",9  Style "NQ" Size 1,06 Pict "@S04"
 @mFI0+13.0,mCO0+32 Say vVD1 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+15.0,mCO0+32 Say vVD2 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+17.0,mCO0+32 Say vVH1 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+19.0,mCO0+32 Say vVH2 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+11.0,mCO0+94 Say vCSB Font "&mLetAri",9  Style "NQ" Size 1,06 Pict "@S04"
 @mFI0+13.0,mCO0+94 Say vCH1 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+15.0,mCO0+94 Say vCH2 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+17.0,mCO0+94 Say vCD1 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 @mFI0+19.0,mCO0+94 Say vCD2 Font "&mLetAri",9  Style "NQ" Size 1,20 Pict "@S12"
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9216a
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9216cod WITH vcOd
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
 REPLACE f9216des WITH ALLTRIM(vdEs)
 REPLACE f9216din WITH ALLTRIM(vdIn)
 REPLACE f9216fot WITH ALLTRIM(vfOt)
 REPLACE f9216vsb WITH ALLTRIM(vvSb)
 REPLACE f9216vd1 WITH ALLTRIM(vvD1)
 REPLACE f9216vd2 WITH ALLTRIM(vvD2)
 REPLACE f9216vh1 WITH ALLTRIM(vvH1)
 REPLACE f9216vh2 WITH ALLTRIM(vvH2)
 REPLACE f9216csb WITH ALLTRIM(vcSb)
 REPLACE f9216cd1 WITH ALLTRIM(vcD1)
 REPLACE f9216cd2 WITH ALLTRIM(vcD2)
 REPLACE f9216ch1 WITH ALLTRIM(vcH1)
 REPLACE f9216ch2 WITH ALLTRIM(vcH2)
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9216a
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
 REPLACE f9216cod WITH SPACE(02)
 DELETE
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9216a
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
 DO reP_9216a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9216a
 PRIVATE ptAm
 STORE 32 TO mcLn
 STORE 70 TO ptAm
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
           DO cb1_0000a WITH "Grupos de Productos", "PUM9216A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN   Say "Cód"         Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+7 Say "Descripción" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN   Say "Cód"         Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+7 Say "Descripción" Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+1 Say F9216COD Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+7 Say F9216DES Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN+1 Say F9216COD Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+7 Say F9216DES Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9216a
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
 Define Popup vTB1 from mFI0-12,mCO0+28 to mFI0+32,mCO0+mUCO+19 Font "&mLetCou",13 Style "NQ" Prompt Field F9216DES+" : "+F9216COD Scroll Color Scheme 10 Footer "GRUPOS DE PRODUCTOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Grupos de Productos"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mmC2, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+00.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+00.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0, ;
   0,0,0,0,0)
 @ mfI0+00.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.5,mCO0+02 Say "CÓDIGO:    "                         Font "&mLetRom",13 Style "BT"
 @mFI0+03.5,mCO0+04 Say "DESCRIPCIÓN"                         Font "&mLetAri",10 Style "NT"
 @mFI0+05.5,mCO0+04 Say "UBICACIÓN Y NOMBRE FOTO (.JPG,.BMP)" Font "&mLetAri",10 Style "NT"
 @mFI0+09.0,mCO0+03 Say "VENTAS"                              Font "&mLetAri",10 Style "BT"
 @mFI0+11.0,mCO0+03 Say "SUB-DIARIO"                          Font "&mLetAri",10 Style "NT"
 @mFI0+13.0,mCO0+03 Say "(T) CUENTA DEBE S/."                 Font "&mLetAri",10 Style "NT"
 @mFI0+15.0,mCO0+03 Say "(T) CUENTA DEBE US$"                 Font "&mLetAri",10 Style "NT"
 @mFI0+17.0,mCO0+03 Say "(I) CUENTA HABER-1"                  Font "&mLetAri",10 Style "NT"
 @mFI0+19.0,mCO0+03 Say "(B) CUENTA HABER-2"                  Font "&mLetAri",10 Style "NT"
 @mFI0+09.0,mCO0+63 Say "COMPRAS"                             Font "&mLetAri",10 Style "BT"
 @mFI0+11.0,mCO0+63 Say "SUB-DIARIO"                          Font "&mLetAri",10 Style "NT"
 @mFI0+13.0,mCO0+63 Say "(T) CUENTA HABER S/."                Font "&mLetAri",10 Style "NT"
 @mFI0+15.0,mCO0+63 Say "(T) CUENTA HABER US$"                Font "&mLetAri",10 Style "NT"
 @mFI0+17.0,mCO0+63 Say "(I) CUENTA DEBE-1"                   Font "&mLetAri",10 Style "NT"
 @mFI0+19.0,mCO0+63 Say "(B) CUENTA DEBE-2"                   Font "&mLetAri",10 Style "NT"
 DO coLbln
 SET READBORDER ON
 @mFI0+00.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+03.5,mCO0+60 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,54,30
 @mFI0+05.5,mCO0+60 Edit vFOT Font "&mLetAri",9  Style "NQ" Size 1,54,40
 @mFI0+11.0,mCO0+32 Edit vVSB Font "&mLetAri",9  Style "NQ" Size 1,06,04
 @mFI0+13.0,mCO0+32 Edit vVD1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+15.0,mCO0+32 Edit vVD2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+17.0,mCO0+32 Edit vVH1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+19.0,mCO0+32 Edit vVH2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+11.0,mCO0+94 Edit vCSB Font "&mLetAri",9  Style "NQ" Size 1,06,04
 @mFI0+13.0,mCO0+94 Edit vCH1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+15.0,mCO0+94 Edit vCH2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+17.0,mCO0+94 Edit vCD1 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 @mFI0+19.0,mCO0+94 Edit vCD2 Font "&mLetAri",9  Style "NQ" Size 1,20,12
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9216a
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
      CASE mfIl>=mfI0+0.143 .AND. mfIl<=mfI0+2.214 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.0 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.428 .AND. mfIl<=mfI0+4.643 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+3.8 .AND. mcCc<=mcO0+114.2
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.428 .AND. mfIl<=mfI0+6.571 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+3.8 .AND. mcCc<=mcO0+114.2
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+10.928 .AND. mfIl<=mfI0+12.143 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+38.4
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+12.928 .AND. mfIl<=mfI0+14.143 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 05 TO ciTx
      CASE mfIl>=mfI0+14.928 .AND. mfIl<=mfI0+16.143 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 06 TO ciTx
      CASE mfIl>=mfI0+16.928 .AND. mfIl<=mfI0+18.143 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 07 TO ciTx
      CASE mfIl>=mfI0+18.928 .AND. mfIl<=mfI0+20.143 .AND. viTe<>8 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 08 TO ciTx
      CASE mfIl>=mfI0+10.928 .AND. mfIl<=mfI0+12.143 .AND. viTe<>9 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+38.4
           STORE 09 TO ciTx
      CASE mfIl>=mfI0+12.928 .AND. mfIl<=mfI0+14.143 .AND. viTe<>10 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+14.928 .AND. mfIl<=mfI0+16.143 .AND. viTe<>11 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+16.928 .AND. mfIl<=mfI0+18.143 .AND. viTe<>12 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+18.928 .AND. mfIl<=mfI0+20.143 .AND. viTe<>13 .AND.  ;
           mcCc>=mcO0+3.2 .AND. mcCc<=mcO0+52
           STORE 13 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9216a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento, es un programa Utilitario, en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Grupos de Productos que figurarán en el Sistema."
 @ pfIl+2, 3 SAY "Se pueden crear Grupos del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vdEs, vdIn, vfOt, vtB1, vlIn, vpAg,  ;
         vfBi, vcBi
 RELEASE vvSb, vvD1, vvD2, vvH1, vvH2, vcSb, vcD1, vcD2, vcH1, vcH2
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
