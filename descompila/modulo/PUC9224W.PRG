 PRIVATE pcL4, psW4
 STORE vcL0+76 TO pcL4
 = INKEY(0.01)
 SELECT quInto
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
 IF EOF()
      STORE 0 TO psW4
 ELSE
      STORE 1 TO psW4
 ENDIF
 SELECT cuArto
 DO p00_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
 DO paN_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9224w WITH "i", "v"
 DO seE_9224w WITH "v"
 DO diS_9224w WITH "R"
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
           DO reS_9224w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9224w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9224w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9224w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12" .AND. psW4=0
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
                     @fFFW+1.5,pCL4+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9224w WITH "i"
                     STORE ifFw TO vfFw
                     STORE 00 TO cfFw, psW0
                     DO WHILE  .NOT. EOF() .AND. f9224let+ ;
                        ALLTRIM(f9224op1)+"*"+ALLTRIM(f9224op2)+"*"+ ;
                        ALLTRIM(f9224op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND. vfFw<ffFw+1
                          IF UPPER(ALLTRIM(f9224op4))+"*"= ;
                             UPPER(ALLTRIM(voP4))+"*"
                               STORE vfFw TO cfFw
                          ENDIF
                          DO diS_9224w WITH "N"
                          DO muE_9224w WITH "F", "U"
                          STORE vfFw TO ufFw
                          STORE vfFw+1 TO vfFw
                          SKIP
                     ENDDO
                     STORE 01 TO psW0
                     IF ufFw+1<=ffFw
                          SET COLOR TO RGB(0,0,0,207,207,207)
                          @ ufFw+1, piC4 CLEAR TO ffFw+1, puC4
                          DO liN_9224w
                     ENDIF
                     IF cfFw=0
                          DO muE_9224w WITH "i", "v"
                          STORE ifFw TO cfFw
                     ENDIF
                     STORE cfFw TO vfFw
                     DO seE_9224w WITH "v"
                     DO diS_9224w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                STORE f9224tit TO vtI4
                SELECT quInto
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+ALLTRIM(voP4)+"*"
                IF EOF()
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_le5
                DO puC9225w
                IF mkEy=k_Enter
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_le5
                IF ppRg$"12"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
                STORE "" TO voP5
                STORE "" TO vdC5
                SELECT cuArto
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9224op4)+"*"=ALLTRIM(ioP4)+"*" .AND.  ;
                          ALLTRIM(voP4)+"*"=ALLTRIM(ioP4)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP4)+"*"=ALLTRIM(ioP4)+"*"
                                    DO paN_9224w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9224w WITH "v"
                                    DO diS_9224w WITH "N"
                          ENDCASE
                          DO muE_9224w WITH "i", "v"
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                     ALLTRIM(voP3)+"*"+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                   ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<>vlEt+ ;
                   ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9224op4)+"*"=ALLTRIM(uoP4)+"*" .AND.  ;
                          ALLTRIM(voP4)+"*"=ALLTRIM(uoP4)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP4)+"*"=ALLTRIM(uoP4)+"*"
                                    SKIP -INT(ffFw-ifFw)
                                    DO paN_9224w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9224w WITH "v"
                                    DO diS_9224w WITH "N"
                          ENDCASE
                          DO muE_9224w WITH "u", "v"
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                          ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "N"
                          SKIP
                          IF ALLTRIM(voP4)+"*"=ALLTRIM(uoP4)+"*"
                               SET COLOR TO RGB(0,0,0,207,207,207)
                               DO suBe WITH ifFw, piC4, ffFw, puC4, 1
                               DO liN_9224w
                               DO muE_9224w WITH "F", "u"
                               DO muE_9224w WITH "F", "v"
                               STORE ufFw TO vfFw
                               SKIP -INT(ffFw-ifFw)
                               DO muE_9224w WITH "F", "i"
                               SKIP INT(ffFw-ifFw)
                          ELSE
                               DO muE_9224w WITH "F", "v"
                               STORE vfFw+1 TO vfFw
                          ENDIF
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                          ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP4)+"*"=ALLTRIM(ioP4)+"*"
                               SET COLOR TO RGB(0,0,0,207,207,207)
                               DO baJa WITH ifFw, piC4, ffFw, puC4, 1
                               DO liN_9224w
                               DO muE_9224w WITH "F", "i"
                               DO muE_9224w WITH "F", "v"
                               STORE ifFw TO vfFw
                               IF ufFw<ffFw
                                    STORE ufFw+1 TO ufFw
                               ELSE
                                    SKIP INT(ffFw-ifFw)
                                    DO muE_9224w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9224w WITH "F", "v"
                               STORE vfFw-1 TO vfFw
                          ENDIF
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9224w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                          ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9224w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9224w WITH "i", "v"
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9224w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                          ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<> ;
                          vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFw-ifFw)
                          IF BOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                             ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<> ;
                             vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                             ALLTRIM(voP3)+"*"
                               GOTO TOP
                               SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+ ;
                                    "*"+ALLTRIM(voP3)+"*"
                          ENDIF
                          DO paN_9224w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9224w WITH "i", "v"
                          DO seE_9224w WITH "v"
                          DO diS_9224w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9224w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9224let+ALLTRIM(f9224op1)+ ;
                   "*"+ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"=vlEt+ ;
                   ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"  ;
                   .AND. vfFw<ffFw+1
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9224des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFw+1 TO vfFw
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFw TO vfFw
                     DO seE_9224w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9224let+ ;
                        ALLTRIM(f9224op1)+"*"+ALLTRIM(f9224op2)+"*"+ ;
                        ALLTRIM(f9224op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
                        ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND. vfFw<ffFw+1
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9224des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFw+1 TO vfFw
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ ;
                          ALLTRIM(voP3)+"*"+UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9224let+ALLTRIM(f9224op1)+"*"+ ;
                        ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"<>vlEt+ ;
                        ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9224w
                     DO muE_9224w WITH "i", "v"
                ELSE
                     DO muE_9224w WITH "F", "v"
                ENDIF
                DO seE_9224w WITH "v"
                DO diS_9224w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9224w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL4, psW4
ENDPROC
*
PROCEDURE Pan_9224w
 STORE ifFw TO vfFw, ufFw
 DO muE_9224w WITH "F", "i"
 DO muE_9224w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9224let+ALLTRIM(f9224op1)+"*"+ ;
    ALLTRIM(f9224op2)+"*"+ALLTRIM(f9224op3)+"*"=vlEt+ALLTRIM(voP1)+"*"+ ;
    ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*" .AND. vfFw<ffFw+1
      DO diS_9224w WITH "N"
      DO muE_9224w WITH "F", "u"
      STORE vfFw TO ufFw
      STORE vfFw+1 TO vfFw
      SKIP
 ENDDO
 IF ufFw+1<=ffFw
      SET COLOR TO RGB(0,0,0,207,207,207)
      @ ufFw+1, piC4 CLEAR TO ffFw+1, puC4
      DO liN_9224w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9224w
 PARAMETER ptIp
 PRIVATE poP4, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,207,207,207)
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFW,pCL4+0.2 Say F9224OP4      Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFW,pCL4+3.8 Say F9224DES      Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9224op4 TO poP4
 SELECT quInto
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+"*"+ ;
      ALLTRIM(poP4)+"*"
 IF EOF()
      @vFFW,pCL4+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      @vFFW,pCL4+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 SELECT cuArto
 IF (ppRg="1" .OR. ppRg="2") .AND. psW4=0
      SELECT prOductos
      SEEK ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(voP2)+ALLTRIM(voP3)+ ;
           ALLTRIM(poP4)+"*"
      IF EOF()
           @vFFW,pCL4+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           @vFFW,pCL4+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
      ELSE
           @vFFW,pCL4+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           DO CASE
                CASE vlIs=1 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=1 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=1
                     @vFFW,pCL4+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=2
                     @vFFW,pCL4+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           ENDCASE
      ENDIF
      SELECT cuArto
 ENDIF
 RELEASE poP4, psXx
