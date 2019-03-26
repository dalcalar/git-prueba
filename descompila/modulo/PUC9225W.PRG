 PRIVATE pcL5, psW5
 STORE vcL0+95 TO pcL5
 = INKEY(0.01)
 SELECT seXto
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"
 IF EOF()
      STORE 0 TO psW5
 ELSE
      STORE 1 TO psW5
 ENDIF
 SELECT quInto
 DO p00_9225w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT quInto
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"
 DO paN_9225w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9225w WITH "i", "v"
 DO seE_9225w WITH "v"
 DO diS_9225w WITH "R"
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
           DO reS_9225w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9225w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9225w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9225w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12" .AND. psW5=0
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
                     @fFFX+1.5,pCL5+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9225w WITH "i"
                     STORE ifFx TO vfFx
                     STORE 00 TO cfFx, psW0
                     DO WHILE  .NOT. EOF() .AND. f9225let+ ;
                        ALLTRIM(f9225op1)+"*"+ALLTRIM(f9225op2)+"*"+ ;
                        ALLTRIM(f9225op3)+"*"+ALLTRIM(f9225op4)+"*"=vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                        "*"+ALLTRIM(voP4)+"*" .AND. vfFx<ffFx+1
                          IF UPPER(ALLTRIM(f9225op5))+"*"= ;
                             UPPER(ALLTRIM(voP5))+"*"
                               STORE vfFx TO cfFx
                          ENDIF
                          DO diS_9225w WITH "N"
                          DO muE_9225w WITH "F", "U"
                          STORE vfFx TO ufFx
                          STORE vfFx+1 TO vfFx
                          SKIP
                     ENDDO
                     STORE 01 TO psW0
                     IF ufFx+1<=ffFx
                          SET COLOR TO RGB(0,0,0,255,221,206)
                          @ ufFx+1, piC5 CLEAR TO ffFx+1, puC5
                          DO liN_9225w
                     ENDIF
                     IF cfFx=0
                          DO muE_9225w WITH "i", "v"
                          STORE ifFx TO cfFx
                     ENDIF
                     STORE cfFx TO vfFx
                     DO seE_9225w WITH "v"
                     DO diS_9225w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                STORE f9225tit TO vtI5
                SELECT seXto
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+ALLTRIM(voP5)+"*"
                IF EOF()
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_le6
                DO puC9226w
                IF mkEy=k_Enter
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_le6
                IF ppRg$"12"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
                STORE "" TO voP6
                STORE "" TO vdC6
                SELECT quInto
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9225op5)+"*"=ALLTRIM(ioP5)+"*" .AND.  ;
                          ALLTRIM(voP5)+"*"=ALLTRIM(ioP5)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP5)+"*"=ALLTRIM(ioP5)+"*"
                                    DO paN_9225w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9225w WITH "v"
                                    DO diS_9225w WITH "N"
                          ENDCASE
                          DO muE_9225w WITH "i", "v"
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                   ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                   ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                   ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9225op5)+"*"=ALLTRIM(uoP5)+"*" .AND.  ;
                          ALLTRIM(voP5)+"*"=ALLTRIM(uoP5)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP5)+"*"=ALLTRIM(uoP5)+"*"
                                    SKIP -INT(ffFx-ifFx)
                                    DO paN_9225w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9225w WITH "v"
                                    DO diS_9225w WITH "N"
                          ENDCASE
                          DO muE_9225w WITH "u", "v"
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                          ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                          ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "N"
                          SKIP
                          IF ALLTRIM(voP5)+"*"=ALLTRIM(uoP5)+"*"
                               SET COLOR TO RGB(0,0,0,255,221,206)
                               DO suBe WITH ifFx, piC5, ffFx, puC5, 1
                               DO liN_9225w
                               DO muE_9225w WITH "F", "u"
                               DO muE_9225w WITH "F", "v"
                               STORE ufFx TO vfFx
                               SKIP -INT(ffFx-ifFx)
                               DO muE_9225w WITH "F", "i"
                               SKIP INT(ffFx-ifFx)
                          ELSE
                               DO muE_9225w WITH "F", "v"
                               STORE vfFx+1 TO vfFx
                          ENDIF
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                          ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                          ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP5)+"*"=ALLTRIM(ioP5)+"*"
                               SET COLOR TO RGB(0,0,0,255,221,206)
                               DO baJa WITH ifFx, piC5, ffFx, puC5, 1
                               DO liN_9225w
                               DO muE_9225w WITH "F", "i"
                               DO muE_9225w WITH "F", "v"
                               STORE ifFx TO vfFx
                               IF ufFx<ffFx
                                    STORE ufFx+1 TO ufFx
                               ELSE
                                    SKIP INT(ffFx-ifFx)
                                    DO muE_9225w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9225w WITH "F", "v"
                               STORE vfFx-1 TO vfFx
                          ENDIF
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9225w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                          ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                          ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9225w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9225w WITH "i", "v"
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9225w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                          ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                          ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFx-ifFx)
                          IF BOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                             ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                             ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+ ;
                             "*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
                             ALLTRIM(voP4)+"*"
                               GOTO TOP
                               SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+ ;
                                    "*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                          ENDIF
                          DO paN_9225w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9225w WITH "i", "v"
                          DO seE_9225w WITH "v"
                          DO diS_9225w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9225w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9225let+ALLTRIM(f9225op1)+ ;
                   "*"+ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                   ALLTRIM(f9225op4)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                   ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"  ;
                   .AND. vfFx<ffFx+1
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9225des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFx+1 TO vfFx
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFx TO vfFx
                     DO seE_9225w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9225let+ ;
                        ALLTRIM(f9225op1)+"*"+ALLTRIM(f9225op2)+"*"+ ;
                        ALLTRIM(f9225op3)+"*"+ALLTRIM(f9225op4)+"*"=vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                        "*"+ALLTRIM(voP4)+"*" .AND. vfFx<ffFx+1
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9225des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFx+1 TO vfFx
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"+UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9225let+ALLTRIM(f9225op1)+"*"+ ;
                        ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ ;
                        ALLTRIM(f9225op4)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9225w
                     DO muE_9225w WITH "i", "v"
                ELSE
                     DO muE_9225w WITH "F", "v"
                ENDIF
                DO seE_9225w WITH "v"
                DO diS_9225w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9225w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL5, psW5
