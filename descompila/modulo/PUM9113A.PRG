 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Vendedor
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vcOd, ccOd, vnOm, vcOm, vcM2, vpOr, vtB1, vlIn,  ;
        vpAg, vfBi
 PUBLIC vcBi
 STORE SPACE(02) TO ccOd
 STORE SPACE(50) TO vnOm
 STORE "00" TO vcOd
 STORE 00 TO viT1, vcOm, vcM2, vpOr
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 10 TO muFi
 STORE 115 TO muCo
 SET READBORDER ON
 DO p00_9113a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9113a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9113a
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
                DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9113", "U", "F9113COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9113cod TO vcOd
                     @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9113a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9113a WITH "1"
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
                     DO orD_0000a WITH "9113", "U", "F9113NOM", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9113a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9113", "U", "F9113COD", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Est�s en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=5
                STORE "Est�s en el �ltimo campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay m�s campos arriba...    " TO mmSj
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
                          STORE "C�digo no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "�Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9113a
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
                     CASE f9113cod=vcOd
                          STORE "Este es el primer c�digo... " TO mmSj
                     OTHERWISE
                          DO muE_9113a
                          DO diS_9113a
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
                     CASE f9113cod=vcOd
                          STORE "Este es el �ltimo c�digo... " TO mmSj
                     OTHERWISE
                          DO muE_9113a
                          DO diS_9113a
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
                     IF vcOd=f9113cod
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9113cod=vcOd
                          STORE "Este es el �ltimo c�digo... " TO mmSj
                     OTHERWISE
                          DO muE_9113a
                          DO diS_9113a
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
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9113cod>=vcOd
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9113cod=vcOd
                          STORE "Este es el primer c�digo... " TO mmSj
                     OTHERWISE
                          DO muE_9113a
                          DO diS_9113a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=5
                          DO grA_9113a
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
                     DO grA_9113a
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
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+13 Say "ES DE 2 D�GITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VAC�OS..."   Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+10 Say "CAMPO DE 50 CARACTERES ALFANUM�RICOS, NO PUEDE ESTAR EN BLANCO..."     Font "&mLetRom",9 Style "BQ"
                CASE viTe=3 .OR. viTe=4
                     @mMF2,mMC2+34 Say "CAMPO DE 2 ENTEROS Y 3 DECIMALES..."                                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=5
                     @mMF2,mMC2+11 Say "CAMPO DE 3 ENTEROS, NO PUEDE SER CERO SI EL % ES DIFERENTE DE CERO..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vCOD Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"  Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+33 Edit vNOM Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.5,mCO0+43 Get  vCOM Font "&mLetAri",9  Style "NQ" Size 1,9   Pict "99.999" Color ,&mColBlN
           CASE viTe=4
                @mFI0+7.5,mCO0+43 Get  vCM2 Font "&mLetAri",9  Style "NQ" Size 1,9   Pict "99.999" Color ,&mColBlN
           CASE viTe=5
                @mFI0+7.5,mCO0+93 Get  vPOR Font "&mLetAri",9  Style "NQ" Size 1,5.5 Pict "999"    Color ,&mColBlN
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
           STORE "C�digo no puede estar vac�o...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vcOd)<>0
           STORE "C�digo no puede tener espacios vac�os..." TO mmSj
      CASE viTe=1 .AND. vcOd="00"
           STORE "C�digo no puede ser 00...               " TO mmSj
      CASE viTe=1
           SEEK vcOd
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vnOm
                STORE 00 TO vcOm, vcM2, vpOr
           ELSE
                DO muE_9113a
           ENDIF
           IF vcOd<>ccOd
                DO diS_9113a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre no puede estar vac�o..." TO mmSj
      CASE viTe=5 .AND. vpOr=0 .AND. vcM2<>0
           STORE "No no puede ser cero, si el % de Comisi�n es diferente de cero..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9113a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9113cod TO vcOd
 STORE f9113nom TO vnOm
 STORE f9113com TO vcOm
 STORE f9113cm2 TO vcM2
 STORE f9113por TO vpOr
ENDPROC
*
PROCEDURE Dis_9113a
 DO coLbln
 @mFI0+3.5,mCO0+33.1 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,74.0 Pict "@S50"
 @mFI0+5.5,mCO0+43   Say vCOM Font "&mLetAri",9 Style "NQ" Size 1,09.0 Pict "99.999"
 @mFI0+7.5,mCO0+43   Say vCM2 Font "&mLetAri",9 Style "NQ" Size 1,09.0 Pict "99.999"
 @mFI0+7.5,mCO0+93   Say vPOR Font "&mLetAri",9 Style "NQ" Size 1,05.5 Pict "999"
 READ TIMEOUT 0.01
 STORE vcOd TO ccOd