ENDPROC
*
PROCEDURE Lin_9224w
 DO coLbln
 IF (ppRg="1" .OR. ppRg="2") .AND. psW4=0
      @ ifFw-0.1, pcL4+35.0 TO ffFw+1.2, pcL4+35.0
      @ ifFw-0.1, pcL4+52.8 TO ffFw+1.2, pcL4+52.8
 ENDIF
 @ ifFw-0.1, pcL4+3.1 TO ffFw+1.2, pcL4+3.1
ENDPROC
*
PROCEDURE P00_9224w
 STORE pcL4+00.2 TO piC4
 STORE pcL4+34.6 TO puC4
 IF (ppRg="1" .OR. ppRg="2") .AND. psW4=0
      STORE pcL4+70.1 TO puC4
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,207,207,207)
 IF (ppRg="1" .OR. ppRg="2") .AND. psW4=0
      DO cuAdro WITH ifFw, pcL4-0.3, ffFw+2.5, pcL4+70.5
      @ ffFw+1.2, pcL4+35.0 TO ffFw+2.9, pcL4+70.9 PATTERN 1 COLOR W/W 
      @ ffFw+1.2, pcL4+35.0 TO ffFw+2.9, pcL4+52.9
      @ ffFw+1.2, pcL4+52.8 TO ffFw+2.9, pcL4+70.9
      @fFFW+1.5,pCL4+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFW+1.5,pCL4+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFw, pcL4, ffFw+2.5, pcL4+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFw+1.2, pcL4-0.9 TO ffFw+2.9, pcL4+35.1 PATTERN 1 COLOR GR/GR* 
 @fFFW+1.4,pCL4+0.2 Say vTI3 Font "&mLetAri",12 Style "NQ" Color 1/6* Size 1,24.9
 DO liN_9224w
