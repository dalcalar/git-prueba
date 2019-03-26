 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_9229a IN PUM9229A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtIp, vnTi, voP1, coP1, vdEs, vtIt, vlEt, clEt,  ;
        clE1, cdLe
 PUBLIC vnEm, vtB1, vtB2, vfBi, vfB1, vcBi, vcB1, vlIn, vpAg, ckEy
 STORE SPACE(02) TO vtIp, vlEt, clEt, clE1, voP1, coP1
 STORE SPACE(50) TO vdEs, vtIt, vnTi, cdLe
 STORE 01 TO viTe, vnEm
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 09 TO muFi
 STORE 115 TO muCo
 SELECT prImer
 GOTO TOP
 IF  .NOT. EOF()
      STORE f9221let TO vlEt
      SELECT tiPos
      DO orD_0000a WITH "9211", "U", "F9211LET", "A"
      IF mkEy=k_Esc
           DO deL_files
           RETURN
      ENDIF
      SEEK vlEt
      DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
      IF mkEy=k_Esc
           DO deL_files
           RETURN
      ENDIF
      IF  .NOT. EOF()
           STORE f9211tip TO vtIp
           STORE f9211nti TO vnTi
      ENDIF
 ELSE
      SELECT tiPos
      SET FILTER TO LEN(ALLTRIM(f9211let))<>0
      GOTO TOP
      IF  .NOT. BOF() .AND.  .NOT. EOF()
           STORE f9211tip TO vtIp
           STORE f9211nti TO vnTi
           STORE f9211let TO vlEt
      ENDIF
      SET FILTER TO
      GOTO TOP
 ENDIF
 SELECT prImer
 SET READBORDER ON
 DO p00_9221a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9221a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9221a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SET FILTER TO f9221let=vlEt
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SET FILTER TO
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9221", "U", "F9221DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB2 REST
                DO p1_0000a
                SET CONFIRM OFF
                SET FILTER TO
                DO orD_0000a WITH "9221", "U", "F9221OP1", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9221let TO vlEt
                     STORE f9221op1 TO voP1
                     SELECT tiPos
                     DO orD_0000a WITH "9211", "U", "F9211LET", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK vlEt
                     DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF  .NOT. EOF()
                          STORE f9211tip TO vtIp
                          STORE f9211nti TO vnTi
                     ELSE
                          STORE SPACE(02) TO vtIp
                          STORE SPACE(50) TO vnTi
                     ENDIF
                     SELECT prImer
                     STORE k_Enter TO mkEy
                     DO ntI_9221a IN PUM9221A WITH "1"
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9221a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9221a WITH "1"
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
                     DO orD_0000a WITH "9221", "U", "F9221DES", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9221a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     SELECT prImer
                     DO orD_0000a WITH "9221", "U", "F9221OP1", "A"
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
                     SEEK vlEt+ALLTRIM(voP1)+"*"
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9221a
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
                     CASE f9221let+ALLTRIM(f9221op1)+"*"=vlEt+ALLTRIM(voP1)+"*"
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9221a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9221a
                          DO ntI_9221a IN PUM9221A WITH "1"
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9221let+ALLTRIM(f9221op1)+"*"=vlEt+ALLTRIM(voP1)+"*"
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9221a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9221a
                          DO ntI_9221a IN PUM9221A WITH "1"
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     IF vlEt+ALLTRIM(voP1)+"*"=f9221let+ALLTRIM(f9221op1)+"*"
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9221let+ALLTRIM(f9221op1)+"*"=vlEt+ALLTRIM(voP1)+"*"
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9221a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9221a
                          DO ntI_9221a IN PUM9221A WITH "1"
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9221let+ ;
                    ALLTRIM(f9221op1)+"*">=vlEt+ALLTRIM(voP1)+"*"
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f9221let+ALLTRIM(f9221op1)+"*"=vlEt+ALLTRIM(voP1)+"*"
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9221a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9221a
                          DO ntI_9221a IN PUM9221A WITH "1"
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     IF viTe=3
                          DO grA_9221a
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
                     DO grA_9221a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vlEt+ALLTRIM(voP1)+"*"
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
                     @mMF2,mMC2+20 Say "ES DE 2 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR VACÍO..."         Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+09 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+09 Say "CAMPO DE 50 CARACTERES ALFANUMÉRICOS, NO PUEDE ESTAR EN BLANCO..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+20 Get  vOP1 Font "&mLetRom",12 Style "BQ" Pict "!!" Size 1,3.2 Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+33 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
           CASE viTe=3
                @mFI0+5.1,mCO0+33 Edit vTIT Font "&mLetAri",9  Style "NQ" Size 1,74,50
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
      CASE LEN(ALLTRIM(vlEt))=0
           STORE "Letra de Tipo de Producto no puede estar vacío..." TO mmSj
      CASE LEN(ALLTRIM(vnTi))=0
           STORE "Tipo de Producto no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(voP1))=0
           STORE "Código no puede estar vacío..." TO mmSj
      CASE viTe=1
           SEEK vlEt+ALLTRIM(voP1)+"*"
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vdEs, vtIt
                STORE 1 TO vnEm
           ELSE
                STORE mkEy TO ckEy
                DO muE_9221a
                STORE ckEy TO mkEy
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           ENDIF
           IF vlEt+ALLTRIM(voP1)+"*"<>clEt+ALLTRIM(coP1)+"*"
                DO diS_9221a
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
PROCEDURE Mue_9221a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9221let TO vlEt
 STORE f9221op1 TO voP1
 STORE f9221des TO vdEs
 STORE f9221tit TO vtIt
 STORE f9221nem TO vnEm
 SELECT tiPos
 STORE 99 TO mkEy
 DO orD_0000a WITH "9211", "U", "F9211LET", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vlEt
 DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF  .NOT. EOF()
      STORE f9211tip TO vtIp
      STORE f9211nti TO vnTi
 ELSE
      STORE SPACE(02) TO vtIp
      STORE SPACE(50) TO vnTi
 ENDIF
 SELECT prImer
