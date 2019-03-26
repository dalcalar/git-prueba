*
PROCEDURE Doc_9999c
 STORE 1 TO voP1, voP2, voP3, voP4, voP5
 DO coLsc3
 STORE mfI0+2.5 TO vlIn
 @ mfI0, mcO0 CLEAR TO mfI0+muFi, mcO0+muCo
 @mFI0+0.0,mCO0+06 Say "Compras"           Font "&mLetCou",9 Style "NQ"
 @mFI0+1.5,mCO0+06 Say "Guías de Ingreso"  Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+36 Say "Guías de Salida"   Font "&mLetCou",9 Style "NQ"
 @mFI0+1.5,mCO0+36 Say "Guías de Remisión" Font "&mLetCou",9 Style "NQ"
 @mFI0+0.0,mCO0+66 Say "Facturas/Boletas"  Font "&mLetCou",9 Style "NQ"
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+02
 DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+02
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+32
 DO prEsiona WITH "1", "SI", mfI0+1.5, mcO0+32
 DO prEsiona WITH "1", "SI", mfI0+0.0, mcO0+62
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
 IF voP1=1
      DO cpR_9999c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP2=1
      DO enT_9999c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP3=1
      DO saL_9999c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP4=1
      DO reM_9999c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF voP5=1
      DO faC_9999c
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cpr_9999c
 PRIVATE ptDo, psEr, pdOc, peSt
 STORE vlIn+1 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Compras:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_cpra
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_cpra
 DO orD_0000a WITH "2401", "A", "F2401DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 GOTO TOP
 IF  .NOT. BOF()
      DO WHILE  .NOT. EOF()
           STORE f2400tdo TO ptDo
           STORE f2400ser TO psEr
           STORE f2400doc TO pdOc
           STORE f2400est TO peSt
           @vLIN,mCO0+40 Say pTDO+":"+pSER+"-"+pDOC Font "&mLetCou",9 Style "NQ" Size 1,35
           SELECT deT_cpra
           SEEK ptDo+psEr+pdOc
           IF EOF() .AND. peSt<>"9"
                SELECT tmP_sin_detalle
                APPEND BLANK
                REPLACE ftM3tdo WITH ptDo
                REPLACE ftM3ser WITH psEr
                REPLACE ftM3doc WITH pdOc
                SELECT caB_cpra
                REPLACE f2400est WITH "9"
           ENDIF
           SELECT caB_cpra
           SKIP
      ENDDO
 ENDIF
ENDPROC
*
PROCEDURE Ent_9999c
 PRIVATE ptDo, psEr, pdOc, peSt
 STORE vlIn+2 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Guías de Entradas:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_ingr
 DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ingr
 DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ingr
 GOTO TOP
 IF  .NOT. BOF()
      DO WHILE  .NOT. EOF()
           STORE f2700tdo TO ptDo
           STORE f2700ser TO psEr
           STORE f2700doc TO pdOc
           STORE f2700est TO peSt
           @vLIN,mCO0+40 Say pTDO+":"+pSER+"-"+pDOC Font "&mLetCou",9 Style "NQ" Size 1,35
           SELECT deT_ingr
           SEEK ptDo+psEr+pdOc
           IF EOF() .AND. peSt<>"9"
                SELECT tmP_sin_detalle
                APPEND BLANK
                REPLACE ftM3tdo WITH ptDo
                REPLACE ftM3ser WITH psEr
                REPLACE ftM3doc WITH pdOc
                SELECT caB_ingr
                REPLACE f2700est WITH "9"
           ENDIF
           SELECT caB_ingr
           SKIP
      ENDDO
 ENDIF
ENDPROC
*
PROCEDURE Sal_9999c
 PRIVATE ptDo, psEr, pdOc, peSt
 STORE vlIn+2 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Guías de Salidas:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_sali
 DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sali
 DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sali
 GOTO TOP
 IF  .NOT. BOF()
      DO WHILE  .NOT. EOF()
           STORE f2800tdo TO ptDo
           STORE f2800ser TO psEr
           STORE f2800doc TO pdOc
           STORE f2800est TO peSt
           @vLIN,mCO0+40 Say pTDO+":"+pSER+"-"+pDOC Font "&mLetCou",9 Style "NQ" Size 1,35
           SELECT deT_sali
           SEEK ptDo+psEr+pdOc
           IF EOF() .AND. peSt<>"9"
                SELECT tmP_sin_detalle
                APPEND BLANK
                REPLACE ftM3tdo WITH ptDo
                REPLACE ftM3ser WITH psEr
                REPLACE ftM3doc WITH pdOc
                SELECT caB_sali
                REPLACE f2800est WITH "9"
           ENDIF
           SELECT caB_sali
           SKIP
      ENDDO
 ENDIF
