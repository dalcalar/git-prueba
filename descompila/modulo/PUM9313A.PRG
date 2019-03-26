 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 STORE 01 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9313", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cuentas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9313CTA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE muLt+1 TO muLt
 DO seL_0000a WITH muLt
 DO abR_0000a IN PUX0000A WITH "9312", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9312BAN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      DO deL_file1
      STORE "Archivo Utilitario de Bancos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      RETURN
 ENDIF
 SELECT cuEntas
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vbAn, cbAn, cbA1, vnBa, cnBa, vcTa, ccTa, vdEs,  ;
        vmOn, vtB1
 PUBLIC vtB2, vlIn, vpAg, vfBi, vcBi, vfB1, vcB1, caNo, cmEs, cdIa, ctIp,  ;
        ccHe, csEr
 PUBLIC cnUm
 STORE "00" TO vbAn, vcTa
 STORE SPACE(02) TO cbAn, ccTa
 STORE SPACE(50) TO vnBa, vdEs
 STORE 01 TO viTe, vmOn
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 08 TO muFi
 STORE 115.2 TO muCo
 SET READBORDER ON
 DO p00_9313a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9313a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9313a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe=3
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe=1
                SELECT baNcos
                = INKEY(0.01)
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT cuEntas
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU2", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vbAn
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9312", "U", "F9312NBA", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "9312", "U", "F9312BAN", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9312ban TO vbAn
                     STORE f9312nba TO vnBa
                     @mFI0+.4,mCO0+20 Say vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                     SELECT cuEntas
                ENDIF
                DO prEsiona WITH "1", "CONSU2", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT cuEntas
           CASE mkEy=k_F2 .AND. viTe=2
                SELECT cuEntas
                = INKEY(0.01)
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT cuEntas
                     LOOP
                ENDIF
                SEEK vbAn
                IF EOF()
                     STORE "No hay Cuentas registradas en este Banco..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT cuEntas
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO f9313ban=vbAn
                STORE 99 TO mkEy
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB2 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9313cta TO vcTa
                     @mFI0+.4,mCO0+77 Say vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9313a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9313a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_p
                SELECT cuEntas
                GOTO TOP
                IF BOF()
                     STORE "No hay datos por imprimir..." TO mmSj
                ELSE
                     DO q1_0000a
                     DO imP_9313a
                     DO p1_0000a
                ENDIF
                STORE 00 TO viT1
                STORE 01 TO viTe
                STORE 99 TO mkEy
                = INKEY(0.01)
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=3
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>2
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<03
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe=1
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Ctrl_del
                SELECT cuEntas
                GOTO TOP
                IF BOF()
                     STORE "No hay datos que borrar..." TO mmSj
                ELSE
                     SEEK vbAn+vcTa
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9313a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
           CASE mkEy=k_F5
                SELECT cuEntas
                GOTO TOP
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9313ban+f9313cta=vbAn+vcTa
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9313a
                          DO diS_9313a
                          DO coLbln
                          @mFI0+.4,mCO0+20 Say vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          @mFI0+.4,mCO0+77 Say vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDCASE
           CASE mkEy=k_F6
                SELECT cuEntas
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9313ban+f9313cta=vbAn+vcTa
                          STORE "Este es el último código de Cuenta..." TO mmSj
                     OTHERWISE
                          DO muE_9313a
                          DO diS_9313a
                          DO coLbln
                          @mFI0+.4,mCO0+20 Say vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          @mFI0+.4,mCO0+77 Say vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDCASE
           CASE mkEy=k_F7
                SELECT cuEntas
                SET NEAR ON
                SEEK vbAn+vcTa
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF f9313ban+f9313cta=vbAn+vcTa
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9313ban+f9313cta=vbAn+vcTa
                          STORE "Este es el último código de Cuenta..." TO mmSj
                     OTHERWISE
                          DO muE_9313a
                          DO diS_9313a
                          DO coLbln
                          @mFI0+.4,mCO0+20 Say vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          @mFI0+.4,mCO0+77 Say vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDCASE
           CASE mkEy=k_F8
                SELECT cuEntas
                SET NEAR ON
                SEEK vbAn+vcTa
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9313ban+ ;
                    f9313cta>=vbAn+vcTa
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9313ban+f9313cta=vbAn+vcTa
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9313a
                          DO diS_9313a
                          DO coLbln
                          @mFI0+.4,mCO0+20 Say vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                          @mFI0+.4,mCO0+77 Say vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     IF viTe=3
                          DO grA_9313a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE 99 TO mkEy
                     ELSE
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDIF
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=1
                               STORE 02 TO viTe
                               DO veR_0000a
                               IF mkEy<>99
                                    STORE 03 TO viTe
                               ENDIF
                          CASE viTe=3
                               DO grA_9313a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE 1 TO viTe
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
                     DO grA_9313a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vbAn+vcTa
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO CASE
                CASE viTe<03
                     DO prEsiona WITH "4", "BOT_UTI1", mmF1, mmC1
                CASE viTe=3
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
                     @mMF2,mMC2+12 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+12 Say "ES DE 2 DÍGITOS, NO PUEDE SER 00, NO PUEDE TENER ESPACIOS VACÍOS..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+10 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..."   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=2
                @mFI0+0.4,mCO0+77 Get  vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
           CASE viTe=3
                @mFI0+3.5,mCO0+33 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vbAn))=00
           STORE "Código de Banco no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vbAn)<>0
           STORE "Código de Banco no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vbAn="00"
           STORE "Código de Banco no puede ser 00...               " TO mmSj
      CASE viTe=1
           SELECT baNcos
           SEEK vbAn
           IF EOF()
                STORE "Código de Banco no registrado..." TO mmSj
                STORE SPACE(50) TO vnBa
           ELSE
                STORE f9312nba TO vnBa
           ENDIF
           @mFI0+0.4,mCO0+29 Say vNBA Font "&mLetRom",12 Style "NQ" Size 1,24 Pict "@S24" Color Scheme 4
           SELECT cuEntas
      CASE viTe=2 .AND. LEN(ALLTRIM(vcTa))=00
           STORE "Código de Cuenta no puede estar vacío...          " TO mmSj
      CASE viTe=2 .AND. AT(" ", vcTa)<>0
           STORE "Código de Cuenta no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. vcTa="00"
           STORE "Código de Cuenta no puede ser 00...               " TO mmSj
      CASE viTe=2
           SELECT cuEntas
           SEEK vbAn+vcTa
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vdEs
                STORE 1 TO vmOn
           ELSE
                DO muE_9313a
           ENDIF
           IF vbAn+vcTa<>cbAn+ccTa
                DO diS_9313a
           ENDIF
      CASE viTe=3 .AND. LEN(ALLTRIM(vdEs))=0
           STORE "Descripción de la Cuenta no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_9313a
 @mFI0+0.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 01,12 Color Scheme 4
 STORE f9313ban TO vbAn
 STORE f9313cta TO vcTa
 STORE f9313des TO vdEs
 STORE f9313mon TO vmOn
 SELECT baNcos
 SEEK vbAn
 IF EOF()
      STORE SPACE(50) TO vnBa
 ELSE
      STORE f9312nba TO vnBa
 ENDIF
 SELECT cuEntas
