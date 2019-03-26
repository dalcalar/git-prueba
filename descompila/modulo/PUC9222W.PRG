 PRIVATE pcL2, psW2
 STORE vcL0+38 TO pcL2
 = INKEY(0.01)
 SELECT teRcero
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"
 IF EOF()
      STORE 0 TO psW2
 ELSE
      STORE 1 TO psW2
 ENDIF
 SELECT seGundo
 DO p00_9222w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vlEt+ALLTRIM(voP1)+"*"
 DO paN_9222w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9222w WITH "i", "v"
 DO seE_9222w WITH "v"
 DO diS_9222w WITH "R"
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
           DO reS_9222w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9222w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9222w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9222w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12" .AND. psW2=0
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
                     @fFFU+1.5,pCL2+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9222w WITH "i"
                     STORE ifFu TO vfFu
                     STORE 00 TO cfFu, psW0
                     DO WHILE  .NOT. EOF() .AND. f9222let+ ;
                        ALLTRIM(f9222op1)+"*"=vlEt+ALLTRIM(voP1)+"*"  ;
                        .AND. vfFu<ffFu+1
                          IF UPPER(ALLTRIM(f9222op2))+"*"= ;
                             UPPER(ALLTRIM(voP2))+"*"
                               STORE vfFu TO cfFu
                          ENDIF
                          DO diS_9222w WITH "N"
                          DO muE_9222w WITH "F", "U"
                          STORE vfFu TO ufFu
                          STORE vfFu+1 TO vfFu
                          SKIP
                     ENDDO
                     STORE 01 TO psW0
                     IF ufFu+1<=ffFu
                          SET COLOR TO RGB(0,0,0,137,167,129)
                          @ ufFu+1, piC2 CLEAR TO ffFu+1, puC2
                          DO liN_9222w
                     ENDIF
                     IF cfFu=0
                          DO muE_9222w WITH "i", "v"
                          STORE ifFu TO cfFu
                     ENDIF
                     STORE cfFu TO vfFu
                     DO seE_9222w WITH "v"
                     DO diS_9222w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                STORE f9222tit TO vtI2
                SELECT teRcero
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(voP2)+"*"
                IF EOF()
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_le3
                DO puC9223w
                IF mkEy=k_Enter
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_le3
                IF ppRg$"12"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
                STORE "" TO voP3, voP4, voP5
                STORE "" TO vdC3, vdC4, vdC5
                SELECT seGundo
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9222op2)+"*"=ALLTRIM(ioP2)+"*" .AND.  ;
                          ALLTRIM(voP2)+"*"=ALLTRIM(ioP2)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP2)+"*"=ALLTRIM(ioP2)+"*"
                                    DO paN_9222w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9222w WITH "v"
                                    DO diS_9222w WITH "N"
                          ENDCASE
                          DO muE_9222w WITH "i", "v"
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+ALLTRIM(voP1)+"*"+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<>vlEt+ ;
                   ALLTRIM(voP1)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9229op2)+"*"=ALLTRIM(uoP2)+"*" .AND.  ;
                          ALLTRIM(voP2)+"*"=ALLTRIM(uoP2)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP2)+"*"=ALLTRIM(uoP2)+"*"
                                    SKIP -INT(ffFu-ifFu)
                                    DO paN_9222w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9222w WITH "v"
                                    DO diS_9222w WITH "N"
                          ENDCASE
                          DO muE_9222w WITH "u", "v"
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<>vlEt+ ;
                          ALLTRIM(voP1)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "N"
                          SKIP
                          IF ALLTRIM(voP2)+"*"=ALLTRIM(uoP2)+"*"
                               SET COLOR TO RGB(0,0,0,137,167,129)
                               DO suBe WITH ifFu, piC2, ffFu, puC2, 1
                               DO liN_9222w
                               DO muE_9222w WITH "F", "u"
                               DO muE_9222w WITH "F", "v"
                               STORE ufFu TO vfFu
                               SKIP -INT(ffFu-ifFu)
                               DO muE_9222w WITH "F", "i"
                               SKIP INT(ffFu-ifFu)
                          ELSE
                               DO muE_9222w WITH "F", "v"
                               STORE vfFu+1 TO vfFu
                          ENDIF
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<>vlEt+ ;
                          ALLTRIM(voP1)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP2)+"*"=ALLTRIM(ioP2)+"*"
                               SET COLOR TO RGB(0,0,0,137,167,129)
                               DO baJa WITH ifFu, piC2, ffFu, puC2, 1
                               DO liN_9222w
                               DO muE_9222w WITH "F", "i"
                               DO muE_9222w WITH "F", "v"
                               STORE ifFu TO vfFu
                               IF ufFu<ffFu
                                    STORE ufFu+1 TO ufFu
                               ELSE
                                    SKIP INT(ffFu-ifFu)
                                    DO muE_9222w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9222w WITH "F", "v"
                               STORE vfFu-1 TO vfFu
                          ENDIF
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9222w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<>vlEt+ ;
                          ALLTRIM(voP1)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9222w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9222w WITH "i", "v"
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9222w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<>vlEt+ ;
                          ALLTRIM(voP1)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFu-ifFu)
                          IF BOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<> ;
                             vlEt+ALLTRIM(voP1)+"*"
                               GOTO TOP
                               SEEK vlEt+ALLTRIM(voP1)+"*"
                          ENDIF
                          DO paN_9222w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9222w WITH "i", "v"
                          DO seE_9222w WITH "v"
                          DO diS_9222w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9222w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9222let+ALLTRIM(f9222op1)+ ;
                   "*"=vlEt+ALLTRIM(voP1)+"*" .AND. vfFu<ffFu+1
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9222des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFu+1 TO vfFu
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFu TO vfFu
                     DO seE_9222w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9222let+ ;
                        ALLTRIM(f9222op1)+"*"=vlEt+ALLTRIM(voP1)+"*"  ;
                        .AND. vfFu<ffFu+1
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9222des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFu+1 TO vfFu
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+ALLTRIM(voP1)+"*"+UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9222let+ALLTRIM(f9222op1)+"*"<>vlEt+ ;
                        ALLTRIM(voP1)+"*"
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9222w
                     DO muE_9222w WITH "i", "v"
                ELSE
                     DO muE_9222w WITH "F", "v"
                ENDIF
                DO seE_9222w WITH "v"
                DO diS_9222w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9222w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL2, psW2