ENDPROC
*
PROCEDURE Rem_9999c
 PRIVATE ptDo, psEr, pdOc, peSt, pfEm, piDo, puDo, pcFe
 STORE vlIn+2 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Guías de Remisión:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_remi
 DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_remi
 DO orD_0000a WITH "2601", "A", "F2601DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_remi
 GOTO TOP
 IF  .NOT. BOF()
      STORE SPACE(02) TO ptDo
      STORE SPACE(03) TO psEr
      STORE SPACE(07) TO piDo, puDo
      STORE CTOD("  /  /    ") TO pfEm
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+40 Say F2600TDO+":"+F2600SER+"-"+F2600DOC Font "&mLetCou",9 Style "NQ" Size 1,35
           DO CASE
                CASE ptDo+psEr<>f2600tdo+f2600ser .OR. LEN(ALLTRIM(ptDo))=0
                     STORE f2600tdo TO ptDo
                     STORE f2600ser TO psEr
                     STORE f2600doc TO pdOc
                     STORE f2600fem TO pfEm
                OTHERWISE
                     STORE STRTRAN(STR(VAL(pdOc)+1, 7, 0), " ", "0") TO pdOc
           ENDCASE
           DO CASE
                CASE pdOc=f2600doc
                     STORE STRTRAN(STR(VAL(pdOc)+1, 7, 0), " ", "0") TO  ;
                           piDo, puDo
                OTHERWISE
                     STORE pdOc TO piDo
                     STORE STRTRAN(STR(VAL(f2600doc)-1, 7, 0), " ", "0")  ;
                           TO puDo
                     SELECT tmP_doc_faltan
                     APPEND BLANK
                     REPLACE ftM2tdo WITH ptDo
                     REPLACE ftM2ser WITH psEr
                     REPLACE ftM2dod WITH piDo
                     REPLACE ftM2doh WITH puDo
           ENDCASE
           SELECT caB_remi
           STORE f2600doc TO pdOc
           STORE f2600est TO peSt
           DO CASE
                CASE f2600fem<pfEm
                     STORE f2600fem TO pcFe
                     SELECT tmP_fecha_mal
                     APPEND BLANK
                     REPLACE ftM4tdo WITH ptDo
                     REPLACE ftM4ser WITH psEr
                     REPLACE ftM4doc WITH pdOc
                     REPLACE ftM4fem WITH pcFe
                CASE f2600fem>pfEm
                     STORE f2600fem TO pfEm
           ENDCASE
           SELECT deT_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .AND. peSt<>"8" .AND. peSt<>"9"
                SELECT tmP_sin_detalle
                APPEND BLANK
                REPLACE ftM3tdo WITH ptDo
                REPLACE ftM3ser WITH psEr
                REPLACE ftM3doc WITH pdOc
           ENDIF
           SELECT caB_remi
           SKIP
      ENDDO
 ENDIF
ENDPROC
*
PROCEDURE Fac_9999c
 PRIVATE ptDo, psEr, pdOc, peSt, pfEm, piDo, puDo
 STORE vlIn+2 TO vlIn
 @vLIN,mCO0+1 Say "Leyendo Facturas/Boletas:" Font "&mLetCou",9 Style "NT" Color 1
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "F1301DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_fact
 GOTO TOP
 IF  .NOT. BOF()
      STORE SPACE(02) TO ptDo
      STORE SPACE(03) TO psEr
      STORE SPACE(07) TO piDo, puDo
      STORE CTOD("  /  /    ") TO pfEm
      DO WHILE  .NOT. EOF()
           @vLIN,mCO0+40 Say F1300TDO+":"+F1300SER+"-"+F1300DOC Font "&mLetCou",9 Style "NQ" Size 1,35
           IF f1300tdo="CT" .OR. f1300tdo="NP"
                SKIP
                LOOP
           ENDIF
           DO CASE
                CASE ptDo+psEr<>f1300tdo+f1300ser .OR. LEN(ALLTRIM(ptDo))=0
                     STORE f1300tdo TO ptDo
                     STORE f1300ser TO psEr
                     STORE f1300doc TO pdOc
                     STORE f1300fem TO pfEm
                OTHERWISE
                     STORE STRTRAN(STR(VAL(pdOc)+1, 7, 0), " ", "0") TO pdOc
           ENDCASE
           DO CASE
                CASE pdOc=f1300doc
                     STORE STRTRAN(STR(VAL(pdOc)+1, 7, 0), " ", "0") TO  ;
                           piDo, puDo
                OTHERWISE
                     STORE pdOc TO piDo
                     STORE STRTRAN(STR(VAL(f1300doc)-1, 7, 0), " ", "0")  ;
                           TO puDo
                     SELECT tmP_doc_faltan
                     APPEND BLANK
                     REPLACE ftM2tdo WITH ptDo
                     REPLACE ftM2ser WITH psEr
                     REPLACE ftM2dod WITH piDo
                     REPLACE ftM2doh WITH puDo
           ENDCASE
           SELECT caB_fact
           STORE f1300doc TO pdOc
           STORE f1300est TO peSt
           DO CASE
                CASE f1300fem<pfEm
                     STORE f1300fem TO pcFe
                     SELECT tmP_fecha_mal
                     APPEND BLANK
                     REPLACE ftM4tdo WITH ptDo
                     REPLACE ftM4ser WITH psEr
                     REPLACE ftM4doc WITH pdOc
                     REPLACE ftM4fem WITH pcFe
                CASE f1300fem>pfEm
                     STORE f1300fem TO pfEm
           ENDCASE
           SELECT deT_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .AND. peSt<>"8" .AND. peSt<>"9"
                SELECT tmP_sin_detalle
                APPEND BLANK
                REPLACE ftM3tdo WITH ptDo
                REPLACE ftM3ser WITH psEr
                REPLACE ftM3doc WITH pdOc
           ENDIF
           SELECT caB_fact
           SKIP
      ENDDO
 ENDIF
ENDPROC
*
