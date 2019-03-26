 = INKEY(0.01)
 DO p00_0000w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prGmnu_tmp
 SET ORDER TO NOM
 GOTO TOP
 DO paN_0000w
 DO muE_0000w WITH "i", "v"
 DO seE_0000w WITH "v"
 DO diS_0000w WITH "R"
 STORE 999 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      DO paN_0000a
      IF mrEs<>mrSs
           DO reS_0000w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_0000w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_0000w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                SELECT prGmnu_tmp
                IF sw0="@"
                     REPLACE sw0 WITH " "
                ELSE
                     REPLACE sw0 WITH "@"
                ENDIF
                DO diS_0000w WITH "R"
           CASE mkEy=k_Tab
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE EOF() .OR. BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE coD=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcDg=icDg
                                    DO paN_0000w
                               OTHERWISE
                                    DO seE_0000w WITH "v"
                                    DO diS_0000w WITH "N"
                          ENDCASE
                          DO muE_0000w WITH "i", "v"
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE coD=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcDg=ucDg
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_0000w
                               OTHERWISE
                                    DO seE_0000w WITH "v"
                                    DO diS_0000w WITH "N"
                          ENDCASE
                          DO muE_0000w WITH "u", "v"
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "N"
                          SKIP
                          IF vcDg=ucDg
                               DO coLsc3
                               DO suBe WITH ifFs, piCl, ffFs, puCl+0.1, 1
                               DO liN_0000w
                               DO muE_0000w WITH "F", "v"
                               DO muE_0000w WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_0000w WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_0000w WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "N"
                          SKIP -1
                          IF vcDg=icDg
                               DO coLsc3
                               DO baJa WITH ifFs, piCl, ffFs, puCl+0.1, 1
                               DO liN_0000w
                               DO muE_0000w WITH "F", "i"
                               DO muE_0000w WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_0000w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_0000w WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_0000w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_0000w
                          DO muE_0000w WITH "i", "v"
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_0000w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_0000w
                          DO muE_0000w WITH "i", "v"
                          DO seE_0000w WITH "v"
                          DO diS_0000w WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_0000w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_0000w
 STORE ifFs TO vfFs, ufFs
 DO muE_0000w WITH "F", "i"
 DO muE_0000w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_0000w WITH "N"
      DO muE_0000w WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coLsc3
      @ ufFs+1, piCl CLEAR TO ffFs+1, puCl-0.1
      DO liN_0000w
 ENDIF
ENDPROC
*
PROCEDURE Dis_0000w
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="1"
           @vFFS,pICL+000.2 Say SW0 Font "&mLetAri",10 Style "NQ" Size 1,01.8 Pict "!"
           @vFFS,pICL+003.0 Say NOM Font "&mLetAri",10 Style "NQ" Size 1,80.0 Pict "@S70"
           @vFFS,pICL+099.6 Say NV1 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+101.8 Say NV2 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+104.0 Say NV3 Font "&mLetAri",10 Style "NQ" Size 1,02.3 Pict "99"
      CASE mrEs="2"
           @vFFS,pICL+000.4 Say SW0 Font "&mLetAri",10 Style "NQ" Size 1,02.0 Pict "!"
           @vFFS,pICL+003.8 Say NOM Font "&mLetAri",10 Style "NQ" Size 1,80.0 Pict "@S70"
           @vFFS,pICL+100.9 Say NV1 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+103.6 Say NV2 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+106.2 Say NV3 Font "&mLetAri",10 Style "NQ" Size 1,02.3 Pict "99"
      CASE mrEs="3"
           @vFFS,pICL+000.3 Say SW0 Font "&mLetAri",10 Style "NQ" Size 1,02.0 Pict "!"
           @vFFS,pICL+003.8 Say NOM Font "&mLetAri",10 Style "NQ" Size 1,80.0 Pict "@S70"
           @vFFS,pICL+101.0 Say NV1 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+103.5 Say NV2 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+106.2 Say NV3 Font "&mLetAri",10 Style "NQ" Size 1,02.3 Pict "99"
      CASE mrEs>"3"
           @vFFS,pICL+000.3 Say SW0 Font "&mLetAri",10 Style "NQ" Size 1,02.0 Pict "!"
           @vFFS,pICL+003.6 Say NOM Font "&mLetAri",10 Style "NQ" Size 1,80.0 Pict "@S70"
           @vFFS,pICL+100.6 Say NV1 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+103.1 Say NV2 Font "&mLetAri",10 Style "NQ" Size 1,01.3 Pict "!"
           @vFFS,pICL+105.5 Say NV3 Font "&mLetAri",10 Style "NQ" Size 1,02.3 Pict "99"
 ENDCASE
