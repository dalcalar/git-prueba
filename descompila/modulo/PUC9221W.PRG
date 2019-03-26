 PRIVATE pcL1, psW1
 STORE vcL0+19 TO pcL1
 = INKEY(0.01)
 SELECT seGundo
 GOTO TOP
 SEEK vlEt
 IF EOF()
      STORE 0 TO psW1
 ELSE
      STORE 1 TO psW1
 ENDIF
 SELECT prImero
 DO p00_9221w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK vlEt
 DO paN_9221w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9221w WITH "i", "v"
 DO seE_9221w WITH "v"
 DO diS_9221w WITH "R"
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
           DO reS_9221w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9221w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_9221w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_9221w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (mlIs<>0  ;
                .OR. vlIs<>0) .AND. ppRg$"12" .AND. psW1=0
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
                     @fFFT+1.5,pCL1+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
                     DO seE_9221w WITH "i"
                     STORE ifFt TO vfFt
                     STORE 00 TO cfFt, psW0
                     DO WHILE  .NOT. EOF() .AND. f9221let=vlEt .AND. vfFt< ;
                        ffFt+1
                          IF UPPER(ALLTRIM(f9221op1))+"*"= ;
                             UPPER(ALLTRIM(voP1))+"*"
                               STORE vfFt TO cfFt
                          ENDIF
                          DO diS_9221w WITH "N"
                          DO muE_9221w WITH "F", "U"
                          STORE vfFt TO ufFt
                          STORE vfFt+1 TO vfFt
                          SKIP
                     ENDDO
                     STORE 1 TO psW0
                     IF ufFt+1<=ffFt
                          SET COLOR TO RGB(0,0,0,201,155,139)
                          @ ufFt+1, piC1 CLEAR TO ffFt+1, puC1
                          DO liN_9221w
                     ENDIF
                     IF cfFt=0
                          DO muE_9221w WITH "i", "v"
                          STORE ifFt TO cfFt
                     ENDIF
                     STORE cfFt TO vfFt
                     DO seE_9221w WITH "v"
                     DO diS_9221w WITH "R"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_Enter
                STORE f9221tit TO vtI1
                STORE f9221nem TO vnEm
                SELECT seGundo
                GOTO TOP
                SEEK vlEt+ALLTRIM(voP1)+"*"
                IF EOF()
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_le2
                DO puC9222w
                IF mkEy=k_Enter
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_le2
                IF ppRg$"12"
                     DO coLbln
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
                STORE "" TO voP2, voP3, voP4, voP5
                STORE "" TO vdC2, vdC3, vdC4, vdC5
                SELECT prImero
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vlEt
                DO CASE
                     CASE EOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     CASE ALLTRIM(f9221op1)+"*"=ALLTRIM(ioP1)+"*" .AND.  ;
                          ALLTRIM(voP1)+"*"=ALLTRIM(ioP1)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP1)+"*"=ALLTRIM(ioP1)+"*"
                                    DO paN_9221w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9221w WITH "v"
                                    DO diS_9221w WITH "N"
                          ENDCASE
                          DO muE_9221w WITH "i", "v"
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK vlEt+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f9221let<>vlEt
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f9221op1)+"*"=ALLTRIM(uoP1)+"*" .AND.  ;
                          ALLTRIM(voP1)+"*"=ALLTRIM(uoP1)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(voP1)+"*"=ALLTRIM(uoP1)+"*"
                                    SKIP -INT(ffFt-ifFt)
                                    DO paN_9221w
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                               OTHERWISE
                                    DO seE_9221w WITH "v"
                                    DO diS_9221w WITH "N"
                          ENDCASE
                          DO muE_9221w WITH "u", "v"
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f9221let<>vlEt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "N"
                          SKIP
                          IF ALLTRIM(voP1)+"*"=ALLTRIM(uoP1)+"*"
                               SET COLOR TO RGB(0,0,0,201,155,139)
                               DO suBe WITH ifFt, piC1, ffFt, puC1, 1
                               DO liN_9221w
                               DO muE_9221w WITH "F", "u"
                               DO muE_9221w WITH "F", "v"
                               STORE ufFt TO vfFt
                               SKIP -INT(ffFt-ifFt)
                               DO muE_9221w WITH "F", "i"
                               SKIP INT(ffFt-ifFt)
                          ELSE
                               DO muE_9221w WITH "F", "v"
                               STORE vfFt+1 TO vfFt
                          ENDIF
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9221let<>vlEt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "N"
                          SKIP -1
                          IF ALLTRIM(voP1)+"*"=ALLTRIM(ioP1)+"*"
                               SET COLOR TO RGB(0,0,0,201,155,139)
                               DO baJa WITH ifFt, piC1, ffFt, puC1, 1
                               DO liN_9221w
                               DO muE_9221w WITH "F", "i"
                               DO muE_9221w WITH "F", "v"
                               STORE ifFt TO vfFt
                               IF ufFt<ffFt
                                    STORE ufFt+1 TO ufFt
                               ELSE
                                    SKIP INT(ffFt-ifFt)
                                    DO muE_9221w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_9221w WITH "F", "v"
                               STORE vfFt-1 TO vfFt
                          ENDIF
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_9221w WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f9221let<>vlEt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_9221w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9221w WITH "i", "v"
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_9221w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f9221let<>vlEt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFt-ifFt)
                          IF BOF() .OR. f9221let<>vlEt
                               GOTO TOP
                               SEEK vlEt
                          ENDIF
                          DO paN_9221w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_9221w WITH "i", "v"
                          DO seE_9221w WITH "v"
                          DO diS_9221w WITH "R"
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_9221w WITH "N"
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. f9221let=vlEt .AND. vfFt<ffFt+1
                     IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9221des), 1, 1)
                          STORE 1 TO csWw
                          EXIT
                     ENDIF
                     STORE vfFt+1 TO vfFt
                     SKIP
                ENDDO
                IF csWw=0
                     STORE ifFt TO vfFt
                     DO seE_9221w WITH "i"
                     DO WHILE  .NOT. EOF() .AND. f9221let=vlEt .AND. vfFt< ;
                        ffFt+1
                          IF UPPER(CHR(mkEy))=SUBSTR(UPPER(f9221des), 1, 1)
                               STORE 01 TO csWw
                               EXIT
                          ENDIF
                          STORE vfFt+1 TO vfFt
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK vlEt+UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF() .OR. f9221let<>vlEt
                          IF EOF()
                               GOTO BOTTOM
                          ELSE
                               SKIP -1
                          ENDIF
                     ENDIF
                     DO paN_9221w
                     DO muE_9221w WITH "i", "v"
                ELSE
                     DO muE_9221w WITH "F", "v"
                ENDIF
                DO seE_9221w WITH "v"
                DO diS_9221w WITH "R"
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_9221w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcL1, psW1
ENDPROC
*
PROCEDURE Pan_9221w
 STORE ifFt TO vfFt, ufFt
 DO muE_9221w WITH "F", "i"
 DO muE_9221w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f9221let=vlEt .AND. vfFt<ffFt+1
      DO diS_9221w WITH "N"
      DO muE_9221w WITH "F", "u"
      STORE vfFt TO ufFt
      STORE vfFt+1 TO vfFt
      SKIP
 ENDDO
 IF ufFt+1<=ffFt
      SET COLOR TO RGB(0,0,0,201,155,139)
      @ ufFt+1, piC1 CLEAR TO ffFt+1, puC1
      DO liN_9221w
 ENDIF