ENDPROC
*
PROCEDURE Pan_9222w
 STORE ifFu TO vfFu, ufFu
 DO muE_9222w WITH "F", "i"
 DO muE_9222w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9222let+ALLTRIM(f9222op1)+"*"=vlEt+ ;
    ALLTRIM(voP1)+"*" .AND. vfFu<ffFu+1
      DO diS_9222w WITH "N"
      DO muE_9222w WITH "F", "u"
      STORE vfFu TO ufFu
      STORE vfFu+1 TO vfFu
      SKIP
 ENDDO
 IF ufFu+1<=ffFu
      SET COLOR TO RGB(0,0,0,137,167,129)
      @ ufFu+1, piC2 CLEAR TO ffFu+1, puC2
      DO liN_9222w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9222w
 PARAMETER ptIp
 PRIVATE poP2, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,137,167,129)
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFU,pCL2+0.2 Say F9222OP2 Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFU,pCL2+3.8 Say F9222DES Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9222op2 TO poP2
 SELECT teRcero
 SEEK vlEt+ALLTRIM(voP1)+"*"+ALLTRIM(poP2)+"*"
 IF EOF()
      @vFFU,pCL2+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      @vFFU,pCL2+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 SELECT seGundo
 IF (ppRg="1" .OR. ppRg="2") .AND. psW2=0
      SELECT prOductos
      SEEK ALLTRIM(vlEt)+ALLTRIM(voP1)+ALLTRIM(poP2)+"*"
      IF EOF()
           @vFFU,pCL2+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           @vFFU,pCL2+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
      ELSE
           @vFFU,pCL2+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           DO CASE
                CASE vlIs=1 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=1 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=2 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=3 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=4 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=5 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=6 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=7 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=1
                     @vFFU,pCL2+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                CASE vlIs=8 .AND. vmOn=2
                     @vFFU,pCL2+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
           ENDCASE
      ENDIF
      SELECT seGundo
 ENDIF
 RELEASE poP2, psXx
