 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1201COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1204CDG
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vbLa, vtDo, ctDo, vsEr, csEr, vdOc, cdOc, vsW1, csW1, vsW2, csW2,  ;
        vsW3, csW3
 PUBLIC vfEm, vcOd, vdEs, vdCr, vcUc, vcUv, vnUc, vnUv, vlA1, vlA2, vaN1,  ;
        vaN2, veSp
 PUBLIC vmEd, vpEd, vsEc, vpLa, vpLo, vmOt, vtPo, ctPo, vtD1, vdO0, vdO1,  ;
        vdO2, vdO3
 PUBLIC viTe, vlIn, vsE1, vaNo, caNo, vmEs, cmEs, vdIa, cdIa, ctPp, vsRr,  ;
        vcAn, ccAn
 PUBLIC vcM1, vtIp, vsLd, vsLc, vcAj, vcDg
 STORE SPACE(70) TO vbLa
 STORE SPACE(07) TO vdO1, vdO2, vdO3
 STORE 99 TO mkEy
 STORE msR3 TO vsE1
 SET READBORDER ON
 DO p00_9997a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9997a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9997a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9997a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9997a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Tab
                STORE "Estás en el único campo..." TO mmSj
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end .OR. mkEy= ;
                k_Ctrl_left .OR. mkEy=k_Up
                STORE "Estás en el único campo..." TO mmSj
           CASE mkEy=k_Enter
                DO deT_9997a
                EXIT
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      DO coLbln
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Det_9997a
 SELECT caB_fact
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      IF f1300tdo="CT" .OR. f1300est$"89"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      STORE f1300fde TO vfEm
      STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
      STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
      STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
      @mFI0+7.5,mCO0+08 Say vTDO+":"+vSER+"-"+vDOC+" del "+Dtoc(vFEM) Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT deT_fact
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           STORE f1301cod TO vcOd
           STORE f1301des TO vdEs
           STORE f1301dcr TO vdCr
           STORE f1301cuc TO vcUc
           STORE f1301cuv TO vcUv
           STORE f1301nuc TO vnUc
           STORE f1301nuv TO vnUv
           STORE f1301la1 TO vlA1
           STORE f1301la2 TO vlA2
           STORE f1301an1 TO vaN1
           STORE f1301an2 TO vaN2
           STORE f1301esp TO veSp
           STORE f1301med TO vmEd
           SELECT seR_fact
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           DO veR_lock
           STORE 0 TO vsW1, vsW2, vsW3
           STORE 0 TO csW1, csW2, csW3
           DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+f1303doc+ ;
              ALLTRIM(f1303cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                IF LEN(ALLTRIM(f1303td1))<>0
                     SKIP
                     DO veR_lock
                     LOOP
                ENDIF
                STORE f1303ped TO vpEd
                STORE f1303sec TO vsEc
                STORE f1303pla TO vpLa
                STORE f1303plo TO vpLo
                STORE f1303mot TO vmOt
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                DO veR_lock
                IF  .NOT. EOF()
                     SEEK ALLTRIM(vcOd)+"*"
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     STORE f2111tip TO vtPo
                     STORE f2111ser TO vsRr
                     SELECT tiPos
                     SEEK vtPo
                     DO veR_lock
                     IF  .NOT. EOF()
                          STORE f9211tpo TO vtPo
                     ELSE
                          STORE 1 TO vtPo
                     ENDIF
                ELSE
                     STORE 1 TO vtPo
                     STORE 2 TO vsRr
                ENDIF
                SELECT seRies
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                DO veR_lock
                IF EOF()
                     SELECT seR_fact
                     SKIP
                     DO veR_lock
                     UNLOCK ALL
                     LOOP
                ENDIF
                STORE f2112plo TO vpLo
                SELECT seR_fact
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                        ALLTRIM(vpEd)+vsEc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                IF f1303plo<>vpLo
                     REPLACE f1303plo WITH vpLo
                ENDIF
                IF vpLo>vpLa .AND. LEN(ALLTRIM(vmOt))=0
                     DO coLbln
                     @mFI0+15.5,mCO0+8 Say "Código:"+AllTrim(vCOD)+" Pedido:"+AllTrim(vPED)+" Serie:"+vSEC+"  diferencia en planchas" Font "&mLetRom",12 Style "BQ" Size 1,76,80
                     mkEy = INKEY(0)
                     DO CASE
                          CASE mkEy=k_Esc
                               UNLOCK ALL
                               CLOSE DATABASES
                               RETURN
                          CASE mkEy=k_Tab
                               DO prE_docum WITH  ;
                                  "¿Está seguro que quiere cambiar el estado en este Código, Pedido y Serie?"
                               IF moPc$"Ss"
                                    STORE "Rotura" TO vmOt
                                    REPLACE f1303mot WITH vmOt
                                    SELECT seRies
                                    SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                                    IF  .NOT. RLOCK()
                                         DO reG_lock WITH ALLTRIM(vcOd)+ ;
                                          "*"+ALLTRIM(vpEd)+vsEc
                                         IF mkEy=k_Esc
                                              RETURN
                                         ENDIF
                                    ELSE
                                         RLOCK()
                                    ENDIF
                                    REPLACE f2112mot WITH vmOt
                                    UNLOCK
                               ENDIF
                     ENDCASE
                ENDIF
                SELECT seR_fact
                UNLOCK
                IF vpLa=vpLo .OR. (vpLa<vpLo .AND. LEN(ALLTRIM(vmOt))=0)
                     SELECT seR_fact
                     SKIP
                     DO veR_lock
                     DO coLbln
                     @mFI0+15.5,mCO0+8 Say vBLA Font "&mLetRom",12 Style "BQ" Size 1,76 Pict "@S80"
                     UNLOCK ALL
                     LOOP
                ENDIF
                DO coLbln
                @mFI0+09.5,mCO0+08 Say vTDO+":"+vSER+"-"+vDOC+" del "+Dtoc(vFEM)+" "+vMOT Font "&mLetRom",12 Style "BQ" Size 1,76,80
                @mFI0+11.5,mCO0+08 Say "Planchas Vendidas:"                               Font "&mLetRom",12 Style "BQ" Size 1,76,80
                @mFI0+11.5,mCO0+34 Say vPLA Pict "999,999"                                Font "&mLetRom",12 Style "BQ" Size 1,08
                @mFI0+11.5,mCO0+54 Say "Planchas Originales:"                             Font "&mLetRom",12 Style "BQ"
                @mFI0+11.5,mCO0+82 Say vPLO Pict "999,999"                                Font "&mLetRom",12 Style "BQ" Size 1,08
                mkEy = INKEY(0)
                IF mkEy=k_Esc
                     UNLOCK ALL
                     CLOSE DATABASES
                     RETURN
                ENDIF
                DO coLbln
                @mFI0+09.5,mCO0+8 Say vBLA Font "&mLetRom",12 Style "BQ" Size 1,76 Pict "@S80"
                @mFI0+11.5,mCO0+8 Say vBLA Font "&mLetRom",12 Style "BQ" Size 1,76 Pict "@S80"
                @mFI0+15.5,mCO0+8 Say vBLA Font "&mLetRom",12 Style "BQ" Size 1,76 Pict "@S80"
                DO CASE
                     CASE vpLo<vpLa
                          STORE "GI" TO vtD1
                     CASE vpLo>vpLa
                          STORE "GS" TO vtD1
                ENDCASE
                DO CASE
                     CASE vtD1="GI" .AND. vsW1=0
                          STORE 0 TO vsW0
                     CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica" .AND. vsW2=0
                          STORE 0 TO vsW0
                     CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Rotura" .AND. vsW3=0
                          STORE 0 TO vsW0
                     OTHERWISE
                          STORE 1 TO vsW0
                ENDCASE
                SELECT nuMeracion
                IF vsW0=0
                     DO CASE
                          CASE vtD1="GI"
                               STORE 1 TO vsW1
                          CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                               STORE 1 TO vsW2
                          CASE vtD1="GS"
                               STORE 1 TO vsW3
                     ENDCASE
                     SEEK vtD1+vsE1
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f9999tdo WITH vtD1
                          REPLACE f9999ser WITH vsE1
                          REPLACE f9999num WITH "0000000"
                          UNLOCK
                     ENDIF
                     SEEK vtD1+vsE1
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vtD1+vsE1
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     STORE STRTRAN(STR(VAL(f9999num)+1, 7, 0), " ", "0")  ;
                           TO vdO0
                     REPLACE f9999num WITH vdO0
                     UNLOCK
                     DO CASE
                          CASE vtD1="GI"
                               STORE vdO0 TO vdO1
                          CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                               STORE vdO0 TO vdO2
                          CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Rotura"
                               STORE vdO0 TO vdO3
                     ENDCASE
                ENDIF
                SELECT seR_fact
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                        ALLTRIM(vpEd)+vsEc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE vtD1="GI"
                          REPLACE f1303td1 WITH "GI"
                          REPLACE f1303sr1 WITH vsE1
                          REPLACE f1303do1 WITH vdO1
                     CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                          REPLACE f1303td1 WITH "GS"
                          REPLACE f1303sr1 WITH vsE1
                          REPLACE f1303do1 WITH vdO2
                     CASE vtD1="GS"
                          REPLACE f1303td1 WITH "GS"
                          REPLACE f1303sr1 WITH vsE1
                          REPLACE f1303do1 WITH vdO3
                ENDCASE
                UNLOCK
                DO CASE
                     CASE vtD1="GI" .AND. csW1=0
                          STORE 1 TO csW1
                          SELECT caB_ingr
                          APPEND BLANK
                          REPLACE f2700tdo WITH vtD1
                          REPLACE f2700ser WITH vsE1
                          REPLACE f2700doc WITH vdO1
                          REPLACE f2700fem WITH vfEm
                          REPLACE f2700tip WITH "07"
                          REPLACE f2700nti WITH "Regularización de Sobrantes"
                          REPLACE f2700tpp WITH 1
                          REPLACE f2700cm1 WITH "Conteo en "+vtDo+":"+ ;
                                  vsEr+"-"+vdOc+" del "+DTOC(vfEm)
                          REPLACE f2700sor WITH SPACE(03)
                          REPLACE f2700ord WITH SPACE(07)
                          REPLACE f2700ped WITH SPACE(07)
                          REPLACE f2700cos WITH 0
                          REPLACE f2700td1 WITH SPACE(02)
                          REPLACE f2700sr1 WITH SPACE(03)
                          REPLACE f2700est WITH "2"
                          REPLACE f2700usu WITH "Sistemas"
                          REPLACE f2700dat WITH DATE()
                          REPLACE f2700tim WITH TIME()
                          REPLACE f2700maq WITH SPACE(30)
                     CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica" .AND. csW2=0
                          STORE 1 TO csW2
                          SELECT caB_sali
                          APPEND BLANK
                          REPLACE f2800tdo WITH vtD1
                          REPLACE f2800ser WITH vsE1
                          REPLACE f2800doc WITH vdO2
                          REPLACE f2800fem WITH vfEm
                          REPLACE f2800tip WITH "04"
                          REPLACE f2800nti WITH "Regularización x Faltante"
                          REPLACE f2800tpp WITH 1
                          REPLACE f2800cm1 WITH "Conteo en "+vtDo+":"+ ;
                                  vsEr+"-"+vdOc+" del "+DTOC(vfEm)
                          REPLACE f2800ped WITH SPACE(07)
                          REPLACE f2800td1 WITH SPACE(02)
                          REPLACE f2800sr1 WITH SPACE(03)
                          REPLACE f2800do1 WITH SPACE(07)
                          REPLACE f2800tec WITH SPACE(02)
                          REPLACE f2800mon WITH 1
                          REPLACE f2800cos WITH 0
                          REPLACE f2800est WITH "2"
                          REPLACE f2800usu WITH "Sistemas"
                          REPLACE f2800dat WITH DATE()
                          REPLACE f2800tim WITH TIME()
                          REPLACE f2800maq WITH SPACE(30)
                     CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Rotura" .AND. csW3=0
                          STORE 1 TO csW3
                          SELECT caB_sali
                          APPEND BLANK
                          REPLACE f2800tdo WITH vtD1
                          REPLACE f2800ser WITH vsE1
                          REPLACE f2800doc WITH vdO3
                          REPLACE f2800fem WITH vfEm
                          REPLACE f2800tip WITH "01"
                          REPLACE f2800nti WITH "Salida x Rotura"
                          REPLACE f2800tpp WITH 1
                          REPLACE f2800cm1 WITH "Conteo en "+vtDo+":"+ ;
                                  vsEr+"-"+vdOc+" del "+DTOC(vfEm)
                          REPLACE f2800ped WITH SPACE(07)
                          REPLACE f2800td1 WITH SPACE(02)
                          REPLACE f2800sr1 WITH SPACE(03)
                          REPLACE f2800do1 WITH SPACE(07)
                          REPLACE f2800tec WITH SPACE(02)
                          REPLACE f2800mon WITH 1
                          REPLACE f2800cos WITH 0
                          REPLACE f2800est WITH "2"
                          REPLACE f2800usu WITH "Sistemas"
                          REPLACE f2800dat WITH DATE()
                          REPLACE f2800tim WITH TIME()
                          REPLACE f2800maq WITH SPACE(30)
                ENDCASE
                UNLOCK
                DO CASE
                     CASE vtD1="GI"
                          SELECT caB_ingr
                          SEEK vtD1+vsE1+vdO1
                          DO veR_lock
                          STORE f2700tip TO vtIp
                          STORE f2700cm1 TO vcM1
                          SELECT deT_ingr
                          SEEK vtD1+vsE1+vdO1
                     CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                          SELECT caB_sali
                          SEEK vtD1+vsE1+vdO2
                          DO veR_lock
                          STORE f2800tip TO vtIp
                          STORE f2800cm1 TO vcM1
                          SELECT deT_sali
                          SEEK vtD1+vsE1+vdO2
                     CASE vtD1="GS"
                          SELECT caB_sali
                          SEEK vtD1+vsE1+vdO3
                          DO veR_lock
                          STORE f2800tip TO vtIp
                          STORE f2800cm1 TO vcM1
                          SELECT deT_sali
                          SEEK vtD1+vsE1+vdO3
                ENDCASE
                DO veR_lock
                STORE 0 TO vsW0
                STORE 1 TO viTe
                IF  .NOT. EOF()
                     DO CASE
                          CASE vtD1="GI"
                               DO orD_0000a WITH "2701", "A", "F2701COD", "A"
                               SEEK vtD1+vsE1+vdO1+ALLTRIM(vcOd)+"*"
                          CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                               DO orD_0000a WITH "2801", "A", "F2801COD", "A"
                               SEEK vtD1+vsE1+vdO2+ALLTRIM(vcOd)+"*"
                          CASE vtD1="GS"
                               DO orD_0000a WITH "2801", "A", "F2801COD", "A"
                               SEEK vtD1+vsE1+vdO3+ALLTRIM(vcOd)+"*"
                     ENDCASE
                     DO veR_lock
                     IF  .NOT. EOF()
                          STORE 1 TO vsW0
                          DO CASE
                               CASE vtD1="GI"
                                    STORE f2701ite TO viTe
                               CASE vtD1="GS"
                                    STORE f2801ite TO viTe
                          ENDCASE
                     ELSE
                          STORE 2 TO vsW0
                     ENDIF
                     DO CASE
                          CASE vtD1="GI"
                               DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
                          CASE vtD1="GS"
                               DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
                     ENDCASE
                ENDIF
                IF vsW0=2
                     DO CASE
                          CASE vtD1="GI"
                               SET NEAR ON
                               SEEK vtD1+vsE1+vdO1+STR(9999, 4, 0)
                               SET NEAR OFF
                               DO veR_lock
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                               DO veR_lock
                               STORE f2701ite+1 TO viTe
                          CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                               SET NEAR ON
                               SEEK vtD1+vsE1+vdO2+STR(9999, 4, 0)
                               SET NEAR OFF
                               DO veR_lock
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                               DO veR_lock
                               STORE f2801ite+1 TO viTe
                          CASE vtD1="GS"
                               SET NEAR ON
                               SEEK vtD1+vsE1+vdO3+STR(9999, 4, 0)
                               SET NEAR OFF
                               DO veR_lock
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                               DO veR_lock
                               STORE f2801ite+1 TO viTe
                     ENDCASE
                ENDIF
                IF vsW0=1
                     DO CASE
                          CASE vtD1="GI"
                               SEEK vtD1+vsE1+vdO1+STR(viTe, 4, 0)
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH vtD1+vsE1+vdO1+ ;
                                       STR(viTe, 4, 0)
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                          CASE vtD1="GS" .AND. ALLTRIM(vmOt)="Fabrica"
                               SEEK vtD1+vsE1+vdO2+STR(viTe, 4, 0)
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH vtD1+vsE1+vdO2+ ;
                                       STR(viTe, 4, 0)
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                          CASE vtD1="GS"
                               SEEK vtD1+vsE1+vdO3+STR(viTe, 4, 0)
                               IF  .NOT. RLOCK()
                                    DO reG_lock WITH vtD1+vsE1+vdO3+ ;
                                       STR(viTe, 4, 0)
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                               ELSE
                                    RLOCK()
                               ENDIF
                     ENDCASE
                ELSE
                     APPEND BLANK
                     DO CASE
                          CASE vtD1="GI"
                               STORE vdO1 TO vdO0
                               REPLACE f2701tdo WITH vtD1
                               REPLACE f2701ser WITH vsE1
                               REPLACE f2701doc WITH vdO1
                               REPLACE f2701ite WITH viTe
                               REPLACE f2701cod WITH vcOd
                               REPLACE f2701des WITH vdEs
                               REPLACE f2701dcr WITH vdCr
                               REPLACE f2701cuv WITH vcUv
                               REPLACE f2701nuv WITH vnUv
                               REPLACE f2701cuc WITH vcUc
                               REPLACE f2701nuc WITH vnUc
                               REPLACE f2701med WITH vmEd
                               REPLACE f2701can WITH 0
                               REPLACE f2701caj WITH 0
                               REPLACE f2701cos WITH 0
                               REPLACE f2701pie WITH 0
                               REPLACE f2701la1 WITH vlA1
                               REPLACE f2701an1 WITH vaN1
                               REPLACE f2701la2 WITH vlA2
                               REPLACE f2701an2 WITH vaN2
                               REPLACE f2701esp WITH veSp
                               REPLACE f2701tpo WITH vtPo
                               REPLACE f2701est WITH SPACE(01)
                               REPLACE f2701sgs WITH SPACE(03)
                               REPLACE f2701ngs WITH SPACE(07)
                               REPLACE f2701cdg WITH SPACE(mtMa)
                          CASE vtD1="GS"
                               REPLACE f2801tdo WITH vtD1
                               REPLACE f2801ser WITH vsE1
                               IF ALLTRIM(vmOt)="Fabrica"
                                    REPLACE f2801doc WITH vdO2
                                    STORE vdO2 TO vdO0
                               ELSE
                                    REPLACE f2801doc WITH vdO3
                                    STORE vdO3 TO vdO0
                               ENDIF
                               REPLACE f2801ite WITH viTe
                               REPLACE f2801cod WITH vcOd
                               REPLACE f2801des WITH vdEs
                               REPLACE f2801dcr WITH vdCr
                               REPLACE f2801cuv WITH vcUv
                               REPLACE f2801nuv WITH vnUv
                               REPLACE f2801cuc WITH vcUc
                               REPLACE f2801nuc WITH vnUc
                               REPLACE f2801med WITH vmEd
                               REPLACE f2801can WITH 0
                               REPLACE f2801caj WITH 0
                               REPLACE f2801pie WITH 0
                               REPLACE f2801la1 WITH vlA1
                               REPLACE f2801an1 WITH vaN1
                               REPLACE f2801la2 WITH vlA2
                               REPLACE f2801an2 WITH vaN2
                               REPLACE f2801esp WITH veSp
                               REPLACE f2801cos WITH 0
                               REPLACE f2801tpo WITH vtPo
                               REPLACE f2801est WITH SPACE(01)
                               REPLACE f2801tgi WITH SPACE(02)
                               REPLACE f2801sgi WITH SPACE(03)
                               REPLACE f2801ngi WITH SPACE(07)
                               REPLACE f2801cdg WITH SPACE(mtMa)
                     ENDCASE
                ENDIF
                DO CASE
                     CASE vtD1="GI"
                          STORE "1" TO ctPo
                          STORE "1" TO ctPp
                          REPLACE f2701can WITH f2701can+(vpLa-vpLo)
                          DO CASE
                               CASE vlA1<>0 .AND. vaN1<>0
                                    REPLACE f2701pie WITH f2701la1* ;
                                     f2701an1*10.77*f2701can
                               CASE vlA2<>0 .AND. vaN2<>0
                                    REPLACE f2701pie WITH f2701la2* ;
                                     f2701an2/144*f2701can
                               OTHERWISE
                                    REPLACE f2701pie WITH 0
                          ENDCASE
                          STORE f2701can TO vcAn
                     CASE vtD1="GS"
                          STORE "2" TO ctPo
                          STORE "1" TO ctPp
                          REPLACE f2801can WITH f2801can+(vpLo-vpLa)
                          DO CASE
                               CASE vlA1<>0 .AND. vaN1<>0
                                    REPLACE f2801pie WITH f2801la1* ;
                                     f2801an1*10.77*f2801can
                               CASE vlA2<>0 .AND. vaN2<>0
                                    REPLACE f2801pie WITH f2801la2* ;
                                     f2801an2/144*f2801can
                               OTHERWISE
                                    REPLACE f2801pie WITH 0
                          ENDCASE
                          STORE f2801can TO vcAn
                ENDCASE
                SELECT kaRdex
                SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+ctPo+ctPp+vtD1+vsE1+vdO0
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2990cod WITH vcOd
                     REPLACE f2990ano WITH vaNo
                     REPLACE f2990mes WITH vmEs
                     REPLACE f2990dia WITH vdIa
                     REPLACE f2990tpp WITH ctPp
                     REPLACE f2990tpo WITH ctPo
                     REPLACE f2990tra WITH "1"
                     REPLACE f2990caj WITH 0
                     REPLACE f2990sld WITH 0
                     REPLACE f2990slc WITH 0
                     REPLACE f2990sls WITH 0
                     REPLACE f2990scs WITH 0
                     REPLACE f2990cos WITH 0
                     REPLACE f2990dct WITH 0
                     REPLACE f2990gas WITH 0
                     REPLACE f2990prm WITH 0
                     REPLACE f2990tdo WITH vtD1
                     REPLACE f2990ser WITH vsE1
                     REPLACE f2990doc WITH vdO0
                     REPLACE f2990sr1 WITH SPACE(03)
                     REPLACE f2990rem WITH SPACE(07)
                     REPLACE f2990td1 WITH SPACE(02)
                     REPLACE f2990srf WITH SPACE(03)
                     REPLACE f2990fac WITH SPACE(20)
                     REPLACE f2990ped WITH SPACE(07)
                     REPLACE f2990sor WITH SPACE(03)
                     REPLACE f2990ord WITH SPACE(07)
                     REPLACE f2990emi WITH vfEm
                     REPLACE f2990fem WITH vfEm
                     REPLACE f2990tit WITH SPACE(04)
                     REPLACE f2990cli WITH SPACE(04)
                     REPLACE f2990nom WITH vcM1
                     REPLACE f2990pig WITH miGv
                     REPLACE f2990mon WITH 1
                     REPLACE f2990tne WITH 0
                     REPLACE f2990tig WITH 0
                     REPLACE f2990tfa WITH 0
                     REPLACE f2990ten WITH vtIp
                ELSE
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+vaNo+vmEs+ ;
                             vdIa+ctPo+ctPp+vtD1+vsE1+vdO0
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                ENDIF
                REPLACE f2990can WITH vcAn
                UNLOCK
                SKIP -1
                DO veR_lock
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                ELSE
                     STORE 0 TO vsLd, vsLc
                ENDIF
                SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+ctPo+ctPp+vtD1+vsE1+vdO0
                DO veR_lock
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
                     STORE f2990ano TO caNo
                     STORE f2990mes TO cmEs
                     STORE f2990dia TO cdIa
                     STORE f2990tpo TO ctPo
                     STORE f2990tpp TO ctPp
                     STORE f2990tdo TO ctDo
                     STORE f2990ser TO csEr
                     STORE f2990doc TO cdOc
                     SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+ ;
                          csEr+cdOc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+ ;
                             cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     DO CASE
                          CASE f2990tpo="1" .AND. f2990tpp="0"
                               STORE f2990can TO vsLd
                               STORE f2990caj TO vsLc
                          CASE f2990tpo="1"
                               STORE vsLd+f2990can TO vsLd
                               STORE vsLc+f2990caj TO vsLc
                          CASE f2990tpo="2"
                               STORE vsLd-f2990can TO vsLd
                               STORE vsLc-f2990caj TO vsLc
                     ENDCASE
                     REPLACE f2990sld WITH vsLd
                     IF mcAj=1 .AND. vsRr=1
                          REPLACE f2990slc WITH vsLc
                     ENDIF
                     UNLOCK
                     SKIP
                     DO veR_lock
                ENDDO
                DO grA_stock IN PAI2700A WITH vcOd
                UNLOCK ALL
                SELECT seR_fact
                SKIP
                DO veR_lock
           ENDDO
           SELECT deT_fact
           SKIP
           DO veR_lock
      ENDDO
      SELECT caB_fact
      SKIP
      DO veR_lock
 ENDDO
ENDPROC
*
PROCEDURE P00_9997a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 18 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH  ;
    "Crear GI y GS para regularizar Roturas, faltantes y sobrantes"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLscz
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+00.5,mCO0+03 Say "Este proceso genera Guías de Ingreso y Guías de Salida por Sobrantes, Faltantes y Rotu-" Font "&mLetAri",11 Style "NQ"
 @mFI0+02.0,mCO0+03 Say "ras, en caso de presentarse en las ventas. Es un proceso que se debe generar a diario,"  Font "&mLetAri",11 Style "NQ"
 @mFI0+03.5,mCO0+03 Say "para que regularice el Stock. Luego correr Arreglo de Documentos y Stock."               Font "&mLetAri",11 Style "NQ"
 DO coLbln
 @mFI0+05.5,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."        Font "&mLetRom",14 Style "BTI"
 @mFI0+13.5,mCO0+08 Say "Errores - Pulsa ESC para salir o cualquier tecla para seguir..." Font "&mLetRom",14 Style "BT"
 DO coLsc7
 @mFI0+07.5,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+09.5,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+11.5,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+15.5,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 READ TIMEOUT 0.01
 DO coLbln
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9997a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBi-0.021 .AND. mfIl<=vfBi+1.45 .AND. mcCc>=vcBi-0.200  ;
           .AND. mcCc<=vcBi+4.20
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9997a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, lee las ventas que han sido realizadas y genera Guías de  "
 @ pfIl+01, 02 SAY  ;
   "Ingreso y de Salida por Faltantes, Sobrantes y Roturas según sea el caso."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 16 SAY ":" STYLE "BT"
 @ pfIl+06, 16 SAY ":" STYLE "BT"
 @ pfIl+07, 16 SAY ":" STYLE "BT"
 @ pfIl+08, 16 SAY ":" STYLE "BT"
 @ pfIl+09, 16 SAY ":" STYLE "BT"
 @ pfIl+05, 06 SAY "ESC" STYLE "BT"
 @ pfIl+06, 06 SAY "F10" STYLE "BT"
 @ pfIl+07, 06 SAY "F1" STYLE "BT"
 @ pfIl+08, 06 SAY "ENTER" STYLE "BT"
 @ pfIl+09, 06 SAY "TAB" STYLE "BT"
 @ pfIl+05, 18 SAY "Regresar al Menú Principal"
 @ pfIl+06, 18 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 18 SAY "Ayuda del Programa"
 @ pfIl+08, 18 SAY "Iniciar el Proceso"
 @ pfIl+09, 18 SAY "En caso de que el código, pedido y serie tenga una"
 @ pfIl+10, 18 SAY "cantidad menor a la original y no tenga motivo se"
 @ pfIl+11, 18 SAY "le pone rotura."
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_File1
 DO q1_0000a
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vbLa, vtDo, ctDo, vsEr, csEr, vdOc, cdOc, vsW1, csW1, vsW2, csW2,  ;
         vsW3, csW3
 RELEASE vfEm, vcOd, vdEs, vdCr, vcUc, vcUv, vnUc, vnUv, vlA1, vlA2, vaN1,  ;
         vaN2, veSp
 RELEASE vmEd, vpEd, vsEc, vpLa, vpLo, vmOt, vtPo, ctPo, vtD1, vdO0, vdO1,  ;
         vdO2, vdO3
 RELEASE viTe, vlIn, vsE1, vaNo, caNo, vmEs, cmEs, vdIa, cdIa, ctPp, vsRr,  ;
         vcAn, ccAn
 RELEASE vcM1, vtIp, vsLd, vsLc, vcAj, vcDg
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
