 PARAMETER ppRg
 PUBLIC xcDg, icDg, ucDg, vcDg, ccDg, xcUn, xnUv, xcAn, xfOr, xdSp, xdEs
 = INKEY(0.01)
 DO seL_2701d
 DO p00_2701d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO paN_2701d
 STORE icDg TO vcDg
 STORE ifFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
 DO diS_2701d WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2701d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2701d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2701a IN PAC2701A
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2701d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO prE_docum WITH "Desea pasar datos a Excel?"
                IF moPc$"Ss"
                     DO xlS_2701d
                ENDIF
                DO seL_2701d
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE ppRg="2400" .AND. f2404cdg=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2604cdg=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2704cdg=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2804cdg=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1204cdg=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1304cdg=icDg .AND. vcDg=icDg
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcDg=icDg
                                    DO paN_2701d
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     ALLTRIM(vcDg)
                                    DO diS_2701d WITH "N"
                          ENDCASE
                          STORE icDg TO vcDg
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*ZZZZ"
                SET NEAR OFF
                IF EOF() .OR. ((ppRg="2400" .AND. f2404tdo+f2404ser+ ;
                   f2404doc+ALLTRIM(f2404cod)+"*"<>vtDo+vsEr+vdOc+ ;
                   ALLTRIM(vcOd)+"*") .OR. (ppRg="2600" .AND. f2604tdo+ ;
                   f2604ser+f2604doc+ALLTRIM(f2604cod)+"*"<>vtDo+vsEr+ ;
                   vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="2700" .AND.  ;
                   f2704tdo+f2704ser+f2704doc+ALLTRIM(f2704cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="2800" .AND.  ;
                   f2804tdo+f2804ser+f2804doc+ALLTRIM(f2804cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="1200" .AND.  ;
                   f1204tdo+f1204ser+f1204doc+ALLTRIM(f1204cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="1300" .AND.  ;
                   f1304tdo+f1304ser+f1304doc+ALLTRIM(f1304cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*"))
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ppRg="2400" .AND. f2404cdg=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2604cdg=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2704cdg=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2804cdg=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1204cdg=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1304cdg=ucDg .AND. vcDg=ucDg
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vcDg=ucDg
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2701d
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     ALLTRIM(vcDg)
                                    DO diS_2701d WITH "N"
                          ENDCASE
                          STORE ucDg TO vcDg
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2404tdo+f2404ser+f2404doc+ ;
                          ALLTRIM(f2404cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2604tdo+f2604ser+f2604doc+ ;
                          ALLTRIM(f2604cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2704tdo+f2704ser+f2704doc+ ;
                          ALLTRIM(f2704cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2804tdo+f2804ser+f2804doc+ ;
                          ALLTRIM(f2804cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1204tdo+f1204ser+f1204doc+ ;
                          ALLTRIM(f1204cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1304tdo+f1304ser+f1304doc+ ;
                          ALLTRIM(f1304cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "N"
                          SKIP
                          IF vcDg=ucDg
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2701d WITH ffFr, ffFr+1
                               DO muE_2701d WITH "F", "v"
                               DO muE_2701d WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2701d WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_2701d WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2404tdo+f2404ser+f2404doc+ ;
                          ALLTRIM(f2404cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2604tdo+f2604ser+f2604doc+ ;
                          ALLTRIM(f2604cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2704tdo+f2704ser+f2704doc+ ;
                          ALLTRIM(f2704cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2804tdo+f2804ser+f2804doc+ ;
                          ALLTRIM(f2804cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1204tdo+f1204ser+f1204doc+ ;
                          ALLTRIM(f1204cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1304tdo+f1304ser+f1304doc+ ;
                          ALLTRIM(f1304cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "N"
                          SKIP -1
                          IF vcDg=icDg
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2701d WITH ifFr, ifFr+1
                               DO muE_2701d WITH "F", "i"
                               DO muE_2701d WITH "F", "v"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2701d WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2701d WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(ucDg)
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2404tdo+f2404ser+f2404doc+ ;
                          ALLTRIM(f2404cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2604tdo+f2604ser+f2604doc+ ;
                          ALLTRIM(f2604cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2704tdo+f2704ser+f2704doc+ ;
                          ALLTRIM(f2704cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2804tdo+f2804ser+f2804doc+ ;
                          ALLTRIM(f2804cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1204tdo+f1204ser+f1204doc+ ;
                          ALLTRIM(f1204cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1304tdo+f1304ser+f1304doc+ ;
                          ALLTRIM(f1304cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2701d
                          STORE icDg TO vcDg
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(icDg)
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2404tdo+f2404ser+f2404doc+ ;
                          ALLTRIM(f2404cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2604tdo+f2604ser+f2604doc+ ;
                          ALLTRIM(f2604cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2704tdo+f2704ser+f2704doc+ ;
                          ALLTRIM(f2704cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2804tdo+f2804ser+f2804doc+ ;
                          ALLTRIM(f2804cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1204tdo+f1204ser+f1204doc+ ;
                          ALLTRIM(f1204cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1304tdo+f1304ser+f1304doc+ ;
                          ALLTRIM(f1304cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. ((ppRg="2400" .AND. f2404tdo+ ;
                             f2404ser+f2404doc+ALLTRIM(f2404cod)+"*"<> ;
                             vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg= ;
                             "2600" .AND. f2604tdo+f2604ser+f2604doc+ ;
                             ALLTRIM(f2604cod)+"*"<>vtDo+vsEr+vdOc+ ;
                             ALLTRIM(vcOd)+"*") .OR. (ppRg="2700" .AND.  ;
                             f2704tdo+f2704ser+f2704doc+ALLTRIM(f2704cod)+ ;
                             "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR.  ;
                             (ppRg="2800" .AND. f2804tdo+f2804ser+ ;
                             f2804doc+ALLTRIM(f2804cod)+"*"<>vtDo+vsEr+ ;
                             vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="1200"  ;
                             .AND. f1204tdo+f1204ser+f1204doc+ ;
                             ALLTRIM(f1204cod)+"*"<>vtDo+vsEr+vdOc+ ;
                             ALLTRIM(vcOd)+"*") .OR. (ppRg="1300" .AND.  ;
                             f1304tdo+f1304ser+f1304doc+ALLTRIM(f1304cod)+ ;
                             "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"))
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2701d
                          STORE icDg TO vcDg
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
                          DO diS_2701d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2701d
 STORE ifFr TO vfFr, ufFr
 DO muE_2701d WITH "F", "i"
 DO muE_2701d WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO exI_2701d
      IF vsXx=1
           EXIT
      ENDIF
      DO diS_2701d WITH "N"
      DO muE_2701d WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2701d WITH vfFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2701d
 PARAMETER ptIp
 DO mu1_2701d
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pICL+003.5 Say xDES Font "&mLetAri",8 Style "NQ" Size 1,74.6 Pict "@S77"
 @vFFR,pICL+078.7 Say xCAN Font "&mLetAri",8 Style "NQ" Size 1,14.3 Pict "999,999.9999"
 @vFFR,pICL+093.7 Say xNUV Font "&mLetAri",8 Style "NQ" Size 1,08.4
 @vFFR,pICL+102.8 Say xCUN Font "&mLetAri",8 Style "NQ" Size 1,14.3 Pict "999,999.9999"
ENDPROC
*
PROCEDURE Lin_2701d
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, piCl+003.1 TO pfIn, piCl+003.1
 @ piNi, piCl+078.3 TO pfIn, piCl+078.3
 @ piNi, piCl+093.3 TO pfIn, piCl+093.3
 @ piNi, piCl+102.4 TO pfIn, piCl+102.4
ENDPROC
*
PROCEDURE P00_2701d
 STORE mcO0+002.0 TO piCl
 STORE piCl+116.8 TO puCl
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.8, piCl-0.4, ffFr+2.5, puCl+0.3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifFr-1.7, piCl-0.8 TO ifFr-0.2, puCl+0.7 PATTERN 1
 @ ffFr+1.1, piCl-0.8 TO ffFr+2.7, puCl+0.7 PATTERN 1
 DO liN_2701d WITH ifFr-0.2, ffFr+1.05
 @ ifFr-1.70, piCl+003.1 TO ifFr-0.2, piCl+003.1
 @ ifFr-1.70, piCl+078.3 TO ifFr-0.2, piCl+078.3
 @ ifFr-1.70, piCl+093.3 TO ifFr-0.2, piCl+093.3
 @ ifFr-1.70, piCl+102.4 TO ifFr-0.2, piCl+102.4
 @iFFR-1.50,pICL+003.3 Say "Decripcion" Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+080.6 Say "Cant.Unit." Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+096.6 Say "Unid."      Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+107.6 Say "Cant"       Font "&mLetAri",9 Style "BT"
ENDPROC
*
PROCEDURE Rs1_2701d
 PRIVATE pcDg
 STORE vcDg TO ccDg
 DO rs1_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2701d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 DO seL_2701d
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(icDg)
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO exI_2701d
      IF vsXx=1
           EXIT
      ENDIF
      DO CASE
           CASE ppRg="2400"
                STORE f2404cdg TO pcDg
           CASE ppRg="2600"
                STORE f2604cdg TO pcDg
           CASE ppRg="2700"
                STORE f2704cdg TO pcDg
           CASE ppRg="2800"
                STORE f2804cdg TO pcDg
           CASE ppRg="1200"
                STORE f1204cdg TO pcDg
           CASE ppRg="1300"
                STORE f1304cdg TO pcDg
      ENDCASE
      IF pcDg=vcDg
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      STORE vcDg TO icDg, ccDg
      STORE ifFr TO vfFr, cfFr
 ENDIF
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(icDg)
 DO paN_2701d
 STORE ccDg TO vcDg
 STORE cfFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)
 DO diS_2701d WITH "R"
 RELEASE pcDg
ENDPROC
*
PROCEDURE Xls_2701d
ENDPROC
*
PROCEDURE Clp_2701d
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2701d WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(icDg)
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2701d WITH "F", "v"
           DO diS_2701d WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2701d
 PARAMETER pmU1, pmU2
 DO CASE
      CASE ppRg="2400" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2404cdg TO vcDg
      CASE ppRg="2400" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2404cdg TO ucDg
      CASE ppRg="2400" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2404cdg TO icDg
      CASE ppRg="2600" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2604cdg TO vcDg
      CASE ppRg="2600" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2604cdg TO ucDg
      CASE ppRg="2600" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2604cdg TO icDg
      CASE ppRg="2700" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2704cdg TO vcDg
      CASE ppRg="2700" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2704cdg TO ucDg
      CASE ppRg="2700" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2704cdg TO icDg
      CASE ppRg="2800" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2804cdg TO vcDg
      CASE ppRg="2800" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2804cdg TO ucDg
      CASE ppRg="2800" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2804cdg TO icDg
      CASE ppRg="1200" .AND. pmU1="F" .AND. pmU2="v"
           STORE f1204cdg TO vcDg
      CASE ppRg="1200" .AND. pmU1="F" .AND. pmU2="u"
           STORE f1204cdg TO ucDg
      CASE ppRg="1200" .AND. pmU1="F" .AND. pmU2="i"
           STORE f1204cdg TO icDg
      CASE ppRg="1300" .AND. pmU1="F" .AND. pmU2="v"
           STORE f1304cdg TO vcDg
      CASE ppRg="1300" .AND. pmU1="F" .AND. pmU2="u"
           STORE f1304cdg TO ucDg
      CASE ppRg="1300" .AND. pmU1="F" .AND. pmU2="i"
           STORE f1304cdg TO icDg
 ENDCASE
ENDPROC
*
PROCEDURE Sel_2701d
 DO CASE
      CASE ppRg="2400"
           SELECT coN_cpra
      CASE ppRg="2600"
           SELECT coN_remi
      CASE ppRg="2700"
           SELECT coN_ingr
      CASE ppRg="2800"
           SELECT coN_sali
      CASE ppRg="1200"
           SELECT coN_ped
      CASE ppRg="1300"
           SELECT coN_fact
 ENDCASE
ENDPROC
*
PROCEDURE Mu1_2701d
 DO CASE
      CASE ppRg="2400"
      CASE ppRg="2600"
      CASE ppRg="2700"
      CASE ppRg="2800"
      CASE ppRg="1200"
      CASE ppRg="1300"
           STORE f1304cdg TO xcDg
           STORE f1304cun TO xcUn
           STORE f1304can TO xcAn
           STORE f1304for TO xfOr
           STORE f1304dsp TO xdSp
           SELECT prOductos
           SEEK ALLTRIM(xcDg)+"*"
           STORE f2111des TO xdEs
           STORE f2111nuv TO xnUv
           SELECT coN_fact
 ENDCASE
ENDPROC
*
PROCEDURE Exi_2701d
 STORE 0 TO vsXx
 DO CASE
      CASE ppRg="1200" .AND. f1204tdo+f1204ser+f1204doc+ALLTRIM(f1204cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
      CASE ppRg="1300" .AND. f1304tdo+f1304ser+f1304doc+ALLTRIM(f1304cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
 ENDCASE
ENDPROC
*