ENDPROC
*
PROCEDURE Dis_9221a
 DO coLbln
 @mFI0+3.5,mCO0+33.1 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+5.1,mCO0+33.1 Say vTIT Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+6.9,mCO0+40.0 Get vNEM Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vNEM
 READ TIMEOUT 0.01
 STORE vlEt TO clEt
 STORE voP1 TO coP1
ENDPROC
*
PROCEDURE Gra_9221a
 DO grAbar WITH "1"
 SEEK vlEt+ALLTRIM(voP1)+"*"
 IF EOF()
      DO nuEvo_rg
      REPLACE f9221let WITH vlEt
      REPLACE f9221op1 WITH voP1
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vlEt+ALLTRIM(voP1)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9221des WITH ALLTRIM(vdEs)
 REPLACE f9221tit WITH ALLTRIM(vtIt)
 REPLACE f9221nem WITH vnEm
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9221a
 SEEK vlEt+ALLTRIM(voP1)+"*"
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vlEt+ALLTRIM(voP1)+"*"
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9221let WITH SPACE(02)
 REPLACE f9221op1 WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tip_9221a
 PARAMETER ptPo
 = INKEY(0.01)
 SELECT tiPos
 SET FILTER TO LEN(ALLTRIM(f9211let))<>0
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Productos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9211", "U", "F9211NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB1 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9211let TO vlEt
      STORE f9211tip TO vtIp
      STORE f9211nti TO vnTi
      DO CASE
           CASE ptPo="1"
                DO ntI_9221a IN PUM9221A WITH "1"
           CASE ptPo="2"
                DO ntI_9222a IN PUM9221A WITH "1"
           CASE ptPo="3"
                DO ntI_9223a IN PUM9221A WITH "1"
           CASE ptPo="4"
                DO ntI_9224a IN PUM9221A WITH "1"
           CASE ptPo="5"
                DO ntI_9225a IN PUM9221A WITH "1"
           CASE ptPo="6"
                DO ntI_9228a IN PUM9221A WITH "1"
           CASE ptPo="7"
                DO ntI_9229a IN PUM9221A WITH "1"
      ENDCASE
      STORE SPACE(02) TO voP1, voP2, voP3, voP4, voP5, voP6
      STORE SPACE(50) TO vnO1, vnO2, vnO3, vnO4, vnO5, vnO6, ctIt
      SELECT prImer
      SEEK vlEt
      IF  .NOT. EOF()
           STORE f9221op1 TO voP1
           STORE f9221des TO vnO1
           STORE f9221tit TO ctIt
           IF ptPo>"2"
                SELECT seGundo
                SEEK vlEt+ALLTRIM(voP1)+"*"
                IF  .NOT. EOF()
                     STORE f9222op2 TO voP2
                     STORE f9222des TO vnO2
                     STORE f9222tit TO ctIt
                     IF ptPo>"3"
                          SELECT teRcer
                          SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
                          IF  .NOT. EOF()
                               STORE f9223op3 TO voP3
                               STORE f9223des TO vnO3
                               STORE f9223tit TO ctIt
                               IF ptPo>"4"
                                    SELECT cuArto
                                    SEEK vlEt+ALLTRIM(voP1)+"*"+ ;
                                     ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
                                    IF  .NOT. EOF()
                                         STORE f9224op4 TO voP4
                                         STORE f9224des TO vnO4
                                         STORE f9224tit TO ctIt
                                         IF ptPo>"5"
                                              SELECT quInto
                                              SEEK vlEt+ALLTRIM(voP1)+"*"+ ;
                                               ALLTRIM(voP2)+"*"+ ;
                                               ALLTRIM(voP3)+"*"+ ;
                                               ALLTRIM(voP4)+"*"
                                              IF  .NOT. EOF()
                                                   STORE f9225op5 TO voP5
                                                   STORE f9225des TO vnO5
                                                   STORE f9225tit TO ctIt
                                                   IF ptPo>"6"
                                                        SELECT seXto
                                                        SEEK vlEt+ ;
                                                         ALLTRIM(voP1)+ ;
                                                         "*"+ ;
                                                         ALLTRIM(voP2)+ ;
                                                         "*"+ ;
                                                         ALLTRIM(voP3)+ ;
                                                         "*"+ ;
                                                         ALLTRIM(voP4)+ ;
                                                         "*"+ALLTRIM(voP5)+"*"
                                                        IF  .NOT. EOF()
                                                             STORE  ;
                                                              f9228op6 TO voP6
                                                             STORE  ;
                                                              f9228des TO vnO6
                                                             STORE  ;
                                                              f9228tit TO ctIt
                                                        ENDIF
                                                   ENDIF
                                              ENDIF
                                         ENDIF
                                    ENDIF
                               ENDIF
                          ENDIF
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
      DO CASE
           CASE ptPo="2"
                DO ntI_9222a IN PUM9221A WITH "2"
           CASE ptPo="3"
                DO ntI_9223a IN PUM9221A WITH "3"
           CASE ptPo="4"
                DO ntI_9224a IN PUM9221A WITH "4"
           CASE ptPo="5"
                DO ntI_9225a IN PUM9221A WITH "5"
           CASE ptPo="6"
                DO ntI_9228a IN PUM9221A WITH "6"
           CASE ptPo="7"
                DO ntI_9229a IN PUM9221A WITH "7"
      ENDCASE
      SELECT tiPos
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
ENDPROC
*
PROCEDURE Nti_9221a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-3.4,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           DO coLbln
           @mFI0+0.4,mCO0+20 Say vOP1 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
      CASE pvIs="2"
 ENDCASE
