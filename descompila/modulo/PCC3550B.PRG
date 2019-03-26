 = INKEY(0.01)
 SELECT teMporal
 DO paN_3550b
 STORE ifIl TO vfIl
 DO muE_3550b WITH "i", "v"
 DO seE_3550b WITH "v"
 DO diS_3550b WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                DO viR_000
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3550b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3550b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3550b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3550b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3550b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3550b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                vXLS=PutFile("Archivo Excel:","&mVIN"+"CAJA_CHICA.XLS","XLS")
                RESTORE SCREEN FROM vpAn_11
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1DIA,FTM1MES,FTM1ANO,FTM1SER,FTM1NUM,FTM1NTI,FTM1GLO,FTM1NOM,FTM1MON,FTM1TTT,FTM1TOT Type XLS
                               DO xlS_0000a
                     ENDCASE
                ENDIF
                SELECT teMporal
                DO seE_3550b WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3550b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3550b WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tdo+ftM1ser+ ;
                          ftM1num=iaNo+imEs+idIa+itTt+itDo+isEr+inUm  ;
                          .AND. vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm=iaNo+ ;
                          imEs+idIa+itTt+itDo+isEr+inUm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm= ;
                                    iaNo+imEs+idIa+itTt+itDo+isEr+inUm
                                    DO paN_3550b
                               OTHERWISE
                                    DO seE_3550b WITH "v"
                                    DO diS_3550b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3550b WITH "i", "v"
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1ano+ftM1mes+ftM1dia+ftM1ttt+ftM1tdo+ftM1ser+ ;
                          ftM1num=uaNo+umEs+udIa+utTt+utDo+usEr+unUm  ;
                          .AND. vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm=uaNo+ ;
                          umEs+udIa+utTt+utDo+usEr+unUm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm= ;
                                    uaNo+umEs+udIa+utTt+utDo+usEr+unUm
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3550b
                               OTHERWISE
                                    DO seE_3550b WITH "v"
                                    DO diS_3550b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3550b WITH "u", "v"
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "N"
                          SKIP
                          IF vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm=uaNo+umEs+ ;
                             udIa+utTt+utDo+usEr+unUm
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3550a WITH ifIl, ffIl+1
                               DO muE_3550b WITH "F", "v"
                               DO muE_3550b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3550b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3550b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "N"
                          SKIP -1
                          IF vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm=iaNo+imEs+ ;
                             idIa+itTt+itDo+isEr+inUm
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3550a WITH ifIl, ffIl+1
                               DO muE_3550b WITH "F", "i"
                               DO muE_3550b WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3550b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3550b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3550b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3550b
                          STORE ifIl TO vfIl
                          DO muE_3550b WITH "i", "v"
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3550b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3550b
                          STORE ifIl TO vfIl
                          DO muE_3550b WITH "i", "v"
                          DO seE_3550b WITH "v"
                          DO diS_3550b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3550b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3550b
 STORE ifIl TO vfIl, ufIl
 DO muE_3550b WITH "F", "i"
 DO muE_3550b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3550b WITH "N"
      DO muE_3550b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3550a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3550b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM1tpo=1
           DO coLscr
      CASE ptIp="R" .AND. ftM1tpo=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ftM1mon=1
           STORE "S/." TO vsIg
      OTHERWISE
           STORE "US$" TO vsIg
 ENDCASE
 @vFIL,mCO0+000.2 Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO             Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,mCO0+013.9 Say Substr(FTM1TDO,1,1)+"-"+Substr(FTM1SER,3,1) Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,mCO0+019.0 Say FTM1NUM                                     Font "&mLetAri",9 Style "NQ" Size 1,10.1
 @vFIL,mCO0+030.3 Say FTM1NOM                                     Font "&mLetAri",9 Style "NQ" Size 1,41.0 Pict "@S44"
 @vFIL,mCO0+072.2 Say FTM1GLO                                     Font "&mLetAri",9 Style "NQ" Size 1,41.7 Pict "@S44"
 @vFIL,mCO0+115.1 Say FTM1NTI                                     Font "&mLetAri",9 Style "NQ" Size 1,42.5 Pict "@S45"
 @vFIL,mCO0+158.7 Say vSIG                                        Font "&mLetAri",9 Style "NQ" Size 1,4.9
 IF ftM1ttt="1"
      @vFIL,mCO0+164.6 Say FTM1TOT                                  Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
      @vFIL,mCO0+179.6 Say Space(10)                                Font "&mLetAri",9 Style "NQ" Size 1,13.9
 ELSE
      @vFIL,mCO0+164.6 Say Space(10)                                Font "&mLetAri",9 Style "NQ" Size 1,13.9
      @vFIL,mCO0+179.6 Say FTM1TOT                                  Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999,999.99"
 ENDIF
