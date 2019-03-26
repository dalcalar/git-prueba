 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[10, 4]
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
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Proveedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "3210", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Letras_Prv
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3210LET
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "3520", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "3521", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "3540", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "3541", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "3600", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Pend_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "3601", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Ctas_Ini
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3601DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "3602", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ctas_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3602TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "9210", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Tipo_Prv
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
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
 SELECT caB_cpra
 STORE 00 TO meRr
 PUBLIC vlIn, vuLt, vfEc, cfEc, vnPe, vaNo, vmEs, vdIa, vsEr, vsR1, vsRr,  ;
        vfAc, vnUm
 PUBLIC vtOt, ctOt, vtDo, vtD1, vdOc, voP1, voP2, vpRv, vsUc, vrUc, vnOm,  ;
        vtPr, vnTp
 PUBLIC vfPa, vnFp, vfEm, vfVe, vpIg, vmOn, vmNd, vaCu, vtCa, vfCa, vpGo,  ;
        vrEn, vpEd
 PUBLIC vtIt, vnTi, vpLa
 PUBLIC vpAn_11
 STORE DATE() TO vfEc
 STORE "S" TO vnPe
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9994a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9994a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9994a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9994a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9994a WITH "1"
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
                     DO veR_9994a
                     IF mkEy=k_Esc
                          STORE "Verificación cortada..." TO mmSj
                          STORE 99 TO mkEy
                          DO poNmsj
                          = INKEY(0.05)
                     ENDIF
                     DO CASE
                          CASE maRe="BN"
                               @mFI0+16,mCO0+1 Say "Presionar una tecla para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "BT" Color 0
                          OTHERWISE
                               @mFI0+16,mCO0+1 Say "Presionar una tecla para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "BT" Color 4
                     ENDCASE
                     mkEy = INKEY(0)
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     @mFI0+16,mCO0+1 Say Space(50) Font "&mLetCou",9 Style "BQ" Size 1,64
                ENDIF
                DO prE_docum WITH "¿Desea recalcular Cuentas?"
                IF moPc$"Ss"
                     DO caL_9994a
                ENDIF
                EXIT
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_9994a
 DO coLsc3
 STORE mfI0+2.5 TO vlIn
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 @mFI0+0.0,mCO0+06 Say "Salidas de Caja"   Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+36 Say "Salidas de Bancos" Font "&mLetCou",9 Style "NQ"
 @mFI0+2.0,mCO0+02 Say "Presionar ENTER o TAB para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "NQ" Size 1,68
 STORE 1 TO voP1, voP2
 DO prEsiona WITH "1", "SI", mfI0, mcO0+02
 DO prEsiona WITH "1", "SI", mfI0, mcO0+32
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
 DO CASE
      CASE maRe="BN"
           DO coLbln
      OTHERWISE
           DO coLsc3
 ENDCASE
 IF voP1=1
      DO caJ_9994a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+3 TO vlIn
 ENDIF
 IF voP2=1
      DO baN_9994a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+3 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Caj_9994a
 PRIVATE prEc, plIn
 STORE 0 TO plIn
 DO CASE
      CASE maRe="BN"
           DO coLbln
      OTHERWISE
           DO coLsc3
 ENDCASE
 DO CASE
      CASE maRe="BN"
           @vLIN+0,mCO0+1 Say "Verificación de Caja Salidas-1:" Font "&mLetCou",9 Style "NT" Color 0
           @vLIN+1,mCO0+1 Say "Verificación de Caja Salidas-2:" Font "&mLetCou",9 Style "NT" Color 0
      OTHERWISE
           @vLIN+0,mCO0+1 Say "Verificación de Caja Salidas-1:" Font "&mLetCou",9 Style "NT" Color 1
           @vLIN+1,mCO0+1 Say "Verificación de Caja Salidas-2:" Font "&mLetCou",9 Style "NT" Color 1
 ENDCASE
 SELECT deT_sal_caja
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
      STORE f3521ano TO vaNo
      STORE f3521mes TO vmEs
      STORE f3521ser TO vsEr
      STORE f3521num TO vnUm
      STORE f3521tdo TO vtDo
      STORE f3521sr1 TO vsR1
      STORE f3521doc TO vdOc
      STORE 0 TO vsW0
      DO CASE
           CASE maRe="BN"
                DO coLbln
           OTHERWISE
                DO coLscr
      ENDCASE
      DO CASE
           CASE vtDo="LP"
                SELECT leTras_prv
                SEEK vsR1+vdOc
                DO CASE
                     CASE f3210est="9"
                          IF vlIn+plIn>=mfI0+muFi-2
                               mkEy = INKEY(0, "HM")
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                               DO coLsc3
                               @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
                               STORE 0 TO plIn
                          ENDIF
                          @vLIN+pLIN,mCO0+86 Say "Anulado: LE:"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                          STORE plIn+1 TO plIn
                          STORE 1 TO vsW0
                     CASE EOF()
                          SELECT ctAs_ini
                          SEEK vtDo+vsR1+vdOc
                          IF EOF()
                               IF vlIn+plIn>=mfI0+muFi-2
                                    mkEy = INKEY(0, "HM")
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                                    DO coLsc3
                                    @ vlIn, mcO0+86 CLEAR TO vlIn+plIn,  ;
                                      mcO0+muCo-1
                                    STORE 0 TO plIn
                               ENDIF
                               @vLIN+pLIN,mCO0+86 Say "Doc.Borrado: LE:"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               @vLIN+pLIN,mCO0+86 Say "Caja:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               STORE 1 TO vsW0
                          ENDIF
                ENDCASE
           OTHERWISE
                SELECT caB_cpra
                SEEK vtDo+vsR1+vdOc
                DO CASE
                     CASE f2400est="9"
                          IF vlIn+plIn>=mfI0+muFi-2
                               mkEy = INKEY(0, "HM")
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                               DO coLsc3
                               @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
                               STORE 0 TO plIn
                          ENDIF
                          @vLIN+pLIN,mCO0+86 Say "Anulado:"+vTDO+":"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                          STORE plIn+1 TO plIn
                          STORE 1 TO vsW0
                     CASE EOF()
                          SELECT ctAs_ini
                          SEEK vtDo+vsR1+vdOc
                          IF EOF()
                               IF vlIn+plIn>=mfI0+muFi-2
                                    mkEy = INKEY(0, "HM")
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                                    DO coLsc3
                                    @ vlIn, mcO0+86 CLEAR TO vlIn+plIn,  ;
                                      mcO0+muCo-1
                                    STORE 0 TO plIn
                               ENDIF
                               @vLIN+pLIN,mCO0+86 Say "Doc.Borrado:"+vTDO+":"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               @vLIN+pLIN,mCO0+86 Say "Caja:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               STORE 1 TO vsW0
                          ENDIF
                ENDCASE
      ENDCASE
      SELECT caB_sal_caja
      SEEK vaNo+vmEs+vsEr+vnUm
      IF f3520est="9" .OR. (EOF() .AND. vsW0=1) .OR. vsW0=1
           IF vlIn+plIn>=mfI0+muFi-2
                mkEy = INKEY(0, "HM")
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO coLsc3
                @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
                STORE 0 TO plIn
           ENDIF
           @vLIN+pLIN,mCO0+86 Say "Borrando Det:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
           STORE plIn+1 TO plIn
           SELECT deT_sal_caja
           DELETE
           IF RECNO()=prEc
                SKIP
           ENDIF
           LOOP
      ELSE
           IF EOF() .AND. vsW0=0
                SELECT caB_sal_caja
                APPEND BLANK
                REPLACE f3520ano WITH vaNo
                REPLACE f3520mes WITH vmEs
                REPLACE f3520ser WITH vsEr
                REPLACE f3520num WITH vnUm
                REPLACE f3520dia WITH "30"
                REPLACE f3520tpo WITH 3
                REPLACE f3520tpp WITH 1
                REPLACE f3520caj WITH 1
                REPLACE f3520tip WITH "01"
                REPLACE f3520nti WITH "pago de compras"
                REPLACE f3520tca WITH 3.45
                REPLACE f3520mon WITH 1
                REPLACE f3520tot WITH 0
                REPLACE f3520srl WITH "001"
                REPLACE f3520est WITH "1"
                REPLACE f3520usu WITH "Karina*"
                REPLACE f3520dat WITH DATE()
                REPLACE f3520tim WITH TIME()
           ENDIF
      ENDIF
      SELECT deT_sal_caja
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
 DO CASE
      CASE maRe="BN"
           DO coLbln
      OTHERWISE
           DO coLsc3
 ENDCASE
 SELECT deT_sal_caja
 DO orD_0000a WITH "3521", "C", "F3521NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sal_caja
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN+1,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN+1,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN+1,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE f3520ano TO vaNo
      STORE f3520mes TO vmEs
      STORE f3520ser TO vsEr
      STORE f3520num TO vnUm
      IF f3520est<>"9" .AND. f3520tpo<>2 .AND. f3520tpo<>4
           STORE 0 TO vtOt
           SELECT deT_sal_caja
           SEEK vaNo+vmEs+vsEr+vnUm
           DO WHILE  .NOT. EOF() .AND. f3521ano+f3521mes+f3521ser+ ;
              f3521num=vaNo+vmEs+vsEr+vnUm
                STORE vtOt+f3521pag TO vtOt
                SKIP
           ENDDO
           SELECT caB_sal_caja
           IF f3520tot<>vtOt
                @vLIN+1,mCO0+86 Say "Modif.Tot:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                REPLACE f3520tot WITH vtOt
           ENDIF
      ENDIF
      SELECT caB_sal_caja
      SKIP
 ENDDO
 RELEASE prEc, plIn
