 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias FPago
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9112FPA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vfPa, cfPa, vnFp, vdIa, vtIp, vtB1, vlIn, vpAg,  ;
        vfBi, vcBi
 PUBLIC ctDo, csEr, cdOc
 STORE SPACE(02) TO cfPa
 STORE SPACE(50) TO vnFp
 STORE "00" TO vfPa
 STORE .F. TO vtIp
 STORE 00 TO viT1, vdIa
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 08 TO muFi
 STORE 115 TO muCo
 SET READBORDER ON
 DO p00_9112a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9112a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9112a
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
                SEEK vfPa
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9112", "U", "F9112NFP", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9112", "U", "F9112FPA", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9112fpa TO vfPa
                     @mFI0+0.4,mCO0+20 Say vFPA Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9112a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9112a WITH "1"
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
                     DO orD_0000a WITH "9112", "U", "F9112NFP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9112a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     DO orD_0000a WITH "9112", "U", "F9112FPA", "A"
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
                     SEEK vfPa
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9112a
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
                     CASE f9112fpa=vfPa
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9112a
                          DO diS_9112a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vFPA Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9112fpa=vfPa
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9112a
                          DO diS_9112a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vFPA Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vfPa
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vfPa=f9112fpa
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9112fpa=vfPa
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9112a
                          DO diS_9112a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vFPA Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vfPa
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9112fpa>=vfPa
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9112fpa=vfPa
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9112a
                          DO diS_9112a
                          IF viTe<>1
                               DO coLbln
                               @mFI0+0.4,mCO0+20 Say vFPA Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!"
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=3
                          DO grA_9112a
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
                     DO grA_9112a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vfPa
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
                     @mMF2,mMC2+10 Say "CAMPO DE 2 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."                    Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+10 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+02 Say "CAMPO DE 3 DÍGITOS DE 0 A 999, CON ESTOS DÍAS SE CALCULA LA FECHA DE VENCIMIENTO..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vFPA Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+33 Edit vNFP Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.5,mCO0+33 Get  vDIA Font "&mLetAri",9  Style "NQ" Size 1,5 Pict "999" Color ,&mColBlN
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vfPa))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vfPa)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vfPa="00"
           STORE "Código no puede ser 00...               " TO mmSj
      CASE viTe=1
           SEEK vfPa
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vnFp
                STORE 00 TO vdIa
                STORE .F. TO vtIp
           ELSE
                DO muE_9112a
           ENDIF
           IF vfPa<>cfPa
                DO diS_9112a
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vnFp))=0
           STORE "Descripción no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9112a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9112fpa TO vfPa
 STORE f9112nfp TO vnFp
 STORE f9112dia TO vdIa
 STORE f9112tip TO vtIp
ENDPROC
*
PROCEDURE Dis_9112a
 DO coLbln
 @mFI0+3.5,mCO0+33.1 Say vNFP Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S50"
 @mFI0+5.5,mCO0+33   Say vDIA Font "&mLetAri",9 Style "NQ" Size 1,05 Pict "999"
 @mFI0+5.5,mCO0+50   Get vTIP Font "&mLetAri",9 Style "NQ" Default vTIP Function "*C LETRA" Color ,,,,,,,,RGB(0,0,0,220,213,199)
 READ TIMEOUT 0.01
 STORE vfPa TO cfPa
ENDPROC
*
PROCEDURE Gra_9112a
 DO grAbar WITH "1"
 SEEK vfPa
 IF EOF()
      DO nuEvo_rg
      REPLACE f9112fpa WITH vfPa
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vfPa
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9112nfp WITH ALLTRIM(vnFp)
 REPLACE f9112dia WITH vdIa
 REPLACE f9112tip WITH vtIp
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9112a
 SEEK vfPa
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vfPa
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9112fpa WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9112a
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
 DO reP_9112a
 DO fpR_0000a