ENDPROC
*
PROCEDURE Imp_3550b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN MODSET
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3550b
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3550b
 PRIVATE ptAm
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 04 TO mcLn
           STORE 138 TO ptAm
      CASE mvIs=0 .AND. mpRt="2"
           STORE 04 TO mcLn
           STORE 136 TO ptAm
      OTHERWISE
           STORE 126 TO ptAm
           STORE 01 TO mcLn
 ENDCASE
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_3550b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN       Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetAri",8 Style "NQ" Size 1,11
                     @vLIN,mCLN+012.5 Say FTM1TDO+"-"+FTM1SER+"-"+FTM1NUM Font "&mLetAri",8 Style "NQ" Size 1,25
                     @vLIN,mCLN+027.0 Say FTM1NOM                         Font "&mLetAri",8 Style "NQ" Size 1,25   Pict "@S27"
                     @vLIN,mCLN+053.5 Say FTM1GLO                         Font "&mLetAri",8 Style "NQ" Size 1,83   Pict "@S80"
                     @vLIN,mCLN+138.0 Say FTM1NTI                         Font "&mLetAri",8 Style "NQ" Size 1,25.5 Pict "@S27"
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+165 Say "S/."                     Font "&mLetAri",8 Style "NQ" Size 1,4
                          CASE ftM1mon=2
                               @vLIN,mCLN+165 Say "US$"                     Font "&mLetAri",8 Style "NQ" Size 1,4
                     ENDCASE
                     DO CASE
                          CASE ftM1ttt="1"
                               @vLIN,mCLN+170.5 Say FTM1TOT                 Font "&mLetAri",8 Style "NQ" Size 1,15 Pict "9,999,999.99"
                          CASE ftM1ttt="2"
                               @vLIN,mCLN+187.0 Say FTM1TOT                 Font "&mLetAri",8 Style "NQ" Size 1,15 Pict "9,999,999.99"
                     ENDCASE
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+013.5 Say FTM1TDO+"-"+FTM1SER+"-"+FTM1NUM Font "&mLetSwi",9 Style "NQ" Size 1,25
                     @vLIN,mCLN+034.5 Say FTM1NOM                         Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S28"
                     @vLIN,mCLN+063.0 Say FTM1GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,80 Pict "@S80"
                     @vLIN,mCLN+152.0 Say FTM1NTI                         Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S25"
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+182 Say "S/."   Font "&mLetSwi",9 Style "NQ" Size 1,8
                          CASE ftM1mon=2
                               @vLIN,mCLN+182 Say "US$"   Font "&mLetSwi",9 Style "NQ" Size 1,8
                     ENDCASE
                     DO CASE
                          CASE ftM1ttt="1"
                               @vLIN,mCLN+194 Say FTM1TOT Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                               @vLIN,mCLN+209 Say 0       Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                          CASE ftM1ttt="2"
                               @vLIN,mCLN+209 Say FTM1TOT Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                     ENDCASE
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM1DIA+"/"+FTM1MES+"/"+FTM1ANO Font "&mLetSwi",9 Style "NQ" Size 1,13
                     @vLIN,mCLN+013.5 Say FTM1TDO+"-"+FTM1SER+"-"+FTM1NUM Font "&mLetSwi",9 Style "NQ" Size 1,25
                     @vLIN,mCLN+033.5 Say FTM1NOM                         Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "@S22"
                     @vLIN,mCLN+063.0 Say FTM1GLO                         Font "&mLetSwi",9 Style "NQ" Size 1,80 Pict "@S80"
                     @vLIN,mCLN+156.0 Say FTM1NTI                         Font "&mLetSwi",9 Style "NQ" Size 1,25 Pict "@S25"
                     DO CASE
                          CASE ftM1mon=1
                               @vLIN,mCLN+182 Say "S/."   Font "&mLetSwi",9 Style "NQ" Size 1,8
                          CASE ftM1mon=2
                               @vLIN,mCLN+182 Say "US$"   Font "&mLetSwi",9 Style "NQ" Size 1,8
                     ENDCASE
                     DO CASE
                          CASE ftM1ttt="1"
                               @vLIN,mCLN+188 Say FTM1TOT Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                          CASE ftM1ttt="2"
                               @vLIN,mCLN+202 Say FTM1TOT Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                     ENDCASE
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 IF vlIn+1.3>mpAg-3
      DO caB_3550b
 ELSE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.3 TO vlIn
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+152 Say "TOTAL S/." Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+168 Say vIN1        Font "&mLetAri",9 Style "BT" Size 1,14 Pict "9,999,999.99"
                @vLIN,mCLN+185 Say vSA1        Font "&mLetAri",9 Style "BT" Size 1,14 Pict "9,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+154 Say "TOTAL S/." Font "&mLetSwi",9 Style "BT"
                @vLIN,mCLN+192 Say vIN1        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
                @vLIN,mCLN+209 Say vSA1        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+154 Say "TOTAL S/." Font "&mLetSwi",9 Style "BT"
                @vLIN,mCLN+188 Say vIN1        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
                @vLIN,mCLN+202 Say vSA1        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3550b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+152 Say "TOTAL US$" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+168 Say vIN2        Font "&mLetAri",9 Style "BT" Size 1,14 Pict "9,999,999.99"
                @vLIN,mCLN+185 Say vSA2        Font "&mLetAri",9 Style "BT" Size 1,14 Pict "9,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+154 Say "TOTAL US$" Font "&mLetSwi",9 Style "BT"
                @vLIN,mCLN+192 Say vIN2        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
                @vLIN,mCLN+209 Say vSA2        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+154 Say "TOTAL US$" Font "&mLetSwi",9 Style "BT"
                @vLIN,mCLN+188 Say vIN2        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
                @vLIN,mCLN+202 Say vSA2        Font "&mLetSwi",9 Style "NT" Size 1,16 Pict "9,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.7 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3550b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+152    Say "SALDO S/." Font "&mLetAri",9 Style "BQ"
                IF viN1>vsA1
                     @vLIN,mCLN+168 Say vIN1-vSA1   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
                ELSE
                     @vLIN,mCLN+185 Say vSA1-vIN1   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN+154    Say "SALDO S/." Font "&mLetSwi",9 Style "BQ"
                IF viN1>vsA1
                     @vLIN,mCLN+192 Say vIN1-vSA1   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ELSE
                     @vLIN,mCLN+209 Say vSA1-vIN1   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ENDIF
           CASE mpRt="2"
                @vLIN,mCLN+154    Say "SALDO S/." Font "&mLetSwi",9 Style "BQ"
                IF viN1>vsA1
                     @vLIN,mCLN+188 Say vIN1-vSA1   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ELSE
                     @vLIN,mCLN+202 Say vSA1-vIN1   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ENDIF
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3550b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+152    Say "SALDO US$" Font "&mLetAri",9 Style "BQ"
                IF viN2>vsA2
                     @vLIN,mCLN+168 Say vIN2-vSA2   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
                ELSE
                     @vLIN,mCLN+185 Say vSA2-vIN2   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "9,999,999.99"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN+154    Say "SALDO US$" Font "&mLetSwi",9 Style "BQ"
                IF viN2>vsA2
                     @vLIN,mCLN+192 Say vIN2-vSA2   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ELSE
                     @vLIN,mCLN+209 Say vSA2-vIN2   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ENDIF
           CASE mpRt="2"
                @vLIN,mCLN+154    Say "SALDO US$" Font "&mLetSwi",9 Style "BQ"
                IF viN2>vsA2
                     @vLIN,mCLN+188 Say vIN2-vSA2   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ELSE
                     @vLIN,mCLN+202 Say vSA2-vIN2   Font "&mLetSwi",9 Style "NQ" Size 1,16 Pict "9,999,999.99"
                ENDIF
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vlIn<mpAg-3 .AND. vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3550b
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE wnIv="1"
                @vLIN,mCLN Say "Caja del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",13 Style "NQ"
           CASE wnIv="2"
                @vLIN,mCLN Say "Caja, Cobranzas y Pagos del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",13 Style "NQ"
           CASE wnIv="3"
                @vLIN,mCLN Say "Caja Chica No."+Str(vCAJ,2,0)+" del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",13 Style "NQ"
           CASE wnIv="4"
                @vLIN,mCLN Say "Caja Chica, Cobranzas y Pagos No."+Str(vCAJ,2,0)+" del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",13 Style "NQ"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say "Fecha"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+012.5 Say "Documento"   Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+027.0 Say "Nombre"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+053.5 Say "Glosa"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+138.0 Say "Tipo-Movim"  Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+165.0 Say "Mon"         Font "&mLetAri",8 Style "BQ"
                @vLIN,mCLN+175.0 Say "Ingresos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+192.0 Say "Egresos"     Font "&mLetAri",9 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN       Say "Fecha"       Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+013.5 Say "Documento"   Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+034.5 Say "Nombre"      Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+063.0 Say "Glosa"       Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+152.0 Say "Tipo-Movim"  Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+188.0 Say "Ingresos"    Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+203.0 Say "Egresos"     Font "&mLetAri",9 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "Fecha"       Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+013.5 Say "Documento"   Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+033.5 Say "Nombre"      Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+063.0 Say "Glosa"       Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+156.0 Say "Tipo-Movim"  Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+189.0 Say "Ingresos"    Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+204.0 Say "Egresos"     Font "&mLetAri",9 Style "NQ"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