ENDPROC
*
PROCEDURE Dis_9313a
 DO coLbln
 @mFI0+0.4,mCO0+20   Say vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2  Pict "99"
 @mFI0+0.4,mCO0+77   Say vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2  Pict "99"
 @mFI0+0.4,mCO0+29   Say vNBA Font "&mLetRom",12 Style "NQ" Size 1,24   Pict "@S24" Color Scheme 4
 @mFI0+3.5,mCO0+33.1 Say vDES Font "&mLetAri",9  Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+5.5,mCO0+33   Get vMON Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 READ TIMEOUT 0.01
 STORE vbAn TO cbAn
 STORE vcTa TO ccTa
ENDPROC
*
PROCEDURE Gra_9313a
 DO grAbar WITH "1"
 SEEK vbAn+vcTa
 IF EOF()
      DO nuEvo_rg
      REPLACE f9313ban WITH vbAn
      REPLACE f9313cta WITH vcTa
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vbAn+vcTa
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9313des WITH ALLTRIM(vdEs)
 REPLACE f9313mon WITH vmOn
 UNLOCK ALL
 FLUSH
 SELECT cuEntas
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9313a
 SEEK vbAn+vcTa
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vbAn+vcTa
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9313ban WITH SPACE(02)
 REPLACE f9313cta WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_9313a
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
 DO reP_9313a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9313a
 PRIVATE ptAm
 STORE 22 TO mcLn
 STORE 80 TO ptAm
 STORE 00 TO vlIn, vpAg
 SELECT cuEntas
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
                DO cb1_0000a WITH "Cuentas de Bancos", "PUM9313A"
           ENDIF
           STORE vlIn+2 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Cód"       Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+7  Say "Banco"     Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+58 Say "Cód"       Font "&mLetAri",9 Style "BT"
                          @vLIN,mCLN+65 Say "No.Cuenta" Font "&mLetAri",9 Style "BT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Cód"       Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+7  Say "Banco"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+58 Say "Cód"       Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+65 Say "No.Cuenta" Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE f9313ban TO cbA1
      SELECT baNcos
      SEEK cbA1
      IF EOF()
           STORE "Banco no registrado" TO cnBa
      ELSE
           STORE f9312nba TO cnBa
      ENDIF
      SELECT cuEntas
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+.9   Say F9313BAN Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+7    Say cNBA     Font "&mLetAri",9 Style "NT" Size 1,30 Pict "@S32"
                     @vLIN,mCLN+58.9 Say F9313CTA Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+65   Say F9313DES Font "&mLetAri",9 Style "NT" Size 1,35 Pict "@S37"
                CASE mpRt="2"
                     @vLIN,mCLN+.9   Say F9313BAN Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+7    Say cNBA     Font "&mLetSwi",9 Style "NT" Size 1,30 Pict "@S32"
                     @vLIN,mCLN+58.9 Say F9313CTA Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+65   Say F9313DES Font "&mLetSwi",9 Style "NT" Size 1,35 Pict "@S37"
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
PROCEDURE P00_9313a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi, vfB1
 STORE mcO0+80.8 TO vcBi
 STORE mcO0+23.8 TO vcB1
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0+1.9,mCO0+mUCO-95.6 to mFI0+27,mCO0+mUCO-.1 Font "&mLetAri",13 Style "NQ" Prompt Field F9312BAN+": "+F9312NBA Scroll Color Scheme 10 Footer "BANCOS"
 Define Popup vTB2 from mFI0+1.9,mCO0+mUCO-95.6 to mFI0+27,mCO0+mUCO-.1 Font "&mLetAri",13 Style "NQ" Prompt Field F9313CTA+": "+F9313DES Scroll Color Scheme 10 Footer "CUENTAS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Cuentas de Bancos"
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
 @ mfI0+0.1, mcO0+01 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+01 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+0.5,mCO0+02.0 Say "CÓDIGO:"     Font "&mLetRom",13 Style "BT"
 @mFI0+0.5,mCO0+59.5 Say "CUENTA:"     Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+12.0 Say "DESCRIPCIÓN" Font "&mLetAri",10 Style "NT"
 @mFI0+5.5,mCO0+12.0 Say "MONEDA"      Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0+0.4,mCO0+20 Get  vBAN Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99" Color ,&mColBlN
 @mFI0+0.4,mCO0+29 Say  vNBA Font "&mLetRom",12 Style "NQ" Size 1,24  Pict "@S24" Color Scheme 4
 @mFI0+0.4,mCO0+77 Get  vCTA Font "&mLetRom",12 Style "BQ" Size 1,2.2 Pict "99"   Color ,&mColBlN
 @mFI0+3.5,mCO0+33 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.5,mCO0+33 Get  vMON Font "&mLetAri",9  Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU2", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