ENDPROC
*
PROCEDURE Pan_9225w
 STORE ifFx TO vfFx, ufFx
 DO muE_9225w WITH "F", "i"
 DO muE_9225w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9225let+ALLTRIM(f9225op1)+"*"+ ;
    ALLTRIM(f9225op2)+"*"+ALLTRIM(f9225op3)+"*"+ALLTRIM(f9225op4)+"*"= ;
    vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
    ALLTRIM(voP4)+"*" .AND. vfFx<ffFx+1
      DO diS_9225w WITH "N"
      DO muE_9225w WITH "F", "u"
      STORE vfFx TO ufFx
      STORE vfFx+1 TO vfFx
      SKIP
 ENDDO
 IF ufFx+1<=ffFx
      SET COLOR TO RGB(0,0,0,255,221,206)
      @ ufFx+1, piC5 CLEAR TO ffFx+1, puC5
      DO liN_9225w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9225w
 PARAMETER ptIp
 PRIVATE poP5, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,255,221,206)
      CASE ptIp="R"
           DO coLsc4
 ENDCASE
 @vFFX,pCL5+0.2 Say F9225OP5      Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFX,pCL5+3.8 Say F9225DES      Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9225op5 TO poP5
 SELECT seXto
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(voP4)+"*"+ALLTRIM(poP5)+"*"
 IF EOF()
      @vFFX,pCL5+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      @vFFX,pCL5+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 SELECT quInto
 IF (ppRg="1" .OR. ppRg="2") .AND. psW5=0
      SELECT prOductos
      SEEK ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ALLTRIM(voP3)+ ;
           ALLTRIM(voP4)+ALLTRIM(poP5)+"*"
      IF EOF()
           @vFFX,pCL5+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           @vFFX,pCL5+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
      ELSE
           @vFFX,pCL5+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           DO CASE
                CASE vlIs=1 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=1 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=1
                     @vFFX,pCL5+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=2
                     @vFFX,pCL5+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           ENDCASE
      ENDIF
      SELECT quInto
 ENDIF
 RELEASE poP5, psXx