ENDPROC
*
PROCEDURE Dis_9221w
 PARAMETER ptIp
 PRIVATE poP1, psXx
 DO CASE
      CASE ptIp="N"
           SET COLOR TO RGB(0,0,0,201,155,139)
      CASE ptIp="R"
           DO coLsc4
 ENDCASE
 @vFFT,pCL1+0.2 Say F9221OP1 Font "&mLetAri",9 Style "NQ" Size 1,02.5 Pict "!!"
 @vFFT,pCL1+3.8 Say F9221DES Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 STORE f9221op1 TO poP1
 SELECT seGundo
 SEEK vlEt+ALLTRIM(poP1)+"*"
 IF EOF()
      STORE 0 TO psXx
      @vFFT,pCL1+32.8 Say Space(02) Font "&mLetRom",9 Style "BQ" Size 1,2
 ELSE
      STORE 1 TO psXx
      @vFFT,pCL1+32.8 Say "->"      Font "&mLetRom",9 Style "BQ" Size 1,2
 ENDIF
 DO CASE
      CASE ppRg="5" .AND. psXx=0
           SELECT prOductos
           SEEK ALLTRIM(vlEt)+ALLTRIM(poP1)+"*"
           IF  .NOT. EOF()
                @vFFT,pCL1+35.6 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,3
           ELSE
                @vFFT,pCL1+35.6 Say "NR" Font "&mLetAri",9 Style "NQ" Size 1,3
           ENDIF
      CASE (ppRg="1" .OR. ppRg="2") .AND. psW1=0
           SELECT prOductos
           SEEK ALLTRIM(vlEt)+ALLTRIM(poP1)+"*"
           IF EOF()
                @vFFT,pCL1+35.6 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
                @vFFT,pCL1+53.4 Say "No registrado"          Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "@S18"
           ELSE
                @vFFT,pCL1+35.6 Say F2111STO                 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                DO CASE
                     CASE vlIs=1 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VV1         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=1 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VV2         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=2 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VV3         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=2 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VV4         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=3 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VV5         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=3 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VV6         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=4 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VV7         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=4 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VV8         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=5 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VV9         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=5 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VV0         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=6 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VVA         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=6 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VVB         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=7 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VVC         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=7 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VVD         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=8 .AND. vmOn=1
                          @vFFT,pCL1+53.4 Say F2111VVE         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     CASE vlIs=8 .AND. vmOn=2
                          @vFFT,pCL1+53.4 Say F2111VVF         Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                ENDCASE
           ENDIF
 ENDCASE
 SELECT prImero
 RELEASE poP1, psXx