ENDPROC
*
PROCEDURE Nti_9222a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-4.4,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
      CASE pvIs="2"
           @mFI0-2.9,mCO0+25 Say vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0+0.4,mCO0+40 Say cTIT Font "&mLetRom",12 Style "BQ" Size 1,25  Pict "@S27" Color Scheme 4
 ENDCASE
 DO coLbln
 @mFI0+0.4,mCO0+20 Say vOP2 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
ENDPROC
*
PROCEDURE Nti_9223a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-5.9,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
      CASE pvIs="2"
           @mFI0-4.4,mCO0+25 Say vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-2.9,mCO0+01 Say cTT1 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-2.9,mCO0+25 Say vNO2 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0+0.4,mCO0+40 Say cTIT Font "&mLetRom",12 Style "BQ" Size 1,25  Pict "@S27" Color Scheme 4
 ENDCASE
 DO coLbln
 @mFI0+0.4,mCO0+20 Say vOP3 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
ENDPROC
*
PROCEDURE Nti_9224a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-7.4,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
      CASE pvIs="2"
           @mFI0-5.9,mCO0+25 Say vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-4.4,mCO0+01 Say cTT1 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-4.4,mCO0+25 Say vNO2 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-2.9,mCO0+01 Say cTT2 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-2.9,mCO0+25 Say vNO3 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0+0.4,mCO0+40 Say cTIT Font "&mLetRom",12 Style "BQ" Size 1,25  Pict "@S27" Color Scheme 4
 ENDCASE
 DO coLbln
 @mFI0+0.4,mCO0+20 Say vOP4 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
