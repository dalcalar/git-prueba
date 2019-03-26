 PARAMETER ppRg
 = INKEY(0.01)
 PUBLIC pnBa, pbAs, pdEs, plAr, paNc, psWw
 STORE 0 TO pnBa, psWw
 STORE " " TO pdEs
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111bas)+"*"=ALLTRIM(vcOd)+"*"
      IF ALLTRIM(f2111cod)+"*"=ALLTRIM(f2111bas)+"*" .OR. f2111est="9"
           SKIP
           LOOP
      ENDIF
      STORE f2111cod TO pbAs
      STORE SUBSTR(f2111des, 1, 50) TO pdEs
      IF f2111la1>0 .AND. f2111an1>0
           STORE ALLTRIM(STR(f2111la1*1000, 10, 0)) TO plAr
           STORE ALLTRIM(STR(f2111an1*1000, 10, 0)) TO paNc
      ELSE
           STORE ALLTRIM(STR(f2111la2, 10, 0)) TO plAr
           STORE ALLTRIM(STR(f2111an2, 10, 0)) TO paNc
      ENDIF
      STORE pnBa+1 TO pnBa
      SKIP
 ENDDO
 IF ppRg="1300" .AND. (vtPo=4 .OR. vtPo=5 .OR. vtPo=7)
      PRIVATE zcOd, zdEs, znUv, zlA1, zlA2, zaN1, zaN2
      SELECT teMporal_8
      ZAP
      REINDEX
      SELECT prOductos
      DO orD_0000a WITH "2111", "A", "F2111BAS", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111bas)+"*"=ALLTRIM(vcOd)+"*"
           IF f2111est<>"9" .AND. ALLTRIM(f2111bas)+"*"<> ;
              ALLTRIM(f2111cod)+"*" .AND. (f2111cst=2 .OR. f2111sto>0)
                STORE psWw+1 TO psWw
                STORE f2111cod TO zcOd
                STORE f2111des TO zdEs
                STORE f2111nuv TO znUv
                STORE f2111la1 TO zlA1
                STORE f2111la2 TO zlA2
                STORE f2111an1 TO zaN1
                STORE f2111an2 TO zaN2
                SELECT teMporal_8
                APPEND BLANK
                REPLACE ftM8cod WITH zcOd
                REPLACE ftM8des WITH zdEs
                REPLACE ftM8nuv WITH znUv
                REPLACE ftM8la1 WITH zlA1
                REPLACE ftM8la2 WITH zlA2
                REPLACE ftM8an1 WITH zaN1
                REPLACE ftM8an2 WITH zaN2
                FLUSH
           ENDIF
           SELECT prOductos
           SKIP
      ENDDO
      SELECT prOductos
      DO orD_0000a WITH "2111", "A", "F2111COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE zcOd, zdEs, znUv, zlA1, zlA2, zaN1, zaN2
 ENDIF
 DO seL_2701a
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 00 TO ccAn, vpIe, vsXx
 DO WHILE  .NOT. EOF()
      DO exI_2701a
      IF vsXx=1
           EXIT
      ENDIF
      DO CASE
           CASE ppRg="2400" .AND. f2402opc="N"
                STORE ccAn+f2402ctd TO ccAn
                STORE vpIe+(f2402pie*f2402ctd) TO vpIe
           CASE ppRg="2400"
                STORE vpIe+f2402pie TO vpIe
           CASE ppRg="2600" .AND. f2602opc="N"
                STORE ccAn+f2602ctd TO ccAn
                STORE vpIe+(f2602pie*f2602ctd) TO vpIe
           CASE ppRg="2600"
                STORE vpIe+f2602pie TO vpIe
           CASE ppRg="2700" .AND. f2702opc="N"
                STORE ccAn+f2702ctd TO ccAn
                STORE vpIe+(f2702pie*f2702ctd) TO vpIe
           CASE ppRg="2700"
                STORE vpIe+f2702pie TO vpIe
           CASE ppRg="2800" .AND. f2802opc="N"
                STORE ccAn+f2802ctd TO ccAn
                STORE vpIe+(f2802pie*f2802ctd) TO vpIe
           CASE ppRg="2800"
                STORE vpIe+f2802pie TO vpIe
           CASE ppRg="1200" .AND. f1202opc="N"
                STORE ccAn+f1202ctd TO ccAn
                STORE vpIe+(f1202pie*f1202ctd) TO vpIe
           CASE ppRg="1200"
                STORE vpIe+f1202pie TO vpIe
           CASE ppRg="1300" .AND. f1302opc="N"
                STORE ccAn+f1302ctd TO ccAn
                STORE vpIe+(f1302pie*f1302ctd) TO vpIe
           CASE ppRg="1300"
                STORE vpIe+f1302pie TO vpIe
      ENDCASE
      SKIP
 ENDDO
 DO p00_2701a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO paN_2701a
 STORE irCc TO vrCc
 STORE ifFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
 DO diS_2701a WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2701a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2701a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2701a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2701a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. ppRg="1300" .AND. (vtPo=4 .OR. vtPo=5  ;
                .OR. vtPo=7) .AND. psWw>0
                DO plA_2701a
                DO piQ_0000a
                DO seL_2701a
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           CASE mkEy=k_F8
                DO xlS_2701a
                DO seL_2701a
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE ppRg="2400" .AND. f2402rcc=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2602rcc=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2702rcc=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2802rcc=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1202rcc=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1302rcc=irCc .AND. vrCc=irCc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrCc=irCc
                                    DO paN_2701a
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     STR(vrCc, 3, 0)
                                    DO diS_2701a WITH "N"
                          ENDCASE
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(99, 3, 0)
                SET NEAR OFF
                IF EOF() .OR. ((ppRg="2400" .AND. f2402tdo+f2402ser+ ;
                   f2402doc+ALLTRIM(f2402cod)+"*"<>vtDo+vsEr+vdOc+ ;
                   ALLTRIM(vcOd)+"*") .OR. (ppRg="2600" .AND. f2602tdo+ ;
                   f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"<>vtDo+vsEr+ ;
                   vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="2700" .AND.  ;
                   f2702tdo+f2702ser+f2702doc+ALLTRIM(f2702cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="2800" .AND.  ;
                   f2802tdo+f2802ser+f2802doc+ALLTRIM(f2802cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="1200" .AND.  ;
                   f1202tdo+f1202ser+f1202doc+ALLTRIM(f1202cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="1300" .AND.  ;
                   f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"<>vtDo+ ;
                   vsEr+vdOc+ALLTRIM(vcOd)+"*"))
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ppRg="2400" .AND. f2402rcc=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2602rcc=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2702rcc=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2802rcc=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1202rcc=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1302rcc=urCc .AND. vrCc=urCc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vrCc=urCc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2701a
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     STR(vrCc, 3, 0)
                                    DO diS_2701a WITH "N"
                          ENDCASE
                          STORE urCc TO vrCc
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2402tdo+f2402ser+f2402doc+ ;
                          ALLTRIM(f2402cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2602tdo+f2602ser+f2602doc+ ;
                          ALLTRIM(f2602cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2702tdo+f2702ser+f2702doc+ ;
                          ALLTRIM(f2702cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2802tdo+f2802ser+f2802doc+ ;
                          ALLTRIM(f2802cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1202tdo+f1202ser+f1202doc+ ;
                          ALLTRIM(f1202cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1302tdo+f1302ser+f1302doc+ ;
                          ALLTRIM(f1302cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "N"
                          SKIP
                          IF vrCc=urCc
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2701a WITH ffFr, ffFr+1
                               DO muE_2701a WITH "F", "v"
                               DO muE_2701a WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2701a WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_2701a WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2402tdo+f2402ser+f2402doc+ ;
                          ALLTRIM(f2402cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2602tdo+f2602ser+f2602doc+ ;
                          ALLTRIM(f2602cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2702tdo+f2702ser+f2702doc+ ;
                          ALLTRIM(f2702cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2802tdo+f2802ser+f2802doc+ ;
                          ALLTRIM(f2802cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1202tdo+f1202ser+f1202doc+ ;
                          ALLTRIM(f1202cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1302tdo+f1302ser+f1302doc+ ;
                          ALLTRIM(f1302cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "N"
                          SKIP -1
                          IF vrCc=irCc
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2701a WITH ifFr, ifFr+1
                               DO muE_2701a WITH "F", "v"
                               DO muE_2701a WITH "F", "i"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2701a WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2701a WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(urCc, 3, 0)
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2402tdo+f2402ser+f2402doc+ ;
                          ALLTRIM(f2402cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2602tdo+f2602ser+f2602doc+ ;
                          ALLTRIM(f2602cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2702tdo+f2702ser+f2702doc+ ;
                          ALLTRIM(f2702cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2802tdo+f2802ser+f2802doc+ ;
                          ALLTRIM(f2802cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1202tdo+f1202ser+f1202doc+ ;
                          ALLTRIM(f1202cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1302tdo+f1302ser+f1302doc+ ;
                          ALLTRIM(f1302cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2701a
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(irCc, 3, 0)
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2400" .AND. f2402tdo+f2402ser+f2402doc+ ;
                          ALLTRIM(f2402cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2600" .AND. f2602tdo+f2602ser+f2602doc+ ;
                          ALLTRIM(f2602cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2700" .AND. f2702tdo+f2702ser+f2702doc+ ;
                          ALLTRIM(f2702cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="2800" .AND. f2802tdo+f2802ser+f2802doc+ ;
                          ALLTRIM(f2802cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1200" .AND. f1202tdo+f1202ser+f1202doc+ ;
                          ALLTRIM(f1202cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ppRg="1300" .AND. f1302tdo+f1302ser+f1302doc+ ;
                          ALLTRIM(f1302cod)+"*"<>vtDo+vsEr+vdOc+ ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. ((ppRg="2400" .AND. f2402tdo+ ;
                             f2402ser+f2402doc+ALLTRIM(f2402cod)+"*"<> ;
                             vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg= ;
                             "2600" .AND. f2602tdo+f2602ser+f2602doc+ ;
                             ALLTRIM(f2602cod)+"*"<>vtDo+vsEr+vdOc+ ;
                             ALLTRIM(vcOd)+"*") .OR. (ppRg="2700" .AND.  ;
                             f2702tdo+f2702ser+f2702doc+ALLTRIM(f2702cod)+ ;
                             "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*") .OR.  ;
                             (ppRg="2800" .AND. f2802tdo+f2802ser+ ;
                             f2802doc+ALLTRIM(f2802cod)+"*"<>vtDo+vsEr+ ;
                             vdOc+ALLTRIM(vcOd)+"*") .OR. (ppRg="1200"  ;
                             .AND. f1202tdo+f1202ser+f1202doc+ ;
                             ALLTRIM(f1202cod)+"*"<>vtDo+vsEr+vdOc+ ;
                             ALLTRIM(vcOd)+"*") .OR. (ppRg="1300" .AND.  ;
                             f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+ ;
                             "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"))
                               GOTO TOP
                               SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2701a
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701a WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
 RELEASE pnBa, pbAs, pdEs, plAr, paNc, psWw
ENDPROC
*
PROCEDURE Pan_2701a
 STORE ifFr TO vfFr, ufFr
 DO muE_2701a WITH "F", "u"
 DO muE_2701a WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO exI_2701a
      IF vsXx=1
           EXIT
      ENDIF
      DO diS_2701a WITH "N"
      DO muE_2701a WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2701a WITH vfFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2701a
 PARAMETER ptIp
 DO mu1_2701a
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF xoPc="S"
      @vFFR,pICL-0.4 Say xCMM Font "&mLetAri",9 Style "NQ" Size 1,5.4
      DO CASE
           CASE xuN1="P"
                @vFFR,pICL+05.6 Say " " Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"
                @vFFR,pICL+11.3 Say " " Font "&mLetAri",9 Style "NQ" Size 1,6.4
                @vFFR,pICL+18.4 Say " " Font "&mLetAri",9 Style "NQ" Size 1,4.1
           OTHERWISE
                @vFFR,pICL+05.6 Say " " Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
                @vFFR,pICL+14.0 Say " " Font "&mLetAri",9 Style "NQ" Size 1,3.8
                @vFFR,pICL+18.4 Say " " Font "&mLetAri",9 Style "NQ" Size 1,4.1
      ENDCASE
      DO CASE
           CASE xuN2="P"
                @vFFR,pICL+23.2 Say " " Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"
                @vFFR,pICL+28.9 Say " " Font "&mLetAri",9 Style "NQ" Size 1,6.4
                @vFFR,pICL+36.0 Say " " Font "&mLetAri",9 Style "NQ" Size 1,4.1
           OTHERWISE
                @vFFR,pICL+23.2 Say " " Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
                @vFFR,pICL+31.6 Say " " Font "&mLetAri",9 Style "NQ" Size 1,3.8
                @vFFR,pICL+36.0 Say " " Font "&mLetAri",9 Style "NQ" Size 1,4.1
      ENDCASE
      @vFFR,pICL+40.8 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,8.5 Pict "99,999"
      @vFFR,pICL+78.9 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,25.4
 ELSE
      @vFFR,pICL-0.4 Say xCMM Font "&mLetAri",9 Style "NQ" Size 1,5.4
      DO CASE
           CASE xuN1="P"
                @vFFR,pICL+05.6 Say xP11  Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"
                @vFFR,pICL+11.3 Say xP12  Font "&mLetAri",9 Style "NQ" Size 1,6.4
                @vFFR,pICL+18.4 Say "plg" Font "&mLetAri",9 Style "NQ" Size 1,4.1
           OTHERWISE
                @vFFR,pICL+05.6 Say xMLA  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
                @vFFR,pICL+14.0 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,3.8
                @vFFR,pICL+18.4 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.1
      ENDCASE
      DO CASE
           CASE xuN2="P"
                @vFFR,pICL+23.2 Say xP21  Font "&mLetAri",9 Style "NQ" Size 1,4.3 Pict "999"
                @vFFR,pICL+28.9 Say xP22  Font "&mLetAri",9 Style "NQ" Size 1,6.4
                @vFFR,pICL+36.0 Say "plg" Font "&mLetAri",9 Style "NQ" Size 1,4.1
           OTHERWISE
                @vFFR,pICL+23.2 Say xMAN  Font "&mLetAri",9 Style "NQ" Size 1,8.3 Pict "99.999"
                @vFFR,pICL+31.6 Say " "   Font "&mLetAri",9 Style "NQ" Size 1,3.8
                @vFFR,pICL+36.0 Say "mts" Font "&mLetAri",9 Style "NQ" Size 1,4.1
      ENDCASE
      @vFFR,pICL+40.8 Say xCTD          Font "&mLetAri",9 Style "NQ" Size 1,8.5 Pict "99,999"
      @vFFR,pICL+78.9 Say xCMP          Font "&mLetAri",9 Style "NQ" Size 1,25.4
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. xoPc="S"
           SET COLOR TO RGB(0,0,128,164,162,170)
      CASE ptIp="R" .AND. xoPc="S"
           DO coLblz
 ENDCASE
 @vFFR,pICL+50 Say Round(xPIE*xCTD,4) Font "&mLetAri",9 Style "NQ" Size 1,28 Pict "999,999,999,999.9999"
 IF psWw>0 .AND. ppRg="1300" .AND. (vtPo=4 .OR. vtPo=5 .OR. vtPo=7)
      DO coLsc7
      SELECT teMporal_8
      @fFFR+4.9,pICL-10 Say FTM8COD Font "&mLetRom",13 Style "BQ" Size 1,025.5 Pict "@S25"
      @fFFR+6.5,pICL-10 Say FTM8DES Font "&mLetRom",13 Style "BQ" Size 1,083.0 Pict "@S86"
      DO CASE
           CASE ftM8la1>0 .AND. ftM8an1>0
                @fFFR+4.9,pICL+086.4 Say FTM8LA1 Font "&mLetRom",12 Style "BQU" Size 1,8.3 Pict "999.999"
                @fFFR+4.9,pICL+098.9 Say "x"     Font "&mLetRom",12 Style "BQ"  Size 1,1.6
                @fFFR+4.9,pICL+102.0 Say FTM8AN1 Font "&mLetRom",12 Style "BQU" Size 1,8.3 Pict "999.999"
           CASE ftM8la2>0 .AND. ftM8an2>0
                @fFFR+4.9,pICL+086.3 Say FTM8LA2 Font "&mLetRom",12 Style "BQU" Size 1,7.0 Pict "999.99"
                @fFFR+4.9,pICL+098.9 Say "x"     Font "&mLetRom",12 Style "BQ"  Size 1,1.6
                @fFFR+4.9,pICL+102.0 Say FTM8AN2 Font "&mLetRom",12 Style "BQU" Size 1,7.0 Pict "999.99"
                @fFFR+4.9,pICL+096.3 Say '"'     Font "&mLetRom",12 Style "BQ"
                @fFFR+4.9,pICL+112.0 Say '"'     Font "&mLetRom",12 Style "BQ"
           OTHERWISE
                @fFFR+4.9,pICL+086.4 Say " "     Font "&mLetRom",12 Style "BQU" Size 1,8.3
                @fFFR+4.9,pICL+098.9 Say " "     Font "&mLetRom",12 Style "BQ"  Size 1,1.6
                @fFFR+4.9,pICL+102.0 Say " "     Font "&mLetRom",12 Style "BQU" Size 1,8.3
      ENDCASE
      DO seL_2701a
 ENDIF
ENDPROC
*
PROCEDURE Lin_2701a
 PARAMETER piNi, pfIn
 DO coLsc4
 @ piNi, piCl+05.2 TO pfIn, piCl+05.2
 @ piNi, piCl+18.0 TO pfIn, piCl+18.0
 @ piNi, piCl+22.8 TO pfIn, piCl+22.8
 @ piNi, piCl+35.6 TO pfIn, piCl+35.6
 @ piNi, piCl+40.4 TO pfIn, piCl+40.4
 @ piNi, piCl+49.6 TO pfIn, piCl+49.6
 @ piNi, piCl+78.4 TO pfIn, piCl+78.4
ENDPROC
*
PROCEDURE P00_2701a
 STORE vcO1-2 TO piCl
 STORE piCl+104.2 TO puCl
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
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
 DO liN_2701a IN PAC2701A WITH ifFr-0.2, ffFr+1.05
 @ ifFr-1.70, piCl+05.2 TO ifFr-0.2, piCl+05.2
 @ ifFr-1.70, piCl+22.8 TO ifFr-0.2, piCl+22.8
 @ ifFr-1.70, piCl+40.4 TO ifFr-0.2, piCl+40.4
 @ ifFr-1.70, piCl+49.6 TO ifFr-0.2, piCl+49.6
 @ ifFr-1.70, piCl+78.4 TO ifFr-0.2, piCl+78.4
 @ ffFr+1.05, piCl+40.4 TO ffFr+2.7, piCl+40.4
 @ ffFr+1.05, piCl+49.6 TO ffFr+2.7, piCl+49.6
 @ ffFr+1.05, piCl+78.4 TO ffFr+2.7, piCl+78.4
 @iFFR-1.50,pICL+00.9 Say "Tit"            Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+10.6 Say "Largo"          Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+28.4 Say "Ancho"          Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+42.7 Say "Cant"           Font "&mLetAri",9 Style "BT"
 @iFFR-1.50,pICL+82.7 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 @fFFR+1.30,pICL+40.8 Say cCAN             Font "&mLetAri",9 Style "BQ" Size 1,07.1 Pict "99,999"
 @fFFR+1.30,pICL+50.0 Say vPIE             Font "&mLetAri",9 Style "BQ" Size 1,23.3 Pict "999,999,999,999.9999"
 DO CASE
      CASE vtPo=4
           @iFFR-1.5,pICL+58.4 Say "Total mt2"  Font "&mLetAri",9 Style "BT"
      CASE vtPo=5
           @iFFR-1.5,pICL+57.4 Say "Total Pie2" Font "&mLetAri",9 Style "BT"
      CASE vtPo=7
           @iFFR-1.5,pICL+57.4 Say "Total Area" Font "&mLetAri",9 Style "BT"
 ENDCASE
 @fFFR+2.80,pICL Say " "+pDES Font "&mLetRom",12 Style "BQ" Size 1,75 Pict "@78"
 IF pnBa>1
      DO prEsiona WITH "1", "CONSU1", ffFr+4.9, puCl-4
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF ppRg="1300" .AND. (vtPo=4 .OR. vtPo=5 .OR. vtPo=7) .AND. psWw>0
      DO coLsc7
      DO cuAdro WITH ffFr+4.8, piCl-10.4, ffFr+7.8, puCl+10
      IF mkEy=k_Esc
           RETURN
      ENDIF
      @fFFR+2.9,pICL+36.0 Say "Largo:" Font "&mLetAri",9 Style "BT"
      @fFFR+2.9,pICL+56.0 Say "Ancho:" Font "&mLetAri",9 Style "BT"
      IF psWw>1
           DO prEsiona WITH "1", "CONSU1", ffFr+6.5, puCl+5
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Rs1_2701a
 PRIVATE prCc
 STORE vrCc TO crCc
 DO rs1_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2701a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 DO seL_2701a
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(irCc, 3, 0)
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO exI_2701a
      IF vsXx=1
           EXIT
      ENDIF
      DO CASE
           CASE ppRg="2400"
                STORE f2402rcc TO prCc
           CASE ppRg="2600"
                STORE f2602rcc TO prCc
           CASE ppRg="2700"
                STORE f2702rcc TO prCc
           CASE ppRg="2800"
                STORE f2802rcc TO prCc
           CASE ppRg="1200"
                STORE f1202rcc TO prCc
           CASE ppRg="1300"
                STORE f1302rcc TO prCc
      ENDCASE
      IF prCc=vrCc
           STORE vfFr TO cfFr
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF cfFr=0
      STORE vrCc TO irCc, crCc
      STORE ifFr TO vfFr, cfFr
 ENDIF
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(irCc, 3, 0)
 DO paN_2701a
 STORE crCc TO vrCc
 STORE cfFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
 DO diS_2701a WITH "R"
 RELEASE prCc
ENDPROC
*
PROCEDURE Sel_2701a
 DO CASE
      CASE ppRg="2400"
           SELECT itE_cpra
      CASE ppRg="2600"
           SELECT itE_remi
      CASE ppRg="2700"
           SELECT itE_ingr
      CASE ppRg="2800"
           SELECT itE_sali
      CASE ppRg="1200"
           SELECT itE_ped
      CASE ppRg="1300"
           SELECT itE_fact
 ENDCASE
ENDPROC
*
PROCEDURE Mu1_2701a
 DO CASE
      CASE ppRg="2400"
           STORE f2402opc TO xoPc
           STORE f2402mla TO xmLa
           STORE f2402man TO xmAn
           STORE f2402un1 TO xuN1
           STORE f2402un2 TO xuN2
           STORE f2402p11 TO xp11
           STORE f2402p12 TO xp12
           STORE f2402p21 TO xp21
           STORE f2402p22 TO xp22
           STORE f2402ctd TO xcTd
           STORE f2402pie TO xpIe
           STORE f2402ca1 TO xcA1
           STORE f2402ca2 TO xcA2
           STORE f2402por TO xpOr
           STORE f2402cm1 TO xcMm
           STORE f2402cm2 TO xcMp
      CASE ppRg="2600"
           STORE f2602opc TO xoPc
           STORE f2602mla TO xmLa
           STORE f2602man TO xmAn
           STORE f2602un1 TO xuN1
           STORE f2602un2 TO xuN2
           STORE f2602p11 TO xp11
           STORE f2602p12 TO xp12
           STORE f2602p21 TO xp21
           STORE f2602p22 TO xp22
           STORE f2602ctd TO xcTd
           STORE f2602pie TO xpIe
           STORE f2602ca1 TO xcA1
           STORE f2602ca2 TO xcA2
           STORE f2602por TO xpOr
           STORE f2602cm1 TO xcMm
           STORE f2602cm2 TO xcMp
      CASE ppRg="2700"
           STORE f2702opc TO xoPc
           STORE f2702mla TO xmLa
           STORE f2702man TO xmAn
           STORE f2702un1 TO xuN1
           STORE f2702un2 TO xuN2
           STORE f2702p11 TO xp11
           STORE f2702p12 TO xp12
           STORE f2702p21 TO xp21
           STORE f2702p22 TO xp22
           STORE f2702ctd TO xcTd
           STORE f2702pie TO xpIe
           STORE f2702ca1 TO xcA1
           STORE f2702ca2 TO xcA2
           STORE f2702por TO xpOr
           STORE f2702cm1 TO xcMm
           STORE f2702cm2 TO xcMp
      CASE ppRg="2800"
           STORE f2802opc TO xoPc
           STORE f2802mla TO xmLa
           STORE f2802man TO xmAn
           STORE f2802un1 TO xuN1
           STORE f2802un2 TO xuN2
           STORE f2802p11 TO xp11
           STORE f2802p12 TO xp12
           STORE f2802p21 TO xp21
           STORE f2802p22 TO xp22
           STORE f2802ctd TO xcTd
           STORE f2802pie TO xpIe
           STORE f2802ca1 TO xcA1
           STORE f2802ca2 TO xcA2
           STORE f2802por TO xpOr
           STORE f2802cm1 TO xcMm
           STORE f2802cm2 TO xcMp
      CASE ppRg="1200"
           STORE f1202opc TO xoPc
           STORE f1202mla TO xmLa
           STORE f1202man TO xmAn
           STORE f1202un1 TO xuN1
           STORE f1202un2 TO xuN2
           STORE f1202p11 TO xp11
           STORE f1202p12 TO xp12
           STORE f1202p21 TO xp21
           STORE f1202p22 TO xp22
           STORE f1202ctd TO xcTd
           STORE f1202pie TO xpIe
           STORE f1202ca1 TO xcA1
           STORE f1202ca2 TO xcA2
           STORE f1202por TO xpOr
           STORE f1202cm1 TO xcMm
           STORE f1202cm2 TO xcMp
      CASE ppRg="1300"
           STORE f1302opc TO xoPc
           STORE f1302mla TO xmLa
           STORE f1302man TO xmAn
           STORE f1302un1 TO xuN1
           STORE f1302un2 TO xuN2
           STORE f1302p11 TO xp11
           STORE f1302p12 TO xp12
           STORE f1302p21 TO xp21
           STORE f1302p22 TO xp22
           STORE f1302ctd TO xcTd
           STORE f1302pie TO xpIe
           STORE f1302ca1 TO xcA1
           STORE f1302ca2 TO xcA2
           STORE f1302por TO xpOr
           STORE f1302cm1 TO xcMm
           STORE f1302cm2 TO xcMp
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2701a
 PARAMETER pmU1, pmU2
 DO CASE
      CASE ppRg="2400" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2402rcc TO vrCc
      CASE ppRg="2400" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2402rcc TO urCc
      CASE ppRg="2400" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2402rcc TO irCc
      CASE ppRg="2600" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2602rcc TO vrCc
      CASE ppRg="2600" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2602rcc TO urCc
      CASE ppRg="2600" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2602rcc TO irCc
      CASE ppRg="2700" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2702rcc TO vrCc
      CASE ppRg="2700" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2702rcc TO urCc
      CASE ppRg="2700" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2702rcc TO irCc
      CASE ppRg="2800" .AND. pmU1="F" .AND. pmU2="v"
           STORE f2802rcc TO vrCc
      CASE ppRg="2800" .AND. pmU1="F" .AND. pmU2="u"
           STORE f2802rcc TO urCc
      CASE ppRg="2800" .AND. pmU1="F" .AND. pmU2="i"
           STORE f2802rcc TO irCc
      CASE ppRg="1200" .AND. pmU1="F" .AND. pmU2="v"
           STORE f1202rcc TO vrCc
      CASE ppRg="1200" .AND. pmU1="F" .AND. pmU2="u"
           STORE f1202rcc TO urCc
      CASE ppRg="1200" .AND. pmU1="F" .AND. pmU2="i"
           STORE f1202rcc TO irCc
      CASE ppRg="1300" .AND. pmU1="F" .AND. pmU2="v"
           STORE f1302rcc TO vrCc
      CASE ppRg="1300" .AND. pmU1="F" .AND. pmU2="u"
           STORE f1302rcc TO urCc
      CASE ppRg="1300" .AND. pmU1="F" .AND. pmU2="i"
           STORE f1302rcc TO irCc
 ENDCASE
ENDPROC
*
PROCEDURE Exi_2701a
 STORE 0 TO vsXx
 DO CASE
      CASE ppRg="2400" .AND. f2402tdo+f2402ser+f2402doc+ALLTRIM(f2402cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
      CASE ppRg="2600" .AND. f2602tdo+f2602ser+f2602doc+ALLTRIM(f2602cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
      CASE ppRg="2700" .AND. f2702tdo+f2702ser+f2702doc+ALLTRIM(f2702cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
      CASE ppRg="2800" .AND. f2802tdo+f2802ser+f2802doc+ALLTRIM(f2802cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
      CASE ppRg="1200" .AND. f1202tdo+f1202ser+f1202doc+ALLTRIM(f1202cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
      CASE ppRg="1300" .AND. f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+ ;
           "*"<>vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           STORE 1 TO vsXx
 ENDCASE
ENDPROC
*
PROCEDURE Pla_2701a
 PRIVATE prCc, pvAr, pcMm, pcMp, ppOr, ptXt, pmEd, pmD1, pmD2, pmM1, pmM2,  ;
         pmM3, pmM4
 PRIVATE pcX1, pcX2, pcX3, pcX4, pcY1, pcY2, pcY3, pcY4, pcAn, pcA1, pcA2,  ;
         pcA3, pcA4
 PRIVATE pnNn
 SELECT teMporal_8
 STORE SUBSTR(ftM8des, 1, 23) TO pdEs
 IF ftM8la1>0 .AND. ftM8an1>0
      STORE ALLTRIM(STR(ftM8la1*1000, 10, 0)) TO plAr
      STORE ALLTRIM(STR(ftM8an1*1000, 10, 0)) TO paNc
 ELSE
      STORE ALLTRIM(STR(ftM8la2, 10, 0)) TO plAr
      STORE ALLTRIM(STR(ftM8an2, 10, 0)) TO paNc
 ENDIF
 DO seL_2701a
 STORE xnOm TO pnNn
 ptXt = FCREATE("PLANIQ\MEDIDAS.CSV")
 FSEEK(ptXt, 0, 2)
 STORE "PLQMATRL1.02,,0,default,N" TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 STORE "PLQMSETT1.13,default,0,Y,20,1000,Y,Y,2,N,Y,N,,,0,0,0,N,0,0,0,0,99999,99999,Y,0,0,0,0,N,1,N,0,0,0,0,0,0,0,N,Y,,"  ;
       TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 STORE "PLQCASES1.04,Cortes,0,,"+ALLTRIM(SUBSTR(pnNn, 1, 25))+ ;
       ",,,,,,,,True,0,0,,," TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 STORE "PLQPNLTC1.04,"+pdEs+","+paNc+","+plAr+",120,120,0,N,,1,0" TO pvAr
 FPUTS(ptXt, pvAr)
 FSEEK(ptXt, 0, 2)
 DO seL_2701a
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 0 TO vsXx
 STORE 1 TO prCc
 DO WHILE  .NOT. EOF()
      DO exI_2701a
      IF vsXx=1
           EXIT
      ENDIF
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      STORE f1302mla TO plAr
      STORE f1302man TO paNc
      STORE f1302ctd TO pcAn
      STORE f1302ca1 TO pcA1
      STORE f1302ca2 TO pcA2
      STORE f1302ca3 TO pcA3
      STORE f1302ca4 TO pcA4
      STORE f1302mm1 TO pmM1
      STORE f1302mm2 TO pmM2
      STORE f1302mm3 TO pmM3
      STORE f1302mm4 TO pmM4
      STORE f1302cx1 TO pcX1
      STORE f1302cx2 TO pcX2
      STORE f1302cx3 TO pcX3
      STORE f1302cx4 TO pcX4
      STORE f1302cy1 TO pcY1
      STORE f1302cy2 TO pcY2
      STORE f1302cy3 TO pcY3
      STORE f1302cy4 TO pcY4
      STORE f1302cm1 TO pcMm
      STORE f1302cm2 TO pcMp
      STORE f1302por TO ppOr
      DO CASE
           CASE f1302un1="P" .OR. f1302un2="P"
                IF f1302un1="P"
                     IF ALLTRIM(f1302p12)="/"
                          STORE ALLTRIM(STR(f1302p11, 3, 0))+'"' TO pmD1
                     ELSE
                          STORE ALLTRIM(STR(f1302p11, 3, 0))+'"'+ ;
                                ALLTRIM(f1302p12) TO pmD1
                     ENDIF
                ELSE
                     STORE ALLTRIM(STR(f1302mla, 7, 3))+"m" TO pmD1
                ENDIF
                IF f1302un2="P"
                     IF ALLTRIM(f1302p22)="/"
                          STORE ALLTRIM(STR(f1302p21, 3, 0))+'"' TO pmD2
                     ELSE
                          STORE ALLTRIM(STR(f1302p21, 3, 0))+'"'+ ;
                                ALLTRIM(f1302p22) TO pmD2
                     ENDIF
                ELSE
                     STORE ALLTRIM(STR(f1302man, 7, 3))+"m" TO pmD2
                ENDIF
                STORE " "+pmD1+" x "+pmD2 TO pmEd
                STORE "PLQPRTTC1.04,pz."+ALLTRIM(STR(prCc, 6, 0))+":"+ ;
                      pmEd+","+ALLTRIM(STR(plAr*1000, 10, 0))+","+ ;
                      ALLTRIM(STR(paNc*1000, 10, 0))+",Y,"+ ;
                      ALLTRIM(STR(pcAn, 10, 0))+","+ALLTRIM(STR(pcAn, 10,  ;
                      0))+",0,,Y,,1,,,,N,,," TO pvAr
           OTHERWISE
                STORE "PLQPRTTC1.04,pz."+ALLTRIM(STR(prCc, 6, 0))+","+ ;
                      ALLTRIM(STR(plAr*1000, 10, 0))+","+ALLTRIM(STR(paNc* ;
                      1000, 10, 0))+",Y,"+ALLTRIM(STR(pcAn, 10, 0))+","+ ;
                      ALLTRIM(STR(pcAn, 10, 0))+",0,,Y,,1,,,,N,,," TO pvAr
      ENDCASE
      FPUTS(ptXt, pvAr)
      FSEEK(ptXt, 0, 2)
      STORE prCc+1 TO prCc
      DO seL_2701a
      SKIP
 ENDDO
 FCLOSE(ptXt)
 RELEASE prCc, pvAr, pcMm, pcMp, ppOr, ptXt, pmEd, pmD1, pmD2, pmM1, pmM2,  ;
         pmM3, pmM4
 RELEASE pcX1, pcX2, pcX3, pcX4, pcY1, pcY2, pcY3, pcY4, pcAn, pcA1, pcA2,  ;
         pcA3, pcA4
 RELEASE pnNn
ENDPROC
*
PROCEDURE Xls_2701a
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE ppRg="2400"
           DO xl0_0000a WITH "Detalle de Compra "+vsEr+"-"+vdOc, "Medidas", 9
      CASE ppRg="2600"
           DO xl0_0000a WITH "Detalle de Guía de Remisión "+vsEr+"-"+vdOc,  ;
              "Medidas", 9
      CASE ppRg="2700"
           DO xl0_0000a WITH "Detalle de Guía de Entrada "+vsEr+"-"+vdOc,  ;
              "Medidas", 9
      CASE ppRg="2800"
           DO xl0_0000a WITH "Detalle de Guía de Salida "+vsEr+"-"+vdOc,  ;
              "Medidas", 9
      CASE ppRg="1200"
           DO xl0_0000a WITH "Detalle de Pedido de Venta "+vsEr+"-"+vdOc,  ;
              "Medidas", 9
      CASE ppRg="1300" .AND. vtDo="FA"
           DO xl0_0000a WITH "Detalle de Factura "+vsEr+"-"+vdOc, "Medidas", 9
      CASE ppRg="1300" .AND. vtDo="BO"
           DO xl0_0000a WITH "Detalle de Boleta "+vsEr+"-"+vdOc, "Medidas", 9
      CASE ppRg="1300" .AND. vtDo="NP"
           DO xl0_0000a WITH "Detalle de Nota de Pedido "+vsEr+"-"+vdOc,  ;
              "Medidas", 9
      CASE ppRg="1300" .AND. vtDo="CT"
           DO xl0_0000a WITH "Detalle de Cotización "+vsEr+"-"+vdOc,  ;
              "Medidas", 9
 ENDCASE
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 2).vaLue = "Metros"
 pxLs.ceLls(3, 4).vaLue = "Pulg"
 pxLs.raNge(pxLs.ceLls(3,2), pxLs.ceLls(3,3)).meRge
 pxLs.raNge(pxLs.ceLls(3,4), pxLs.ceLls(3,7)).meRge
 pxLs.ceLls(4, 1).vaLue = "Tit"
 pxLs.ceLls(4, 2).vaLue = "Largo"
 pxLs.ceLls(4, 3).vaLue = "Ancho"
 pxLs.ceLls(4, 4).vaLue = "Largo"
 pxLs.ceLls(4, 6).vaLue = "Ancho"
 pxLs.ceLls(4, 8).vaLue = "Cantidad"
 pxLs.ceLls(4, 9).vaLue = "Pies"
 pxLs.raNge(pxLs.ceLls(4,4), pxLs.ceLls(4,5)).meRge
 pxLs.raNge(pxLs.ceLls(4,6), pxLs.ceLls(4,7)).meRge
 pxLs.raNge(pxLs.coLumns(2), pxLs.coLumns(3)).nuMberformat = "##0.000"
 pxLs.coLumns(4).nuMberformat = "##0"
 pxLs.coLumns(6).nuMberformat = "##0"
 pxLs.coLumns(8).nuMberformat = "#,##0"
 pxLs.coLumns(9).nuMberformat = "###,###,###,##0.0000"
 WITH pxLs.raNge(pxLs.ceLls(4,1),pxLs.ceLls(4,9))
      .boRders.liNestyle = 7
      .foNt.naMe = "Times New Roman"
      .foNt.siZe = 11
      .foNt.boLd = .T.
      .foNt.coLorindex = 1
      .inTerior.coLorindex = 15
      .hoRizontalalignment = 3
      .veRticalalignment = 2
 ENDWITH
 DO seL_2701a
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 5 TO viT1
 DO WHILE  .NOT. EOF()
      DO exI_2701a
      IF vsXx=1
           EXIT
      ENDIF
      DO mu1_2701a
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-4, 6, 0))+"..."
      pxLs.ceLls(viT1, 1).seLect
      DO CASE
           CASE xoPc="N"
                pxLs.ceLls(viT1, 1).vaLue = xcMm
                IF xuN1="M"
                     pxLs.ceLls(viT1, 2).vaLue = xmLa
                     pxLs.ceLls(viT1, 4).vaLue = ""
                     pxLs.ceLls(viT1, 5).vaLue = ""
                ELSE
                     pxLs.ceLls(viT1, 2).vaLue = ""
                     pxLs.ceLls(viT1, 4).vaLue = xp11
                     IF ALLTRIM(xp12)="/"
                          pxLs.ceLls(viT1, 5).vaLue = ""
                     ELSE
                          pxLs.ceLls(viT1, 5).vaLue = xp12
                     ENDIF
                ENDIF
                IF xuN2="M"
                     pxLs.ceLls(viT1, 3).vaLue = xmAn
                     pxLs.ceLls(viT1, 6).vaLue = ""
                     pxLs.ceLls(viT1, 7).vaLue = ""
                ELSE
                     pxLs.ceLls(viT1, 3).vaLue = ""
                     pxLs.ceLls(viT1, 6).vaLue = xp21
                     IF ALLTRIM(xp22)="/"
                          pxLs.ceLls(viT1, 7).vaLue = ""
                     ELSE
                          pxLs.ceLls(viT1, 7).vaLue = xp22
                     ENDIF
                ENDIF
                pxLs.ceLls(viT1, 8).vaLue = xcTd
                pxLs.ceLls(viT1, 9).vaLue = ROUND(xpIe*xcTd, 4)
           OTHERWISE
                pxLs.ceLls(viT1, 1).vaLue = ""
                pxLs.ceLls(viT1, 2).vaLue = ""
                pxLs.ceLls(viT1, 3).vaLue = ""
                pxLs.ceLls(viT1, 4).vaLue = ""
                pxLs.ceLls(viT1, 5).vaLue = ""
                pxLs.ceLls(viT1, 6).vaLue = ""
                pxLs.ceLls(viT1, 7).vaLue = ""
                pxLs.ceLls(viT1, 8).vaLue = ""
                pxLs.ceLls(viT1, 9).vaLue = xpIe
      ENDCASE
      STORE viT1+1 TO viT1
      SKIP
 ENDDO
 pxLs.raNge(pxLs.ceLls(5,1), pxLs.ceLls(viT1-1,9)).boRders.liNestyle = 7
 pxLs.raNge("A2:I3").inSert
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(2,9)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,9)).meRge
 pxLs.raNge(pxLs.ceLls(5,1), pxLs.ceLls(6,1)).meRge
 pxLs.raNge(pxLs.ceLls(5,8), pxLs.ceLls(6,8)).meRge
 pxLs.raNge(pxLs.ceLls(5,9), pxLs.ceLls(6,9)).meRge
 pxLs.raNge(pxLs.ceLls(2,2), pxLs.ceLls(3,9)).foNt.naMe = "Times New Roman"
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(3,9)).foNt.siZe = 11
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(3,9)).foNt.boLd = .F.
 pxLs.ceLls(2, 1).vaLue = vdEs
 pxLs.ceLls(3, 1).vaLue = "Unidad:"+vnUv
 pxLs.raNge(pxLs.coLumns(2), pxLs.coLumns(3)).coLumnwidth = 7.3
 pxLs.coLumns(1).coLumnwidth = 4
 pxLs.coLumns(4).coLumnwidth = 4
 pxLs.coLumns(5).coLumnwidth = 6
 pxLs.coLumns(6).coLumnwidth = 4
 pxLs.coLumns(7).coLumnwidth = 6
 pxLs.coLumns(8).coLumnwidth = 8.71
 pxLs.coLumns(9).coLumnwidth = 18.86
 DO xl1_0000a WITH 2
 WAIT CLEAR
ENDPROC
*
PROCEDURE Clp_2701a
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
      CASE mfIl>=ffFr+6.493 .AND. mfIl<=ffFr+7.993 .AND. psWw>1 .AND.  ;
           mcCc>=puCl+5 .AND. mcCc<=puCl+9 .AND. ppRg="1300" .AND. (vtPo= ;
           4 .OR. vtPo=5 .OR. vtPo=7)
           SELECT teMporal_8
           SKIP
           IF EOF()
                GOTO TOP
           ENDIF
           DO seL_2701a
           DO diS_2701a WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl
           DO diS_2701a WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(irCc, 3, 0)
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2701a WITH "F", "v"
           DO diS_2701a WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2701a
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta, se muestra las medidas del ítem. Si las lí-"
 @ 1.200, 02 SAY  ;
   "neas fueran  más de las que se pueden visualizar,  puede verlas por"
 @ 2.200, 02 SAY "páginas."
 @ 4.200, 02 SAY "Las teclas para movilizarse son:"
 @ 6.200, 29 SAY ":" STYLE "BT"
 @ 7.200, 29 SAY ":" STYLE "BT"
 @ 8.200, 29 SAY ":" STYLE "BT"
 @ 6.200, 11 SAY "ESC" STYLE "BT"
 @ 7.200, 11 SAY "F10" STYLE "BT"
 @ 8.200, 11 SAY "F1" STYLE "BT"
 @ 6.200, 31 SAY "Regresar a Detalle"
 @ 7.200, 31 SAY "Cerrar y regresar a Windows"
 @ 8.200, 31 SAY "Ayuda del Programa"
 STORE pfIl+9 TO pfIl
 IF ppRg="1300" .AND. (vtPo=4 .OR. vtPo=5 .OR. vtPo=7)
      @ 0.200, 29 SAY ":" STYLE "BT"
      @ 0.200, 11 SAY "F7" STYLE "BT"
      @ 0.200, 31 SAY "Optimiza con Plan-IQ"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ 0.200, 29 SAY ":" STYLE "BT"
 @ 1.200, 29 SAY ":" STYLE "BT"
 @ 2.200, 29 SAY ":" STYLE "BT"
 @ 3.200, 29 SAY ":" STYLE "BT"
 @ 4.200, 29 SAY ":" STYLE "BT"
 @ 5.200, 29 SAY ":" STYLE "BT"
 @ 6.200, 29 SAY ":" STYLE "BT"
 @ 0.200, 11 SAY "F8" STYLE "BT"
 @ 1.200, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ 2.200, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 3.200, 11 SAY "PAGE DOWN" STYLE "BT"
 @ 4.200, 11 SAY "PAGE UP" STYLE "BT"
 @ 5.200, 11 SAY "HOME" STYLE "BT"
 @ 6.200, 11 SAY "END" STYLE "BT"
 @ 0.200, 31 SAY "Pasar medidas a Excel"
 @ 1.200, 31 SAY "Línea inferior"
 @ 2.200, 31 SAY "Línea superior"
 @ 3.200, 31 SAY "Página siguiente"
 @ 4.200, 31 SAY "Página anterior"
 @ 5.200, 31 SAY "Primera línea"
 @ 6.200, 31 SAY "Última línea"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
