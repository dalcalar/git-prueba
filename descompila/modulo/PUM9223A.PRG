 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 DO abR_9229a IN PUM9229A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTx, viT1, vtIp, vnTi, vlEt, clEt, voP1, coP1, voP2, coP2,  ;
        voP3, coP3
 PUBLIC vnO1, vnO2, vdEs, vtIt, ctIt, ctT1, vtB1, vtB2, vtB3, vtB4, vfBi,  ;
        vfB1, vfB2
 PUBLIC vfB3, vcBi, vcB1, vcB2, vcB3, vlIn, vpAg, ckEy, vfR1, vfR2, vfR3,  ;
        vfR4, vfR5
 STORE SPACE(02) TO vtIp, vlEt, clEt, voP1, coP1, voP2, coP2, voP3, coP3
 STORE SPACE(50) TO vdEs, vtIt, vnTi, vnO1, vnO2, ctIt, ctT1
 STORE 00 TO viT1
 STORE 99 TO mkEy
 STORE 01 TO viTe
 STORE 08 TO muFi
 STORE 115 TO muCo
 SELECT teRcer
 GOTO TOP
 IF  .NOT. EOF()
      STORE f9223let TO vlEt
      STORE f9223op1 TO voP1
      STORE f9223op2 TO voP2
      SELECT tiPos
      STORE 99 TO mkEy
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
      SELECT prImer
      SEEK vlEt+ALLTRIM(voP1)+"*"
      IF  .NOT. EOF()
           STORE f9221des TO vnO1
           STORE f9221tit TO ctT1
      ENDIF
      SELECT seGundo
      SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
      IF  .NOT. EOF()
           STORE f9222des TO vnO2
           STORE f9222tit TO ctIt
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
 SELECT teRcer
 SET READBORDER ON
 DO p00_9223a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9223a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9223a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SET FILTER TO f9223let+ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
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
                DO frA_9223a WITH "1"
                SEEK vfR1
                SET NEAR OFF
                STORE 99 TO mkEy
                DO orD_0000a WITH "9223", "U", "F9223DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB4 REST
                DO p1_0000a
                SET CONFIRM OFF
                SET FILTER TO
                DO orD_0000a WITH "9223", "U", "F9223OP3", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9223let TO vlEt
                     STORE f9223op1 TO voP1
                     STORE f9223op2 TO voP2
                     STORE f9223op3 TO voP3
                     SELECT tiPos
                     STORE 99 TO mkEy
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
                          STORE f9211nti TO vnTi
                     ELSE
                          STORE SPACE(50) TO vnTi
                     ENDIF
                     SELECT prImer
                     SEEK vlEt+ALLTRIM(voP1)+"*"
                     IF  .NOT. EOF()
                          STORE f9221des TO vnO1
                          STORE f9221tit TO ctT1
                     ELSE
                          STORE SPACE(50) TO vnO1, ctT1
                     ENDIF
                     SELECT seGundo
                     SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
                     IF  .NOT. EOF()
                          STORE f9222des TO vnO2
                          STORE f9222tit TO ctIt
                     ELSE
                          STORE SPACE(50) TO vnO2, ctIt
                     ENDIF
                     SELECT teRcer
                     DO ntI_9223a IN PUM9221A WITH "1"
                     DO ntI_9223a IN PUM9221A WITH "2"
                     STORE k_Enter TO mkEy
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9223a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9223a WITH "1"
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
                     DO orD_0000a WITH "9223", "U", "F9223DES", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     GOTO TOP
                     DO q1_0000a
                     DO imP_9223a
                     DO p1_0000a
                     STORE 99 TO mkEy
                     SELECT teRcer
                     DO orD_0000a WITH "9223", "U", "F9223OP3", "A"
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
                     DO frA_9223a WITH "1"
                     SEEK vfRa
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc$"Ss"
                               DO deL_9223a
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
                DO frA_9223a WITH "1"
                DO frA_9223a WITH "2"
                DO CASE
                     CASE BOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE vfR1=vfR2
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9223a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9223a
                          DO ntI_9223a IN PUM9221A WITH "1"
                          DO ntI_9223a IN PUM9221A WITH "2"
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO frA_9223a WITH "1"
                DO frA_9223a WITH "2"
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE vfR1=vfR2
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9223a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9223a
                          DO ntI_9223a IN PUM9221A WITH "1"
                          DO ntI_9223a IN PUM9221A WITH "2"
                ENDCASE
           CASE mkEy=k_F7
                DO frA_9223a WITH "1"
                SET NEAR ON
                SEEK vfR1
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     DO frA_9223a WITH "2"
                     IF vfR1=vfR2
                          SKIP
                          IF EOF()
                               GOTO BOTTOM
                          ENDIF
                     ENDIF
                ENDIF
                DO frA_9223a WITH "2"
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE vfR1=vfR2
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_9223a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9223a
                          DO ntI_9223a IN PUM9221A WITH "1"
                          DO ntI_9223a IN PUM9221A WITH "2"
                ENDCASE
           CASE mkEy=k_F8
                DO frA_9223a WITH "1"
                SET NEAR ON
                SEEK vfR1
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f9223let+ ;
                    ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"+ ;
                    ALLTRIM(f9223op3)+"*">=vlEt+ALLTRIM(voP1)+"*"+ ;
                    ALLTRIM(voP2)+"*"+voP3
                     SKIP -1
                     IF BOF()
                          GOTO TOP
                     ENDIF
                ENDIF
                DO frA_9223a WITH "2"
                DO CASE
                     CASE EOF() .OR. EOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE vfR1=vfR2
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_9223a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO diS_9223a
                          DO ntI_9223a IN PUM9221A WITH "1"
                          DO ntI_9223a IN PUM9221A WITH "2"
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     IF viTe=3
                          DO grA_9223a
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
                     DO grA_9223a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO frA_9223a WITH "1"
           SEEK vfR1
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
                @mFI0+0.4,mCO0+20 Get  vOP3 Font "&mLetRom",12 Style "BQ" Pict "!!" Size 1,3.2 Color ,&mColBlN
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
      CASE LEN(ALLTRIM(voP1))=0
           STORE "Primer Caracter no puede estar vacío..." TO mmSj
      CASE LEN(ALLTRIM(voP2))=0
           STORE "Segundo Caracter no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(voP3))=0
           STORE "Código no puede estar vacío..." TO mmSj
      CASE viTe=1
           DO frA_9223a WITH "1"
           IF EOF()
                @mFI0+.4,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
                STORE SPACE(50) TO vdEs, vtIt
           ELSE
                STORE mkEy TO ckEy
                DO muE_9223a
                STORE ckEy TO mkEy
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           DO frA_9223a WITH "3"
           IF vfR1<>vfR3
                DO diS_9223a
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
PROCEDURE Mue_9223a
 @mFI0+.4,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12 Color Scheme 4
 STORE f9223let TO vlEt
 STORE f9223op1 TO voP1
 STORE f9223op2 TO voP2
 STORE f9223op3 TO voP3
 STORE f9223des TO vdEs
 STORE f9223tit TO vtIt
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
      STORE f9211nti TO vnTi
 ELSE
      STORE SPACE(50) TO vnTi
 ENDIF
 SELECT prImer
 SEEK vlEt+ALLTRIM(voP1)+"*"
 IF  .NOT. EOF()
      STORE f9221des TO vnO1
      STORE f9221tit TO ctT1
 ELSE
      STORE SPACE(50) TO vnO1, ctT1
 ENDIF
 SELECT seGundo
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
 IF  .NOT. EOF()
      STORE f9222des TO vnO2
      STORE f9222tit TO ctIt
 ELSE
      STORE SPACE(50) TO vnO2, ctIt
 ENDIF
 SELECT teRcer
