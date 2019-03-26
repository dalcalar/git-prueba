 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PGO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1ser+ftM1num TAG ftM1num
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3110", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Letras_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3501", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Ctas_Ini
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3501DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ctas_Tot_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "3530", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Cab_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "3611", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3611DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Tipo_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Share NoUpdate Alias Vendedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 15
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Pagos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT caB_fact
 STORE 00 TO meRr
 PUBLIC vlIn, vuLt, vfEc, cfEc, vnPe, vaNo, vmEs, vdIa, vsEr, vsR1, vnUm,  ;
        vtOt, ctOt
 PUBLIC vtDo, vdOc, voP1, voP2, voP3, vvEn, vnVe, vtIt, vnTi, vcLi, vsUc,  ;
        vrUc, vnOm
 PUBLIC vtCl, vnTc, vfPa, vnFp, vfEm, vfVe, vpIg, vmOn, vmNd, vaCu, viNt,  ;
        tiNt, vcAn
 PUBLIC vtEc, vnTe, vtCa, vfCa, vpGo, vrEn, vlE1, veSt
 PUBLIC vpAn_11
 STORE DATE() TO vfEc
 STORE "S" TO vnPe
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9998a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9998a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9998a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9998a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9998a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                STORE "S" TO moPc
                DO prE_docum WITH "¿Desea verificar Documentos?"
                IF moPc$"Ss"
                     DO veR_9998a
                     IF mkEy=k_Esc
                          STORE "Verificación cortada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                          = INKEY(0.05)
                     ENDIF
                     @mFI0+16,mCO0+1 Say "Presionar una tecla para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "BT" Color 4
                     mkEy = INKEY(0)
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     @mFI0+16,mCO0+1 Say Space(50) Font "&mLetCou",9 Style "BQ" Size 1,64
                ENDIF
                DO prE_docum WITH "¿Desea recalcular Cuentas?"
                IF moPc$"Ss"
                     DO caL_9998a
                ENDIF
                EXIT
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_9998a
 DO coLsc3
 STORE mfI0+2.5 TO vlIn
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 @mFI0+0.0,mCO0+06 Say "Ingresos a Caja"   Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+36 Say "Ingresos a Bancos" Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+66 Say "Notas: NC/ND"      Font "&mLetCou",9 Style "NQ"
 @mFI0+2.0,mCO0+02 Say "Presionar ENTER o TAB para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "NQ" Size 1,68
 STORE 1 TO voP1, voP2, voP3
 DO prEsiona WITH "1", "SI", mfI0, mcO0+02
 DO prEsiona WITH "1", "SI", mfI0, mcO0+32
 DO prEsiona WITH "1", "SI", mfI0, mcO0+62
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>=mcO0+ ;
                     2.00 .AND. mcCc<=mcO0+4.400 .AND. voP1=0
                     STORE 01 TO voP1
                     STORE 99 TO mkEy
                     DO prEsiona WITH "1", "SI", mfI0, mcO0+02
                CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>=mcO0+ ;
                     2.00 .AND. mcCc<=mcO0+4.400 .AND. voP1=1
                     STORE 00 TO voP1
                     STORE 99 TO mkEy
                     DO prEsiona WITH "1", "NO", mfI0, mcO0+02
                CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>=mcO0+ ;
                     32.0 .AND. mcCc<=mcO0+34.40 .AND. voP2=0
                     STORE 01 TO voP2
                     STORE 99 TO mkEy
                     DO prEsiona WITH "1", "SI", mfI0, mcO0+32
                CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>=mcO0+ ;
                     32.0 .AND. mcCc<=mcO0+34.40 .AND. voP2=1
                     STORE 00 TO voP2
                     STORE 99 TO mkEy
                     DO prEsiona WITH "1", "NO", mfI0, mcO0+32
                CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>=mcO0+ ;
                     62.0 .AND. mcCc<=mcO0+64.40 .AND. voP3=0
                     STORE 01 TO voP3
                     STORE 99 TO mkEy
                     DO prEsiona WITH "1", "SI", mfI0, mcO0+62
                CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>=mcO0+ ;
                     62.0 .AND. mcCc<=mcO0+64.40 .AND. voP3=1
                     STORE 00 TO voP3
                     STORE 99 TO mkEy
                     DO prEsiona WITH "1", "NO", mfI0, mcO0+62
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. mkEy=k_Enter
                STORE k_Enter TO mkEy
                EXIT
      ENDCASE
 ENDDO
 @mFI0+2,mCO0+2 Say Space(68) Font "&mLetCou",9 Style "NQ" Size 1,68
 STORE vlIn+1 TO vlIn
 IF mkEy<>k_Enter
      RETURN
 ENDIF
 DO coLsc3
 IF voP1=1
      DO caJ_9998a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+3 TO vlIn
 ENDIF
 IF voP2=1
      DO baN_9998a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+3 TO vlIn
 ENDIF
 IF voP3=1
      DO noT_9998a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+3 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Caj_9998a
 PRIVATE prEc, plIn
 STORE 0 TO plIn
 DO coLsc3
 @vLIN+0,mCO0+1 Say "Verificación de Caja Ingresos-1:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Verificación de Caja Ingresos-2:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT deT_ing_caja
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      DO coLsc3
      @vLIN,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE RECNO() TO prEc
      STORE f3511ano TO vaNo
      STORE f3511mes TO vmEs
      STORE f3511ser TO vsEr
      STORE f3511num TO vnUm
      STORE f3511tdo TO vtDo
      STORE f3511sr1 TO vsR1
      STORE f3511doc TO vdOc
      SELECT caB_ing_caja
      SEEK vaNo+vmEs+vsEr+vnUm
      IF f3510est="9" .OR. EOF()
           @vLIN,mCO0+86 Say "Borrando Det:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
           SELECT deT_ing_caja
           DELETE
           IF RECNO()=prEc
                SKIP
           ENDIF
           LOOP
      ENDIF
      SELECT deT_ing_caja
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF plIn>0
      mkEy = INKEY(0, "HM")
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc3
      @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
      STORE 0 TO plIn
 ENDIF
 DO coLsc3
 SELECT deT_ing_caja
 DO orD_0000a WITH "3511", "C", "F3511NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_caja
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN+1,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN+1,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN+1,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE f3510ano TO vaNo
      STORE f3510mes TO vmEs
      STORE f3510ser TO vsEr
      STORE f3510num TO vnUm
      IF f3510est<>"9" .AND. f3510tpo<>2 .AND. f3510tpo<>5
           STORE 0 TO vtOt
           SELECT deT_ing_caja
           SEEK vaNo+vmEs+vsEr+vnUm
           DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+f3511ser+ ;
              f3511num=vaNo+vmEs+vsEr+vnUm
                STORE vtOt+f3511pag TO vtOt
                SKIP
           ENDDO
           SELECT caB_ing_caja
           IF f3510tot<>vtOt
                @vLIN+1,mCO0+86 Say "Modif.Tot:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                REPLACE f3510tot WITH vtOt
           ENDIF
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Ban_9998a
 PRIVATE prEc, plIn
 STORE 0 TO plIn
 DO coLsc3
 @vLIN+0,mCO0+1 Say "Verificación de Ingr.a Bancos-1:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Verificación de Ingr.a Bancos-2:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT deT_ing_bancos
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      DO coLsc3
      @vLIN,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE RECNO() TO prEc
      STORE f3531ano TO vaNo
      STORE f3531mes TO vmEs
      STORE f3531ser TO vsEr
      STORE f3531num TO vnUm
      STORE f3531tdo TO vtDo
      STORE f3531sr1 TO vsR1
      STORE f3531doc TO vdOc
      DO coLscr
      SELECT caB_ing_bancos
      SEEK vaNo+vmEs+vsEr+vnUm
      IF f3530est="9" .OR. EOF()
           @vLIN,mCO0+86 Say "Borrando Det:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
           SELECT deT_ing_bancos
           DELETE
           IF RECNO()=prEc
                SKIP
           ENDIF
           LOOP
      ENDIF
      SELECT deT_ing_bancos
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF plIn>0
      mkEy = INKEY(0, "HM")
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO coLsc3
      @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
      STORE 0 TO plIn
 ENDIF
 DO coLsc3
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN+1,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN+1,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN+1,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE f3530ano TO vaNo
      STORE f3530mes TO vmEs
      STORE f3530ser TO vsEr
      STORE f3530num TO vnUm
      IF f3530est<>"9" .AND. f3530tpo<>2 .AND. f3530tpo<>3
           STORE 0 TO vtOt
           SELECT deT_ing_bancos
           SEEK vaNo+vmEs+vsEr+vnUm
           DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+f3531ser+ ;
              f3531num=vaNo+vmEs+vsEr+vnUm
                STORE vtOt+f3531pag TO vtOt
                SKIP
           ENDDO
           SELECT caB_ing_bancos
           IF f3530tot<>vtOt
                @vLIN+1,mCO0+86 Say "Modificando Tot.:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                REPLACE f3530tot WITH vtOt
           ENDIF
      ENDIF
      SELECT caB_ing_bancos
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Not_9998a
 PRIVATE prEc
 DO coLsc3
 @vLIN+0,mCO0+1 Say "Verificación de NC y ND-1:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Verificación de NC y ND-2:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT deT_nota
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE RECNO() TO prEc
      STORE f3611tdo TO vtDo
      STORE f3611ser TO vsEr
      STORE f3611doc TO vdOc
      SELECT caB_nota
      SEEK vtDo+vsEr+vdOc
      IF EOF() .OR. f3610est="9"
           @vLIN,mCO0+86 Say "Borrando Det:"+vTDO+":"+vSER+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
           SELECT deT_nota
           IF RECNO()=prEc
                SKIP
           ENDIF
           LOOP
      ENDIF
      SELECT deT_nota
      SKIP
 ENDDO
 SELECT deT_nota
 DO orD_0000a WITH "3611", "C", "F3611DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_nota
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN+1,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN+1,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN+1,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE f3610tdo TO vtDo
      STORE f3610ser TO vsEr
      STORE f3610doc TO vdOc
      IF f3610est<>"9"
           SELECT deT_nota
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                STORE 0 TO vtOt
                DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc= ;
                   vtDo+vsEr+vdOc
                     STORE vtOt+f3611tot TO vtOt
                     SKIP
                ENDDO
                SELECT caB_nota
                IF f3610tot<>vtOt
                     DO coLscr
                     @vLIN+1,mCO0+86 Say "Total Errado:"+vTDO+":"+vSER+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                     @vLIN+2,mCO0+86 Say F3610TOT Pict "999,999.9999"           Font "&mLetCou",9 Style "NQ" Size 1,27
                     @vLIN+3,mCO0+86 Say vTOT     Pict "999,999.9999"           Font "&mLetCou",9 Style "NQ" Size 1,27
                     mkEy = INKEY(0, "HM")
                     DO coLsc3
                     @mFI0+16,mCO0+1 Say "Presionar una tecla para continuar o ESC para pasar al siguiente Proceso..." Font "&mLetCou",9 Style "BT" Color 4
                     mkEy = INKEY(0)
                     @mFI0+16,mCO0+1 Say Space(80) Font "&mLetCou",9 Style "BQ" Size 1,80
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
      ENDIF
      SELECT caB_nota
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Cal_9998a
 DO coLsc3
 STORE mfI0 TO vlIn
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 SELECT peNd_vtas
 ZAP
 REINDEX
 SELECT ctAs_tot_vtas
 ZAP
 REINDEX
 @vLIN,mCO0+1 Say "Ctas.Iniciales:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT ctAs_ini
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3501TDO+":"+F3501SER+"-"+F3501DOC Font "&mLetCou",8 Style "NQ"
      IF f3501tot+f3501int-f3501acu<>0 .AND. f3501fem<=vfEc
           STORE f3501tdo TO vtDo
           STORE f3501ser TO vsEr
           STORE f3501doc TO vdOc
           STORE f3501ven TO vvEn
           STORE f3501nve TO vnVe
           STORE f3501tit TO vtIt
           STORE f3501nti TO vnTi
           STORE f3501cli TO vcLi
           STORE f3501suc TO vsUc
           STORE f3501ruc TO vrUc
           STORE f3501nom TO vnOm
           STORE f3501tcl TO vtCl
           STORE f3501ntc TO vnTc
           STORE f3501fpa TO vfPa
           STORE f3501nfp TO vnFp
           STORE f3501fem TO vfEm
           STORE f3501fve TO vfVe
           STORE f3501pig TO vpIg
           STORE f3501mon TO vmOn
           STORE f3501tot TO vtOt
           STORE f3501acu TO vaCu
           STORE f3501int TO viNt
           SELECT clIentes
           SEEK vcLi
           IF  .NOT. EOF()
                IF LEN(ALLTRIM(vrUc))=0
                     STORE f1101ruc TO vrUc
                ENDIF
                IF LEN(ALLTRIM(vrUc))=0
                     STORE f1101ele TO vrUc
                ENDIF
           ENDIF
           SELECT peNd_vtas
           DO nuEvo_rg
           IF mcIa="NV" .OR. mcIa="NP" .OR. mcIa="NM"
                REPLACE f3500tip WITH "1"
           ENDIF
           REPLACE f3500tdo WITH vtDo
           REPLACE f3500ser WITH vsEr
           REPLACE f3500doc WITH vdOc
           REPLACE f3500ven WITH vvEn
           REPLACE f3500nve WITH vnVe
           REPLACE f3500tec WITH SPACE(02)
           REPLACE f3500nte WITH SPACE(50)
           REPLACE f3500tit WITH vtIt
           REPLACE f3500nti WITH vnTi
           REPLACE f3500cli WITH vcLi
           REPLACE f3500suc WITH vsUc
           REPLACE f3500ruc WITH vrUc
           REPLACE f3500nom WITH vnOm
           REPLACE f3500tcl WITH vtCl
           REPLACE f3500ntc WITH vnTc
           REPLACE f3500fpa WITH vfPa
           REPLACE f3500nfp WITH vnFp
           REPLACE f3500fem WITH vfEm
           REPLACE f3500pre WITH CTOD("  /  /    ")
           REPLACE f3500fve WITH vfVe
           REPLACE f3500fca WITH CTOD("  /  /    ")
           REPLACE f3500mon WITH vmOn
           REPLACE f3500pig WITH vpIg
           REPLACE f3500tot WITH vtOt
           REPLACE f3500acu WITH vaCu
           REPLACE f3500int WITH viNt
           REPLACE f3500le1 WITH SPACE(15)
           REPLACE f3500can WITH "2"
           REPLACE f3500com WITH SPACE(01)
           REPLACE f3500est WITH SPACE(01)
      ENDIF
      SELECT ctAs_ini
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Ventas:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT caB_fact
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f1300est<>"9" .AND. f1300est<>"1" .AND. f1300fem<=vfEc .AND.  ;
         f1300tdo<>"CT"
           IF vnPe="N" .AND. f1300tdo="NP"
                SKIP
                LOOP
           ENDIF
           @vLIN,mCO0+1 Say F1300TDO+":"+F1300SER+"-"+F1300DOC Font "&mLetCou",8 Style "NQ"
           STORE f1300tdo TO vtDo
           STORE f1300ser TO vsEr
           STORE f1300doc TO vdOc
           STORE f1300ven TO vvEn
           STORE f1300nve TO vnVe
           STORE f1300tec TO vtEc
           STORE f1300nte TO vnTe
           STORE f1300tit TO vtIt
           STORE f1300ntt TO vnTi
           STORE f1300cli TO vcLi
           STORE f1300suc TO vsUc
           STORE f1300ruc TO vrUc
           STORE f1300nom TO vnOm
           STORE f1300fpa TO vfPa
           STORE f1300nfp TO vnFp
           STORE f1300fem TO vfEm
           STORE f1300dia TO vdIa
           STORE f1300mon TO vmOn
           STORE f1300pig TO vpIg
           STORE f1300tot TO vtOt
           STORE f1300can TO vcAn
           IF LEN(ALLTRIM(vrUc))=0
                STORE f1300ele TO vrUc
           ENDIF
           STORE SPACE(2) TO vtCl, vnTc
           IF LEN(ALLTRIM(vtIt))=0
                STORE vcLi TO vtIt
           ENDIF
           IF LEN(ALLTRIM(vtIt))<>0
                SELECT clIentes
                SEEK vtIt
                STORE f1101nom TO vnTi
                STORE f1101tip TO vtCl
                SELECT caB_fact
                REPLACE f1300ntt WITH vnTi
           ENDIF
           IF LEN(ALLTRIM(vtCl))<>0
                SELECT tiPo_cli
                SEEK vtCl
                STORE f9110nti TO vnTc
           ENDIF
           IF LEN(ALLTRIM(vvEn))<>0
                SELECT veNdedores
                SEEK vvEn
                STORE f9113nom TO vnVe
                SELECT caB_fact
                REPLACE f1300nve WITH vnVe
           ENDIF
           SELECT peNd_vtas
           DO nuEvo_rg
           REPLACE f3500tdo WITH vtDo
           REPLACE f3500ser WITH vsEr
           REPLACE f3500doc WITH vdOc
           REPLACE f3500ven WITH vvEn
           REPLACE f3500nve WITH vnVe
           REPLACE f3500tec WITH vtEc
           REPLACE f3500nte WITH vnTe
           REPLACE f3500tit WITH vtIt
           REPLACE f3500nti WITH vnTi
           REPLACE f3500cli WITH vcLi
           REPLACE f3500suc WITH vsUc
           REPLACE f3500ruc WITH vrUc
           REPLACE f3500nom WITH vnOm
           REPLACE f3500tcl WITH vtCl
           REPLACE f3500ntc WITH vnTc
           REPLACE f3500fpa WITH vfPa
           REPLACE f3500nfp WITH vnFp
           REPLACE f3500fem WITH vfEm
           REPLACE f3500pre WITH CTOD("  /  /    ")
           REPLACE f3500fve WITH vfEm+vdIa
           REPLACE f3500fca WITH CTOD("  /  /    ")
           REPLACE f3500mon WITH vmOn
           REPLACE f3500pig WITH vpIg
           REPLACE f3500tot WITH vtOt
           REPLACE f3500acu WITH 0.00
           REPLACE f3500int WITH 0.00
           REPLACE f3500le1 WITH SPACE(15)
           REPLACE f3500can WITH vcAn
           REPLACE f3500com WITH SPACE(01)
           REPLACE f3500est WITH SPACE(01)
      ENDIF
      SELECT caB_fact
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Notas de Crédito/Débito:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT caB_nota
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3610TDO+":"+F3610SER+"-"+F3610DOC Font "&mLetCou",8 Style "NQ"
      IF f3610est<>"9" .AND. f3610est<>"1" .AND. f3610fem<=vfEc
           STORE f3610tdo TO vtDo
           STORE f3610ser TO vsEr
           STORE f3610doc TO vdOc
           STORE f3610ven TO vvEn
           STORE f3610tit TO vtIt
           STORE f3610cli TO vcLi
           STORE f3610suc TO vsUc
           STORE f3610ruc TO vrUc
           STORE f3610nom TO vnOm
           STORE f3610fem TO vfEm
           STORE f3610mon TO vmOn
           STORE f3610pig TO vpIg
           STORE f3610tot TO vtOt
           IF LEN(ALLTRIM(vrUc))=0
                STORE f3610ele TO vrUc
           ENDIF
           STORE SPACE(2) TO vtCl, vnTc, vnTi, vnVe
           IF LEN(ALLTRIM(vtIt))=0
                STORE vcLi TO vtIt
           ENDIF
           IF LEN(ALLTRIM(vtIt))<>0
                SELECT clIentes
                SEEK vtIt
                STORE f1101nom TO vnTi
                STORE f1101tip TO vtCl
           ENDIF
           IF LEN(ALLTRIM(vtCl))<>0
                SELECT tiPo_cli
                SEEK vtCl
                STORE f9110nti TO vnTc
           ENDIF
           IF LEN(ALLTRIM(vvEn))<>0
                SELECT veNdedores
                SEEK vvEn
                STORE f9113nom TO vnVe
           ENDIF
           SELECT peNd_vtas
           DO nuEvo_rg
           REPLACE f3500tdo WITH vtDo
           REPLACE f3500ser WITH vsEr
           REPLACE f3500doc WITH vdOc
           REPLACE f3500ven WITH vvEn
           REPLACE f3500nve WITH vnVe
           REPLACE f3500tec WITH SPACE(02)
           REPLACE f3500nte WITH SPACE(50)
           REPLACE f3500tit WITH vtIt
           REPLACE f3500nti WITH vnTi
           REPLACE f3500cli WITH vcLi
           REPLACE f3500suc WITH vsUc
           REPLACE f3500ruc WITH vrUc
           REPLACE f3500nom WITH vnOm
           REPLACE f3500tcl WITH vtCl
           REPLACE f3500ntc WITH vnTc
           REPLACE f3500fpa WITH SPACE(02)
           REPLACE f3500nfp WITH SPACE(50)
           REPLACE f3500fem WITH vfEm
           REPLACE f3500pre WITH CTOD("  /  /    ")
           REPLACE f3500fve WITH vfEm
           REPLACE f3500fca WITH CTOD("  /  /    ")
           REPLACE f3500mon WITH vmOn
           REPLACE f3500pig WITH vpIg
           REPLACE f3500tot WITH vtOt
           REPLACE f3500acu WITH 0.00
           REPLACE f3500int WITH 0.00
           REPLACE f3500le1 WITH SPACE(15)
           REPLACE f3500can WITH "2"
           REPLACE f3500com WITH SPACE(01)
           REPLACE f3500est WITH SPACE(01)
      ENDIF
      SELECT caB_nota
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Letras:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT leTras_cli
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3110SER+"-"+F3110LET Font "&mLetCou",8 Style "NQ"
      IF f3110est<>"9" .AND. f3110est="3" .AND. f3110fem<=vfEc
           STORE f3110ser TO vsEr
           STORE f3110let TO vdOc
           STORE f3110tit TO vtIt
           STORE f3110cli TO vcLi
           STORE f3110suc TO vsUc
           STORE f3110ruc TO vrUc
           STORE f3110nom TO vnOm
           STORE f3110fem TO vfEm
           STORE f3110fve TO vfVe
           STORE f3110ven TO vvEn
           STORE f3110nve TO vnVe
           STORE f3110mon TO vmOn
           STORE f3110pig TO vpIg
           STORE f3110tot TO vtOt
           STORE f3110le1 TO vlE1
           STORE SPACE(2) TO vtCl, vnTc, vnTi
           IF LEN(ALLTRIM(vrUc))=0
                STORE f3110ele TO vrUc
           ENDIF
           IF LEN(ALLTRIM(vtIt))=0
                STORE vcLi TO vtIt
                STORE vnOm TO vnTi
                SELECT leTras_cli
                REPLACE f3110tit WITH vtIt
           ENDIF
           IF LEN(ALLTRIM(vtIt))<>0
                SELECT clIentes
                SEEK vtIt
                STORE f1101nom TO vnTi
                STORE f1101tip TO vtCl
                IF LEN(ALLTRIM(vvEn))=0
                     STORE f1101ven TO vvEn
                     STORE " " TO vnVe
                ENDIF
                SELECT leTras_cli
                REPLACE f3110tit WITH vtIt
                REPLACE f3110ven WITH vvEn
           ENDIF
           IF LEN(ALLTRIM(vvEn))<>0 .AND. LEN(ALLTRIM(vnVe))=0
                SELECT veNdedores
                SEEK vvEn
                STORE f9113nom TO vnVe
                SELECT leTras_cli
                REPLACE f3110nve WITH vnVe
           ENDIF
           IF LEN(ALLTRIM(vtCl))<>0
                SELECT tiPo_cli
                SEEK vtCl
                STORE f9110nti TO vnTc
           ENDIF
           SELECT peNd_vtas
           DO nuEvo_rg
           REPLACE f3500tdo WITH "LE"
           REPLACE f3500ser WITH vsEr
           REPLACE f3500doc WITH vdOc
           REPLACE f3500ven WITH vvEn
           REPLACE f3500nve WITH vnVe
           REPLACE f3500tec WITH SPACE(02)
           REPLACE f3500nte WITH SPACE(50)
           REPLACE f3500tit WITH vtIt
           REPLACE f3500nti WITH vnTi
           REPLACE f3500cli WITH vcLi
           REPLACE f3500suc WITH vsUc
           REPLACE f3500ruc WITH vrUc
           REPLACE f3500nom WITH vnOm
           REPLACE f3500tcl WITH vtCl
           REPLACE f3500ntc WITH vnTc
           REPLACE f3500fpa WITH SPACE(02)
           REPLACE f3500nfp WITH SPACE(50)
           REPLACE f3500fem WITH vfEm
           REPLACE f3500pre WITH CTOD("  /  /    ")
           REPLACE f3500fve WITH vfVe
           REPLACE f3500fca WITH CTOD("  /  /    ")
           REPLACE f3500mon WITH vmOn
           REPLACE f3500pig WITH vpIg
           REPLACE f3500tot WITH vtOt
           REPLACE f3500acu WITH 0.00
           REPLACE f3500int WITH 0.00
           REPLACE f3500le1 WITH vlE1
           REPLACE f3500can WITH "2"
           REPLACE f3500com WITH SPACE(01)
           REPLACE f3500est WITH SPACE(01)
      ENDIF
      SELECT leTras_cli
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Cobranzas:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT caB_ing_caja
 DO orD_0000a WITH "3510", "C", "F3510NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ing_caja
 DO orD_0000a WITH "3511", "C", "F3511DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ing_bancos
 DO orD_0000a WITH "3530", "C", "F3530NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 DO orD_0000a WITH "3531", "C", "F3531DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_vtas
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3500TDO+":"+F3500SER+"-"+F3500DOC Font "&mLetCou",8 Style "NQ"
      STORE f3500tdo TO vtDo
      STORE f3500ser TO vsR1
      STORE f3500doc TO vdOc
      STORE f3500mon TO vmOn
      STORE f3500tot TO vtOt, ctOt
      STORE f3500fem TO vfEm
      STORE f3500fve TO vfVe
      STORE f3500can TO vcAn
      IF f3500fem>vfEc
           SKIP
           LOOP
      ENDIF
      SELECT paGos
      ZAP
      REINDEX
      SELECT deT_ing_caja
      SEEK vtDo+vsR1+vdOc
      DO WHILE  .NOT. EOF() .AND. f3511tdo+f3511sr1+f3511doc=vtDo+vsR1+vdOc
           STORE f3511ano TO vaNo
           STORE f3511mes TO vmEs
           STORE f3511ser TO vsEr
           STORE f3511num TO vnUm
           STORE f3511pag TO vpGo
           SELECT caB_ing_caja
           SEEK vaNo+vmEs+vsEr+vnUm
           IF  .NOT. EOF() .AND. f3510est<>"9" .AND. CTOD(f3510dia+"/"+ ;
               vmEs+"/"+vaNo)<=vfEc
                STORE f3510dia TO vdIa
                STORE f3510tpo TO vtPo
                STORE f3510mon TO vmNd
                STORE f3510tca TO vtCa
                STORE f3510est TO veSt
                SELECT paGos
                DO nuEvo_rg
                REPLACE ftM1ano WITH vaNo
                REPLACE ftM1mes WITH vmEs
                REPLACE ftM1dia WITH vdIa
                REPLACE ftM1tpo WITH vtPo
                REPLACE ftM1ttt WITH "1"
                REPLACE ftM1ser WITH vsEr
                REPLACE ftM1num WITH vnUm
                REPLACE ftM1mon WITH vmNd
                REPLACE ftM1tca WITH vtCa
                REPLACE ftM1pgo WITH vpGo
                REPLACE ftM1est WITH veSt
           ENDIF
           SELECT deT_ing_caja
           SKIP
      ENDDO
      SELECT deT_ing_bancos
      SEEK vtDo+vsR1+vdOc
      DO WHILE  .NOT. EOF() .AND. f3531tdo+f3531sr1+f3531doc=vtDo+vsR1+vdOc
           STORE f3531ano TO vaNo
           STORE f3531mes TO vmEs
           STORE f3531ser TO vsEr
           STORE f3531num TO vnUm
           STORE f3531pag TO vpGo
           SELECT caB_ing_bancos
           SEEK vaNo+vmEs+vsEr+vnUm
           IF  .NOT. EOF() .AND. f3530est<>"9" .AND. CTOD(f3530dia+"/"+ ;
               vmEs+"/"+vaNo)<=vfEc
                STORE f3530dia TO vdIa
                STORE f3530tpo TO vtPo
                STORE f3530mon TO vmNd
                STORE f3530tca TO vtCa
                STORE f3530est TO veSt
                SELECT paGos
                DO nuEvo_rg
                REPLACE ftM1ano WITH vaNo
                REPLACE ftM1mes WITH vmEs
                REPLACE ftM1dia WITH vdIa
                REPLACE ftM1tpo WITH vtPo
                REPLACE ftM1ttt WITH "2"
                REPLACE ftM1ser WITH vsEr
                REPLACE ftM1num WITH vnUm
                REPLACE ftM1mon WITH vmNd
                REPLACE ftM1tca WITH vtCa
                REPLACE ftM1pgo WITH vpGo
                REPLACE ftM1est WITH veSt
           ENDIF
           SELECT deT_ing_bancos
           SKIP
      ENDDO
      SELECT ctAs_ini
      SEEK vtDo+vsR1+vdOc
      IF  .NOT. EOF() .AND. f3501acu<>0 .AND. f3501fem<=vfEc
           STORE SUBSTR(DTOC(f3501fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f3501fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f3501fem), 1, 2) TO vdIa
           STORE f3501acu TO vpGo
           SELECT paGos
           DO nuEvo_rg
           REPLACE ftM1ano WITH vaNo
           REPLACE ftM1mes WITH vmEs
           REPLACE ftM1dia WITH vdIa
           REPLACE ftM1tpo WITH 3
           REPLACE ftM1ttt WITH "0"
           REPLACE ftM1ser WITH "001"
           REPLACE ftM1num WITH "0000000"
           REPLACE ftM1mon WITH vmOn
           REPLACE ftM1tca WITH 1
           REPLACE ftM1pgo WITH vpGo
      ENDIF
      STORE 00 TO vaCu, vrEn, tiNt
      STORE CTOD("  /  /    ") TO vfCa
      SELECT paGos
      GOTO TOP
      DO WHILE  .NOT. EOF()
           IF ftM1tpo=1
                IF ftM1est="1"
                     STORE vrEn+1 TO vrEn
                ENDIF
                SKIP
                LOOP
           ENDIF
           DO CASE
                CASE vmOn=ftM1mon
                     STORE ftM1pgo TO vpGo
                CASE ftM1mon=1
                     STORE ROUND(ftM1pgo/ftM1tca, 2) TO vpGo
                CASE ftM1mon=2
                     STORE ROUND(ftM1pgo*ftM1tca, 2) TO vpGo
           ENDCASE
           DO CASE
                CASE vtDo="NC" .OR. vtDo="ND" .OR. vtDo="N1" .OR. vtDo= ;
                     "N2" .OR. vtDo="N3" .OR. vtDo="N4" .OR. vtDo="LE"  ;
                     .OR. miNt=0
                     STORE 0 TO viNt
                CASE vcAn="2" .OR. DATE()<vfVe .OR. CTOD(ftM1dia+"/"+ ;
                     ftM1mes+"/"+ftM1ano)<=vfVe
                     STORE 0 TO viNt
                OTHERWISE
                     STORE CTOD(ftM1dia+"/"+ftM1mes+"/"+ftM1ano)-vfVe TO vdIa
                     STORE (ctOt*miNt/100)*vdIa TO viNt
           ENDCASE
           STORE ctOt-vpGo+viNt TO ctOt
           STORE vaCu+vpGo TO vaCu
           STORE tiNt+viNt TO tiNt
           STORE CTOD(ftM1dia+"/"+ftM1mes+"/"+ftM1ano) TO vfVe
           IF vfCa=CTOD("  /  /    ") .OR. vfCa<CTOD(ftM1dia+"/"+ftM1mes+ ;
              "/"+ftM1ano)
                STORE CTOD(ftM1dia+"/"+ftM1mes+"/"+ftM1ano) TO vfCa
           ENDIF
           SKIP
      ENDDO
      SELECT peNd_vtas
      REPLACE f3500acu WITH vaCu
      REPLACE f3500int WITH tiNt
      IF f3500tot+f3500int-f3500acu=0 .AND. vrEn=0
           REPLACE f3500fca WITH vfCa
           IF f3500tdo="NC" .OR. f3500tdo="N1" .OR. f3500tdo="N3" .OR.  ;
              f3500tdo="ND" .OR. f3500tdo="N2" .OR. f3500tdo="N4" .OR.  ;
              f3500tdo="LE" .OR. f3500can="2" .OR. mgRa=1
                REPLACE f3500est WITH "@"
           ELSE
                REPLACE f3500est WITH " "
           ENDIF
      ELSE
           REPLACE f3500fca WITH CTOD("  /  /    ")
           REPLACE f3500est WITH " "
      ENDIF
      SELECT ctAs_tot_vtas
      SEEK vtDo+vsR1
      IF EOF()
           DO nuEvo_rg
           REPLACE f3502tdo WITH vtDo
           REPLACE f3502ser WITH vsR1
           REPLACE f3502to1 WITH 0
           REPLACE f3502in1 WITH 0
           REPLACE f3502ac1 WITH 0
           REPLACE f3502to2 WITH 0
           REPLACE f3502in2 WITH 0
           REPLACE f3502ac2 WITH 0
      ENDIF
      DO CASE
           CASE vmOn=1
                REPLACE f3502to1 WITH f3502to1+vtOt
                REPLACE f3502in1 WITH f3502in1+tiNt
                REPLACE f3502ac1 WITH f3502ac1+vaCu
           CASE vmOn=2
                REPLACE f3502to2 WITH f3502to2+vtOt
                REPLACE f3502in2 WITH f3502in2+tiNt
                REPLACE f3502ac2 WITH f3502ac2+vaCu
      ENDCASE
      SELECT peNd_vtas
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_9998a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 20 TO muFi
 STORE 126 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Reorganiza Cuentas x Cobrar"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+02.0,mCO0+12 Say "Este proceso primero verifica si los documentos están grabados"    Font "&mLetRom",14 Style "NQ"
 @mFI0+03.5,mCO0+12 Say "correctamente; si hubiera habido un corte de corriente eléctrica," Font "&mLetRom",14 Style "NQ"
 @mFI0+05.0,mCO0+12 Say "es conveniente usar este programa. Vuelve a leer todos los docu-"  Font "&mLetRom",14 Style "NQ"
 @mFI0+06.5,mCO0+12 Say "mentos y sus pagos, para recalcular los saldos."                  Font "&mLetRom",14 Style "NQ"
 @mFI0+11.0,mCO0+38 Say "Calcular al: "                                                     Font "&mLetRom",14 Style "NQ"
 @mFI0+16.0,mCO0+18 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir"             Font "&mLetRom",14 Style "NT"
 @mFI0+11.0,mCO0+57 Get vFEC Size 1,10.4                                                    Font "&mLetRom",14 Style "NQ" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9998a
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
      CASE mfIl>=mfI0+10.821 .AND. mfIl<=mfI0+12.536 .AND. mcCc>=mcO0+ ;
           56.6 .AND. mcCc<=mcO0+74
           STORE vfEc TO cfEc
           DO WHILE .T.
                @mFI0+11,mCO0+57 Get cFEC Size 1,10.4 Font "&mLetRom",14 Style "NQ" Color ,&mColBlN
                SET CURSOR ON
                READ
                SET CURSOR OFF
                DO CASE
                     CASE mkEy=k_F10
                          DO reTorna
                     CASE mkEy=k_Esc
                          DO coLbln
                          STORE vfEc TO cfEc
                          STORE 99 TO mkEy
                          @mFI0+11,mCO0+57 Say vFEC Size 1,10.4 Font "&mLetRom",14 Style "NQ"
                          EXIT
                     CASE mkEy=k_Enter .AND. AT(" ", DTOC(cfEc))<>0
                          STORE "Fecha errada..." TO mmSj
                          STORE vfEc TO cfEc
                          DO poNmsj
                     CASE mkEy=k_Enter
                          STORE cfEc TO vfEc
                          EXIT
                ENDCASE
           ENDDO
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9998a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, verifica que los datos de los siguientes documentos, se"
 @ pfIl+01, 02 SAY  ;
   "encuentren correctamente grabados: Documentos de Ventas, Letras de"
 @ pfIl+02, 02 SAY  ;
   "Clientes, Notas Contables. Luego, recalcula las Cuentas x Cobrar. Por lo"
 @ pfIl+03, 02 SAY  ;
   "general, esto se debe hacer en casos de corte de fluído eléctrico."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+09, 25 SAY ":" STYLE "BT"
 @ pfIl+10, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 15 SAY "ESC" STYLE "BT"
 @ pfIl+08, 15 SAY "F10" STYLE "BT"
 @ pfIl+09, 15 SAY "F1" STYLE "BT"
 @ pfIl+10, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 27 SAY "Regresar al Menú Principal"
 @ pfIl+08, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 27 SAY "Ayuda del Programa"
 @ pfIl+10, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vlIn, vuLt, vfEc, cfEc, vnPe, vaNo, vmEs, vdIa, vsEr, vsR1, vnUm,  ;
         vtOt, ctOt
 RELEASE vtDo, vdOc, voP1, voP2, voP3, vvEn, vnVe, vtIt, vnTi, vcLi, vsUc,  ;
         vrUc, vnOm
 RELEASE vtCl, vnTc, vfPa, vnFp, vfEm, vfVe, vpIg, vmOn, vmNd, vaCu, viNt,  ;
         tiNt, vcAn
 RELEASE vtEc, vnTe, vtCa, vfCa, vpGo, vrEn, vlE1, veSt
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file2 WITH "1", "S"
 RELEASE ntM1
ENDPROC
*