ENDPROC
*
PROCEDURE Lin_9221w
 DO coLbln
 IF (ppRg="1" .OR. ppRg="2") .AND. psW1=0
      @ ifFt-0.1, pcL1+35.0 TO ffFt+1.2, pcL1+35.0
      @ ifFt-0.1, pcL1+52.8 TO ffFt+1.2, pcL1+52.8
 ENDIF
 @ ifFt-0.1, pcL1+3.1 TO ffFt+1.2, pcL1+3.1
ENDPROC
*
PROCEDURE P00_9221w
 STORE pcL1+00.2 TO piC1
 STORE pcL1+34.6 TO puC1
 IF (ppRg="1" .OR. ppRg="2") .AND. psW1=0
      STORE pcL1+70.1 TO puC1
 ENDIF
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET COLOR TO RGB(0,0,0,201,155,139)
 IF (ppRg="1" .OR. ppRg="2") .AND. psW1=0
      DO cuAdro WITH ifFt, pcL1-0.3, ffFt+2.5, pcL1+70.5
      @ ffFt+1.2, pcL1+35.0 TO ffFt+2.9, pcL1+70.9 PATTERN 1 COLOR W/W 
      @ ffFt+1.2, pcL1+35.0 TO ffFt+2.9, pcL1+52.9
      @ ffFt+1.2, pcL1+52.8 TO ffFt+2.9, pcL1+70.9
      @fFFT+1.5,pCL1+39.0 Say "STOCK"                           Font "&mLetRom",10 Style "BQ" Color 8/7
      @fFFT+1.5,pCL1+53.5 Say "Pr.LIST:"+Str(vLIS,2,0)+" "+vSIG Font "&mLetRom",10 Style "BQ" Color 8/7 Size 1,14
 ELSE
      DO cuAdro WITH ifFt, pcL1, ffFt+2.5, pcL1+35
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ffFt+1.2, pcL1-0.9 TO ffFt+2.9, pcL1+35.1 PATTERN 1 COLOR B/B 
 @fFFT+1.4,pCL1+0.2 Say vNTP Font "&mLetAri",12 Style "NQ" Color 6+/1 Size 1,25
 DO liN_9221w
ENDPROC
*
PROCEDURE See_9221w
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vlEt+UPPER(vdC1)+ALLTRIM(voP1)+"*"
      CASE psEe="i"
           SEEK vlEt+UPPER(idC1)+ALLTRIM(ioP1)+"*"
      CASE psEe="u"
           SEEK vlEt+UPPER(udC1)+ALLTRIM(uoP1)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_9221w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE ioP1 TO voP1
           STORE idC1 TO vdC1
           STORE ifFt TO vfFt
      CASE pmU1="v" .AND. pmU2="c"
           STORE voP1 TO coP1
           STORE vdC1 TO cdC1
           STORE vfFt TO cfFt
      CASE pmU1="u" .AND. pmU2="v"
           STORE uoP1 TO voP1
           STORE udC1 TO vdC1
           STORE ufFt TO vfFt
      CASE pmU1="c" .AND. pmU2="v"
           STORE coP1 TO voP1
           STORE cdC1 TO vdC1
           STORE cfFt TO vfFt
      CASE pmU1="F" .AND. pmU2="v"
           STORE f9221op1 TO voP1
           STORE f9221des TO vdC1
      CASE pmU1="F" .AND. pmU2="u"
           STORE f9221op1 TO uoP1
           STORE f9221des TO udC1
      CASE pmU1="F" .AND. pmU2="i"
           STORE f9221op1 TO ioP1
           STORE f9221des TO idC1
 ENDCASE
ENDPROC
*
PROCEDURE Res_9221w
 DO muE_9221w WITH "v", "c"
 DO reS_9211w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_le1
 DO p00_9221w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prImero
 DO seE_9221w WITH "i"
 DO paN_9221w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_9221w WITH "c", "v"
 DO seE_9221w WITH "v"
 DO diS_9221w WITH "R"
ENDPROC
*
PROCEDURE Clp_9221w
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
      CASE mfIl>=vfFt-0.007 .AND. mfIl<=vfFt+0.992 .AND. mcCc>=pcL1 .AND.  ;
           mcCc<=pcL1+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW1=0
           STORE k_Enter TO mkEy
      CASE mfIl>=vfFt-0.007 .AND. mfIl<=vfFt+0.992 .AND. mcCc>=pcL1 .AND.  ;
           mcCc<=pcL1+35
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFt-0.007 .AND. mfIl<=ufFt+0.992 .AND. mcCc>=pcL1 .AND.  ;
           ((mcCc<=pcL1+70.5 .AND. (ppRg="1" .OR. ppRg="2") .AND. psW1=0)  ;
           .OR. mcCc<=pcL1+35)
           DO diS_9221w WITH "N"
           STORE ifFt+INT(mfIl-ifFt) TO vfFt
           DO seE_9221w WITH "i"
           SKIP INT(mfIl-ifFt)
           STORE 999 TO mkEy
           DO muE_9221w WITH "F", "v"
           DO diS_9221w WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9221w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran los códigos y descripciones"
 @ pfIl+1, 2 SAY "del primer caracter correspondientes al Tipo de Producto."
 DO hl0_9211w IN PUC9211W WITH "código"
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