ENDPROC
*
PROCEDURE Dis_9223a
 DO coLbln
 @mFI0+3.5,mCO0+33.1 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 @mFI0+5.1,mCO0+33.1 Say vTIT Font "&mLetAri",9 Style "NQ" Size 1,73.8 Pict "@S50"
 STORE vlEt TO clEt
 STORE voP1 TO coP1
 STORE voP2 TO coP2
 STORE voP3 TO coP3
ENDPROC
*
PROCEDURE Gra_9223a
 DO grAbar WITH "1"
 DO frA_9223a WITH "1"
 SEEK vfR1
 IF EOF()
      DO nuEvo_rg
      REPLACE f9223let WITH vlEt
      REPLACE f9223op1 WITH voP1
      REPLACE f9223op2 WITH voP2
      REPLACE f9223op3 WITH voP3
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vfR1
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f9223des WITH ALLTRIM(vdEs)
 REPLACE f9223tit WITH ALLTRIM(vtIt)
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_9223a
 DO frA_9223a WITH "1"
 SEEK vfR1
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vfR1
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f9223let WITH SPACE(02)
 REPLACE f9223op1 WITH SPACE(02)
 REPLACE f9223op2 WITH SPACE(02)
 REPLACE f9223op3 WITH SPACE(02)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Fra_9223a
 PARAMETER pfRa
 DO CASE
      CASE pfRa="1"
           STORE vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                 "*" TO vfR1
      CASE pfRa="2"
           STORE f9223let+ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"+ ;
                 ALLTRIM(f9223op3)+"*" TO vfR2
      CASE pfRa="3"
           STORE clEt+ALLTRIM(coP1)+"*"+ALLTRIM(coP2)+"*"+ALLTRIM(coP3)+ ;
                 "*" TO vfR3
      CASE pfRa="4"
           STORE plEt+ALLTRIM(poP1)+"*"+ALLTRIM(poP2)+"*" TO vfR4
      CASE pfRa="5"
           STORE plEt+ALLTRIM(poP1)+"*" TO vfR5
 ENDCASE
