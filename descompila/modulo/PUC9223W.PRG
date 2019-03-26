 PRIVATE pcL3, psW3
 STORE vcL0+57 TO pcL3
 = INKEY(0.01)
 SELECT cuArto
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
 IF EOF()
      STORE 0 TO psW3
 ELSE
      STORE 1 TO psW3
 ENDIF
 SELECT teRcero
 DO p00_9223w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
 DO paN_9223w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9223w WITH "i", "v"
 DO seE_9223w WITH "v"
 DO diS_9223w WITH "R"
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
           DO reS_9223w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9223w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9223w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9223w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12" .AND. psW3=0
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
                     @fFFV+1.5,pCL3+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9223w WITH "i"
                     STORE ifFv TO vfFv
                     STORE 00 TO cfFv, psW0
                     DO WHILE  .NOT. EOF() .AND. f9223let+ ;
                        ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"=vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*" .AND. vfFv<ffFv+1
                          IF UPPER(ALLTRIM(f9223op3))+"*"= ;
                             UPPER(ALLTRIM(voP3))+"*"
                               STORE vfFv TO cfFv
                          ENDIF
                          DO diS_9223w WITH "N"
                          DO muE_9223w WITH "F", "U"
                          STORE vfFv TO ufFv
                          STORE vfFv+1 TO vfFv
                          SKIP
                     ENDDO
                     STORE 01 TO psW0
                     IF ufFv+1<=ffFv
                          SET COLOR TO RGB(0,0,0,251,252,190)
                          @ ufFv+1, piC3 CLEAR TO ffFv+1, puC3
                          DO liN_9223w
                     ENDIF
                     IF cfFv=0
                          DO muE_9223w WITH "i", "v"
                          STORE ifFv TO cfFv
                     ENDIF
                     STORE cfFv TO vfFv
                     DO seE_9223w WITH "v"
                     DO diS_9223w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                STORE f9223tit TO vtI3
                SELECT cuArto
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
                IF EOF()
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_le4
                DO puC9224w
                IF mkEy=k_Enter
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_le4
                IF ppRg$"12"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
                STORE "" TO voP4, voP5
                STORE "" TO vdC4, vdC5
                SELECT teRcero
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9223op3)+"*"=ALLTRIM(ioP3)+"*" .AND.  ;
                          ALLTRIM(voP3)+"*"=ALLTRIM(ioP3)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP3)+"*"=ALLTRIM(ioP3)+"*"
                                    DO paN_9223w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9223w WITH "v"
                                    DO diS_9223w WITH "N"
                          ENDCASE
                          DO muE_9223w WITH "i", "v"
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                   ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                   ALLTRIM(voP2)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9223op3)+"*"=ALLTRIM(uoP3)+"*" .AND.  ;
                          ALLTRIM(voP3)+"*"=ALLTRIM(uoP3)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP3)+"*"=ALLTRIM(uoP3)+"*"
                                    SKIP -INT(ffFv-ifFv)
                                    DO paN_9223w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9223w WITH "v"
                                    DO diS_9223w WITH "N"
                          ENDCASE
                          DO muE_9223w WITH "u", "v"
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                          ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "N"
                          SKIP
                          IF ALLTRIM(voP3)+"*"=ALLTRIM(uoP3)+"*"
                               SET COLOR TO RGB(0,0,0,251,252,190)
                               DO suBe WITH ifFv, piC3, ffFv, puC3, 1
                               DO liN_9223w
                               DO muE_9223w WITH "F", "u"
                               DO muE_9223w WITH "F", "v"
                               STORE ufFv TO vfFv
                               SKIP -INT(ffFv-ifFv)
                               DO muE_9223w WITH "F", "i"
                               SKIP INT(ffFv-ifFv)
                          ELSE
                               DO muE_9223w WITH "F", "v"
                               STORE vfFv+1 TO vfFv
                          ENDIF
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                          ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP3)+"*"=ALLTRIM(ioP3)+"*"
                               SET COLOR TO RGB(0,0,0,251,252,190)
                               DO baJa WITH ifFv, piC3, ffFv, puC3, 1
                               DO liN_9223w
                               DO muE_9223w WITH "F", "i"
                               DO muE_9223w WITH "F", "v"
                               STORE ifFv TO vfFv
                               IF ufFv<ffFv
                                    STORE ufFv+1 TO ufFv
                               ELSE
                                    SKIP INT(ffFv-ifFv)
                                    DO muE_9223w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9223w WITH "F", "v"
                               STORE vfFv-1 TO vfFv
                          ENDIF
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9223w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                          ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9223w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9223w WITH "i", "v"
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9223w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                          ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                          ALLTRIM(voP2)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFv-ifFv)
                          IF BOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                             ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+ ;
                             "*"+ALLTRIM(voP2)+"*"
                               GOTO TOP
                               SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
                          ENDIF
                          DO paN_9223w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9223w WITH "i", "v"
                          DO seE_9223w WITH "v"
                          DO diS_9223w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9223w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9223let+ALLTRIM(f9223op1)+ ;
                   "*"+ALLTRIM(f9223op2)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                   ALLTRIM(voP2)+"*" .AND. vfFv<ffFv+1
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9223des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFv+1 TO vfFv
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFv TO vfFv
                     DO seE_9223w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9223let+ ;
                        ALLTRIM(f9223op1)+"*"+ALLTRIM(f9223op2)+"*"=vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*" .AND. vfFv<ffFv+1
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9223des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFv+1 TO vfFv
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9223let+ALLTRIM(f9223op1)+"*"+ ;
                        ALLTRIM(f9223op2)+"*"<>vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9223w
                     DO muE_9223w WITH "i", "v"
                ELSE
                     DO muE_9223w WITH "F", "v"
                ENDIF
                DO seE_9223w WITH "v"
                DO diS_9223w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9223w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL3, psW3