ENDPROC
*
PROCEDURE Rep_9112a
 PRIVATE ptAm
 STORE 22 TO mcLn
 STORE 77 TO ptAm
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
           DO cb1_0000a WITH "Formas de Pago", "PUM9112A"
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+102.1 Say "Días" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN+102.1 Say "Días" Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+1.2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN     Say "Cód"         Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+6   Say "Descripción" Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+102 Say "Pago"        Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+109 Say "Letra"       Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN     Say "Cód"         Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+6   Say "Descripción" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+102 Say "Pago"        Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+109 Say "Letra"       Font "&mLetAri",9 Style "NT"
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
                     @vLIN,mCLN+0.9 Say F9112FPA   Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+6.0 Say F9112NFP   Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+105 Say F9112DIA   Font "&mLetAri",9 Style "NT" Pict "999" Size 1,5
                     IF f9112tip
                          @vLIN,mCLN+109 Say "Letra" Font "&mLetAri",9 Style "NT"
                     ENDIF
                CASE mpRt="2"
                     @vLIN,mCLN+0.9 Say F9112FPA   Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+6.0 Say F9112NFP   Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+103 Say F9112DIA   Font "&mLetSwi",9 Style "NT" Pict "999" Size 1,4
                     IF f9112tip
                          @vLIN,mCLN+109 Say "Letra" Font "&mLetSwi",9 Style "NT"
                     ENDIF
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
PROCEDURE P00_9112a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+0.4 TO vfBi
 STORE mcO0+27 TO vcBi
 STORE 00 TO viT1
 Define Popup vTB1 from 4,mCO0+mUCO-84 to mWFI-2,mWCO-2 Font "&mLetCou",13 Style "NQ" Prompt Field F9112NFP+" : "+F9112FPA Scroll Color Scheme 10 Footer "FORMAS DE PAGOS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Formas de Pago"
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
 @mFI0+0.5,mCO0+2  Say "CÓDIGO:"      Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+10 Say "DESCRIPCIÓN"  Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+10 Say "DÍAS DE PAGO" Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vFPA          Font "&mLetRom",12 Style "BQ" Size 1,4.4 Pict "!!" Color ,&mColBlN
 @mFI0+3.5,mCO0+33 Edit vNFP          Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.5,mCO0+33 Get  vDIA          Font "&mLetAri",9  Style "NQ" Size 1,05 Pict "999" Color ,&mColBlN
 @mFI0+5.5,mCO0+50 Get  vTIP          Font "&mLetAri",9  Style "NQ" Default vTIP Function "*C LETRA" Color ,,,,,,,,RGB(0,0,0,220,213,199)
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9112a
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
           mcCc>=mcO0+2.1 .AND. mcCc<=mcO0+25.7
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.535 .AND. mfIl<=mfI0+4.678 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+9.7 .AND. mcCc<=mcO0+107.3
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.464 .AND. mfIl<=mfI0+6.607 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+9.7 .AND. mcCc<=mcO0+38.7
           STORE 03 TO ciTx
      CASE mfIl>=mfI0+5.607 .AND. mfIl<=mfI0+6.464 .AND. mcCc>=mcO0+50.1  ;
           .AND. mcCc<=mcO0+60.9 .AND. viTe>1
           IF vtIp=.T.
                STORE .F. TO vtIp
           ELSE
                STORE .T. TO vtIp
           ENDIF
           @mFI0+5.5,mCO0+50 Get vTIP Font "&mLetAri",9 Style "NQ" Default vTIP Function "*C LETRA" Color ,,,,,,,,RGB(0,0,0,220,213,199)
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
           = INKEY(0.001)
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9112a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este  Mantenimiento es un programa  utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar los Formas de Pago que figurarán en el Sistema. Se"
 @ pfIl+2, 3 SAY "pueden crear Formas de Pago numéricas y alfanuméricas."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vfPa, cfPa, vnFp, vdIa, vtIp, vtB1, vlIn, vpAg,  ;
         vfBi, vcBi
 RELEASE ctDo, csEr, cdOc
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