ENDPROC
*
PROCEDURE Nti_9225a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-8.9,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
      CASE pvIs="2"
           @mFI0-7.4,mCO0+25 Say vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-5.9,mCO0+01 Say cTT1 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-5.9,mCO0+25 Say vNO2 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-4.4,mCO0+01 Say cTT2 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-4.4,mCO0+25 Say vNO3 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-2.9,mCO0+01 Say cTT3 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-2.9,mCO0+25 Say vNO4 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0+0.4,mCO0+40 Say cTIT Font "&mLetRom",12 Style "BQ" Size 1,25  Pict "@S27" Color Scheme 4
 ENDCASE
 DO coLbln
 @mFI0+0.4,mCO0+20 Say vOP5 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
ENDPROC
*
PROCEDURE Nti_9228a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-10.4,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
      CASE pvIs="2"
           @mFI0-08.9,mCO0+25 Say vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-07.4,mCO0+01 Say cTT1 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-07.4,mCO0+25 Say vNO2 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-05.9,mCO0+01 Say cTT2 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-05.9,mCO0+25 Say vNO3 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-04.4,mCO0+01 Say cTT3 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-04.4,mCO0+25 Say vNO4 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-02.9,mCO0+01 Say cTT4 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-02.9,mCO0+25 Say vNO5 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0+00.4,mCO0+40 Say cTIT Font "&mLetRom",12 Style "BQ" Size 1,25  Pict "@S27" Color Scheme 4
 ENDCASE
 DO coLbln
 @mFI0+00.4,mCO0+20 Say vOP6 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
ENDPROC
*
PROCEDURE Nti_9229a
 PARAMETER pvIs
 DO CASE
      CASE pvIs="1"
           @mFI0-11.9,mCO0+25 Say vNTI Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
      CASE pvIs="2"
           @mFI0-10.4,mCO0+25 Say vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-08.9,mCO0+01 Say cTT1 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-08.9,mCO0+25 Say vNO2 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-07.4,mCO0+01 Say cTT2 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-07.4,mCO0+25 Say vNO3 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-05.9,mCO0+01 Say cTT3 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-05.9,mCO0+25 Say vNO4 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-04.4,mCO0+01 Say cTT4 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-04.4,mCO0+25 Say vNO5 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0-02.9,mCO0+01 Say cTT5 Font "&mLetAri",9  Style "NQ" Size 1,21  Pict "@S23" Color Scheme 7
           @mFI0-02.9,mCO0+25 Say vNO6 Font "&mLetAri",9  Style "NQ" Size 1,74  Pict "@S50" Color Scheme 7
           @mFI0+00.4,mCO0+40 Say cTIT Font "&mLetRom",12 Style "BQ" Size 1,25  Pict "@S27" Color Scheme 4
 ENDCASE
 DO coLbln
 @mFI0+00.4,mCO0+20 Say vOP7 Font "&mLetRom",12 Style "BQ" Size 1,3.2 Pict "!!"