ENDPROC
*
PROCEDURE Imp_9223a
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
 DO reP_9223a
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_9223a
 PRIVATE pfR1
 PRIVATE ptIp, pcTi, pnTi, plEt
 PRIVATE poP1, pnO1, ptT1, pcO1
 PRIVATE poP2, pnO2, ptT2, pcO2
 STORE " " TO pfR1, pcTi, pcO1, pcO2
 STORE 28 TO mcLn
 STORE 70 TO ptAm
 STORE 00 TO vlIn, vpAg
 SELECT tiPos
 STORE 99 TO mkEy
 DO orD_0000a WITH "9211", "U", "F9211LET", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teRcer
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      STORE f9223let TO ptIp
      STORE f9223op1 TO poP1
      STORE f9223op2 TO poP2
      STORE f9223tit TO ptIt
      STORE " " TO pnTi, plEt, pnO1, pnO2, ptT1, ptT2
      SELECT tiPos
      SEEK ptIp
      IF  .NOT. EOF()
           STORE f9211nti TO pnTi
           STORE f9211let TO plEt
      ENDIF
      SELECT prImer
      DO frA_9223a WITH "5"
      SEEK vfR5
      IF  .NOT. EOF()
           STORE f9221des TO pnO1
           STORE f9221tit TO ptT1
      ENDIF
      SELECT seGundo
      DO frA_9223a WITH "4"
      SEEK vfR4
      IF  .NOT. EOF()
           STORE f9222des TO pnO2
           STORE f9222tit TO ptT2
      ENDIF
      SELECT teRcer
      IF vpAg=0 .OR. vlIn>mpAg-3 .OR. (vlIn+3>mpAg-3 .AND. vfR4<>pfR1)
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
                   "Codificación Nemotécnica: 3er. Caracter", "PUM9223A"
           ENDIF
           STORE vlIn+1 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+2 TO vlIn
           STORE vfR4 TO pfR1
           DO coL_pr1
      ENDIF
      IF ptIp<>pcTi
           STORE ptIp TO pcTi
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN    Say pLET Font "&mLetRom",11 Style "BT"
                @vLIN,mCLN+05 Say pNTI Font "&mLetRom",11 Style "BT"
           ENDIF
           STORE vlIn+1.5 TO vlIn
           IF vlIn>mpAg-3
                LOOP
           ENDIF
      ENDIF
      IF poP1<>pcO1
           STORE poP1 TO pcO1
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+05 Say pOP1 Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+10 Say pNO1 Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+45 Say pTT1 Font "&mLetAri",9 Style "NT"
           ENDIF
           STORE vlIn+1.5 TO vlIn
           IF vlIn>mpAg-3
                LOOP
           ENDIF
      ENDIF
      IF poP2<>pcO2
           STORE poP2 TO pcO2
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN+10 Say pOP2 Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+15 Say pNO2 Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+45 Say pTT2 Font "&mLetAri",9 Style "NT"
           ENDIF
           STORE vlIn+1.5 TO vlIn
           IF vlIn>mpAg-3
                LOOP
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           IF mpRt="1"
                @vLIN,mCLN+15 Say F9223OP3 Font "&mLetAri",9 Style "NT"
                @vLIN,mCLN+45 Say F9223DES Font "&mLetAri",9 Style "NT"
           ELSE
                @vLIN,mCLN+15 Say F9223OP3 Font "&mLetSwi",9 Style "NT"
                @vLIN,mCLN+45 Say F9223DES Font "&mLetSwi",9 Style "NT"
           ENDIF
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT tiPos
 STORE 99 TO mkEy
 DO orD_0000a WITH "9211", "U", "F9211TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE pfR1
 RELEASE ptIp, pcTi, pnTi, plEt
 RELEASE poP1, pnO1, ptT1, pcO1
 RELEASE poP2, pnO2, ptT2, pcO2