ENDPROC
*
PROCEDURE See_9224w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+UPPER(vdC4)+ALLTRIM(voP4)+"*"
      CASE psEe="i"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+UPPER(idC4)+ALLTRIM(ioP4)+"*"
      CASE psEe="u"
           SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"+ALLTRIM(voP3)+ ;
                "*"+UPPER(udC4)+ALLTRIM(uoP4)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9224w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP4 TO voP4
           STORE idC4 TO vdC4
           STORE ifFw TO vfFw
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP4 TO coP4
           STORE vdC4 TO cdC4
           STORE vfFw TO cfFw
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP4 TO voP4
           STORE udC4 TO vdC4
           STORE ufFw TO vfFw
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP4 TO voP4
           STORE cdC4 TO vdC4
           STORE cfFw TO vfFw
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9224op4 TO voP4
           STORE f9224des TO vdC4
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9224op4 TO uoP4
           STORE f9224des TO udC4
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9224op4 TO ioP4
           STORE f9224des TO idC4
 ENDCASE
ENDPROC
*
PROCEDURE Res_9224w
 DO muE_9224w WITH "v", "c"
 DO reS_9223w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le4
 DO p00_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT cuArto
 DO seE_9224w WITH "i"
 DO paN_9224w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9224w WITH "c", "v"
 DO seE_9224w WITH "v"
 DO diS_9224w WITH "R"
ENDPROC
*
PROCEDURE Clp_9224w
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
      CASE mfIl>=vfFw-0.007 .AND. mfIl<=vfFw+0.992 .AND. mcCc>=pcL4 .AND.  ;
           mcCc<=pcL4+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW4=0
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFw-0.007 .AND. mfIl<=vfFw+0.992 .AND. mcCc>=pcL4 .AND.  ;
           mcCc<=pcL4+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFw-0.007 .AND. mfIl<=ufFw+0.992 .AND. mcCc>=pcL4 .AND.  ;
           ((mcCc<=pcL4+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW4=0)  ;
           .OR. mcCc<=pcL4+35)
           DO diS_9224w WITH "N"
           STORE ifFw+INT(mfIl-ifFw) TO vfFw
           DO seE_9224w WITH "i"
           SKIP INT(mfIl-ifFw)
           STORE 999 TO mkEy
           DO muE_9224w WITH "F", "v"
           DO diS_9224w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9224w
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta,  se muestran los códigos y descripciones"
 @ pfIl+1, 2 SAY  ;
   "del cuarto caracter correspondientes al Tipo de Producto, primer, segun-"
 @ pfIl+2, 2 SAY "do y tercer caracter."
 STORE pfIl+1 TO pfIl
 DO hl0_9211w IN PUC9211W WITH "código"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
