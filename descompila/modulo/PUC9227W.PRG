 PRIVATE pcL7
 STORE vcL0+133 TO pcL7
 = INKEY(0.01)
 DO p00_9227w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT sePtimo
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
 DO paN_9227w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9227w WITH "i", "v"
 DO seE_9227w WITH "v"
 DO diS_9227w WITH "R"
 STORE 999 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_9227w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9227w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9227w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9227w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12"
                STORE vlIs TO plIs
                DO CASE
                     CASE mkEy=k_Ctrl_left .AND. vlIs=1
                          STORE 10 TO vlIs
                     CASE mkEy=k_Ctrl_left .AND. ulIs<>0 .AND. vsW0=1
                          DO CASE
                               CASE vlIs=ulIs .AND. ulI3<>0
                                    STORE ulI3 TO vlIs
                               CASE vlIs=ulIs .AND. ulI2<>0
                                    STORE ulI2 TO vlIs
                               CASE vlIs=ulI2
                                    STORE ulIs TO vlIs
                               CASE vlIs=ulI3 .AND. ulI2<>0
                                    STORE ulI2 TO vlIs
                               CASE vlIs=ulI3 .AND. ulIs<>0
                                    STORE ulIs TO vlIs
                          ENDCASE
                     CASE mkEy=k_Ctrl_left
                          STORE vlIs-1 TO vlIs
                     CASE mkEy=k_Ctrl_right .AND. vlIs=10
                          STORE 1 TO vlIs
                     CASE mkEy=k_Ctrl_right .AND. ulIs<>0 .AND. vsW0=1
                          DO CASE
                               CASE vlIs=ulIs .AND. ulI2<>0
                                    STORE ulI2 TO vlIs
                               CASE vlIs=ulIs .AND. ulI3<>0
                                    STORE ulI3 TO vlIs
                               CASE vlIs=ulI2 .AND. ulI3<>0
                                    STORE ulI3 TO vlIs
                               CASE vlIs=ulI3
                                    STORE ulIs TO vlIs
                          ENDCASE
                     CASE mkEy=k_Ctrl_right
                          STORE vlIs+1 TO vlIs
                ENDCASE
                DO CASE
                     CASE ulIs<>0 .AND. (vlIs=ulIs .OR. vlIs=ulI2 .OR.  ;
                          vlIs=ulI3)
                     CASE ulIs<>0 .AND. vsW0=1
                          STORE "No se puede cambiar a Lista de Precios "+ ;
                                STR(vlIs, 3, 0)+"..." TO mmSj
                          STORE plIs TO vlIs
                ENDCASE
                IF vlIs<>plIs
                     @fFFZ+1.5,pCL7+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9227w WITH "i"
                     STORE ifFz TO vfFz
                     STORE 00 TO cfFz, psW0
                     DO WHILE  .NOT. EOF() .AND. f9229let+ ;
                        ALLTRIM(f9229op1)+"*"+ALLTRIM(f9229op2)+"*"+ ;
                        ALLTRIM(f9229op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND.  ;
                        ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+"*"+ ;
                        ALLTRIM(f9229op6)+"*"=ALLTRIM(voP4)+"*"+ ;
                        ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          IF UPPER(ALLTRIM(f9229op7))+"*"= ;
                             UPPER(ALLTRIM(voP7))+"*"
                               STORE vfFz TO cfFz
                          ENDIF
                          DO diS_9227w WITH "N"
                          DO muE_9227w WITH "F", "U"
                          STORE vfFz TO ufFz
                          STORE vfFz+1 TO vfFz
                          SKIP
                     ENDDO
                     STORE 01 TO psW0
                     IF ufFz+1<=ffFz
                          SET COLOR TO RGB(0,0,0,251,252,190)
                          @ ufFz+1, piC7 CLEAR TO ffFz+1, puC7
                          DO liN_9227w
                     ENDIF
                     IF cfFz=0
                          DO muE_9227w WITH "i", "v"
                          STORE ifFz TO cfFz
                     ENDIF
                     STORE cfFz TO vfFz
                     DO seE_9227w WITH "v"
                     DO diS_9227w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                EXIT
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+ ;
                     "*"+ALLTRIM(voP6)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9229op7)+"*"=ALLTRIM(ioP7)+"*" .AND.  ;
                          ALLTRIM(voP7)+"*"=ALLTRIM(ioP7)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP7)+"*"=ALLTRIM(ioP7)+"*"
                                    DO paN_9227w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9227w WITH "v"
                                    DO diS_9227w WITH "N"
                          ENDCASE
                          DO muE_9227w WITH "i", "v"
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+ ;
                     "*"+ALLTRIM(voP6)+"*"+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                   ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<>vlEt+ ;
                   ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"  ;
                   .OR. ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+"*"+ ;
                   ALLTRIM(f9229op6)+"*"<>ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+ ;
                   "*"+ALLTRIM(voP6)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9229op7)+"*"=ALLTRIM(uoP7)+"*" .AND.  ;
                          ALLTRIM(voP7)+"*"=ALLTRIM(uoP7)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP7)+"*"=ALLTRIM(uoP7)+"*"
                                    SKIP -INT(ffFz-ifFz)
                                    DO paN_9227w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9227w WITH "v"
                                    DO diS_9227w WITH "N"
                          ENDCASE
                          DO muE_9227w WITH "u", "v"
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                          ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*" .OR. ALLTRIM(f9229op4)+"*"+ ;
                          ALLTRIM(f9229op5)+"*"+ALLTRIM(f9229op6)+"*"<> ;
                          ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "N"
                          SKIP
                          IF ALLTRIM(voP7)+"*"=ALLTRIM(uoP7)+"*"
                               SET COLOR TO RGB(0,0,0,251,252,190)
                               DO suBe WITH ifFz, piC7, ffFz, puC7, 1
                               DO liN_9227w
                               DO muE_9227w WITH "F", "u"
                               DO muE_9227w WITH "F", "v"
                               STORE ufFz TO vfFz
                               SKIP -INT(ffFz-ifFz)
                               DO muE_9227w WITH "F", "i"
                               SKIP INT(ffFz-ifFz)
                          ELSE
                               DO muE_9227w WITH "F", "v"
                               STORE vfFz+1 TO vfFz
                          ENDIF
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                          ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*" .OR. ALLTRIM(f9229op4)+"*"+ ;
                          ALLTRIM(f9229op5)+"*"+ALLTRIM(f9229op6)+"*"<> ;
                          ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP7)+"*"=ALLTRIM(ioP7)+"*"
                               SET COLOR TO RGB(0,0,0,251,252,190)
                               DO baJa WITH ifFz, piC7, ffFz, puC7, 1
                               DO liN_9227w
                               DO muE_9227w WITH "F", "i"
                               DO muE_9227w WITH "F", "v"
                               STORE ifFz TO vfFz
                               IF ufFz<ffFz
                                    STORE ufFz+1 TO ufFz
                               ELSE
                                    SKIP INT(ffFz-ifFz)
                                    DO muE_9227w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9227w WITH "F", "v"
                               STORE vfFz-1 TO vfFz
                          ENDIF
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9227w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                          ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*" .OR. ALLTRIM(f9229op4)+"*"+ ;
                          ALLTRIM(f9229op5)+"*"+ALLTRIM(f9229op6)+"*"<> ;
                          ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9227w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9227w WITH "i", "v"
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9227w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                          ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*" .OR. ALLTRIM(f9229op4)+"*"+ ;
                          ALLTRIM(f9229op5)+"*"+ALLTRIM(f9229op6)+"*"<> ;
                          ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFz-ifFz)
                          IF BOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                             ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<> ;
                             vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                             ALLTRIM(voP3)+"*" .OR. ALLTRIM(f9229op4)+"*"+ ;
                             ALLTRIM(f9229op5)+"*"+ALLTRIM(f9229op6)+"*"<> ;
                             ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ ;
                             ALLTRIM(voP6)+"*"
                               GOTO TOP
                               SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+ ;
                                    "*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+ ;
                                    "*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          ENDIF
                          DO paN_9227w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9227w WITH "i", "v"
                          DO seE_9227w WITH "v"
                          DO diS_9227w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9227w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9229let+ALLTRIM(f9229op1)+ ;
                   "*"+ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"=vlEt+ ;
                   ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"  ;
                   .AND. ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+"*"+ ;
                   ALLTRIM(f9229op6)+"*"=ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+ ;
                   "*"+ALLTRIM(voP6)+"*"
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9229des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFz+1 TO vfFz
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFz TO vfFz
                     DO seE_9227w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9229let+ ;
                        ALLTRIM(f9229op1)+"*"+ALLTRIM(f9229op2)+"*"+ ;
                        ALLTRIM(f9229op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND.  ;
                        ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+"*"+ ;
                        ALLTRIM(f9229op6)+"*"=ALLTRIM(voP4)+"*"+ ;
                        ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9229des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFz+1 TO vfFz
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ ;
                          ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"+UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9229let+ALLTRIM(f9229op1)+"*"+ ;
                        ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"<>vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                        "*" .OR. ALLTRIM(f9229op4)+"*"+ALLTRIM(f9229op5)+ ;
                        "*"+ALLTRIM(f9229op6)+"*"<>ALLTRIM(voP4)+"*"+ ;
                        ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9227w
                     DO muE_9227w WITH "i", "v"
                ELSE
                     DO muE_9227w WITH "F", "v"
                ENDIF
                DO seE_9227w WITH "v"
                DO diS_9227w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9227w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL7
ENDPROC
*
PROCEDURE Pan_9227w
 STORE ifFz TO vfFz, ufFz
 DO muE_9227w WITH "F", "i"
 DO muE_9227w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9229let+ALLTRIM(f9229op1)+"*"+ ;
    ALLTRIM(f9229op2)+"*"+ALLTRIM(f9229op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
    ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND. ALLTRIM(f9229op4)+"*"+ ;
    ALLTRIM(f9229op5)+"*"+ALLTRIM(f9229op6)+"*"=ALLTRIM(voP4)+"*"+ ;
    ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"
      DO diS_9227w WITH "N"
      DO muE_9227w WITH "F", "u"
      STORE vfFz TO ufFz
      STORE vfFz+1 TO vfFz
      SKIP
 ENDDO
 IF ufFz+1<=ffFz
      SET COLOR TO RGB(0,0,0,251,252,190)
      @ ufFz+1, piC7 CLEAR TO ffFz+1, puC7
      DO liN_9227w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9227w
 PARAMETER ptIp
 PRIVATE poP7, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,251,252,190)
      CASE ptIp="R"
           DO coLsc4
 ENDCASE
 @vFFZ,pCL7+0.2 Say F9229OP7                       Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFZ,pCL7+3.8 Say F9229DES                       Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9229op7 TO poP7
 IF ppRg="1" .OR. ppRg="2"
      SELECT prOductos
      SEEK ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ALLTRIM(voP3)+ ;
           ALLTRIM(voP4)+ALLTRIM(voP5)+ALLTRIM(voP6)+ALLTRIM(poP7)+"*"
      IF EOF()
           @vFFZ,pCL7+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           @vFFZ,pCL7+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
      ELSE
           @vFFZ,pCL7+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           DO CASE
                CASE vlIs=1 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=1 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=1
                     @vFFZ,pCL7+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=2
                     @vFFZ,pCL7+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           ENDCASE
      ENDIF
      SELECT sePtimo
 ENDIF
 RELEASE poP7, psXx
ENDPROC
*
PROCEDURE Lin_9227w
 DO coLbln
 IF ppRg="1" .OR. ppRg="2"
      @ ifFz-0.1, pcL7+35.0 TO ffFz+1.2, pcL7+35.0
      @ ifFz-0.1, pcL7+52.8 TO ffFz+1.2, pcL7+52.8
 ENDIF
 @ ifFz-0.1, pcL7+3.1 TO ffFz+1.2, pcL7+3.1
ENDPROC
*
PROCEDURE P00_9227w
 STORE pcL7+00.2 TO piC7
 STORE pcL7+34.6 TO puC7
 IF ppRg="1" .OR. ppRg="2"
      STORE pcL7+70.1 TO puC7
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,251,252,190)
 IF (ppRg="7" .OR. ppRg="2")
      DO cuAdro WITH ifFz, pcL7-0.3, ffFz+2.5, pcL7+70.5
      @ ffFz+1.2, pcL7+35.0 TO ffFz+2.9, pcL7+70.9 PATTERN 1 COLOR W/W 
      @ ffFz+1.2, pcL7+35.0 TO ffFz+2.9, pcL7+52.9
      @ ffFz+1.2, pcL7+52.8 TO ffFz+2.9, pcL7+70.9
      @fFFZ+1.5,pCL7+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFZ+1.5,pCL7+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFz, pcL7, ffFz+2.5, pcL7+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFz+1.2, pcL7-0.9 TO ffFz+2.9, pcL7+35.1 PATTERN 1 COLOR B/B 
 @fFFZ+1.4,pCL7+0.2 Say vTI6 Font "&mLetAri",12 Style "NQ" Color 6+/1 Size 1,24.9
 DO liN_9227w