ENDPROC
*
PROCEDURE Res_3550b
 SET READBORDER ON
 DO reS_3550a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3550b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
ENDPROC
*
PROCEDURE See_3550b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vaNo+vmEs+vdIa+vtTt+vtDo+vsEr+vnUm
      CASE psEe="i"
           SEEK iaNo+imEs+idIa+itTt+itDo+isEr+inUm
      CASE psEe="u"
           SEEK uaNo+umEs+udIa+utTt+utDo+usEr+unUm
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3550b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
           STORE itTt TO vtTt
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE inUm TO vnUm
      CASE pmU1="u" .AND. pmU2="v"
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
           STORE utTt TO vtTt
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE unUm TO vnUm
      CASE pmU1="c" .AND. pmU2="v"
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
           STORE ctTt TO vtTt
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cnUm TO vnUm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
           STORE vtTt TO itTt
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vnUm TO inUm
      CASE pmU1="v" .AND. pmU2="c"
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
           STORE vtTt TO ctTt
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vnUm TO cnUm
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM1ano TO vaNo
           STORE ftM1mes TO vmEs
           STORE ftM1dia TO vdIa
           STORE ftM1ttt TO vtTt
           STORE ftM1tdo TO vtDo
           STORE ftM1ser TO vsEr
           STORE ftM1num TO vnUm
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM1ano TO uaNo
           STORE ftM1mes TO umEs
           STORE ftM1dia TO udIa
           STORE ftM1ttt TO utTt
           STORE ftM1tdo TO utDo
           STORE ftM1ser TO usEr
           STORE ftM1num TO unUm
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM1ano TO iaNo
           STORE ftM1mes TO imEs
           STORE ftM1dia TO idIa
           STORE ftM1ttt TO itTt
           STORE ftM1tdo TO itDo
           STORE ftM1ser TO isEr
           STORE ftM1num TO inUm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3550b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.6
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_3550b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3550b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3550b WITH "F", "v"
           DO diS_3550b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_3550b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Movimientos de Caja, "
 @ pfIl+01, 02 SAY "ordenados por día y número de Voucher."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 30 SAY ":" STYLE "BT"
 @ pfIl+06, 30 SAY ":" STYLE "BT"
 @ pfIl+07, 30 SAY ":" STYLE "BT"
 @ pfIl+08, 30 SAY ":" STYLE "BT"
 @ pfIl+09, 30 SAY ":" STYLE "BT"
 @ pfIl+10, 30 SAY ":" STYLE "BT"
 @ pfIl+11, 30 SAY ":" STYLE "BT"
 @ pfIl+12, 30 SAY ":" STYLE "BT"
 @ pfIl+13, 30 SAY ":" STYLE "BT"
 @ pfIl+14, 30 SAY ":" STYLE "BT"
 @ pfIl+15, 30 SAY ":" STYLE "BT"
 @ pfIl+05, 12 SAY "ESC" STYLE "BT"
 @ pfIl+06, 12 SAY "F10" STYLE "BT"
 @ pfIl+07, 12 SAY "F1" STYLE "BT"
 @ pfIl+08, 12 SAY "F8" STYLE "BT"
 @ pfIl+09, 12 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 12 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 12 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 12 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 12 SAY "HOME" STYLE "BT"
 @ pfIl+14, 12 SAY "END" STYLE "BT"
 @ pfIl+15, 12 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 32 SAY "Regresar a Cabecera"
 @ pfIl+06, 32 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 32 SAY "Ayuda del Programa"
 @ pfIl+08, 32 SAY "Pasar Datos a Excel"
 @ pfIl+09, 32 SAY "Línea inferior"
 @ pfIl+10, 32 SAY "Línea superior"
 @ pfIl+11, 32 SAY "Página siguiente"
 @ pfIl+12, 32 SAY "Página anterior"
 @ pfIl+13, 32 SAY "Primera línea"
 @ pfIl+14, 32 SAY "Última línea"
 @ pfIl+15, 32 SAY "Imprimir Caja Chica"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