ENDPROC
*
PROCEDURE Pan_9223w
 STORE ifFv TO vfFv, ufFv
 DO muE_9223w WITH "F", "i"
 DO muE_9223w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9223let+ALLTRIM(f9223op1)+"*"+ ;
    ALLTRIM(f9223op2)+"*"=vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*" .AND.  ;
    vfFv<ffFv+1
      DO diS_9223w WITH "N"
      DO muE_9223w WITH "F", "u"
      STORE vfFv TO ufFv
      STORE vfFv+1 TO vfFv
      SKIP
 ENDDO
 IF ufFv+1<=ffFv
      SET COLOR TO RGB(0,0,0,251,252,190)
      @ ufFv+1, piC3 CLEAR TO ffFv+1, puC3
      DO liN_9223w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9223w
 PARAMETER ptIp
 PRIVATE poP3, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,251,252,190)
      CASE ptIp="R"
           DO coLsc4
 ENDCASE
 @vFFV,pCL3+0.2 Say F9223OP3      Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFV,pCL3+3.8 Say F9223DES      Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9223op3 TO poP3
 SELECT cuArto
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(poP3)+"*"
 IF EOF()
      @vFFV,pCL3+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      @vFFV,pCL3+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 SELECT teRcero
 IF (ppRg="1" .OR. ppRg="2") .AND. psW3=0
      SELECT prOductos
      SEEK ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ALLTRIM(poP3)+"*"
      IF EOF()
           @vFFV,pCL3+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           @vFFV,pCL3+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
      ELSE
           @vFFV,pCL3+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           DO CASE
                CASE vlIs=1 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=1 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=1
                     @vFFV,pCL3+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=2
                     @vFFV,pCL3+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           ENDCASE
      ENDIF
      SELECT teRcero
 ENDIF
 RELEASE poP3, psXx
ENDPROC
*
PROCEDURE Lin_9223w
 DO coLbln
 IF (ppRg="1" .OR. ppRg="2") .AND. psW3=0
      @ ifFv-0.1, pcL3+35.0 TO ffFv+1.2, pcL3+35.0
      @ ifFv-0.1, pcL3+52.8 TO ffFv+1.2, pcL3+52.8
 ENDIF
 @ ifFv-0.1, pcL3+3.1 TO ffFv+1.2, pcL3+3.1