ENDPROC
*
PROCEDURE Lin_0000w
 DO coLsc3
 DO CASE
      CASE mrEs="1"
           @ ifFs-0.2, piCl+002.6 TO ffFs+1.3, piCl+002.6
           @ ifFs-0.2, piCl+099.2 TO ffFs+1.3, piCl+099.2
           @ ifFs-0.2, piCl+101.4 TO ffFs+1.3, piCl+101.4
           @ ifFs-0.2, piCl+103.6 TO ffFs+1.3, piCl+103.6
      CASE mrEs="2"
           @ ifFs-0.2, piCl+003.2 TO ffFs+1.3, piCl+003.2
           @ ifFs-0.2, piCl+100.2 TO ffFs+1.3, piCl+100.2
           @ ifFs-0.2, piCl+103.0 TO ffFs+1.3, piCl+103.0
           @ ifFs-0.2, piCl+105.6 TO ffFs+1.3, piCl+105.6
      CASE mrEs="3"
           @ ifFs-0.2, piCl+003.1 TO ffFs+1.3, piCl+003.1
           @ ifFs-0.2, piCl+100.1 TO ffFs+1.3, piCl+100.1
           @ ifFs-0.2, piCl+103.0 TO ffFs+1.3, piCl+103.0
           @ ifFs-0.2, piCl+105.5 TO ffFs+1.3, piCl+105.5
      CASE mrEs>"3"
           @ ifFs-0.2, piCl+003.0 TO ffFs+1.3, piCl+003.0
           @ ifFs-0.2, piCl+100.0 TO ffFs+1.3, piCl+100.0
           @ ifFs-0.2, piCl+102.5 TO ffFs+1.3, piCl+102.5
           @ ifFs-0.2, piCl+105.0 TO ffFs+1.3, piCl+105.0
 ENDCASE
ENDPROC
*
PROCEDURE P00_0000w
 DO coLsc3
 DO CASE
      CASE mrEs="1"
           STORE mcO0+018.5 TO piCl
           STORE piCl+107.0 TO puCl
      CASE mrEs="2"
           STORE mcO0+047.5 TO piCl
           STORE piCl+109.5 TO puCl
      CASE mrEs="3"
           STORE mcO0+082.0 TO piCl
           STORE piCl+109.5 TO puCl
      CASE mrEs>"3"
           STORE mcO0+117.2 TO piCl
           STORE piCl+108.9 TO puCl
 ENDCASE
 @ ifFs-0.3, piCl-0.2 TO ffFs+2.9, puCl+0.2 PATTERN 1
 @ ffFs+1.3, piCl-0.2 TO ffFs+1.3, puCl+0.2
 @fFFS+1.4,pICL+0.5 Say "Programas" Font "&mLetRom",13 Style "BT"
 DO liN_0000w
ENDPROC
*
PROCEDURE See_0000w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(ALLTRIM(vnO1))+vcD1+ALLTRIM(vpR1)+vcD2+vnB1+vnB2+ ;
                STR(vnB3, 2, 0)+vcDg
      CASE psEe="i"
           SEEK UPPER(ALLTRIM(inO1))+icD1+ALLTRIM(ipR1)+icD2+inB1+inB2+ ;
                STR(inB3, 2, 0)+icDg
      CASE psEe="u"
           SEEK UPPER(ALLTRIM(unO1))+ucD1+ALLTRIM(upR1)+ucD2+unB1+unB2+ ;
                STR(unB3, 2, 0)+ucDg
 ENDCASE
ENDPROC
*
PROCEDURE Mue_0000w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE icDg TO vcDg
           STORE icD1 TO vcD1
           STORE icD2 TO vcD2
           STORE inO1 TO vnO1
           STORE ipR1 TO vpR1
           STORE inB1 TO vnB1
           STORE inB2 TO vnB2
           STORE inB3 TO vnB3
           STORE ifFs TO vfFs
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcDg TO ccDg
           STORE vcD1 TO ccD1
           STORE vcD2 TO ccD2
           STORE vnO1 TO cnO1
           STORE vpR1 TO cpR1
           STORE vnB1 TO cnB1
           STORE vnB2 TO cnB2
           STORE vnB3 TO cnB3
           STORE vfFs TO cfFs
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucDg TO vcDg
           STORE ucD1 TO vcD1
           STORE ucD2 TO vcD2
           STORE unO1 TO vnO1
           STORE upR1 TO vpR1
           STORE unB1 TO vnB1
           STORE unB2 TO vnB2
           STORE unB3 TO vnB3
           STORE ufFs TO vfFs
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccDg TO vcDg
           STORE ccD1 TO vcD1
           STORE ccD2 TO vcD2
           STORE cnO1 TO vnO1
           STORE cpR1 TO vpR1
           STORE cnB1 TO vnB1
           STORE cnB2 TO vnB2
           STORE cnB3 TO vnB3
           STORE cfFs TO vfFs
      CASE pmU1="F" .AND. pmU2="v"
           STORE coD TO vcDg
           STORE co1 TO vcD1
           STORE co2 TO vcD2
           STORE noM TO vnO1
           STORE prG TO vpR1
           STORE nv1 TO vnB1
           STORE nv2 TO vnB2
           STORE nv3 TO vnB3
      CASE pmU1="F" .AND. pmU2="u"
           STORE coD TO ucDg
           STORE co1 TO ucD1
           STORE co2 TO ucD2
           STORE noM TO unO1
           STORE prG TO upR1
           STORE nv1 TO unB1
           STORE nv2 TO unB2
           STORE nv3 TO unB3
      CASE pmU1="F" .AND. pmU2="i"
           STORE coD TO icDg
           STORE co1 TO icD1
           STORE co2 TO icD2
           STORE noM TO inO1
           STORE prG TO ipR1
           STORE nv1 TO inB1
           STORE nv2 TO inB2
           STORE nv3 TO inB3
 ENDCASE
ENDPROC
*
PROCEDURE Res_0000w
 DO muE_0000w WITH "v", "c"
 DO reS_0000b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_0000w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prGmnu_tmp
 DO seE_0000w WITH "i"
 DO paN_0000w
 DO muE_0000w WITH "c", "v"
 DO seE_0000w WITH "v"
 DO diS_0000w WITH "R"
ENDPROC
*
PROCEDURE Clp_0000w
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_0000w WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_0000w WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           DO muE_0000w WITH "F", "v"
           DO diS_0000w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