ENDPROC
*
PROCEDURE Ban_9994a
 PRIVATE prEc, plIn
 STORE 0 TO plIn
 DO CASE
      CASE maRe="BN"
           DO coLbln
      OTHERWISE
           DO coLsc3
 ENDCASE
 DO CASE
      CASE maRe="BN"
           @vLIN+0,mCO0+1 Say "Verificación de Ingr.a Bancos-1:" Font "&mLetCou",9 Style "NT" Color 0
           @vLIN+1,mCO0+1 Say "Verificación de Ingr.a Bancos-2:" Font "&mLetCou",9 Style "NT" Color 0
      OTHERWISE
           @vLIN+0,mCO0+1 Say "Verificación de Ingr.a Bancos-1:" Font "&mLetCou",9 Style "NT" Color 1
           @vLIN+1,mCO0+1 Say "Verificación de Ingr.a Bancos-2:" Font "&mLetCou",9 Style "NT" Color 1
 ENDCASE
 SELECT deT_sal_bancos
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      DO CASE
           CASE maRe="BN"
                DO coLbln
           OTHERWISE
                DO coLsc3
      ENDCASE
      @vLIN,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE RECNO() TO prEc
      STORE f3541ano TO vaNo
      STORE f3541mes TO vmEs
      STORE f3541ser TO vsEr
      STORE f3541num TO vnUm
      STORE f3541tdo TO vtDo
      STORE f3541sr1 TO vsR1
      STORE f3541doc TO vdOc
      STORE 0 TO vsW0
      DO CASE
           CASE maRe="BN"
                DO coLbln
           OTHERWISE
                DO coLscr
      ENDCASE
      DO CASE
           CASE vtDo="LP"
                SELECT leTras_prv
                SEEK vsR1+vdOc
                DO CASE
                     CASE f3210est="9"
                          IF vlIn+plIn>=mfI0+muFi-2
                               mkEy = INKEY(0, "HM")
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                               DO coLsc3
                               @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
                               STORE 0 TO plIn
                          ENDIF
                          @vLIN+pLIN,mCO0+86 Say "Anulado: LE:"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                          STORE plIn+1 TO plIn
                          STORE 1 TO vsW0
                     CASE EOF()
                          SELECT ctAs_ini
                          SEEK vtDo+vsR1+vdOc
                          IF EOF()
                               IF vlIn+plIn>=mfI0+muFi-2
                                    mkEy = INKEY(0, "HM")
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                                    DO coLsc3
                                    @ vlIn, mcO0+86 CLEAR TO vlIn+plIn,  ;
                                      mcO0+muCo-1
                                    STORE 0 TO plIn
                               ENDIF
                               @vLIN+pLIN,mCO0+86 Say "Doc.Borrado: LE:"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               @vLIN+pLIN,mCO0+86 Say "Bancos:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               STORE 1 TO vsW0
                          ENDIF
                ENDCASE
           OTHERWISE
                SELECT caB_cpra
                SEEK vtDo+vsR1+vdOc
                DO CASE
                     CASE f2400est="9"
                          IF vlIn+plIn>=mfI0+muFi-2
                               mkEy = INKEY(0, "HM")
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                               DO coLsc3
                               @ vlIn, mcO0+86 CLEAR TO vlIn+plIn, mcO0+muCo-1
                               STORE 0 TO plIn
                          ENDIF
                          @vLIN+pLIN,mCO0+86 Say "Anulado:"+vTDO+":"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                          STORE plIn+1 TO plIn
                          STORE 1 TO vsW0
                     CASE EOF()
                          SELECT ctAs_ini
                          SEEK vtDo+vsR1+vdOc
                          IF EOF()
                               IF vlIn+plIn>=mfI0+muFi-2
                                    mkEy = INKEY(0, "HM")
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                                    DO coLsc3
                                    @ vlIn, mcO0+86 CLEAR TO vlIn+plIn,  ;
                                      mcO0+muCo-1
                                    STORE 0 TO plIn
                               ENDIF
                               @vLIN+pLIN,mCO0+86 Say "Doc.Borrado:"+vTDO+":"+vSR1+"-"+vDOC Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               @vLIN+pLIN,mCO0+86 Say "Bancos:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                               STORE plIn+1 TO plIn
                               STORE 1 TO vsW0
                          ENDIF
                ENDCASE
      ENDCASE
      SELECT caB_sal_bancos
      SEEK vaNo+vmEs+vsEr+vnUm
      IF f3540est="9" .OR. (EOF() .AND. vsW0=1) .OR. vsW0=1
           @vLIN,mCO0+86 Say "Borrando Det:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
           SELECT deT_sal_bancos
           DELETE
           IF RECNO()=prEc
                SKIP
           ENDIF
           LOOP
      ELSE
           IF EOF() .AND. vsW0=0
                SELECT caB_sal_bancos
                APPEND BLANK
                REPLACE f3540ano WITH vaNo
                REPLACE f3540mes WITH vmEs
                REPLACE f3540ser WITH vsEr
                REPLACE f3540num WITH vnUm
                REPLACE f3540dia WITH "30"
                REPLACE f3540tpo WITH 3
                REPLACE f3540tpp WITH 1
                REPLACE f3540caj WITH 1
                REPLACE f3540tip WITH "01"
                REPLACE f3540nti WITH "pago de compras"
                REPLACE f3540tca WITH 3.45
                REPLACE f3540mon WITH 1
                REPLACE f3540tot WITH 0
                REPLACE f3540srl WITH "001"
                REPLACE f3540est WITH "1"
                REPLACE f3540usu WITH "Karina*"
                REPLACE f3540dat WITH DATE()
                REPLACE f3540tim WITH TIME()
           ENDIF
      ENDIF
      SELECT deT_sal_bancos
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
 DO CASE
      CASE maRe="BN"
           DO coLbln
      OTHERWISE
           DO coLsc3
 ENDCASE
 SELECT deT_sal_bancos
 DO orD_0000a WITH "3541", "C", "F3541NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sal_bancos
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vuLt
 @vLIN+1,mCO0+64 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN+1,mCO0+67 Say vULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN+1,mCO0+46 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      STORE f3540ano TO vaNo
      STORE f3540mes TO vmEs
      STORE f3540ser TO vsEr
      STORE f3540num TO vnUm
      IF f3540est<>"9" .AND. f3540tpo<>2 .AND. f3540tpo<>3 .AND. f3540tpo<>5
           STORE 0 TO vtOt
           SELECT deT_sal_bancos
           SEEK vaNo+vmEs+vsEr+vnUm
           DO WHILE  .NOT. EOF() .AND. f3541ano+f3541mes+f3541ser+ ;
              f3541num=vaNo+vmEs+vsEr+vnUm
                STORE vtOt+f3541pag TO vtOt
                SKIP
           ENDDO
           SELECT caB_sal_bancos
           IF f3540tot<>vtOt
                @vLIN+1,mCO0+86 Say "Modificando Tot.:"+vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetCou",9 Style "NQ" Size 1,27
                REPLACE f3540tot WITH vtOt
           ENDIF
      ENDIF
      SELECT caB_sal_bancos
      SKIP
 ENDDO
 RELEASE prEc, plIn