ENDPROC
*
PROCEDURE See_9227w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"+ ;
                UPPER(vdC7)+ALLTRIM(voP7)+"*"
      CASE psEe="i"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"+ ;
                UPPER(idC7)+ALLTRIM(ioP7)+"*"
      CASE psEe="u"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(voP6)+"*"+ ;
                UPPER(udC7)+ALLTRIM(uoP7)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9227w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP7 TO voP7
           STORE idC7 TO vdC7
           STORE ifFz TO vfFz
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP7 TO coP7
           STORE vdC7 TO cdC7
           STORE vfFz TO cfFz
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP7 TO voP7
           STORE udC7 TO vdC7
           STORE ufFz TO vfFz
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP7 TO voP7
           STORE cdC7 TO vdC7
           STORE cfFz TO vfFz
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9229op7 TO voP7
           STORE f9229des TO vdC7
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9229op7 TO uoP7
           STORE f9229des TO udC7
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9229op7 TO ioP7
           STORE f9229des TO idC7
 ENDCASE
ENDPROC
*
PROCEDURE Res_9227w
 DO muE_9227w WITH "v", "c"
 DO reS_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le6
 DO p00_9227w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT sePtimo
 DO seE_9227w WITH "i"
 DO paN_9227w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9227w WITH "c", "v"
 DO seE_9227w WITH "v"
 DO diS_9227w WITH "R"
