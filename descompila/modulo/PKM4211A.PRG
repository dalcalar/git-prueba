 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4211", "K"
 Use &mDBF Shared Alias Fijos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4211TRA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 Use &mDBF Shared NoUpdate Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "4210", "K"
 Use &mDBF Shared NoUpdate Alias Conceptos
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
 PUBLIC viTe, viT1, ciTx, vtB1, vtB2, vtB3, vtRa, ctRa, vcPt, ccPt, vnOm,  ;
        vdEs, vmOn
 PUBLIC vtOt, vfOr, vfB1, vfB2, vcB1, vcB2
 STORE 00 TO viT1, vtOt
 STORE 01 TO viTe, vmOn
 STORE SPACE(04) TO vtRa, ctRa, vcPt, ccPt
 STORE SPACE(70) TO vnOm, vdEs, vfOr
 STORE 11 TO muFi
 STORE 120 TO muCo
 SET READBORDER ON
 SELECT fiJos
 DO p00_4211a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4211a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4211a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>3
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe>3
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT trAbajadores
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vtRa
                SET NEAR OFF
                DO veR_lock
                STORE 99 TO mkEy
                DO orD_0000a WITH "4200", "K", "F4200NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB1 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "4200", "K", "F4200COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f4200cod TO vtRa
                     STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ ;
                           ALLTRIM(f4200nom) TO vnOm
                     DO noM_4211a
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT fiJos
           CASE mkEy=k_F2 .AND. viTe=2
                = INKEY(0.01)
                SELECT coNceptos
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK vcPt
                SET NEAR OFF
                DO veR_lock
                STORE 99 TO mkEy
                DO orD_0000a WITH "4210", "K", "F4210DES", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB2 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "4210", "K", "F4210COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f4210cod TO vcPt
                     STORE f4210des TO vdEs
                     DO deS_4211a
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT fiJos
           CASE mkEy=k_F3 .AND. viTe<3
                = INKEY(0.01)
                SELECT fiJos
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                SET NEAR ON
                SEEK vtRa+vcPt
                SET NEAR OFF
                DO veR_lock
                STORE 99 TO mkEy
                DO orD_0000a WITH "4211", "K", "F4211TRA", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET CONFIRM ON
                DO q1_0000a
                ACTIVATE POPUP vtB3 REST
                DO p1_0000a
                SET CONFIRM OFF
                DO orD_0000a WITH "4211", "K", "F4211TRA", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     STORE f4211tra TO vtRa
                     STORE f4211cpt TO vcPt
                     SELECT trAbajadores
                     SEEK vtRa
                     DO veR_lock
                     STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ ;
                           ALLTRIM(f4200nom) TO vnOm
                     SELECT coNceptos
                     SEEK vcPt
                     DO veR_lock
                     STORE f4210des TO vdEs
                     DO noM_4211a
                     DO deS_4211a
                ENDIF
                SELECT fiJos
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4211a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_4211a WITH "1"
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
                     DO q1_0000a
                     DO imP_4211a
                     DO p1_0000a
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
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE (mkEy=k_Tab .OR. mkEy=k_Ctrl_del) .AND. viTe<3
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
                     SEEK vtRa
                     DO veR_lock
                     IF EOF()
                          STORE "Código no registrado..." TO mmSj
                     ELSE
                          DO prE_docum WITH "¿Desea eliminar este Registro?"
                          IF moPc="S"
                               DO deL_4211a
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
                     CASE f4211tra=vtRa
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4211a
                          DO diS_4211a
                          IF viTe<3
                               DO noM_4211a
                               DO deS_4211a
                          ENDIF
                ENDCASE
           CASE mkEy=k_F6
                GOTO BOTTOM
                DO veR_lock
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "No hay Registros Grabados..." TO mmSj
                     CASE f4211tra=vtRa
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4211a
                          DO diS_4211a
                          IF viTe<3
                               DO noM_4211a
                               DO deS_4211a
                          ENDIF
                ENDCASE
           CASE mkEy=k_F7
                SET NEAR ON
                SEEK vtRa
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ELSE
                     IF vtRa=f4211tra
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
                     CASE f4211tra=vtRa
                          STORE "Este es el último código... " TO mmSj
                     OTHERWISE
                          DO muE_4211a
                          DO diS_4211a
                          IF viTe<3
                               DO noM_4211a
                               DO deS_4211a
                          ENDIF
                ENDCASE
           CASE mkEy=k_F8
                SET NEAR ON
                SEEK vtRa
                SET NEAR OFF
                DO veR_lock
                IF EOF()
                     GOTO BOTTOM
                     DO veR_lock
                ENDIF
                IF  .NOT. EOF() .AND.  .NOT. BOF() .AND. f4211tra>=vtRa
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
                     CASE f4211tra=vtRa
                          STORE "Este es el primer código... " TO mmSj
                     OTHERWISE
                          DO muE_4211a
                          DO diS_4211a
                          IF viTe<3
                               DO noM_4211a
                               DO deS_4211a
                          ENDIF
                ENDCASE
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_4211a
                IF mkEy<>99
                     IF viTe=4
                          DO grA_4211a
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
                     DO veR_4211a
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
                     DO veR_4211a
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
                     DO grA_4211a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtRa
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
                     @mMF2,mMC2+14 Say "PONER EL CÓDIGO DEL TRABAJADOR, DEBE DE ESTAR REGISTRADO..."    Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+13 Say "PONER EL CÓDIGO DEL CONCEPTO, DEBE DE ESTAR REGISTRADO..."      Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+30 Say "PONER EL MONTO TOTAL NO PUEDE SER 0..."                         Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+16 Say "LA FÓRMULA SE PONE CUANDO SE QUIERE CALCULAR EN LAS BOLETAS..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+0.4,mCO0+19 Get  vTRA Font "&mLetAri",9 Style "NQ" Size 1,6.2 Pict "!!!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+3.5,mCO0+19 Get  vCPT Font "&mLetAri",9 Style "NQ" Size 1,6.2 Pict "!!!!" Color ,&mColBlN
           CASE viTe=3
                @mFI0+7.5,mCO0+18 Get  vTOT Font "&mLetAri",9 Style "NQ" Size 1,12.8 Pict "999999.99" Color ,&mColBlN
           CASE viTe=4
                @mFI0+9.0,mCO0+18 Edit vFOR Font "&mLetAri",9 Style "NQ" Size 1,88,70
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_4211a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vtRa))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=1 .AND. AT(" ", vtRa)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vtRa="0000"
           STORE "Código no puede ser 0000...             " TO mmSj
      CASE viTe=1
           SELECT trAbajadores
           SEEK vtRa
           DO veR_lock
           IF EOF()
                STORE "Código debe estar registrado..." TO mmSj
           ELSE
                STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ ;
                      f4200nom TO vnOm
                DO noM_4211a
           ENDIF
           SELECT fiJos
      CASE viTe=2 .AND. LEN(ALLTRIM(vcPt))=0
           STORE "Código no puede estar vacío...          " TO mmSj
      CASE viTe=2 .AND. AT(" ", vcPt)<>0
           STORE "Código no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. vcPt="0000"
           STORE "Código no puede ser 0000...             " TO mmSj
      CASE viTe=2
           SELECT coNceptos
           SEEK vcPt
           DO veR_lock
           IF EOF()
                STORE "Código debe estar registrado..." TO mmSj
           ELSE
                STORE f4210des TO vdEs
                SELECT fiJos
                SEEK vtRa+vcPt
                DO veR_lock
                IF EOF()
                     DO coL_fondo
                     @mFI0+6,mCO0+mUCO-20 Say " INGRESO" Font "&mLetRom",12 Style "BQ" Size 1,12
                     STORE 1 TO vmOn
                     STORE 0 TO vtOt
                     STORE SPACE(70) TO vfOr
                ELSE
                     DO muE_4211a
                ENDIF
                IF vtRa+vcPt<>ctRa+ccPt
                     DO diS_4211a
                ENDIF
           ENDIF
           SELECT fiJos
      CASE viTe=3 .AND. vtOt=0
           STORE "Monto no puede ser 0..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_4211a
 DO coL_fondo
 @mFI0+6,mCO0+mUCO-20 Say "MODIFICA" Font "&mLetRom",12 Style "BQ" Size 1,12
 SELECT fiJos
 STORE f4211tra TO vtRa
 STORE f4211cpt TO vcPt
 STORE f4211mon TO vmOn
 STORE f4211tot TO vtOt
 STORE f4211for TO vfOr
 SELECT trAbajadores
 SEEK vtRa
 DO veR_lock
 STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ALLTRIM(f4200nom) TO vnOm
 SELECT coNceptos
 SEEK vcPt
 DO veR_lock
 STORE f4210des TO vdEs
 SELECT fiJos