ENDPROC
*
PROCEDURE Cal_9994a
 DO coLsc3
 STORE mfI0 TO vlIn
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 SELECT peNd_cpras
 ZAP
 REINDEX
 SELECT ctAs_tot
 ZAP
 REINDEX
 @vLIN,mCO0+1 Say "Ctas.Iniciales:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT ctAs_ini
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3601TDO+":"+F3601SER+"-"+F3601DOC Font "&mLetCou",8 Style "NQ"
      IF f3601tot-f3601acu<>0 .AND. f3601fem<=vfEc
           STORE f3601tdo TO vtDo
           STORE f3601ser TO vsEr
           STORE f3601doc TO vdOc
           STORE f3601prv TO vpRv
           STORE f3601suc TO vsUc
           STORE f3601ruc TO vrUc
           STORE f3601nom TO vnOm
           STORE f3601tpr TO vtPr
           STORE f3601ntp TO vnTp
           STORE f3601fpa TO vfPa
           STORE f3601nfp TO vnFp
           STORE f3601fem TO vfEm
           STORE f3601fve TO vfVe
           STORE f3601pig TO vpIg
           STORE f3601mon TO vmOn
           STORE f3601tot TO vtOt
           STORE f3601acu TO vaCu
           STORE f3601td1 TO vtD1
           STORE f3601sr1 TO vsR1
           STORE f3601do1 TO vfAc
           SELECT prOveedores
           SEEK vpRv
           IF  .NOT. EOF()
                IF LEN(ALLTRIM(vrUc))=0
                     STORE f2101ruc TO vrUc
                ENDIF
           ENDIF
           SELECT peNd_cpras
           DO nuEvo_rg
           REPLACE f3600tdo WITH vtDo
           REPLACE f3600ser WITH vsEr
           REPLACE f3600doc WITH vdOc
           REPLACE f3600td1 WITH vtD1
           REPLACE f3600sr1 WITH vsR1
           REPLACE f3600do1 WITH vfAc
           REPLACE f3600prv WITH vpRv
           REPLACE f3600suc WITH vsUc
           REPLACE f3600ruc WITH vrUc
           REPLACE f3600nom WITH vnOm
           REPLACE f3600tpr WITH vtPr
           REPLACE f3600ntp WITH vnTp
           REPLACE f3600fpa WITH vfPa
           REPLACE f3600nfp WITH vnFp
           REPLACE f3600fem WITH vfEm
           REPLACE f3600fve WITH vfVe
           REPLACE f3600fca WITH CTOD("  /  /    ")
           REPLACE f3600pre WITH CTOD("  /  /    ")
           REPLACE f3600ped WITH SPACE(07)
           REPLACE f3600mon WITH vmOn
           REPLACE f3600pig WITH vpIg
           REPLACE f3600tot WITH vtOt
           REPLACE f3600acu WITH vaCu
           REPLACE f3600est WITH SPACE(01)
      ENDIF
      SELECT ctAs_ini
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Compras:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT caB_cpra
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f2400est<>"9" .AND. f2400est<>"1" .AND. f2400fem<=vfEc
           IF vnPe="N" .AND. f2400tdo="NP"
                SKIP
                LOOP
           ENDIF
           @vLIN,mCO0+1 Say F2400TDO+":"+F2400SER+"-"+F2400DOC Font "&mLetCou",8 Style "NQ"
           STORE f2400tdo TO vtDo
           STORE f2400ser TO vsEr
           STORE f2400doc TO vdOc
           STORE f2400prv TO vpRv
           STORE f2400suc TO vsUc
           STORE f2400ruc TO vrUc
           STORE f2400nom TO vnOm
           STORE f2400tit TO vtIt
           STORE f2400nti TO vnTi
           STORE f2400pla TO vpLa
           STORE f2400fpa TO vfPa
           STORE f2400nfp TO vnFp
           STORE f2400fem TO vfEm
           STORE f2400dia TO vdIa
           STORE f2400mon TO vmOn
           STORE f2400pig TO vpIg
           STORE f2400tot TO vtOt
           STORE f2400td1 TO vtD1
           STORE f2400sr1 TO vsR1
           STORE f2400fac TO vfAc
           STORE f2400ped TO vpEd
           SELECT prOveedores
           SEEK vpRv
           STORE f2101tip TO vtPr
           SELECT tiPo_prv
           SEEK vtPr
           STORE f9210nti TO vnTp
           SELECT peNd_cpras
           DO nuEvo_rg
           REPLACE f3600tdo WITH vtDo
           REPLACE f3600ser WITH vsEr
           REPLACE f3600doc WITH vdOc
           REPLACE f3600td1 WITH vtD1
           REPLACE f3600sr1 WITH vsR1
           REPLACE f3600do1 WITH vfAc
           REPLACE f3600prv WITH vpRv
           REPLACE f3600suc WITH vsUc
           REPLACE f3600ruc WITH vrUc
           REPLACE f3600nom WITH vnOm
           REPLACE f3600tit WITH vtIt
           REPLACE f3600nti WITH vnTi
           REPLACE f3600pla WITH vpLa
           REPLACE f3600tpr WITH vtPr
           REPLACE f3600ntp WITH vnTp
           REPLACE f3600fpa WITH vfPa
           REPLACE f3600nfp WITH vnFp
           REPLACE f3600fem WITH vfEm
           REPLACE f3600fve WITH vfEm+vdIa
           REPLACE f3600fca WITH CTOD("  /  /    ")
           REPLACE f3600pre WITH CTOD("  /  /    ")
           REPLACE f3600ped WITH vpEd
           REPLACE f3600mon WITH vmOn
           REPLACE f3600pig WITH vpIg
           REPLACE f3600tot WITH vtOt
           REPLACE f3600acu WITH 0.00
           REPLACE f3600est WITH SPACE(01)
      ENDIF
      SELECT caB_cpra
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Letras:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT leTras_prv
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3210SER+"-"+F3210LET Font "&mLetCou",8 Style "NQ"
      IF f3210est<>"9" .AND. f3210est<>"1" .AND. f3210fem<=vfEc
           STORE f3210ser TO vsEr
           STORE f3210let TO vdOc
           STORE f3210prv TO vpRv
           STORE f3210suc TO vsUc
           STORE f3210ruc TO vrUc
           STORE f3210nom TO vnOm
           STORE f3210fem TO vfEm
           STORE f3210fve TO vfVe
           STORE f3210mon TO vmOn
           STORE f3210pig TO vpIg
           STORE f3210tot TO vtOt
           SELECT prOveedores
           SEEK vpRv
           STORE f2101tip TO vtPr
           SELECT tiPo_prv
           SEEK vtPr
           STORE f9210nti TO vnTp
           SELECT peNd_cpras
           DO nuEvo_rg
           REPLACE f3600tdo WITH "LP"
           REPLACE f3600ser WITH vsEr
           REPLACE f3600doc WITH vdOc
           REPLACE f3600prv WITH vpRv
           REPLACE f3600suc WITH vsUc
           REPLACE f3600ruc WITH vrUc
           REPLACE f3600nom WITH vnOm
           REPLACE f3600tpr WITH vtPr
           REPLACE f3600ntp WITH vnTp
           REPLACE f3600td1 WITH "LP"
           REPLACE f3600sr1 WITH vsEr
           REPLACE f3600do1 WITH vdOc
           REPLACE f3600fpa WITH SPACE(02)
           REPLACE f3600nfp WITH SPACE(50)
           REPLACE f3600fem WITH vfEm
           REPLACE f3600fve WITH vfVe
           REPLACE f3600fca WITH CTOD("  /  /    ")
           REPLACE f3600pre WITH CTOD("  /  /    ")
           REPLACE f3600ped WITH SPACE(07)
           REPLACE f3600mon WITH vmOn
           REPLACE f3600pig WITH vpIg
           REPLACE f3600tot WITH vtOt
           REPLACE f3600acu WITH 0.00
           REPLACE f3600est WITH SPACE(01)
      ENDIF
      SELECT leTras_prv
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Cobranzas:" Font "&mLetCou",8 Style "BQ"
 STORE vlIn+1 TO vlIn
 SELECT caB_sal_caja
 DO orD_0000a WITH "3520", "C", "F3520NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sal_caja
 DO orD_0000a WITH "3521", "C", "F3521DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sal_bancos
 DO orD_0000a WITH "3540", "C", "F3540NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sal_bancos
 DO orD_0000a WITH "3541", "C", "F3541DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT peNd_cpras
 GOTO TOP
 DO WHILE  .NOT. EOF()
      @vLIN,mCO0+1 Say F3600TDO+":"+F3600SER+"-"+F3600DOC Font "&mLetCou",8 Style "NQ"
      STORE f3600tdo TO vtDo
      STORE f3600ser TO vsEr
      STORE f3600doc TO vdOc
      STORE f3600mon TO vmOn
      STORE f3600tot TO vtOt, ctOt
      STORE f3600fem TO vfEm
      STORE f3600fve TO vfVe
      STORE f3600td1 TO vtD1
      STORE f3600sr1 TO vsR1
      IF f3600fem>vfEc
           SKIP
           LOOP
      ENDIF
      SELECT paGos
      ZAP
      REINDEX
      SELECT deT_sal_caja
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f3521tdo+f3521sr1+f3521doc=vtDo+vsEr+vdOc
           STORE f3521ano TO vaNo
           STORE f3521mes TO vmEs
           STORE f3521ser TO vsRr
           STORE f3521num TO vnUm
           STORE f3521pag TO vpGo
           SELECT caB_sal_caja
           SEEK vaNo+vmEs+vsRr+vnUm
           IF  .NOT. EOF() .AND. f3520est<>"9" .AND. CTOD(f3520dia+"/"+ ;
               vmEs+"/"+vaNo)<=vfEc
                STORE f3520dia TO vdIa
                STORE f3520tpo TO vtPo
                STORE f3520mon TO vmNd
                STORE f3520tca TO vtCa
                SELECT paGos
                DO nuEvo_rg
                REPLACE ftM1ano WITH vaNo
                REPLACE ftM1mes WITH vmEs
                REPLACE ftM1dia WITH vdIa
                REPLACE ftM1tpo WITH vtPo
                REPLACE ftM1ttt WITH "1"
                REPLACE ftM1ser WITH vsRr
                REPLACE ftM1num WITH vnUm
                REPLACE ftM1mon WITH vmNd
                REPLACE ftM1tca WITH vtCa
                REPLACE ftM1pgo WITH vpGo
           ENDIF
           SELECT deT_sal_caja
           SKIP
      ENDDO
      SELECT deT_sal_bancos
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=vtDo+vsEr+vdOc
           STORE f3541ano TO vaNo
           STORE f3541mes TO vmEs
           STORE f3541ser TO vsRr
           STORE f3541num TO vnUm
           STORE f3541pag TO vpGo
           SELECT caB_sal_bancos
           SEEK vaNo+vmEs+vsRr+vnUm
           IF  .NOT. EOF() .AND. f3540est<>"9" .AND. CTOD(f3540dia+"/"+ ;
               vmEs+"/"+vaNo)<=vfEc
                STORE f3540dia TO vdIa
                STORE f3540tpo TO vtPo
                STORE f3540mon TO vmNd
                STORE f3540tca TO vtCa
                SELECT paGos
                DO nuEvo_rg
                REPLACE ftM1ano WITH vaNo
                REPLACE ftM1mes WITH vmEs
                REPLACE ftM1dia WITH vdIa
                REPLACE ftM1tpo WITH vtPo
                REPLACE ftM1ttt WITH "2"
                REPLACE ftM1ser WITH vsRr
                REPLACE ftM1num WITH vnUm
                REPLACE ftM1mon WITH vmNd
                REPLACE ftM1tca WITH vtCa
                REPLACE ftM1pgo WITH vpGo
           ENDIF
           SELECT deT_sal_bancos
           SKIP
      ENDDO
      SELECT ctAs_ini
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF() .AND. f3601acu<>0 .AND. f3601fem<=vfEc
           STORE SUBSTR(DTOC(f3601fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f3601fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f3601fem), 1, 2) TO vdIa
           STORE f3601acu TO vpGo
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
      STORE 00 TO vaCu, vrEn
      STORE CTOD("  /  /    ") TO vfCa
      SELECT paGos
      GOTO TOP
      DO WHILE  .NOT. EOF()
           IF ftM1tpo=1
                STORE vrEn+1 TO vrEn
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
           STORE vtOt-vpGo TO vtOt
           STORE vaCu+vpGo TO vaCu
           IF vfCa=CTOD("  /  /    ") .OR. vfCa<CTOD(ftM1dia+"/"+ftM1mes+ ;
              "/"+ftM1ano)
                STORE CTOD(ftM1dia+"/"+ftM1mes+"/"+ftM1ano) TO vfCa
           ENDIF
           SKIP
      ENDDO
      SELECT peNd_cpras
      REPLACE f3600acu WITH vaCu
      IF f3600tot-f3600acu=0 .AND. vrEn=0
           REPLACE f3600fca WITH vfCa
           REPLACE f3600est WITH "@"
      ELSE
           REPLACE f3600fca WITH CTOD("  /  /    ")
           REPLACE f3600est WITH " "
      ENDIF
      SELECT ctAs_tot
      SEEK vtD1+vsR1
      IF EOF()
           DO nuEvo_rg
           REPLACE f3602tdo WITH vtD1
           REPLACE f3602ser WITH vsR1
           REPLACE f3602to1 WITH 0
           REPLACE f3602ac1 WITH 0
           REPLACE f3602to2 WITH 0
           REPLACE f3602ac2 WITH 0
      ENDIF
      DO CASE
           CASE vmOn=1 .AND. vtD1="NC"
                REPLACE f3602to1 WITH f3602to1-ctOt
                REPLACE f3602ac1 WITH f3602ac1-vaCu
           CASE vmOn=1
                REPLACE f3602to1 WITH f3602to1+ctOt
                REPLACE f3602ac1 WITH f3602ac1+vaCu
           CASE vmOn=2 .AND. vtD1="NC"
                REPLACE f3602to2 WITH f3602to2-ctOt
                REPLACE f3602ac2 WITH f3602ac2-vaCu
           CASE vmOn=2
                REPLACE f3602to2 WITH f3602to2+ctOt
                REPLACE f3602ac2 WITH f3602ac2+vaCu
      ENDCASE
      SELECT peNd_cpras
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_9994a
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
 DO tiT_0000a WITH "Reorganiza Cuentas x Pagar"
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
 @mFI0+06.5,mCO0+12 Say "mentos y sus pagos, para recalcular los saldos."                   Font "&mLetRom",14 Style "NQ"
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
PROCEDURE Clp_9994a
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
PROCEDURE Hl1_9994a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, verifica que los datos de los siguientes documentos, se"
 @ pfIl+01, 02 SAY  ;
   "encuentren correctamente grabados: Compras, Letras de Proveedores, "
 @ pfIl+02, 02 SAY  ;
   "Notas Notas Contables, Gastos.  Luego, recalcula las Cuentas x Pagar."
 @ pfIl+03, 02 SAY  ;
   "Por lo general, esto se debe hacer en casos de corte de fluído eléctrico."
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
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vlIn, vuLt, vfEc, cfEc, vnPe, vaNo, vmEs, vdIa, vsEr, vsR1, vsRr,  ;
         vfAc, vnUm
 RELEASE vtOt, ctOt, vtDo, vtD1, vdOc, voP1, voP2, vpRv, vsUc, vrUc, vnOm,  ;
         vtPr, vnTp
 RELEASE vfPa, vnFp, vfEm, vfVe, vpIg, vmOn, vmNd, vaCu, vtCa, vfCa, vpGo,  ;
         vrEn, vpEd
 RELEASE vtIt, vnTi, vpLa
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