ENDPROC
*
PROCEDURE Gra_9113a
 DO grAbar WITH "1"
 SEEK vcOd
 IF EOF()
      DO nuEvo_rg
      REPLACE f9113cod WITH vcOd
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
 REPLACE f9113nom WITH ALLTRIM(vnOm)
 REPLACE f9113com WITH vcOm
 REPLACE f9113cm2 WITH vcM2
 REPLACE f9113por WITH vpOr
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9113a
 SEEK vcOd
 IF EOF()
      STORE "C�digo no registrado..." TO mmSj
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
 REPLACE f9113cod WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9113a
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
 DO reP_9113a
 DO fpR_0000a
ENDPROC
*
PROCEDURE Rep_9113a
 PRIVATE ptAm
 DO CASE
      CASE mpRt="1"
           STORE 15 TO mcLn
           STORE 85 TO ptAm
      CASE mpRt="2"
           STORE 15 TO mcLn
           STORE 83 TO ptAm
 ENDCASE
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
                @vLIN,mCLN Say "Vendedores" Font "&mLetAri",13 Style "NT"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN       Say "C�d"     Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+6     Say "Nombres" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+101.0 Say "% Cm1"   Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+111.0 Say "% Cm2"   Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+121.0 Say "% Doc"   Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN       Say "C�d"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+6     Say "Nombres" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+091.5 Say "% Cm1"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+101.5 Say "% Cm2"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+121.5 Say "% Doc"   Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+0.9 Say F9113COD Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+6.0 Say F9113NOM Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+107 Say F9113COM Font "&mLetAri",9 Style "NT" Pict "99.999" Size 1,9
                     @vLIN,mCLN+117 Say F9113CM2 Font "&mLetAri",9 Style "NT" Pict "99.999" Size 1,9
                     @vLIN,mCLN+127 Say F9113POR Font "&mLetAri",9 Style "NT" Pict "99.999" Size 1,9
                CASE mpRt="2"
                     @vLIN,mCLN+0.9 Say F9113COD Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+6.0 Say F9113NOM Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+094 Say F9113COM Font "&mLetSwi",9 Style "NT" Pict "99.999" Size 1,7
                     @vLIN,mCLN+104 Say F9113CM2 Font "&mLetSwi",9 Style "NT" Pict "99.999" Size 1,7
                     @vLIN,mCLN+114 Say F9113POR Font "&mLetSwi",9 Style "NT" Pict "99.999" Size 1,7
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
PROCEDURE P00_9113a
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
 Define Popup vTB1 from 4,mCO0+mUCO-87 to mWFI-2,mWCO-2 Font "&mLetCou",13 Style "NQ" Prompt Field F9113NOM+" : "+F9113COD Scroll Color Scheme 10 Footer "VENDEDORESS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Vendedores"
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
 @mFI0+0.5,mCO0+2  Say "C�DIGO:"                   Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+10 Say "NOMBRES"                   Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+10 Say "% Comisi�n x Doc.Pagado"   Font "&mLetAri",10 Style "NT"
 @mFI0+7.5,mCO0+10 Say "% Comisi�n x Doc.Emitido"  Font "&mLetAri",10 Style "NT"
 @mFI0+7.5,mCO0+63 Say "% a aplicar del Doc.Emit." Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vCOD                       Font "&mLetRom",12 Style "BQ" Size 1,2.2  Pict "99"     Color ,&mColBlN
 @mFI0+3.5,mCO0+33 Edit vNOM                       Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.5,mCO0+43 Get  vCOM                       Font "&mLetAri",9  Style "NQ" Size 1,09   Pict "99.999" Color ,&mColBlN
 @mFI0+7.5,mCO0+43 Get  vCM2                       Font "&mLetAri",9  Style "NQ" Size 1,09   Pict "99.999" Color ,&mColBlN
 @mFI0+7.5,mCO0+93 Get  vPOR                       Font "&mLetAri",9  Style "NQ" Size 1,05.5 Pict "999"    Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9113a
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
      CASE mfIl>=mfI0+3.535 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+9.7 .AND. mcCc<=mcO0+107.3
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.607 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+9.7 .AND. mcCc<=mcO0+52.7
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.607 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+9.7 .AND. mcCc<=mcO0+52.7
           STORE 04 TO ciTx
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.607 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+62.3 .AND. mcCc<=mcO0+99.5
           STORE 05 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9113a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este  Mantenimiento es un programa  utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Vendedores que figurar�n en el Sistema. Se pue-"
 @ pfIl+2, 3 SAY "den crear Vendedores del 01 al 99."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "C�digos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vcOd, ccOd, vnOm, vcOm, vcM2, vpOr, vtB1, vlIn,  ;
         vpAg, vfBi
 RELEASE vcBi
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