ENDPROC
*
PROCEDURE P00_9223a
 PARAMETER ptPo
 PRIVATE puLi, piCl
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+3 TO mmF2
 STORE mfI0+00.4 TO vfBi
 STORE mcO0+24.9 TO vcBi
 STORE mfI0-05.95 TO vfB1
 STORE mcO0+99.6 TO vcB1
 STORE mfI0-04.45 TO vfB2
 STORE mcO0+99.6 TO vcB2
 STORE mfI0-03.05 TO vfB3
 STORE mcO0+99.6 TO vcB3
 STORE mfI0+30.5 TO puLi
 STORE mcO0-00.7 TO piCl
 STORE 00 TO viT1
 Define Popup vTB1 from mFI0-4.8,pICL     to pULI,pICL+104.3 Font "&mLetCou",11 Style "NQ" Prompt Field F9211NTI+" : "+F9211TIP+" : "+F9211LET Scroll Color Scheme 10 Footer "TIPOS DE PRODUCTOS"
 Define Popup vTB2 from mFI0-3.3,pICL     to pULI,pICL+104.3 Font "&mLetCou",11 Style "NQ" Prompt Field Substr(F9221DES,1,47)+" : "+F9221OP1   Scroll Color Scheme 10 Footer "PRIMER CARACTER"
 Define Popup vTB3 from mFI0-1.8,pICL     to pULI,pICL+104.3 Font "&mLetCou",11 Style "NQ" Prompt Field Substr(F9222DES,1,47)+" : "+F9222OP2   Scroll Color Scheme 10 Footer "SEGUNDO CARACTER"
 Define Popup vTB4 from mFI0+2.0,pICL+1.7 to pULI,pICL+114.3 Font "&mLetCou",11 Style "NQ" Prompt Field Substr(F9223DES,1,47)+" : "+F9223OP3   Scroll Color Scheme 10 Footer "TERCER CARACTER"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 DO tiT_0000a WITH "Tercer Caracter"
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
 DO cuAdro WITH mfI0-6.0, mcO0, mfI0-1.8, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 @ mfI0+0.1, mcO0+1 TO mfI0+2.20, mcO0+muCo-1 PATTERN 1 COLOR SCHEME 4
 @ mfI0+0.1, mcO0+1 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0,0, ;
   0,0,0,0)
 @ mfI0+0.1, mcO0+1 TO mfI0+2.15, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0-6.0,mCO0       Say "Tipo de Producto:" Font "&mLetRom",11 Style "BT"
 @mFI0-4.5,mCO0+104.5 Say "1er.Car."          Font "&mLetRom",11 Style "BT"
 @mFI0-3.0,mCO0+104.5 Say "2do.Car."          Font "&mLetRom",11 Style "BT"
 @mFI0+0.4,mCO0+002.0 Say "CÓDIGO:"           Font "&mLetRom",13 Style "BT"
 @mFI0+3.5,mCO0+008.0 Say "DESCRIPCIÓN"       Font "&mLetAri",10 Style "NT"
 @mFI0+5.2,mCO0+008.0 Say "TÍTULO SIGUIENTE"  Font "&mLetAri",10 Style "NT"
 DO coLbln
 @mFI0-5.9,mCO0+25 Edit vNTI Font "&mLetAri",9  Style "NQ" Size 1,74,50 Color Scheme 7
 @mFI0-4.4,mCO0+25 Edit vNO1 Font "&mLetAri",9  Style "NQ" Size 1,74,50 Color Scheme 7
 @mFI0-2.9,mCO0+25 Edit vNO2 Font "&mLetAri",9  Style "NQ" Size 1,74,50 Color Scheme 7
 @mFI0+0.4,mCO0+20 Get  vOP3 Font "&mLetRom",12 Style "BQ" Pict "!!" Size 1,3.2 Color ,&mColBlN
 @mFI0+3.5,mCO0+33 Edit vDES Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+5.1,mCO0+33 Edit vTIT Font "&mLetAri",9  Style "NQ" Size 1,74,50
 @mFI0+0.4,mCO0+40 Edit cTIT Font "&mLetRom",12 Style "BQ" Size 1,25 Pict "@S27" Color Scheme 4
 @mFI0-2.9,mCO0+01 Edit cTT1 Font "&mLetAri",9  Style "NQ" Size 1,21 Pict "@S23" Color Scheme 7
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
ENDPROC
*
PROCEDURE Clp_9223a
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
           DO tiP_9221a IN PUM9221A WITH "3"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
           SELECT teRcer
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. mcCc>=vcB2-0.1  ;
           .AND. mcCc<=vcB2+3.9 .AND. viTe=1
           DO op1_9221a IN PUM9221A WITH "3"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
           SELECT teRcer
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. mcCc>=vcB3-0.1  ;
           .AND. mcCc<=vcB3+3.9 .AND. viTe=1
           DO op2_9221a IN PUM9221A WITH "3"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
           SELECT teRcer
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
PROCEDURE Hl1_9223a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 3 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 3 SAY  ;
   "modificar y eliminar el Tercer Caracter por Tipo de Producto en la codifi-"
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
 RELEASE viTe, ciTx, viT1, vtIp, vnTi, vlEt, clEt, voP1, coP1, voP2, coP2,  ;
         voP3, coP3
 RELEASE vnO1, vnO2, vdEs, vtIt, ctIt, ctT1, vtB1, vtB2, vtB3, vtB4, vfBi,  ;
         vfB1, vfB2
 RELEASE vfB3, vcBi, vcB1, vcB2, vcB3, vlIn, vpAg, ckEy, vfR1, vfR2, vfR3,  ;
         vfR4, vfR5
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
