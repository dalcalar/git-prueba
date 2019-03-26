 PARAMETER ppRg
 = INKEY(0.01)
 DO seL_2701a IN PAC2701A
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 00 TO ccAn, vpIe
 DO WHILE  .NOT. EOF()
      DO exI_2701a IN PAC2701A
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
 DO p00_2701b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO paN_2701b
 STORE irCc TO vrCc
 STORE ifFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
 DO diS_2701b WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2701b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2701b
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
                DO rs1_2701b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO prE_docum WITH "Desea pasar datos a Excel?"
                IF moPc$"Ss"
                     DO xlS_2701b
                ENDIF
                DO seL_2701a IN PAC2701A
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
                                    DO paN_2701b
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     STR(vrCc, 3, 0)
                                    DO diS_2701b WITH "N"
                          ENDCASE
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701b WITH "R"
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
                                    DO paN_2701b
                               OTHERWISE
                                    SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ ;
                                     STR(vrCc, 3, 0)
                                    DO diS_2701b WITH "N"
                          ENDCASE
                          STORE urCc TO vrCc
                          STORE ufFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701b WITH "R"
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
                          DO diS_2701b WITH "N"
                          SKIP
                          IF vrCc=urCc
                               DO coLsc1
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2701b WITH ffFr, ffFr+1
                               DO muE_2701a IN PAC2701A WITH "F", "v"
                               DO muE_2701a IN PAC2701A WITH "F", "u"
                               STORE ufFr TO vfFr
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2701a IN PAC2701A WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               DO muE_2701a IN PAC2701A WITH "F", "v"
                               STORE vfFr+1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701b WITH "R"
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
                          DO diS_2701b WITH "N"
                          SKIP -1
                          IF vrCc=irCc
                               DO coLsc1
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2701b WITH ifFr, ifFr+1
                               DO muE_2701a IN PAC2701A WITH "F", "i"
                               DO muE_2701a IN PAC2701A WITH "F", "v"
                               STORE ifFr TO vfFr
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2701a IN PAC2701A WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2701a IN PAC2701A WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701b WITH "R"
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
                          DO paN_2701b
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701b WITH "R"
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
                          DO paN_2701b
                          STORE irCc TO vrCc
                          STORE ifFr TO vfFr
                          SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
                          DO diS_2701b WITH "R"
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
ENDPROC
*
PROCEDURE Pan_2701b
 STORE ifFr TO vfFr, ufFr
 DO muE_2701a IN PAC2701A WITH "F", "i"
 DO muE_2701a IN PAC2701A WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO exI_2701a IN PAC2701A
      IF vsXx=1
           EXIT
      ENDIF
      DO diS_2701b WITH "N"
      DO muE_2701a IN PAC2701A WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coLsc1
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2701b WITH vfFr, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2701b
 PARAMETER ptIp
 DO mu1_2701a IN PAC2701A
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF xoPc="N"
      @vFFR,pICL-00.4 Say xCMM        Font "&mLetAri",9 Style "NQ" Size 1,05.6
      @vFFR,pICL+05.8 Say xMLA        Font "&mLetAri",9 Style "NQ" Size 1,08.3 Pict "99.999"
      @vFFR,pICL+14.8 Say " mts"      Font "&mLetAri",9 Style "NQ" Size 1,05.1
      @vFFR,pICL+20.6 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,00.1
      @vFFR,pICL+20.7 Say xCTD        Font "&mLetAri",9 Style "NQ" Size 1,08.5 Pict "9,999"
      @vFFR,pICL+29.4 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,00.1
      @vFFR,pICL+30.1 Say (xMLA*xCTD) Font "&mLetAri",9 Style "NQ" Size 1,28.0 Pict "999,999,999,999.9999"
      @vFFR,pICL+58.8 Say xCMP        Font "&mLetAri",9 Style "NQ" Size 1,22.7 Pict "@S20"
 ELSE
      @vFFR,pICL-00.4 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,05.6
      @vFFR,pICL+05.8 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,08.3
      @vFFR,pICL+14.8 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,05.1
      @vFFR,pICL+20.6 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,09.0
      @vFFR,pICL+30.1 Say xPIE        Font "&mLetAri",9 Style "NQ" Size 1,28.0 Pict "999,999,999,999.9999"
      @vFFR,pICL+58.8 Say " "         Font "&mLetAri",9 Style "NQ" Size 1,22.7
 ENDIF