ENDPROC
*
PROCEDURE P00_9223w
 STORE pcL3+00.2 TO piC3
 STORE pcL3+34.6 TO puC3
 IF (ppRg="1" .OR. ppRg="2") .AND. psW3=0
      STORE pcL3+70.1 TO puC3
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,251,252,190)
 IF (ppRg="1" .OR. ppRg="2") .AND. psW3=0
      DO cuAdro WITH ifFv, pcL3-0.3, ffFv+2.5, pcL3+70.5
      @ ffFv+1.2, pcL3+35.0 TO ffFv+2.9, pcL3+70.9 PATTERN 1 COLOR W/W 
      @ ffFv+1.2, pcL3+35.0 TO ffFv+2.9, pcL3+52.9
      @ ffFv+1.2, pcL3+52.8 TO ffFv+2.9, pcL3+70.9
      @fFFV+1.5,pCL3+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFV+1.5,pCL3+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFv, pcL3, ffFv+2.5, pcL3+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFv+1.2, pcL3-0.9 TO ffFv+2.9, pcL3+35.1 PATTERN 1 COLOR B/B 
 @fFFV+1.4,pCL3+0.2 Say vTI2 Font "&mLetAri",12 Style "NQ" Color 6+/1 Size 1,24.9
 DO liN_9223w
ENDPROC
*
PROCEDURE See_9223w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+UPPER(vdC3)+ ;
                ALLTRIM(voP3)+"*"
      CASE psEe="i"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+UPPER(idC3)+ ;
                ALLTRIM(ioP3)+"*"
      CASE psEe="u"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+UPPER(udC3)+ ;
                ALLTRIM(uoP3)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9223w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP3 TO voP3
           STORE idC3 TO vdC3
           STORE ifFv TO vfFv
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP3 TO coP3
           STORE vdC3 TO cdC3
           STORE vfFv TO cfFv
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP3 TO voP3
           STORE udC3 TO vdC3
           STORE ufFv TO vfFv
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP3 TO voP3
           STORE cdC3 TO vdC3
           STORE cfFv TO vfFv
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9223op3 TO voP3
           STORE f9223des TO vdC3
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9223op3 TO uoP3
           STORE f9223des TO udC3
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9223op3 TO ioP3
           STORE f9223des TO idC3
 ENDCASE
ENDPROC
*
PROCEDURE Res_9223w
 DO muE_9223w WITH "v", "c"
 DO reS_9222w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le3
 DO p00_9223w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teRcero
 DO seE_9223w WITH "i"
 DO paN_9223w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9223w WITH "c", "v"
 DO seE_9223w WITH "v"
 DO diS_9223w WITH "R"
ENDPROC
*
PROCEDURE Clp_9223w
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
      CASE mfIl>=vfFv-0.007 .AND. mfIl<=vfFv+0.992 .AND. mcCc>=pcL3 .AND.  ;
           mcCc<=pcL3+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW3=0
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFv-0.007 .AND. mfIl<=vfFv+0.992 .AND. mcCc>=pcL3 .AND.  ;
           mcCc<=pcL3+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFv-0.007 .AND. mfIl<=ufFv+0.992 .AND. mcCc>=pcL3 .AND.  ;
           ((mcCc<=pcL3+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW3=0)  ;
           .OR. mcCc<=pcL3+35)
           DO diS_9223w WITH "N"
           STORE ifFv+INT(mfIl-ifFv) TO vfFv
           DO seE_9223w WITH "i"
           SKIP INT(mfIl-ifFv)
           STORE 999 TO mkEy
           DO muE_9223w WITH "F", "v"
           DO diS_9223w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9223w
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta,  se muestran los códigos y descripciones"
 @ pfIl+1, 2 SAY  ;
   "del tercer caracter correspondientes al Tipo de Producto, primer y se-"
 @ pfIl+2, 2 SAY "gundo caracter."
 STORE pfIl+1 TO pfIl
 DO hl0_9211w IN PUC9211W WITH "código"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