ENDPROC
*
PROCEDURE Dis_4211a
 DO noM_4211a
 DO deS_4211a
 DO moN_4211a
 DO coLbln
 @mFI0+7.5,mCO0+18 Say vTOT Font "&mLetAri",9 Style "NQ" Size 1,12.8 Pict "999,999.99"
 @mFI0+9.0,mCO0+18 Say vFOR Font "&mLetAri",9 Style "NQ" Size 1,88   Pict "@S70"
 STORE vtRa TO ctRa
 STORE vcPt TO ccPt
ENDPROC
*
PROCEDURE Mon_4211a
 @mFI0+6,mCO0+18 Get vMON Font "&mLetAri",9 Style "NQ" Function "*RHT S/.;US$" Default vMON Size 1,10,.8
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Nom_4211a
 DO coLbln
 @mFI0+0.4,mCO0+19 Say vTRA Font "&mLetAri",9 Style "NQ" Size 1,6.2 Pict "!!!!"
 DO coLsc7
 @mFI0+0.5,mCO0+42 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,74  Pict "@S70"
ENDPROC
*
PROCEDURE Des_4211a
 DO coLbln
 @mFI0+3.5,mCO0+19 Say vCPT Font "&mLetAri",9 Style "NQ" Size 1,6.2 Pict "!!!!"
 DO coLsc6
 @mFI0+3.5,mCO0+48 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,68  Pict "@S70"