ENDPROC
*
PROCEDURE Lin_9225w
 DO coLbln
 IF (ppRg="1" .OR. ppRg="2") .AND. psW5=0
      @ ifFx-0.1, pcL5+35.0 TO ffFx+1.2, pcL5+35.0
      @ ifFx-0.1, pcL5+52.8 TO ffFx+1.2, pcL5+52.8
 ENDIF
 @ ifFx-0.1, pcL5+3.1 TO ffFx+1.2, pcL5+3.1
ENDPROC
*
PROCEDURE P00_9225w
 STORE pcL5+00.2 TO piC5
 STORE pcL5+34.6 TO puC5
 IF (ppRg="1" .OR. ppRg="2") .AND. psW5=0
      STORE pcL5+70.1 TO puC5
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,255,221,206)
 IF (ppRg="1" .OR. ppRg="2") .AND. psW5=0
      DO cuAdro WITH ifFx, pcL5-0.3, ffFx+2.5, pcL5+70.5
      @ ffFx+1.2, pcL5+35.0 TO ffFx+2.9, pcL5+70.9 PATTERN 1 COLOR W/W 
      @ ffFx+1.2, pcL5+35.0 TO ffFx+2.9, pcL5+52.9
      @ ffFx+1.2, pcL5+52.8 TO ffFx+2.9, pcL5+70.9
      @fFFX+1.5,pCL5+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFX+1.5,pCL5+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFx, pcL5, ffFx+2.5, pcL5+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFx+1.2, pcL5-0.9 TO ffFx+2.9, pcL5+35.1 PATTERN 1 COLOR B/B 
 @fFFX+1.4,pCL5+0.2 Say vTI4 Font "&mLetAri",12 Style "NQ" Color 6+/1 Size 1,24.9
 DO liN_9225w
ENDPROC
*
PROCEDURE See_9225w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+UPPER(vdC5)+ALLTRIM(voP5)+"*"
      CASE psEe="i"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+UPPER(idC5)+ALLTRIM(ioP5)+"*"
      CASE psEe="u"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+ALLTRIM(voP4)+"*"+UPPER(udC5)+ALLTRIM(uoP5)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9225w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP5 TO voP5
           STORE idC5 TO vdC5
           STORE ifFx TO vfFx
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP5 TO coP5
           STORE vdC5 TO cdC5
           STORE vfFx TO cfFx
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP5 TO voP5
           STORE udC5 TO vdC5
           STORE ufFx TO vfFx
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP5 TO voP5
           STORE cdC5 TO vdC5
           STORE cfFx TO vfFx
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9225op5 TO voP5
           STORE f9225des TO vdC5
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9225op5 TO uoP5
           STORE f9225des TO udC5
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9225op5 TO ioP5
           STORE f9225des TO idC5
 ENDCASE
ENDPROC
*
PROCEDURE Res_9225w
 DO muE_9225w WITH "v", "c"
 DO reS_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le5
 DO p00_9225w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT quInto
 DO seE_9225w WITH "i"
 DO paN_9225w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9225w WITH "c", "v"
 DO seE_9225w WITH "v"
 DO diS_9225w WITH "R"
ENDPROC
*
PROCEDURE Clp_9225w
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
      CASE mfIl>=vfFx-0.007 .AND. mfIl<=vfFx+0.992 .AND. mcCc>=pcL5 .AND.  ;
           mcCc<=pcL5+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW5=0
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFx-0.007 .AND. mfIl<=vfFx+0.992 .AND. mcCc>=pcL5 .AND.  ;
           mcCc<=pcL5+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFx-0.007 .AND. mfIl<=ufFx+0.992 .AND. mcCc>=pcL5 .AND.  ;
           ((mcCc<=pcL5+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW5=0)  ;
           .OR. mcCc<=pcL5+35)
           DO diS_9225w WITH "N"
           STORE ifFx+INT(mfIl-ifFx) TO vfFx
           DO seE_9225w WITH "i"
           SKIP INT(mfIl-ifFx)
           STORE 999 TO mkEy
           DO muE_9225w WITH "F", "v"
           DO diS_9225w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9225w
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta,  se muestran los códigos y descripciones"
 @ pfIl+1, 2 SAY  ;
   "del quinto caracter correspondientes al Tipo de Producto, primer, segun-"
 @ pfIl+2, 2 SAY "do, tercer, cuarto y quinto caracter."
 STORE pfIl+1 TO pfIl
 DO hl0_9211w IN PUC9211W WITH "código"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
