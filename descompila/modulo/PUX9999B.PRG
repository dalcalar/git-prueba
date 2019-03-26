*
PROCEDURE Doc_9999b
 DO coLsc3
 STORE mfI0+2.5 TO vlIn
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 @mFI0+0.0,mCO0+06 Say "Compras"           Font "&mLetCou",9 Style "NQ"
 @mFI0+1.5,mCO0+06 Say "Guías de Ingreso"  Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+36 Say "Guías de Salida"   Font "&mLetCou",9 Style "NQ"
 @mFI0+1.5,mCO0+36 Say "Guías de Remisión" Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+66 Say "Facturas/Boletas"  Font "&mLetCou",9 Style "NQ"
 @mFI0+1.5,mCO0+66 Say "Pedidos"           Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+96 Say "Listas"            Font "&mLetCou",9 Style "NQ"
 @mFI0+1.5,mCO0+96 Say "Conjuntos"         Font "&mLetCou",9 Style "NQ"
 STORE 1 TO voP1, voP2, voP3, voP4, voP5, voP6, voP7, voP8
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+02
 DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+02
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+32
 DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+32
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+62
 DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+62
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+92
 DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+92
 STORE k_Enter TO mkEy
 IF vaUt=2
      @mFI0+3.0,mCO0+02 Say "Presionar ENTER o TAB para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "NQ" Size 1,77
      DO WHILE .T.
           mkEy = INKEY(0, "HM")
           IF mkEy=k_Clic
                DO clP_coo
                DO CASE
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+2.00 .AND. mcCc<=mcO0+4.400 .AND. voP1=0
                          STORE 01 TO voP1
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0, mcO0+02
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+2.00 .AND. mcCc<=mcO0+4.400 .AND. voP1=1
                          STORE 00 TO voP1
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0, mcO0+02
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+2.00 .AND. mcCc<=mcO0+4.400 .AND. voP2=0
                          STORE 01 TO voP2
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+02
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+2.00 .AND. mcCc<=mcO0+4.400 .AND. voP2=1
                          STORE 00 TO voP2
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0+1.5, mcO0+02
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+32.0 .AND. mcCc<=mcO0+34.40 .AND. voP3=0
                          STORE 01 TO voP3
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0, mcO0+32
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+32.0 .AND. mcCc<=mcO0+34.40 .AND. voP3=1
                          STORE 00 TO voP3
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0, mcO0+32
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+32.0 .AND. mcCc<=mcO0+34.40 .AND. voP4=0
                          STORE 01 TO voP4
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+32
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+32.0 .AND. mcCc<=mcO0+34.40 .AND. voP4=1
                          STORE 00 TO voP4
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0+1.5, mcO0+32
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+62.0 .AND. mcCc<=mcO0+64.40 .AND. voP5=0
                          STORE 01 TO voP5
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0, mcO0+62
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+62.0 .AND. mcCc<=mcO0+64.40 .AND. voP5=1
                          STORE 00 TO voP5
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0, mcO0+62
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+62.0 .AND. mcCc<=mcO0+64.40 .AND. voP6=0
                          STORE 01 TO voP6
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+62
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+62.0 .AND. mcCc<=mcO0+64.40 .AND. voP6=1
                          STORE 00 TO voP6
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0+1.5, mcO0+62
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+92.0 .AND. mcCc<=mcO0+94.40 .AND. voP7=0
                          STORE 01 TO voP7
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0, mcO0+92
                     CASE mfIl>=mfI0 .AND. mfIl<=mfI0+0.821 .AND. mcCc>= ;
                          mcO0+92.0 .AND. mcCc<=mcO0+94.40 .AND. voP7=1
                          STORE 00 TO voP7
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0, mcO0+92
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+92.0 .AND. mcCc<=mcO0+94.40 .AND. voP8=0
                          STORE 01 TO voP8
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+92
                     CASE mfIl>=mfI0+1.50 .AND. mfIl<=mfI0+2.393 .AND.  ;
                          mcCc>=mcO0+92.0 .AND. mcCc<=mcO0+94.40 .AND. voP8=1
                          STORE 00 TO voP8
                          STORE 99 TO mkEy
                          DO prEsiona WITH "1", "NO", mfI0+1.5, mcO0+92
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
      @mFI0+3,mCO0+2 Say Space(50) Font "&mLetCou",9 Style "NQ" Size 1,77
      IF mkEy<>k_Enter
           RETURN
      ENDIF
 ENDIF
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 REPLACE f2111mov WITH " " ALL
 DO coLsc3
 IF voP1=1
      DO cpR_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP2=1
      DO enT_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP3=1
      DO saL_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP4=1
      DO reM_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP5=1
      DO faC_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP6=1
      DO peD_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP7=1
      DO liS_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP8=1
      DO cjN_9999b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cpr_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt, pcAj, piTe, ppEd, vsEc
 STORE vlIn+1 TO vlIn
 @vLIN+0,mCO0+1 Say "Leyendo Detalle Principal de Compras:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Leyendo Detalle de ítems de Compras:"  Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+2,mCO0+1 Say "Leyendo Detalle de Series de Compras:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_cpra
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_cpra
 SET ORDER TO
 SELECT itE_cpra
 SET ORDER TO
 SELECT seR_cpra
 DO orD_0000a WITH "2403", "A", "F2403DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 SELECT deT_cpra
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2401tdo TO ptDo
           STORE f2401ser TO psEr
           STORE f2401doc TO pdOc
           SELECT caB_cpra
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2400est="9"
                SELECT deT_cpra
                @vLIN,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                REPLACE f2401tdo WITH SPACE(02)
                REPLACE f2401ser WITH SPACE(03)
                REPLACE f2401doc WITH SPACE(07)
                REPLACE f2401cod WITH SPACE(mtMa)
                REPLACE f2401ite WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT deT_cpra
           STORE f2401ite TO piTe
           STORE f2401cod TO pcOd
           STORE f2401des TO pdEs
           STORE f2401nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1ser WITH psEr
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT seR_cpra
           STORE 0 TO pcAj
           SEEK ptDo+psEr+pdOc+ALLTRIM(pcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. f2403tdo+f2403ser+f2403doc+ ;
              ALLTRIM(f2403cod)+"*"=ptDo+psEr+pdOc+ALLTRIM(pcOd)+"*"
                STORE pcAj+1 TO pcAj
                SELECT seR_cpra
                SKIP
           ENDDO
           SELECT deT_cpra
           IF f2401caj<>pcAj .AND. mcAj=1
                REPLACE f2401caj WITH pcAj
           ENDIF
           SKIP
      ENDDO
 ENDIF
 SELECT deT_cpra
 DO orD_0000a WITH "2401", "A", "F2401COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SELECT itE_cpra
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+1,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+1,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+1,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2402tdo TO ptDo
           STORE f2402ser TO psEr
           STORE f2402doc TO pdOc
           SELECT caB_cpra
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2400est="9"
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_cpra
                REPLACE f2402tdo WITH SPACE(02)
                REPLACE f2402ser WITH SPACE(03)
                REPLACE f2402doc WITH SPACE(07)
                REPLACE f2402cod WITH SPACE(mtMa)
                REPLACE f2402rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_cpra
           STORE f2402cod TO pcOd
           SELECT deT_cpra
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_cpra
                REPLACE f2402tdo WITH SPACE(02)
                REPLACE f2402ser WITH SPACE(03)
                REPLACE f2402doc WITH SPACE(07)
                REPLACE f2402cod WITH SPACE(mtMa)
                REPLACE f2402rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_cpra
           SKIP
      ENDDO
 ENDIF
 SELECT seR_cpra
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+2,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+2,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+2,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2403tdo TO ptDo
           STORE f2403ser TO psEr
           STORE f2403doc TO pdOc
           SELECT caB_cpra
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2400est="9"
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_cpra
                REPLACE f2403tdo WITH SPACE(02)
                REPLACE f2403ser WITH SPACE(03)
                REPLACE f2403doc WITH SPACE(07)
                REPLACE f2403cod WITH SPACE(mtMa)
                REPLACE f2403ped WITH SPACE(05)
                REPLACE f2403sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_cpra
           STORE f2403cod TO pcOd
           STORE f2403ped TO ppEd
           STORE f2403sec TO psEc
           SELECT deT_cpra
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_cpra
                REPLACE f2403tdo WITH SPACE(02)
                REPLACE f2403ser WITH SPACE(03)
                REPLACE f2403doc WITH SPACE(07)
                REPLACE f2403cod WITH SPACE(mtMa)
                REPLACE f2403ped WITH SPACE(05)
                REPLACE f2403sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_cpra
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+2.5 TO vlIn
ENDPROC
*
PROCEDURE Ent_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt, piTe, ppEd, vsEc
 STORE vlIn+1 TO vlIn
 @vLIN+0,mCO0+1 Say "Leyendo Detalle Principal de Entradas:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Leyendo Detalle de ítems de Entradas:"  Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+2,mCO0+1 Say "Leyendo Detalle de Series de Entradas:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_ingr
 DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ingr
 SET ORDER TO
 SELECT itE_ingr
 SET ORDER TO
 SELECT seR_ingr
 SET ORDER TO
 SELECT deT_ingr
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2701tdo TO ptDo
           STORE f2701ser TO psEr
           STORE f2701doc TO pdOc
           SELECT caB_ingr
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2700est="9"
                SELECT deT_ingr
                @vLIN,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                REPLACE f2701tdo WITH SPACE(02)
                REPLACE f2701ser WITH SPACE(03)
                REPLACE f2701doc WITH SPACE(07)
                REPLACE f2701cod WITH SPACE(mtMa)
                REPLACE f2701ite WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT deT_ingr
           STORE f2701ite TO piTe
           STORE f2701cod TO pcOd
           STORE f2701des TO pdEs
           STORE f2701nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1ser WITH psEr
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_ingr
           SKIP
      ENDDO
 ENDIF
 SELECT deT_ingr
 DO orD_0000a WITH "2701", "A", "F2701COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SELECT itE_ingr
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+1,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+1,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+1,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2702tdo TO ptDo
           STORE f2702ser TO psEr
           STORE f2702doc TO pdOc
           SELECT caB_ingr
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2700est="9"
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_ingr
                REPLACE f2702tdo WITH SPACE(02)
                REPLACE f2702ser WITH SPACE(03)
                REPLACE f2702doc WITH SPACE(07)
                REPLACE f2702cod WITH SPACE(mtMa)
                REPLACE f2702rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_ingr
           STORE f2702cod TO pcOd
           SELECT deT_ingr
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_ingr
                REPLACE f2702tdo WITH SPACE(02)
                REPLACE f2702ser WITH SPACE(03)
                REPLACE f2702doc WITH SPACE(07)
                REPLACE f2702cod WITH SPACE(mtMa)
                REPLACE f2702rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_ingr
           SKIP
      ENDDO
 ENDIF
 SELECT seR_ingr
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+2,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+2,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+2,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2703tdo TO ptDo
           STORE f2703ser TO psEr
           STORE f2703doc TO pdOc
           SELECT caB_ingr
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2700est="9"
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_ingr
                REPLACE f2703tdo WITH SPACE(02)
                REPLACE f2703ser WITH SPACE(03)
                REPLACE f2703doc WITH SPACE(07)
                REPLACE f2703cod WITH SPACE(mtMa)
                REPLACE f2703ped WITH SPACE(05)
                REPLACE f2703sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_ingr
           STORE f2703cod TO pcOd
           STORE f2703ped TO ppEd
           STORE f2703sec TO psEc
           SELECT deT_ingr
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_ingr
                REPLACE f2703tdo WITH SPACE(02)
                REPLACE f2703ser WITH SPACE(03)
                REPLACE f2703doc WITH SPACE(07)
                REPLACE f2703cod WITH SPACE(mtMa)
                REPLACE f2703ped WITH SPACE(05)
                REPLACE f2703sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_ingr
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+2.5 TO vlIn
ENDPROC
*
PROCEDURE Sal_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt, piTe, ppEd, vsEc
 STORE vlIn+1 TO vlIn
 @vLIN+0,mCO0+1 Say "Leyendo Detalle Principal de Salidas:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Leyendo Detalle de ítems de Salidas:"  Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+2,mCO0+1 Say "Leyendo Detalle de Series de Salidas:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_sali
 DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sali
 SET ORDER TO
 SELECT itE_sali
 SET ORDER TO
 SELECT seR_sali
 SET ORDER TO
 SELECT deT_sali
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2801tdo TO ptDo
           STORE f2801ser TO psEr
           STORE f2801doc TO pdOc
           SELECT caB_sali
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2800est="9"
                SELECT deT_sali
                @vLIN,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                REPLACE f2801tdo WITH SPACE(02)
                REPLACE f2801ser WITH SPACE(03)
                REPLACE f2801doc WITH SPACE(07)
                REPLACE f2801cod WITH SPACE(mtMa)
                REPLACE f2801ite WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT deT_sali
           STORE f2801ite TO piTe
           STORE f2801cod TO pcOd
           STORE f2801des TO pdEs
           STORE f2801nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1ser WITH psEr
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_sali
           SKIP
      ENDDO
 ENDIF
 SELECT deT_sali
 DO orD_0000a WITH "2801", "A", "F2801COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SELECT itE_sali
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+1,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+1,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+1,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2802tdo TO ptDo
           STORE f2802ser TO psEr
           STORE f2802doc TO pdOc
           SELECT caB_sali
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2800est="9"
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_sali
                REPLACE f2802tdo WITH SPACE(02)
                REPLACE f2802ser WITH SPACE(03)
                REPLACE f2802doc WITH SPACE(07)
                REPLACE f2802cod WITH SPACE(mtMa)
                REPLACE f2802rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_sali
           STORE f2802cod TO pcOd
           SELECT deT_sali
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_sali
                REPLACE f2802tdo WITH SPACE(02)
                REPLACE f2802ser WITH SPACE(03)
                REPLACE f2802doc WITH SPACE(07)
                REPLACE f2802cod WITH SPACE(mtMa)
                REPLACE f2802rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_sali
           SKIP
      ENDDO
 ENDIF
 SELECT seR_sali
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+2,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+2,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+2,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2803tdo TO ptDo
           STORE f2803ser TO psEr
           STORE f2803doc TO pdOc
           SELECT caB_sali
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2800est="9"
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_sali
                REPLACE f2803tdo WITH SPACE(02)
                REPLACE f2803ser WITH SPACE(03)
                REPLACE f2803doc WITH SPACE(07)
                REPLACE f2803cod WITH SPACE(mtMa)
                REPLACE f2803ped WITH SPACE(05)
                REPLACE f2803sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_sali
           STORE f2803cod TO pcOd
           STORE f2803ped TO ppEd
           STORE f2803sec TO psEc
           SELECT deT_sali
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_sali
                REPLACE f2803tdo WITH SPACE(02)
                REPLACE f2803ser WITH SPACE(03)
                REPLACE f2803doc WITH SPACE(07)
                REPLACE f2803cod WITH SPACE(mtMa)
                REPLACE f2803ped WITH SPACE(05)
                REPLACE f2803sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_sali
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+2.5 TO vlIn
ENDPROC
*
PROCEDURE Rem_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt, piTe, pcDg, ppEd, vsEc
 STORE vlIn+1 TO vlIn
 @vLIN+0,mCO0+1 Say "Leyendo Det. Principal de G.Remisión:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Leyendo Det. de ítems de G.Remisión:"  Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+2,mCO0+1 Say "Leyendo Det. de Series de G.Remisión:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+3,mCO0+1 Say "Leyendo Conjuntos de G.Remisión:"      Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_remi
 DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_remi
 SET ORDER TO
 SELECT itE_remi
 SET ORDER TO
 SELECT seR_remi
 SET ORDER TO
 SELECT coN_remi
 SET ORDER TO
 SELECT deT_remi
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2601tdo TO ptDo
           STORE f2601ser TO psEr
           STORE f2601doc TO pdOc
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89"
                SELECT deT_remi
                @vLIN,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                REPLACE f2601tdo WITH SPACE(02)
                REPLACE f2601ser WITH SPACE(03)
                REPLACE f2601doc WITH SPACE(07)
                REPLACE f2601cod WITH SPACE(mtMa)
                REPLACE f2601ite WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT deT_remi
           STORE f2601ite TO piTe
           STORE f2601cod TO pcOd
           STORE f2601des TO pdEs
           STORE f2601nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1ser WITH psEr
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_remi
           SKIP
      ENDDO
 ENDIF
 SELECT deT_remi
 DO orD_0000a WITH "2601", "A", "F2601COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SELECT itE_remi
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+1,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+1,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+1,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2602tdo TO ptDo
           STORE f2602ser TO psEr
           STORE f2602doc TO pdOc
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89"
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_remi
                REPLACE f2602tdo WITH SPACE(02)
                REPLACE f2602ser WITH SPACE(03)
                REPLACE f2602doc WITH SPACE(07)
                REPLACE f2602cod WITH SPACE(mtMa)
                REPLACE f2602rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_remi
           STORE f2602cod TO pcOd
           SELECT deT_remi
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_remi
                REPLACE f2602tdo WITH SPACE(02)
                REPLACE f2602ser WITH SPACE(03)
                REPLACE f2602doc WITH SPACE(07)
                REPLACE f2602cod WITH SPACE(mtMa)
                REPLACE f2602rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_remi
           SKIP
      ENDDO
 ENDIF
 SELECT seR_remi
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+2,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+2,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+2,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2603tdo TO ptDo
           STORE f2603ser TO psEr
           STORE f2603doc TO pdOc
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89"
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_remi
                REPLACE f2603tdo WITH SPACE(02)
                REPLACE f2603ser WITH SPACE(03)
                REPLACE f2603doc WITH SPACE(07)
                REPLACE f2603cod WITH SPACE(mtMa)
                REPLACE f2603ped WITH SPACE(05)
                REPLACE f2603sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_remi
           STORE f2603cod TO pcOd
           STORE f2603ped TO ppEd
           STORE f2603sec TO psEc
           SELECT deT_remi
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_remi
                REPLACE f2603tdo WITH SPACE(02)
                REPLACE f2603ser WITH SPACE(03)
                REPLACE f2603doc WITH SPACE(07)
                REPLACE f2603cod WITH SPACE(mtMa)
                REPLACE f2603ped WITH SPACE(05)
                REPLACE f2603sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_remi
           SKIP
      ENDDO
 ENDIF
 SELECT coN_remi
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+3,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+3,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+3,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f2604tdo TO ptDo
           STORE f2604ser TO psEr
           STORE f2604doc TO pdOc
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89"
                @vLIN+3,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT coN_remi
                REPLACE f2604tdo WITH SPACE(02)
                REPLACE f2604ser WITH SPACE(03)
                REPLACE f2604doc WITH SPACE(07)
                REPLACE f2604cod WITH SPACE(mtMa)
                REPLACE f2604cdg WITH SPACE(mtMa)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT coN_remi
           STORE f2604cod TO pcOd
           STORE f2604cdg TO pcDg
           SELECT deT_remi
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+3,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT coN_remi
                REPLACE f2604tdo WITH SPACE(02)
                REPLACE f2604ser WITH SPACE(03)
                REPLACE f2604doc WITH SPACE(07)
                REPLACE f2604cod WITH SPACE(mtMa)
                REPLACE f2604cdg WITH SPACE(mtMa)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT coN_remi
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+3.5 TO vlIn
ENDPROC
*
PROCEDURE Fac_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt, piTe, pcDg, ppEd, vsEc
 STORE vlIn+1 TO vlIn
 @vLIN+0,mCO0+1 Say "Leyendo Detalle Principal de Facturas:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Leyendo Detalle de ítems de Facturas:"  Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+2,mCO0+1 Say "Leyendo Detalle de Series de Facturas:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+3,mCO0+1 Say "Leyendo Conjuntos de Facturas:"         Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_fact
 SET ORDER TO
 SELECT itE_fact
 SET ORDER TO
 SELECT seR_fact
 SET ORDER TO
 SELECT coN_fact
 SET ORDER TO
 SELECT deT_fact
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1301tdo TO ptDo
           STORE f1301ser TO psEr
           STORE f1301doc TO pdOc
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89"
                SELECT deT_fact
                @vLIN,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                REPLACE f1301tdo WITH SPACE(02)
                REPLACE f1301ser WITH SPACE(03)
                REPLACE f1301doc WITH SPACE(07)
                REPLACE f1301cod WITH SPACE(mtMa)
                REPLACE f1301ite WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT deT_fact
           STORE f1301ite TO piTe
           STORE f1301cod TO pcOd
           STORE f1301des TO pdEs
           STORE f1301nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1ser WITH psEr
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_fact
           SKIP
      ENDDO
 ENDIF
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "F1301COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SELECT itE_fact
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+1,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+1,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+1,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1302tdo TO ptDo
           STORE f1302ser TO psEr
           STORE f1302doc TO pdOc
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89"
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_fact
                REPLACE f1302tdo WITH SPACE(02)
                REPLACE f1302ser WITH SPACE(03)
                REPLACE f1302doc WITH SPACE(07)
                REPLACE f1302cod WITH SPACE(mtMa)
                REPLACE f1302rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_fact
           STORE f1302cod TO pcOd
           SELECT deT_fact
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_fact
                REPLACE f1302tdo WITH SPACE(02)
                REPLACE f1302ser WITH SPACE(03)
                REPLACE f1302doc WITH SPACE(07)
                REPLACE f1302cod WITH SPACE(mtMa)
                REPLACE f1302rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_fact
           SKIP
      ENDDO
 ENDIF
 SELECT seR_fact
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+2,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+2,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+2,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1303tdo TO ptDo
           STORE f1303ser TO psEr
           STORE f1303doc TO pdOc
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89"
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_fact
                REPLACE f1303tdo WITH SPACE(02)
                REPLACE f1303ser WITH SPACE(03)
                REPLACE f1303doc WITH SPACE(07)
                REPLACE f1303cod WITH SPACE(mtMa)
                REPLACE f1303ped WITH SPACE(05)
                REPLACE f1303sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_fact
           STORE f1303cod TO pcOd
           STORE f1303ped TO ppEd
           STORE f1303sec TO psEc
           SELECT deT_fact
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_fact
                REPLACE f1303tdo WITH SPACE(02)
                REPLACE f1303ser WITH SPACE(03)
                REPLACE f1303doc WITH SPACE(07)
                REPLACE f1303cod WITH SPACE(mtMa)
                REPLACE f1303ped WITH SPACE(05)
                REPLACE f1303sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_fact
           SKIP
      ENDDO
 ENDIF
 SELECT coN_fact
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+3,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+3,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+3,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1304tdo TO ptDo
           STORE f1304ser TO psEr
           STORE f1304doc TO pdOc
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89"
                @vLIN+3,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT coN_fact
                REPLACE f1304tdo WITH SPACE(02)
                REPLACE f1304ser WITH SPACE(03)
                REPLACE f1304doc WITH SPACE(07)
                REPLACE f1304cod WITH SPACE(mtMa)
                REPLACE f1304cdg WITH SPACE(mtMa)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT coN_fact
           STORE f1304cod TO pcOd
           STORE f1304cdg TO pcDg
           SELECT deT_fact
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+3,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT coN_fact
                REPLACE f1304tdo WITH SPACE(02)
                REPLACE f1304ser WITH SPACE(03)
                REPLACE f1304doc WITH SPACE(07)
                REPLACE f1304cod WITH SPACE(mtMa)
                REPLACE f1304cdg WITH SPACE(mtMa)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT coN_fact
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+3.5 TO vlIn
ENDPROC
*
PROCEDURE Ped_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt, pcAj, piTe, psRr, pcAn, pcDg
 PRIVATE ptCa, ptCj, ppEd, vsEc
 IF vlIn>mfI0+17.5
      STORE mfI0+2.5 TO vlIn
      @ mfI0+2.5, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN+0,mCO0+1 Say "Leyendo Detalle Principal de Pedidos:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+1,mCO0+1 Say "Leyendo Detalle de ítems de Pedidos:"  Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+2,mCO0+1 Say "Leyendo Detalle de Series de Pedidos:" Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+3,mCO0+1 Say "Leyendo Conjuntos de Pedidos:"         Font "&mLetCou",9 Style "NT" Color 1
 @vLIN+4,mCO0+1 Say "Leyendo Detalle de Despachos:"         Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_ped
 DO orD_0000a WITH "1200", "V", "F1200DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ped
 SET ORDER TO
 SELECT itE_ped
 SET ORDER TO
 SELECT seR_ped
 SET ORDER TO
 SELECT coN_ped
 SET ORDER TO
 SELECT deT_ped
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1201tdo TO ptDo
           STORE f1201ser TO psEr
           STORE f1201doc TO pdOc
           SELECT caB_ped
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1200est="9"
                SELECT deT_ped
                @vLIN,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                REPLACE f1201tdo WITH SPACE(02)
                REPLACE f1201ser WITH SPACE(03)
                REPLACE f1201doc WITH SPACE(07)
                REPLACE f1201cod WITH SPACE(mtMa)
                REPLACE f1201ite WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT deT_ped
           STORE f1201ite TO piTe
           STORE f1201cod TO pcOd
           STORE f1201des TO pdEs
           STORE f1201nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1ser WITH psEr
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_ped
           SKIP
      ENDDO
 ENDIF
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SELECT itE_ped
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+1,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+1,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+1,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1202tdo TO ptDo
           STORE f1202ser TO psEr
           STORE f1202doc TO pdOc
           SELECT caB_ped
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1200est="9"
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_ped
                REPLACE f1202tdo WITH SPACE(02)
                REPLACE f1202ser WITH SPACE(03)
                REPLACE f1202doc WITH SPACE(07)
                REPLACE f1202cod WITH SPACE(mtMa)
                REPLACE f1202rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_ped
           STORE f1202cod TO pcOd
           SELECT deT_ped
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+1,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT itE_ped
                REPLACE f1202tdo WITH SPACE(02)
                REPLACE f1202ser WITH SPACE(03)
                REPLACE f1202doc WITH SPACE(07)
                REPLACE f1202cod WITH SPACE(mtMa)
                REPLACE f1202rcc WITH 0
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT itE_ped
           SKIP
      ENDDO
 ENDIF
 SELECT seR_ped
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+2,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+2,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+2,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1203tdo TO ptDo
           STORE f1203ser TO psEr
           STORE f1203doc TO pdOc
           SELECT caB_ped
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1200est="9"
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_ped
                REPLACE f1203tdo WITH SPACE(02)
                REPLACE f1203ser WITH SPACE(03)
                REPLACE f1203doc WITH SPACE(07)
                REPLACE f1203cod WITH SPACE(mtMa)
                REPLACE f1203ped WITH SPACE(05)
                REPLACE f1203sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_ped
           STORE f1203cod TO pcOd
           STORE f1203ped TO ppEd
           STORE f1203sec TO psEc
           SELECT deT_ped
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+2,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT seR_ped
                REPLACE f1203tdo WITH SPACE(02)
                REPLACE f1203ser WITH SPACE(03)
                REPLACE f1203doc WITH SPACE(07)
                REPLACE f1203cod WITH SPACE(mtMa)
                REPLACE f1203ped WITH SPACE(05)
                REPLACE f1203sec WITH SPACE(03)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT seR_ped
           SKIP
      ENDDO
 ENDIF
 SELECT coN_ped
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN+3,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN+3,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN+3,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           STORE f1204tdo TO ptDo
           STORE f1204ser TO psEr
           STORE f1204doc TO pdOc
           SELECT caB_ped
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1200est="9"
                @vLIN+3,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT coN_ped
                REPLACE f1204tdo WITH SPACE(02)
                REPLACE f1204ser WITH SPACE(03)
                REPLACE f1204doc WITH SPACE(07)
                REPLACE f1204cod WITH SPACE(mtMa)
                REPLACE f1204cdg WITH SPACE(mtMa)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT coN_ped
           STORE f1204cod TO pcOd
           STORE f1204cdg TO pcDg
           SELECT deT_ped
           SEEK ALLTRIM(pcOd)+"*"+ptDo+psEr+pdOc
           IF EOF()
                @vLIN+3,mCO0+94 Say "Borrando..." Font "&mLetCou",9 Style "NQ" Size 1,12
                SELECT coN_ped
                REPLACE f1204tdo WITH SPACE(02)
                REPLACE f1204ser WITH SPACE(03)
                REPLACE f1204doc WITH SPACE(07)
                REPLACE f1204cod WITH SPACE(mtMa)
                REPLACE f1204cdg WITH SPACE(mtMa)
                DELETE
                SKIP
                LOOP
           ENDIF
           SELECT coN_ped
           SKIP
      ENDDO
 ENDIF
 SELECT deT_ped
 DO orD_0000a WITH "1201", "V", "F1201DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ped
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 @vLIN+4,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
 @vLIN+4,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
 DO WHILE  .NOT. EOF()
      @vLIN+4,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      IF f1200est<>"4"
           SKIP
           LOOP
      ENDIF
      STORE f1200tdo TO ptDo
      STORE f1200ser TO psEr
      STORE f1200doc TO pdOc
      STORE 0 TO ptCa, ptCj
      SELECT deT_ped
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=ptDo+psEr+pdOc
           STORE f1201cod TO pcOd
           STORE 0 TO pcAj
           STORE 2 TO psRr
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF  .NOT. EOF() .AND. psRr=1 .AND. mcAj=1
                SELECT deT_ped
                STORE VAL(ALLTRIM(f1201ref))-f1201cjd TO pcAj
           ENDIF
           SELECT deT_ped
           STORE f1201can-f1201cad TO pcAn
           IF psRr=1 .AND. VAL(ALLTRIM(f1201ref))>0
                IF pcAn=0
                     REPLACE f1201cjd WITH VAL(ALLTRIM(f1201ref))
                     STORE 0 TO pcAj
                ENDIF
                IF pcAj=0 .AND. VAL(ALLTRIM(f1201ref))=f1201cjd
                     REPLACE f1201cad WITH f1201can
                     STORE 0 TO pcAn
                ENDIF
           ENDIF
           STORE ptCa+pcAn TO ptCa
           STORE ptCj+pcAj TO ptCj
           SKIP
      ENDDO
      SELECT caB_ped
      IF ptCa=0 .AND. ptCj=0
           REPLACE f1200est WITH "5"
      ENDIF
      SKIP
 ENDDO
 SELECT deT_ped
 SET ORDER TO
 STORE vlIn+4.5 TO vlIn
ENDPROC
*
PROCEDURE Lis_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt
 IF vlIn>mfI0+17.5
      STORE mfI0+2.5 TO vlIn
      @ mfI0+2.5, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Lista de Precios Proveedores:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT deT_lista
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           IF LEN(ALLTRIM(f2106cod))=0
                SKIP
                LOOP
           ENDIF
           STORE "LI" TO ptDo
           STORE f2106prv TO pdOc
           STORE f2106cod TO pcOd
           STORE f2106des TO pdEs
           STORE f2106nuc TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_lista
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Cjn_9999b
 PRIVATE ptDo, psEr, pdOc, pcOd, pdEs, puNi, puLt
 IF vlIn>mfI0+17.5
      STORE mfI0+2.5 TO vlIn
      @ mfI0+2.5, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Conjunto de Productos:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT deT_conjunto
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO puLt
 GOTO TOP
 IF  .NOT. BOF()
      @vLIN,mCO0+72 Say "de"                    Font "&mLetCou",9 Style "NQ"
      @vLIN,mCO0+75 Say pULT Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+54 Say Recno() Pict "999,999,999" Font "&mLetCou",9 Style "NQ" Size 1,12
           IF LEN(ALLTRIM(f2921cdg))=0
                SKIP
                LOOP
           ENDIF
           STORE "CJ" TO ptDo
           STORE f2921cod TO pdOc
           STORE f2921cdg TO pcOd
           STORE f2921dcr TO pdEs
           STORE f2921nuv TO puNi
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                SELECT tmP_prod_borrados
                APPEND BLANK
                REPLACE ftM1cod WITH pcOd
                REPLACE ftM1des WITH pdEs
                REPLACE ftM1uni WITH puNi
                REPLACE ftM1tdo WITH ptDo
                REPLACE ftM1doc WITH pdOc
           ELSE
                REPLACE f2111mov WITH "@" ALL
           ENDIF
           SELECT deT_conjunto
           SKIP
      ENDDO
 ENDIF
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