ENDPROC
*
PROCEDURE Lin_9222w
 DO coLbln
 IF (ppRg="1" .OR. ppRg="2") .AND. psW2=0
      @ ifFu-0.1, pcL2+35.0 TO ffFu+1.2, pcL2+35.0
      @ ifFu-0.1, pcL2+52.8 TO ffFu+1.2, pcL2+52.8
 ENDIF
 @ ifFu-0.1, pcL2+3.1 TO ffFu+1.2, pcL2+3.1
ENDPROC
*
PROCEDURE P00_9222w
 STORE pcL2+00.2 TO piC2
 STORE pcL2+34.6 TO puC2
 IF (ppRg="1" .OR. ppRg="2") .AND. psW2=0
      STORE pcL2+70.1 TO puC2
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,137,167,129)
 IF (ppRg="1" .OR. ppRg="2") .AND. psW2=0
      DO cuAdro WITH ifFu, pcL2-0.3, ffFu+2.5, pcL2+70.5
      @ ffFu+1.2, pcL2+35.0 TO ffFu+2.9, pcL2+70.9 PATTERN 1 COLOR W/W 
      @ ffFu+1.2, pcL2+35.0 TO ffFu+2.9, pcL2+52.9
      @ ffFu+1.2, pcL2+52.8 TO ffFu+2.9, pcL2+70.9
      @fFFU+1.5,pCL2+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFU+1.5,pCL2+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFu, pcL2, ffFu+2.5, pcL2+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFu+1.2, pcL2-0.9 TO ffFu+2.9, pcL2+35.1 PATTERN 1 COLOR GR/GR* 
 @fFFU+1.4,pCL2+0.2 Say vTI1 Font "&mLetAri",12 Style "NQ" Color 1/6* Size 1,24.9
 DO liN_9222w
ENDPROC
*
PROCEDURE See_9222w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+ALLTRIM(voP1)+"*"+UPPER(vdC2)+ALLTRIM(voP2)+"*"
      CASE psEe="i"
           SEEK vlEt+ALLTRIM(voP1)+"*"+UPPER(idC2)+ALLTRIM(voP2)+"*"
      CASE psEe="u"
           SEEK vlEt+ALLTRIM(voP1)+"*"+UPPER(udC2)+ALLTRIM(voP2)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9222w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP2 TO voP2
           STORE idC2 TO vdC2
           STORE ifFu TO vfFu
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP2 TO coP2
           STORE vdC2 TO cdC2
           STORE vfFu TO cfFu
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP2 TO voP2
           STORE udC2 TO vdC2
           STORE ufFu TO vfFu
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP2 TO voP2
           STORE cdC2 TO vdC2
           STORE cfFu TO vfFu
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9222op2 TO voP2
           STORE f9222des TO vdC2
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9222op2 TO uoP2
           STORE f9222des TO udC2
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9222op2 TO ioP2
           STORE f9222des TO idC2
 ENDCASE
ENDPROC
*
PROCEDURE Res_9222w
 DO muE_9222w WITH "v", "c"
 DO reS_9221w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le2
 DO p00_9222w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seGundo
 DO seE_9222w WITH "i"
 DO paN_9222w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9222w WITH "c", "v"
 DO seE_9222w WITH "v"
 DO diS_9222w WITH "R"
ENDPROC
*
PROCEDURE Clp_9222w
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
      CASE mfIl>=vfFu-0.007 .AND. mfIl<=vfFu+0.992 .AND. mcCc>=pcL2 .AND.  ;
           mcCc<=pcL2+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW2=0
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFu-0.007 .AND. mfIl<=vfFu+0.992 .AND. mcCc>=pcL2 .AND.  ;
           mcCc<=pcL2+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFu-0.007 .AND. mfIl<=ufFu+0.992 .AND. mcCc>=pcL2 .AND.  ;
           ((mcCc<=pcL2+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW2=0)  ;
           .OR. mcCc<=pcL2+35)
           DO diS_9222w WITH "N"
           STORE ifFu+INT(mfIl-ifFu) TO vfFu
           DO seE_9222w WITH "i"
           SKIP INT(mfIl-ifFu)
           STORE 999 TO mkEy
           DO muE_9222w WITH "F", "v"
           DO diS_9222w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9222w
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta,  se muestran los códigos y descripciones"
 @ pfIl+1, 2 SAY  ;
   "del segundo caracter correspondientes al Tipo de Producto y primer ca-"
 @ pfIl+2, 2 SAY "racter."
 DO hl0_9211w IN PUC9211W WITH "código"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