ENDPROC
*
PROCEDURE Clp_9313a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1 .AND. mcCc<= ;
           mmC1+15.40 .AND. viTe>2
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+15.4 .AND.  ;
           mcCc<=mmC1+24.20 .AND. viTe>2
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
      CASE mfIl>=vfB1+mfG1 .AND. mfIl<=vfB1+mfG2 .AND. mcCc>=vcB1+mcG1  ;
           .AND. mcCc<=vcB1+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+5.142 .AND. mfIl<=mfI0+6.214 .AND. viTe>2 .AND.  ;
           mcCc>=mcO0+32.6 .AND. mcCc<=mcO0+39.8 .AND. vmOn<>1
           STORE 1 TO vmOn
           @mFI0+5.5,mCO0+33 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.142 .AND. mfIl<=mfI0+6.214 .AND. viTe>2 .AND.  ;
           mcCc>=mcO0+39.8 .AND. mcCc<=mcO0+49 .AND. vmOn<>2
           STORE 2 TO vmOn
           @mFI0+5.5,mCO0+33 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/.;US$" Size 1,4
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.6
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+58.2 .AND. mcCc<=mcO0+81.4
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+3.392 .AND. mfIl<=mfI0+4.678 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+11.6 .AND. mcCc<=mcO0+107.4
           STORE 03 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9313a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear, "
 @ pfIl+01, 02 SAY  ;
   "modificar y eliminar los Cuentas de Bancos que figurarán en el Sistema."
 @ pfIl+02, 02 SAY "Se pueden crear Cuentas del 01 al 99 por Banco."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+13, 24 SAY ":" STYLE "BT"
 @ pfIl+14, 24 SAY ":" STYLE "BT"
 @ pfIl+15, 24 SAY ":" STYLE "BT"
 @ pfIl+16, 24 SAY ":" STYLE "BT"
 @ pfIl+17, 24 SAY ":" STYLE "BT"
 @ pfIl+18, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 06 SAY "ESC" STYLE "BT"
 @ pfIl+07, 06 SAY "F10" STYLE "BT"
 @ pfIl+08, 06 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=1
           @ pfIl+09, 06 SAY "F2" STYLE "BT"
           @ pfIl+10, 06 SAY "F5" STYLE "BT"
           @ pfIl+11, 06 SAY "F6" STYLE "BT"
           @ pfIl+12, 06 SAY "F7" STYLE "BT"
           @ pfIl+13, 06 SAY "F8" STYLE "BT"
           @ pfIl+14, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+15, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+16, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+17, 06 SAY "CTRL FIN" STYLE "BT"
           @ pfIl+18, 06 SAY "CTRL P" STYLE "BT"
      CASE viTe=2
           @ pfIl+19, 24 SAY ":" STYLE "BT"
           @ pfIl+20, 24 SAY ":" STYLE "BT"
           @ pfIl+09, 06 SAY "F2" STYLE "BT"
           @ pfIl+10, 06 SAY "F5" STYLE "BT"
           @ pfIl+11, 06 SAY "F6" STYLE "BT"
           @ pfIl+12, 06 SAY "F7" STYLE "BT"
           @ pfIl+13, 06 SAY "F8" STYLE "BT"
           @ pfIl+14, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+15, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+16, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+17, 06 SAY "CTRL <-" STYLE "BT"
           @ pfIl+18, 06 SAY "CTRL INICIO" STYLE "BT"
           @ pfIl+19, 06 SAY "CTRL FIN" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL P" STYLE "BT"
      OTHERWISE
           @ pfIl+19, 24 SAY ":" STYLE "BT"
           @ pfIl+20, 24 SAY ":" STYLE "BT"
           @ pfIl+21, 24 SAY ":" STYLE "BT"
           @ pfIl+09, 06 SAY "F5" STYLE "BT"
           @ pfIl+10, 06 SAY "F6" STYLE "BT"
           @ pfIl+11, 06 SAY "F7" STYLE "BT"
           @ pfIl+12, 06 SAY "F8" STYLE "BT"
           @ pfIl+13, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+14, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+15, 06 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+16, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+17, 06 SAY "CTRL INICIO" STYLE "BT"
           @ pfIl+18, 06 SAY "CTRL FIN" STYLE "BT"
           @ pfIl+19, 06 SAY "CTRL SUPR" STYLE "BT"
           @ pfIl+20, 06 SAY "CTRL P" STYLE "BT"
           @ pfIl+21, 06 SAY "TAB" STYLE "BT"
 ENDCASE
 @ pfIl+07, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 26 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+06, 26 SAY "Regresar al Menú Principal"
           @ pfIl+09, 26 SAY "Consulta de los Bancos Registrados"
           @ pfIl+10, 26 SAY "Inicio del Archivo"
           @ pfIl+11, 26 SAY "Final del Archivo"
           @ pfIl+12, 26 SAY "Registro siguiente"
           @ pfIl+13, 26 SAY "Registro anterior"
           @ pfIl+14, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+15, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+16, 26 SAY "Ir al siguiente campo"
           @ pfIl+17, 26 SAY "Ir al último campo"
           @ pfIl+18, 26 SAY "Imprimir Listado"
      CASE viTe=2
           @ pfIl+06, 26 SAY "Regresar al primer campo"
           @ pfIl+09, 26 SAY "Consulta de los Cuentas Registrados"
           @ pfIl+10, 26 SAY "Inicio del Archivo"
           @ pfIl+11, 26 SAY "Final del Archivo"
           @ pfIl+12, 26 SAY "Registro siguiente"
           @ pfIl+13, 26 SAY "Registro anterior"
           @ pfIl+14, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+15, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+16, 26 SAY "Ir al siguiente campo"
           @ pfIl+17, 26 SAY "Ir al campo izquierdo"
           @ pfIl+18, 26 SAY "Ir al primer campo"
           @ pfIl+19, 26 SAY "Ir al último campo"
           @ pfIl+20, 26 SAY "Imprimir Listado"
      OTHERWISE
           @ pfIl+06, 26 SAY "Regresar al primer campo"
           @ pfIl+09, 26 SAY "Inicio del Archivo"
           @ pfIl+10, 26 SAY "Final del Archivo"
           @ pfIl+11, 26 SAY "Registro siguiente"
           @ pfIl+12, 26 SAY "Registro anterior"
           @ pfIl+13, 26 SAY "Ir al siguiente campo, llegando al final graba"
           @ pfIl+14, 26 SAY "Ir al campo inferior, llegando al final graba"
           @ pfIl+15, 26 SAY "Ir al campo superior"
           @ pfIl+16, 26 SAY "Ir al campo derecho, llegando al final graba"
           @ pfIl+17, 26 SAY "Ir al primer campo"
           @ pfIl+18, 26 SAY "Ir al último campo"
           @ pfIl+19, 26 SAY "Borrar registro"
           @ pfIl+20, 26 SAY "Imprimir Listado"
           @ pfIl+21, 26 SAY "Grabar y regresar al 1er.campo"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vbAn, cbAn, cbA1, vnBa, cnBa, vcTa, ccTa, vdEs,  ;
         vmOn, vtB1
 RELEASE vtB2, vlIn, vpAg, vfBi, vcBi, vfB1, vcB1, caNo, cmEs, cdIa, ctIp,  ;
         ccHe, csEr
 RELEASE cnUm
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
