 PRIVATE pcL2, psW6
 STORE vcL0+114 TO pcL6
 = INKEY(0.01)
 SELECT sePtimo
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
 IF EOF()
      STORE 0 TO psW6
 ELSE
      STORE 1 TO psW6
 ENDIF
 SELECT seXto
 DO p00_9226w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seXto
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
 DO paN_9226w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9226w WITH "i", "v"
 DO seE_9226w WITH "v"
 DO diS_9226w WITH "R"
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
           DO reS_9226w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9226w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9226w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9226w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12" .AND. psW6=0
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
                     @fFFY+1.5,pCL6+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9226w WITH "i"
                     STORE ifFy TO vfFy
                     STORE 00 TO cfFy, psW0
                     DO WHILE  .NOT. EOF() .AND. f9228let+ ;
                        ALLTRIM(f9228op1)+"*"+ALLTRIM(f9228op2)+"*"+ ;
                        ALLTRIM(f9228op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND.  ;
                        ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"= ;
                        ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                          IF UPPER(ALLTRIM(f9228op6))+"*"= ;
                             UPPER(ALLTRIM(voP6))+"*"
                               STORE vfFy TO cfFy
                          ENDIF
                          DO diS_9226w WITH "N"
                          DO muE_9226w WITH "F", "U"
                          STORE vfFy TO ufFy
                          STORE vfFy+1 TO vfFy
                          SKIP
                     ENDDO
                     STORE 01 TO psW0
                     IF ufFy+1<=ffFy
                          SET COLOR TO RGB(0,0,0,137,167,129)
                          @ ufFy+1, piC6 CLEAR TO ffFy+1, puC6
                          DO liN_9226w
                     ENDIF
                     IF cfFy=0
                          DO muE_9226w WITH "i", "v"
                          STORE ifFy TO cfFy
                     ENDIF
                     STORE cfFy TO vfFy
                     DO seE_9226w WITH "v"
                     DO diS_9226w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                STORE f9228tit TO vtI6
                SELECT sePtimo
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+ ;
                     "*"+ALLTRIM(voP6)+"*"
                IF EOF()
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_le7
                DO puC9227w
                IF mkEy=k_Enter
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_le7
                IF ppRg$"12"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
                STORE "" TO voP7
                STORE "" TO vdC7
                SELECT seXto
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9228op6)+"*"=ALLTRIM(ioP6)+"*" .AND.  ;
                          ALLTRIM(voP6)+"*"=ALLTRIM(ioP6)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP6)+"*"=ALLTRIM(ioP6)+"*"
                                    DO paN_9226w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9226w WITH "v"
                                    DO diS_9226w WITH "N"
                          ENDCASE
                          DO muE_9226w WITH "i", "v"
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                   ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                   ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<>vlEt+ ;
                   ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
                   ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9228op6)+"*"=ALLTRIM(uoP6)+"*" .AND.  ;
                          ALLTRIM(voP6)+"*"=ALLTRIM(uoP6)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP6)+"*"=ALLTRIM(uoP6)+"*"
                                    SKIP -INT(ffFy-ifFy)
                                    DO paN_9226w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9226w WITH "v"
                                    DO diS_9226w WITH "N"
                          ENDCASE
                          DO muE_9226w WITH "u", "v"
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                          ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                          ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "N"
                          SKIP
                          IF ALLTRIM(voP6)+"*"=ALLTRIM(uoP6)+"*"
                               SET COLOR TO RGB(0,0,0,137,167,129)
                               DO suBe WITH ifFy, piC6, ffFy, puC6, 1
                               DO liN_9226w
                               DO muE_9226w WITH "F", "u"
                               DO muE_9226w WITH "F", "v"
                               STORE ufFy TO vfFy
                               SKIP -INT(ffFy-ifFy)
                               DO muE_9226w WITH "F", "i"
                               SKIP INT(ffFy-ifFy)
                          ELSE
                               DO muE_9226w WITH "F", "v"
                               STORE vfFy+1 TO vfFy
                          ENDIF
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                          ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                          ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP6)+"*"=ALLTRIM(ioP6)+"*"
                               SET COLOR TO RGB(0,0,0,137,167,129)
                               DO baJa WITH ifFy, piC6, ffFy, puC6, 1
                               DO liN_9226w
                               DO muE_9226w WITH "F", "i"
                               DO muE_9226w WITH "F", "v"
                               STORE ifFy TO vfFy
                               IF ufFy<ffFy
                                    STORE ufFy+1 TO ufFy
                               ELSE
                                    SKIP INT(ffFy-ifFy)
                                    DO muE_9226w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9226w WITH "F", "v"
                               STORE vfFy-1 TO vfFy
                          ENDIF
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9226w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                          ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                          ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9226w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9226w WITH "i", "v"
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9226w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                          ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                          ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFy-ifFy)
                          IF BOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                             ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                             ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<> ;
                             vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                             ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ ;
                             ALLTRIM(voP5)+"*"
                               GOTO TOP
                               SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+ ;
                                    "*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+ ;
                                    "*"+ALLTRIM(voP5)+"*"
                          ENDIF
                          DO paN_9226w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9226w WITH "i", "v"
                          DO seE_9226w WITH "v"
                          DO diS_9226w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9226w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9228let+ALLTRIM(f9228op1)+ ;
                   "*"+ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                   ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"=vlEt+ ;
                   ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
                   ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9228des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFy+1 TO vfFy
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFy TO vfFy
                     DO seE_9226w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9228let+ ;
                        ALLTRIM(f9228op1)+"*"+ALLTRIM(f9228op2)+"*"+ ;
                        ALLTRIM(f9228op3)+"*"+ALLTRIM(f9228op4)+"*"+ ;
                        ALLTRIM(f9228op5)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+ ;
                        "*"+ALLTRIM(voP5)+"*"
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9228des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFy+1 TO vfFy
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ ;
                          ALLTRIM(voP5)+"*"+UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9228let+ALLTRIM(f9228op1)+"*"+ ;
                        ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ ;
                        ALLTRIM(f9228op4)+"*"+ALLTRIM(f9228op5)+"*"<>vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                        "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9226w
                     DO muE_9226w WITH "i", "v"
                ELSE
                     DO muE_9226w WITH "F", "v"
                ENDIF
                DO seE_9226w WITH "v"
                DO diS_9226w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9226w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL2, psW6