ENDPROC
*
PROCEDURE Lin_2701b
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, piCl+05.4 TO pfIn, piCl+05.4
 @ piNi, piCl+14.4 TO pfIn, piCl+14.4
 @ piNi, piCl+20.2 TO pfIn, piCl+20.2
 @ piNi, piCl+29.7 TO pfIn, piCl+29.7
 @ piNi, piCl+58.4 TO pfIn, piCl+58.4
ENDPROC
*
PROCEDURE P00_2701b
 STORE vcO1 TO piCl
 STORE piCl+81.2 TO puCl
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO cuAdro WITH ifFr-1.7, piCl-0.4, ffFr+2.7, puCl+0.3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifFr-1.7, piCl-00.7 TO ifFr-0.2, puCl+00.7 PATTERN 1
 @ ffFr+1.1, piCl-00.7 TO ffFr+2.7, puCl+00.6 PATTERN 1
 @ ifFr-1.7, piCl+05.4 TO ifFr-0.2, piCl+05.4
 @ ifFr-1.7, piCl+20.2 TO ffFr+2.7, piCl+20.2
 @ ifFr-1.7, piCl+29.7 TO ffFr+2.7, piCl+29.7
 @ ifFr-1.7, piCl+58.4 TO ffFr+2.7, piCl+58.4
 DO liN_2701b WITH ifFr-0.2, ffFr+1.2
 DO coLsc4
 DO CASE
      CASE vtPo=6
           @iFFR-1.5,pICL+09.0 Say "Largo"     Font "&mLetAri",9 Style "BQ"
           @iFFR-1.5,pICL+37.6 Say "Total mts" Font "&mLetAri",9 Style "BQ"
      CASE vtPo=8
           @iFFR-1.5,pICL+07.2 Say "Diámetro"  Font "&mLetAri",9 Style "BQ"
           @iFFR-1.5,pICL+38.6 Say "Perímetro" Font "&mLetAri",9 Style "BQ"
      CASE vtPo=9
           @iFFR-1.5,pICL+09.0 Say "Largo"     Font "&mLetAri",9 Style "BQ"
           @iFFR-1.5,pICL+40.6 Say "Metros"    Font "&mLetAri",9 Style "BQ"
 ENDCASE
 @iFFR-1.5,pICL-00.1 Say "Com"               Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+21.4 Say "Cantid"            Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pICL+61.0 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @fFFR+1.3,pICL+20.7 Say cCAN                Font "&mLetAri",9 Style "BQ" Size 1,07.1 Pict "99,999"
 @fFFR+1.3,pICL+30.1 Say vPIE                Font "&mLetAri",9 Style "BQ" Size 1,23.3 Pict "999,999,999,999.9999"
ENDPROC
*
PROCEDURE Rs1_2701b
 PRIVATE prCc
 STORE vrCc TO crCc
 DO rs1_2700c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2701b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFr
 STORE ifFr TO vfFr
 DO seL_2701a IN PAC2701A
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(irCc, 3, 0)
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO exI_2701a IN PAC2701A
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
 DO paN_2701b
 STORE crCc TO vrCc
 STORE cfFr TO vfFr
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrCc, 3, 0)
 DO diS_2701b WITH "R"
 RELEASE prCc