ENDPROC
*
PROCEDURE Clp_9227w
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFz-0.007 .AND. mfIl<=vfFz+0.992 .AND. mcCc>=pcL7 .AND.  ;
           mcCc<=pcL7+70.5 .AND. (ppRg="1" .OR. ppRg="2")
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFz-0.007 .AND. mfIl<=vfFz+0.992 .AND. mcCc>=pcL7 .AND.  ;
           mcCc<=pcL7+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFz-0.007 .AND. mfIl<=ufFz+0.992 .AND. mcCc>=pcL7 .AND.  ;
           ((mcCc<=pcL7+70.5 .AND. (ppRg="1" .OR. ppRg="2")) .OR. mcCc<= ;
           pcL7+35)
           DO diS_9227w WITH "N"
           STORE ifFz+INT(mfIl-ifFz) TO vfFz
           DO seE_9227w WITH "i"
           SKIP INT(mfIl-ifFz)
           STORE 999 TO mkEy
           DO muE_9227w WITH "F", "v"
           DO diS_9227w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9227w
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta,  se muestran los códigos y descripciones"
 @ pfIl+1, 2 SAY  ;
   "del sexto caracter correspondientes al Tipo de Producto, primer, segun-"
 @ pfIl+2, 2 SAY "do, tercer, cuarto y quinto caracter."
 STORE pfIl+1 TO pfIl
 DO hl0_9211w IN PUC9211W WITH "código"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