ENDPROC
*
PROCEDURE Pan_9226w
 STORE ifFy TO vfFy, ufFy
 DO muE_9226w WITH "F", "i"
 DO muE_9226w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9228let+ALLTRIM(f9228op1)+"*"+ ;
    ALLTRIM(f9228op2)+"*"+ALLTRIM(f9228op3)+"*"+ALLTRIM(f9228op4)+"*"+ ;
    ALLTRIM(f9228op5)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
    ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*" .AND. vfFy<ffFy+1
      DO diS_9226w WITH "N"
      DO muE_9226w WITH "F", "u"
      STORE vfFy TO ufFy
      STORE vfFy+1 TO vfFy
      SKIP
 ENDDO
 IF ufFy+1<=ffFy
      SET COLOR TO RGB(0,0,0,137,167,129)
      @ ufFy+1, piC6 CLEAR TO ffFy+1, puC6
      DO liN_9226w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9226w
 PARAMETER ptIp
 PRIVATE poP6, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,137,167,129)
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFY,pCL6+0.2 Say F9228OP6      Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFY,pCL6+3.8 Say F9228DES      Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9228op6 TO poP6
 SELECT sePtimo
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+ALLTRIM(poP6)+"*"
 IF EOF()
      @vFFY,pCL6+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      @vFFY,pCL6+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 SELECT seXto
 IF (ppRg="1" .OR. ppRg="2") .AND. psW6=0
      SELECT prOductos
      SEEK ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ALLTRIM(voP3)+ ;
           ALLTRIM(voP4)+ALLTRIM(voP5)+ALLTRIM(poP6)+"*"
      IF EOF()
           @vFFY,pCL6+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           @vFFY,pCL6+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
      ELSE
           @vFFY,pCL6+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           DO CASE
                CASE vlIs=1 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=1 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=1
                     @vFFY,pCL6+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=2
                     @vFFY,pCL6+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           ENDCASE
      ENDIF
      SELECT seXto
 ENDIF
 RELEASE poP6, psXx