ENDPROC
*
PROCEDURE Op1_9221a
 PARAMETER pvSt
 = INKEY(0.01)
 SELECT prImer
 SET FILTER TO f9221let=vlEt
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Primer Caracter registrado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      SET FILTER TO
      RETURN
 ENDIF
 SEEK vlEt+ALLTRIM(voP1)+"*"
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9221", "U", "F9221DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK vlEt+UPPER(vnO1)
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB2 REST
 DO p1_0000a
 SET CONFIRM OFF
 IF mkEy=k_Enter
      STORE f9221op1 TO voP1
      STORE f9221des TO vnO1
      STORE f9221tit TO ctIt
      DO CASE
           CASE pvSt="2"
                DO ntI_9222a IN PUM9221A WITH "2"
           CASE pvSt="3"
                DO ntI_9223a IN PUM9221A WITH "2"
           CASE pvSt="4"
                DO ntI_9224a IN PUM9221A WITH "2"
           CASE pvSt="5"
                DO ntI_9225a IN PUM9221A WITH "2"
           CASE pvSt="6"
                DO ntI_9228a IN PUM9221A WITH "2"
           CASE pvSt="7"
                DO ntI_9229a IN PUM9221A WITH "2"
      ENDCASE
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9221", "U", "F9221OP1", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Op2_9221a
 PARAMETER pvSt
 = INKEY(0.01)
 SELECT seGundo
 SET FILTER TO f9222let+ALLTRIM(f9222op1)+"*"=vlEt+ALLTRIM(voP1)+"*"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Segundo Caracter registrado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      SET FILTER TO
      RETURN
 ENDIF
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
 DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9222", "U", "F9222DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK vlEt+ALLTRIM(voP1)+"*"+UPPER(vnO2)
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB3 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9222op2 TO voP2
      STORE f9222des TO vnO2
      STORE f9222tit TO ctIt
      DO CASE
           CASE pvSt="3"
                DO ntI_9223a IN PUM9221A WITH "2"
           CASE pvSt="4"
                DO ntI_9224a IN PUM9221A WITH "2"
           CASE pvSt="5"
                DO ntI_9225a IN PUM9221A WITH "2"
           CASE pvSt="6"
                DO ntI_9228a IN PUM9221A WITH "2"
           CASE pvSt="7"
                DO ntI_9229a IN PUM9221A WITH "2"
      ENDCASE
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9222", "U", "F9222OP2", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
ENDPROC
*
PROCEDURE Op3_9221a
 PARAMETER pvSt
 = INKEY(0.01)
 SELECT teRcer
 SET FILTER TO f9223let+ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tercer Caracter registrado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      SET FILTER TO
      RETURN
 ENDIF
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
 DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9223", "U", "F9223DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+UPPER(vnO3)
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB4 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9223op3 TO voP3
      STORE f9223des TO vnO3
      STORE f9223tit TO ctIt
      DO CASE
           CASE pvSt="4"
                DO ntI_9224a IN PUM9221A WITH "2"
           CASE pvSt="5"
                DO ntI_9225a IN PUM9221A WITH "2"
           CASE pvSt="6"
                DO ntI_9228a IN PUM9221A WITH "2"
           CASE pvSt="7"
                DO ntI_9229a IN PUM9221A WITH "2"
      ENDCASE
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9223", "U", "F9223OP3", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
ENDPROC
*
PROCEDURE Op4_9221a
 PARAMETER pvSt
 = INKEY(0.01)
 SELECT cuArto
 SET FILTER TO f9224let+ALLTRIM(f9224op1)+"*"+ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Cuarto Caracter registrado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      SET FILTER TO
      RETURN
 ENDIF
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9224", "U", "F9224DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+UPPER(vnO4)
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB5 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9224op4 TO voP4
      STORE f9224des TO vnO4
      STORE f9224tit TO ctIt
      DO CASE
           CASE pvSt="5"
                DO ntI_9225a IN PUM9221A WITH "2"
           CASE pvSt="6"
                DO ntI_9228a IN PUM9221A WITH "2"
           CASE pvSt="7"
                DO ntI_9229a IN PUM9221A WITH "2"
      ENDCASE
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9224", "U", "F9224OP4", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
ENDPROC
*
PROCEDURE Op5_9221a
 PARAMETER pvSt
 = INKEY(0.01)
 SELECT quInto
 SET FILTER TO f9225let+ALLTRIM(f9225op1)+"*"+ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ALLTRIM(f9225op4)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Quinto Caracter registrado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      SET FILTER TO
      RETURN
 ENDIF
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
 DO prEsiona WITH "2", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9225", "U", "F9225DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+UPPER(vnO5)
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB6 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9225op5 TO voP5
      STORE f9225des TO vnO5
      STORE f9225tit TO ctIt
      DO CASE
           CASE pvSt="6"
                DO ntI_9228a IN PUM9221A WITH "2"
           CASE pvSt="7"
                DO ntI_9229a IN PUM9221A WITH "2"
      ENDCASE
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9225", "U", "F9225OP5", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
ENDPROC
*
PROCEDURE Op6_9221a
 PARAMETER pvSt
 = INKEY(0.01)
 SELECT seXto
 SET FILTER TO f9228let+ALLTRIM(f9228op1)+"*"+ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Sexto Caracter registrado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      SET FILTER TO
      RETURN
 ENDIF
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
 DO prEsiona WITH "2", "CONSUL", vfB7, vcB7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9228", "U", "F9228DES", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+UPPER(vnO5)
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB7 REST
 DO p1_0000a
 SET CONFIRM OFF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f9228op6 TO voP6
      STORE f9228des TO vnO6
      STORE f9228tit TO ctIt
      DO ntI_9229a IN PUM9221A WITH "2"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9228", "U", "F9228OP6", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB7, vcB7