ENDPROC
*
PROCEDURE Gra_4211a
 DO grAbar WITH "1"
 SELECT fiJos
 SEEK vtRa+vcPt
 IF EOF()
      DO nuEvo_rg
      REPLACE f4211tra WITH vtRa
      REPLACE f4211cpt WITH vcPt
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtRa+vcPt
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 IF f4211mon<>vmOn .OR. f4211tot<>vtOt .OR. f4211for<>vfOr
      REPLACE f4211mon WITH vmOn
      REPLACE f4211tot WITH vtOt
      REPLACE f4211for WITH vfOr
      REPLACE f4211usu WITH muSu
      REPLACE f4211dat WITH DATE()
      REPLACE f4211tim WITH TIME()
 ENDIF
 UNLOCK ALL
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Del_4211a
 SEEK vtRa+vcPt
 IF EOF()
      STORE "Código no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtRa+vcPt
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f4211tra WITH SPACE(04)
 REPLACE f4211cpt WITH SPACE(04)
 DELETE
 UNLOCK
 FLUSH
 STORE 01 TO viTe
 STORE 00 TO viT1
 WAIT CLEAR
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Imp_4211a
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
 DO reP_4211a
 DO fpR_0000a
ENDPROC
*
PROCEDURE Rep_4211a
 PRIVATE ptAm
 DO CASE
      CASE mvIs=0
           STORE 22 TO mcLn
           STORE 79 TO ptAm
      CASE mvIs=1
           DO CASE
                CASE mrEs="1"
                     STORE 77 TO ptAm
                CASE mrEs>"1"
                     STORE 90 TO ptAm
           ENDCASE
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
           DO cb1_0000a WITH "Conceptos Fijos", "PKM4210A"
           STORE vlIn+3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.6 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN      Say "Trabajador" Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+39.7 Say "Concepto"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+87.0 Say "Monto"      Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+95.1 Say "Formula"    Font "&mLetAri",9 Style "NT"
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Trabajador"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+40 Say "Concepto"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+80 Say "Monto"        Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Trabajador"   Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+40 Say "Concepto"     Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+80 Say "Monto"        Font "&mLetAri",9 Style "NT"
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
           STORE f4211tra TO vtRa
           STORE f4211cpt TO vcPt
           SELECT trAbajadores
           SEEK vtRa
           DO veR_lock
           STORE ALLTRIM(f4200app)+" "+ALLTRIM(f4200apm)+" "+ ;
                 ALLTRIM(f4200nom) TO vnOm
           SELECT coNceptos
           SEEK vcPt
           DO veR_lock
           STORE f4210des TO vdEs
           SELECT fiJos
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN      Say F4211TRA Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+06.2 Say vNOM     Font "&mLetAri",9 Style "NQ" Size 1,33   Pict "@S35"
                     @vLIN,mCLN+39.7 Say F4211CPT Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+45.7 Say vDES     Font "&mLetAri",9 Style "NQ" Size 1,33   Pict "@S35"
                     @vLIN,mCLN+79.3 Say F4211TOT Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "9999,999.99"
                     IF mrEs="1"
                          @vLIN,mCLN+95.1 Say F4211FOR Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "@S30"
                     ELSE
                          @vLIN,mCLN+95.1 Say F4211FOR Font "&mLetAri",9 Style "NQ" Size 1,48 Pict "@S50"
                     ENDIF
                CASE mpRt="1"
                     @vLIN,mCLN     Say F4211TRA  Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+10  Say vNOM      Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+30  Say F4211CPT  Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+40  Say vDES      Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+99  Say F4211TOT  Font "&mLetAri",9 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN     Say F4211TRA  Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+10  Say vNOM      Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+30  Say F4211CPT  Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+40  Say vDES      Font "&mLetSwi",9 Style "NQ"
                     @vLIN,mCLN+99  Say F4211TOT  Font "&mLetSwi",9 Style "NQ"
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
PROCEDURE P00_4211a
 PARAMETER ptPo
 PRIVATE ptAm, pfIn, pfFi, puCl
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ((mwFi-muFi)/2)-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE mfI0+muFi+2 TO mmF2
 STORE mfI0+0.4 TO vfB1
 STORE mcO0+26 TO vcB1
 STORE mfI0+3.5 TO vfB2
 STORE mcO0+26 TO vcB2
 STORE 00 TO viT1
 IF mrEs>"1"
      STORE mmF2+1 TO mmF2
      DO CASE
           CASE mrEs="2"
                STORE 11 TO ptAm
                STORE 03 TO pfIn
                STORE 07 TO pfFi
                STORE 01 TO puCl
           CASE mrEs="3"
                STORE 12 TO ptAm
                STORE 09 TO pfIn
                STORE 13 TO pfFi
                STORE 14 TO puCl
           CASE mrEs="4"
                STORE 13 TO ptAm
                STORE 06 TO pfIn
                STORE 09 TO pfFi
                STORE 34 TO puCl
           CASE mrEs="5"
                STORE 14 TO ptAm
                STORE 12 TO pfIn
                STORE 14 TO pfFi
                STORE 34 TO puCl
      ENDCASE
 ELSE
      STORE 10 TO ptAm
      STORE 05 TO pfIn
      STORE 08 TO pfFi
      STORE 02 TO puCl
 ENDIF
 DO coLbln
 Define Popup vTB1 from mFI0-pFIN,mCO0+30.1 to mFI0+mUFI+pFFI,mCO0+mUCO+pUCL Font "&mLetAri",pTAM Style "NQU" Prompt Field AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+AllTrim(F4200NOM)+"  ("+F4200COD+")" Scroll Color ,RGB(0,0,0,255,217,179) Footer "CONSULTA DE TRABAJADORES"
 Define Popup vTB2 from mFI0-pFIN,mCO0+30.1 to mFI0+mUFI+pFFI,mCO0+mUCO+pUCL Font "&mLetCou",pTAM Style "NQU" Prompt Field Substr(F4210DES,1,46)+" : "+F4210COD                                             Scroll Color ,RGB(0,0,0,155,117,179) Footer "CONCEPTOS"
 Define Popup vTB3 from mFI0-pFIN,mCO0+30.1 to mFI0+mUFI+pFFI,mCO0+mUCO+pUCL Font "&mLetCou",pTAM Style "NQU" Prompt Field F4211TRA+" : "+F4211CPT                                                          Scroll Color Scheme 10   Footer "CONCEPTOS x TRABAJADOR"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 DO tiT_0000a WITH "Conceptos Fijos x Trabajador"
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
 DO coLsc7
 @ mfI0+00.1, mcO0+01 TO mfI0+2.10, mcO0+muCo-1 PATTERN 1
 @ mfI0+00.1, mcO0+01 TO mfI0+0.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0, ;
   0,0,0,0,0)
 @ mfI0+00.1, mcO0+01 TO mfI0+2.05, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+00.4,mCO0+02 Say "Trabajador"            Font "&mLetRom",12 Style "BQ"
 DO coLsc6
 @ mfI0+03.1, mcO0+01 TO mfI0+5.10, mcO0+muCo-1 PATTERN 1
 @ mfI0+03.1, mcO0+01 TO mfI0+3.10, mcO0+muCo-1.15 PATTERN 1 COLOR RGB(0, ;
   0,0,0,0,0)
 @ mfI0+03.1, mcO0+01 TO mfI0+5.05, mcO0+1 PATTERN 1 COLOR RGB(0,0,0,0,0,0)
 @mFI0+03.5,mCO0+02 Say "Concepto"              Font "&mLetRom",12 Style "BQ"
 DO coL_fondo
 DO CASE
      CASE mrEs<"3"
           @mFI0+0.4,mCO0+32 Say "Nombre"        Font "&mLetAri",9 Style "NT"
           @mFI0+3.5,mCO0+32 Say "Descripción"   Font "&mLetAri",9 Style "NT"
           @mFI0+6.0,mCO0+02 Say "Moneda"        Font "&mLetAri",9 Style "NT"
           @mFI0+7.5,mCO0+02 Say "Monto"         Font "&mLetAri",9 Style "NT"
           @mFI0+9.0,mCO0+02 Say "Fórmula"       Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @mFI0+0.4,mCO0+32 Say "Nombre"        Font "&mLetAri",9 Style "BT"
           @mFI0+3.5,mCO0+32 Say "Descripción"   Font "&mLetAri",9 Style "BT"
           @mFI0+6.0,mCO0+02 Say "Moneda"        Font "&mLetAri",9 Style "BT"
           @mFI0+7.5,mCO0+02 Say "Monto"         Font "&mLetAri",9 Style "BT"
           @mFI0+9.0,mCO0+02 Say "Fórmula"       Font "&mLetAri",9 Style "BT"
 ENDCASE
 DO coLbln
 @mFI0+0.4,mCO0+19 Get  vTRA Font "&mLetAri",9 Style "NQ" Size 1,6.2 Pict "!!!!" Color ,&mColBlN
 @mFI0+3.5,mCO0+19 Get  vCPT Font "&mLetAri",9 Style "NQ" Size 1,6.2 Pict "!!!!" Color ,&mColBlN
 @mFI0+7.5,mCO0+18 Get  vTOT Font "&mLetAri",9 Style "NQ" Size 1,12.8 Pict "999999.99" Color ,&mColBlN
 @mFI0+9.0,mCO0+18 Edit vFOR Font "&mLetAri",9 Style "NQ" Size 1,88,70
 DO coLsc7
 @mFI0+0.5,mCO0+42 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,74,70
 DO coLsc6
 @mFI0+3.5,mCO0+48 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,68,70
 DO moN_4211a
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 RELEASE ptAm, pfIn, pfFi, puCl
ENDPROC
*
PROCEDURE Clp_4211a
 = INKEY(0.01)
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
      CASE mfIl>=vfB1-0.014 .AND. mfIl<=vfB1+1.2 .AND. mcCc>=vcB1-0.700  ;
           .AND. mcCc<=vcB1+3.7
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2-0.014 .AND. mfIl<=vfB2+1.2 .AND. mcCc>=vcB2-0.700  ;
           .AND. mcCc<=vcB2+3.7
           IF viTe=1
                DO veR_4211a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+5.714 .AND. mfIl<=mfI0+7.142 .AND. viTe>2 .AND.  ;
           mcCc>=mcO0+18 .AND. mcCc<=mcO0+26 .AND. vmOn<>1
           STORE 1 TO vmOn
           DO moN_4211a
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.714 .AND. mfIl<=mfI0+7.142 .AND. viTe>2 .AND.  ;
           mcCc>=mcO0+26 .AND. mcCc<=mcO0+37 .AND. vmOn<>2
           STORE 2 TO vmOn
           DO moN_4211a
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-0.214 .AND. mfIl<=mfI0+1.642 .AND. mcCc>=mcO0+1.4  ;
           .AND. mcCc<=mcO0+25.60 .AND. viTe<>1
           STORE 01 TO viTe
      CASE mfIl>=mfI0+3.285 .AND. mfIl<=mfI0+4.785 .AND. mcCc>=mcO0+1.4  ;
           .AND. mcCc<=mcO0+25.60 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_4211a
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
      CASE mfIl>=mfI0+7.499 .AND. mfIl<=mfI0+8.642 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+31.40 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_4211a
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
      CASE mfIl>=mfI0+8.928 .AND. mfIl<=mfI0+10.142 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+106.4 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_4211a
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
PROCEDURE Hl1_4211a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "Este Mantenimiento es un programa utilitario en donde se pueden crear,"
 @ pfIl+1, 02 SAY  ;
   "modificar y eliminar los Conceptos Fijos x Trabajador que figurarán en"
 @ pfIl+2, 02 SAY  ;
   "el Sistema. Estos se usan para el cálculo de Boletas de Pago. En la fór-"
 @ pfIl+3, 02 SAY "mula se pueden usar las siguientes variables:"
 STORE pfIl+4 TO pfIl
 IF mrEs>"1"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 02 SAY "TOT" STYLE "BT" COLOR B/N 
 @ pfIl+1, 02 SAY "%FIJ" STYLE "BT" COLOR B/N 
 @ pfIl+2, 02 SAY "%AFP" STYLE "BT" COLOR B/N 
 @ pfIl+0, 10 SAY "Monto que se señala en este programa."
 @ pfIl+1, 10 SAY "Porcentaje Fijo del Concepto."
 @ pfIl+2, 10 SAY  ;
   "Porcentaje(s) del AFP del Trabajador, si no hay no se considera"
 STORE pfIl+4 TO pfIl
 @ pfIl, 02 SAY "Las teclas para movilizarse son:"
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
 IF viTe<3
      @ pfIl+0, 04 SAY "F2" STYLE "BT"
      @ pfIl+1, 04 SAY "F3" STYLE "BT"
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      IF viTe=1
           @ pfIl, 24 SAY "Consultar Trabajadores registrados"
      ELSE
           @ pfIl, 24 SAY "Consultar Conceptos registrados"
      ENDIF
      @ pfIl+1, 24 SAY "Consultar Conceptos x Trabajador registrados"
      STORE pfIl+2 TO pfIl
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
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 24 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe>2
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "TAB" STYLE "BT"
      @ pfIl, 24 SAY "Grabar y regresar al 1er.campo"
      STORE pfIl+1 TO pfIl
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
 IF viTe>2
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
 RELEASE viTe, viT1, ciTx, vtB1, vtB2, vtB3, vtRa, ctRa, vcPt, ccPt, vnOm,  ;
         vdEs, vmOn
 RELEASE vtOt, vfOr, vfB1, vfB2, vcB1, vcB2
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