ENDPROC
*
PROCEDURE Xls_2701b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO CASE
      CASE ppRg="2400"
           DO xl0_0000a WITH "Detalle de Compra "+vsEr+"-"+vdOc, "Medidas", 3
      CASE ppRg="2600"
           DO xl0_0000a WITH "Detalle de Guía de Remisión "+vsEr+"-"+vdOc,  ;
              "Medidas", 3
      CASE ppRg="2700"
           DO xl0_0000a WITH "Detalle de Guía de Entrada "+vsEr+"-"+vdOc,  ;
              "Medidas", 3
      CASE ppRg="2800"
           DO xl0_0000a WITH "Detalle de Guía de Salida "+vsEr+"-"+vdOc,  ;
              "Medidas", 3
      CASE ppRg="1200"
           DO xl0_0000a WITH "Detalle de Pedido de Venta "+vsEr+"-"+vdOc,  ;
              "Medidas", 3
      CASE ppRg="1300" .AND. vtDo="FA"
           DO xl0_0000a WITH "Detalle de Factura "+vsEr+"-"+vdOc, "Medidas", 3
      CASE ppRg="1300" .AND. vtDo="BO"
           DO xl0_0000a WITH "Detalle de Boleta "+vsEr+"-"+vdOc, "Medidas", 3
      CASE ppRg="1300" .AND. vtDo="NP"
           DO xl0_0000a WITH "Detalle de Nota de Pedido "+vsEr+"-"+vdOc,  ;
              "Medidas", 3
      CASE ppRg="1300" .AND. vtDo="CT"
           DO xl0_0000a WITH "Detalle de Cotización "+vsEr+"-"+vdOc,  ;
              "Medidas", 3
 ENDCASE
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 1).vaLue = "Largo"
 pxLs.ceLls(3, 2).vaLue = "Cantidad"
 pxLs.ceLls(3, 3).vaLue = "Total"
 pxLs.coLumns(1).nuMberformat = "##0.000"
 pxLs.coLumns(2).nuMberformat = "##0"
 pxLs.coLumns(3).nuMberformat = "###,###,###,##0.0000"
 DO seL_2701a IN PAC2701A
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 STORE 4 TO viT1
 DO WHILE  .NOT. EOF()
      DO exI_2701a IN PAC2701A
      IF vsXx=1
           EXIT
      ENDIF
      DO mu1_2701a IN PAC2701A
      WAIT WINDOW NOWAIT "Registro "+ALLTRIM(STR(viT1-4, 6, 0))+"..."
      pxLs.ceLls(viT1, 1).seLect
      IF xoPc="N"
           pxLs.ceLls(viT1, 1).vaLue = xmLa
           pxLs.ceLls(viT1, 2).vaLue = xcTd
           pxLs.ceLls(viT1, 3).vaLue = xpIe*xcTd
      ELSE
           pxLs.ceLls(viT1, 1).vaLue = ""
           pxLs.ceLls(viT1, 2).vaLue = ""
           pxLs.ceLls(viT1, 3).vaLue = xpIe
      ENDIF
      STORE viT1+1 TO viT1
      SKIP
 ENDDO
 pxLs.raNge(pxLs.ceLls(4,1), pxLs.ceLls(viT1-1,3)).boRders.liNestyle = 7
 pxLs.raNge("A2:D3").inSert
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(2,4)).meRge
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,4)).meRge
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(3,4)).foNt.naMe = "Times New Roman"
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(3,4)).foNt.siZe = 11
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(3,4)).foNt.boLd = .F.
 pxLs.ceLls(2, 1).vaLue = vdEs
 pxLs.ceLls(3, 1).vaLue = "Unidad:"+vnUv
 pxLs.coLumns(1).coLumnwidth = 8.30
 pxLs.coLumns(2).coLumnwidth = 8.30
 pxLs.coLumns(3).coLumnwidth = 20
 DO xl1_0000a WITH 2
 WAIT CLEAR
ENDPROC
*
PROCEDURE Clp_2701b
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
           DO diS_2701b WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(irCc, 3, 0)
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2701a IN PAC2701A WITH "F", "v"
           DO diS_2701b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