ENDPROC
*
PROCEDURE Imp_9221a
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
 DO reP_9221a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9221a
 PRIVATE ptAm
 PRIVATE plEt, pdLe, pcD1, pdC1, ptI1
 STORE 30 TO mcLn
 STORE 60 TO ptAm
 STORE 00 TO vlIn, vpAg
 STORE SPACE(02) TO clE1, cdLe
 SELECT tiPos
 STORE 99 TO mkEy
 DO orD_0000a WITH "9211", "U", "F9211LET", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prImer
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      STORE f9221let TO plEt
      STORE f9221op1 TO poP1
      STORE f9221des TO pdC1
      STORE f9221tit TO ptI1
      STORE " " TO pdLe
      SELECT tiPos
      SEEK plEt
      IF  .NOT. EOF()
           STORE f9211nti TO pdLe
      ENDIF
      SELECT prImer
      IF vpAg=0 .OR. vlIn>mpAg-3 .OR. (plEt<>clE1 .AND. vlIn+3>mpAg-3)
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
                DO cb1_0000a WITH  ;
                   "Codificación Nemotécnica: 1er. Caracter", "PUM9221A"
           ENDIF
           STORE vlIn+1 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           DO coL_pr1
      ENDIF
      IF plEt<>clE1
           STORE plEt TO clE1
           STORE poP1 TO ccO1
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN    Say cDLE           Font "&mLetRom",11 Style "BT"
                @vLIN,mCLN+35 Say "Letra: "+cLE1 Font "&mLetRom",11 Style "BT"
           ENDIF
           STORE vlIn+1.5 TO vlIn
           IF vlIn>mpAg-3
                LOOP
           ENDIF
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+40 Say F9221OP1  Font "&mLetAri",9 Style "NT"
                     @vLIN,mCLN+45 Say F9221DES  Font "&mLetAri",9 Style "NT"
                CASE mpRt="2"
                     @vLIN,mCLN+40 Say F9221OP1  Font "&mLetSwi",9 Style "NT"
                     @vLIN,mCLN+45 Say F9221DES  Font "&mLetSwi",9 Style "NT"
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
PROCEDURE P00_9221a
 PARAMETER ptPo
 PRIVATE puLi, piCl
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-4 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+24.9 TO vcBi
 STORE mfI0-03.45 TO vfB1
 STORE mcO0+99.6 TO vcB1
 STORE mfI0+31.5 TO puLi
 STORE mcO0-00.7 TO piCl
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-2.1,pICL     to pULI,pICL+104.3 Font "&mLetCou",11 Style "NQ" Prompt Field F9211NTI+" : "+F9211TIP+" : "+F9211LET Scroll Color Scheme 10 Footer "TIPOS DE PRODUCTOS"
 Define Popup vTB2 from mFI0+2.0,pICL+1.7 to pULI,pICL+114.3 Font "&mLetCou",11 Style "NQ" Prompt Field Substr(F9221DES,1,47)+" : "+F9221OP1   Scroll Color Scheme 10 Footer "PRIMER CARACTER"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Primer Caracter"
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH mfI0-3.5, mcO0, mfI0-2, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0-3.5,mCO0   Say "Tipo de Producto:"           Font "&mLetRom",11 Style "BT"
 @mFI0+0.4,mCO0+2 Say "CÓDIGO:"                     Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+8 Say "DESCRIPCIÓN"                 Font "&mLetAri",10 Style "NT"
 @mFI0+5.2,mCO0+8 Say "TÍTULO SIGUIENTE"            Font "&mLetAri",10 Style "NT"
 @mFI0+6.9,mCO0+8 Say "Es parte de la descripción:" Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0-3.4,mCO0+25 Edit vNTI                        Font "&mLetAri",9  Style "NQ" Size 1,74,50 Color Scheme 7
 @mFI0+0.4,mCO0+20 Get  vOP1                        Font "&mLetRom",12 Style "BQ" Pict "!!"  Size 1,3.2 Color ,&mColBlN
 @mFI0+3.5,mCO0+33 Edit vDES                        Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.1,mCO0+33 Edit vTIT                        Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+6.9,mCO0+40 Get  vNEM                        Font "&mLetAri",9  Style "NQ" Function "*RHT Si;No" Default vNEM
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
ENDPROC
*
PROCEDURE Clp_9221a
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
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.1  ;
           .AND. mcCc<=vcB1+3.9 .AND. viTe=1
           DO tiP_9221a WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
           SELECT prImer
      CASE mfIl>=mfI0+6.75 .AND. mfIl<=mfI0+7.821 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+39.5 .AND. mcCc<=mcO0+46.1 .AND. vnEm<>1
           STORE 01 TO vnEm
           @mFI0+6.9,mCO0+40 Get vNEM Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vNEM
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.75 .AND. mfIl<=mfI0+7.821 .AND. viTe>01 .AND.  ;
           mcCc>=mcO0+46.1 .AND. mcCc<=mcO0+53.5 .AND. vnEm<>2
           STORE 02 TO vnEm
           @mFI0+6.9,mCO0+40 Get vNEM Font "&mLetAri",9 Style "NQ" Function "*RHT Si;No" Default vNEM
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.321 .AND. mfIl<=mfI0+1.892 .AND. viTe<>1 .AND.  ;
           mcCc>=mcO0+1.9 .AND. mcCc<=mcO0+23.5
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.464 .AND. mfIl<=mfI0+4.607 .AND. viTe<>2 .AND.  ;
           mcCc>=mcO0+7.3 .AND. mcCc<=mcO0+107.3
           STORE 02 TO ciTx
      CASE mfIl>=mfI0+5.107 .AND. mfIl<=mfI0+6.25 .AND. viTe<>3 .AND.  ;
           mcCc>=mcO0+7.3 .AND. mcCc<=mcO0+107.3
           STORE 03 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 DO itX_0000a IN FAC0000A
ENDPROC
*
PROCEDURE Hl1_9221a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar el Primer Caracter por Tipo de Producto en la codifi-"
 @ pfIl+2, 3 SAY "cación nemotécnica."
 STORE pfIl+4 TO pfIl
 DO hl1_0000a IN PUM9110A WITH 1, "Códigos"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE viTe, ciTx, viT1, vtIp, vnTi, voP1, coP1, vdEs, vtIt, vlEt, clEt,  ;
         clE1, cdLe
 RELEASE vnEm, vtB1, vtB2, vfBi, vfB1, vcBi, vcB1, vlIn, vpAg, ckEy
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