ENDPROC
*
PROCEDURE Lin_9226w
 DO coLbln
 IF (ppRg="1" .OR. ppRg="2") .AND. psW6=0
      @ ifFy-0.1, pcL6+35.0 TO ffFy+1.2, pcL6+35.0
      @ ifFy-0.1, pcL6+52.8 TO ffFy+1.2, pcL6+52.8
 ENDIF
 @ ifFy-0.1, pcL6+3.1 TO ffFy+1.2, pcL6+3.1
ENDPROC
*
PROCEDURE P00_9226w
 STORE pcL6+00.2 TO piC6
 STORE pcL6+34.6 TO puC6
 IF (ppRg="1" .OR. ppRg="2") .AND. psW6=0
      STORE pcL6+70.1 TO puC6
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,137,167,129)
 IF (ppRg="7" .OR. ppRg="2") .AND. psW6=0
      DO cuAdro WITH ifFy, pcL6-0.3, ffFy+2.5, pcL6+70.5
      @ ffFy+1.2, pcL6+35.0 TO ffFy+2.9, pcL6+70.9 PATTERN 1 COLOR W/W 
      @ ffFy+1.2, pcL6+35.0 TO ffFy+2.9, pcL6+52.9
      @ ffFy+1.2, pcL6+52.8 TO ffFy+2.9, pcL6+70.9
      @fFFY+1.5,pCL6+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFY+1.5,pCL6+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFy, pcL6, ffFy+2.5, pcL6+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFy+1.2, pcL6-0.9 TO ffFy+2.9, pcL6+35.1 PATTERN 1 COLOR GR/GR* 
 @fFFY+1.4,pCL6+0.2 Say vTI5 Font "&mLetAri",12 Style "NQ" Color 1/6* Size 1,24.9
 DO liN_9226w
ENDPROC
*
PROCEDURE See_9226w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+UPPER(vdC6)+ ;
                ALLTRIM(voP6)+"*"
      CASE psEe="i"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+UPPER(idC6)+ ;
                ALLTRIM(ioP6)+"*"
      CASE psEe="u"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"+UPPER(udC6)+ ;
                ALLTRIM(uoP6)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9226w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP6 TO voP6
           STORE idC6 TO vdC6
           STORE ifFy TO vfFy
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP6 TO coP6
           STORE vdC6 TO cdC6
           STORE vfFy TO cfFy
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP6 TO voP6
           STORE udC6 TO vdC6
           STORE ufFy TO vfFy
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP6 TO voP6
           STORE cdC6 TO vdC6
           STORE cfFy TO vfFy
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9228op6 TO voP6
           STORE f9228des TO vdC6
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9228op6 TO uoP6
           STORE f9228des TO udC6
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9228op6 TO ioP6
           STORE f9228des TO idC6
 ENDCASE
ENDPROC
*
PROCEDURE Res_9226w
 DO muE_9226w WITH "v", "c"
 DO reS_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le6
 DO p00_9226w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seXto
 DO seE_9226w WITH "i"
 DO paN_9226w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9226w WITH "c", "v"
 DO seE_9226w WITH "v"
 DO diS_9226w WITH "R"
ENDPROC
*
PROCEDURE Clp_9226w
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
      CASE mfIl>=vfFy-0.007 .AND. mfIl<=vfFy+0.992 .AND. mcCc>=pcL6 .AND.  ;
           mcCc<=pcL6+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW6=0
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFy-0.007 .AND. mfIl<=vfFy+0.992 .AND. mcCc>=pcL6 .AND.  ;
           mcCc<=pcL6+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFy-0.007 .AND. mfIl<=ufFy+0.992 .AND. mcCc>=pcL6 .AND.  ;
           ((mcCc<=pcL6+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW6=0)  ;
           .OR. mcCc<=pcL6+35)
           DO diS_9226w WITH "N"
           STORE ifFy+INT(mfIl-ifFy) TO vfFy
           DO seE_9226w WITH "i"
           SKIP INT(mfIl-ifFy)
           STORE 999 TO mkEy
           DO muE_9226w WITH "F", "v"
           DO diS_9226w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9226w
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
