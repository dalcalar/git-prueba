 = INKEY(0.01)
 SELECT teMporal_3
 SET ORDER TO FTM3DOC
 GOTO TOP
 DO p00_1320e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_1320e
 STORE 999 TO mkEy
 STORE ifIl TO vfIl
 DO muE_1320e WITH "i", "v"
 DO seE_1320e WITH "v"
 DO diS_1320e WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1320e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1320e
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1320e
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1320e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1320e
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_1320e
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                DO seE_1320e WITH "v"
           CASE mkEy=k_Ctrl_o .AND. voPc=3
                STORE "N" TO moPc
                DO prE_docum WITH "Está seguro de crear los datos para el PDT?"
                IF moPc$"Ss"
                     WAIT WINDOW NOWAIT  ;
                          "L E Y E N D O ... Presionar ESC para Salir"+ ;
                          CHR(13)+"Hora Inicial de Lectura: "+TIME()
                     SELECT teMporal_4
                     GOTO TOP
                     IF  .NOT. BOF()
                          STORE "0697"+mrUc+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                                SUBSTR(DTOC(dfEm), 4, 2)+".TXT" TO vpDt
                          = INKEY(0.05)
                          GOTO TOP
                          Copy to &vPDT SDF
                          GOTO TOP
                     ENDIF
                     SELECT teMporal_5
                     GOTO TOP
                     IF  .NOT. BOF()
                          STORE "0697"+mrUc+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                                SUBSTR(DTOC(dfEm), 4, 2)+"VC.TXT" TO vpDt
                          = INKEY(0.05)
                          GOTO TOP
                          Copy to &vPDT SDF
                          GOTO TOP
                     ENDIF
                     WAIT WINDOW NOWAIT "Hora Final de Lectura: "+TIME()
                     = INKEY(0.05)
                     WAIT CLEAR
                     SELECT teMporal_3
                     DO seE_1320e WITH "v"
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                          ftM3tdo+ALLTRIM(ftM3ser)+"*"+ALLTRIM(ftM3doc)+ ;
                          "*" .AND. vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                          "*"=itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                                    "*"=itDo+ALLTRIM(isEr)+"*"+ ;
                                    ALLTRIM(idOc)+"*"
                                    DO paN_1320e
                               OTHERWISE
                                    DO seE_1320e WITH "v"
                                    DO diS_1320e WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1320e WITH "i", "v"
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                          ftM3tdo+ALLTRIM(ftM3ser)+"*"+ALLTRIM(ftM3doc)+ ;
                          "*" .AND. vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                          "*"=utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+ ;
                                    "*"=utDo+ALLTRIM(usEr)+"*"+ ;
                                    ALLTRIM(udOc)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1320e
                               OTHERWISE
                                    DO seE_1320e WITH "v"
                                    DO diS_1320e WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1320e WITH "u", "v"
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "N"
                          SKIP
                          IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                             utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
                               DO coL_fondo
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1320e WITH ffIl, ffIl+1
                               DO li1_1320e WITH ffIl, ffIl+1
                               DO li2_1320e WITH ffIl, ffIl+1
                               DO muE_1320e WITH "F", "u"
                               DO muE_1320e WITH "F", "v"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1320e WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1320e WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "N"
                          SKIP -1
                          IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"= ;
                             itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
                               DO coL_fondo
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1320e WITH ifIl, ifIl+1
                               DO li1_1320e WITH ifIl, ifIl+1
                               DO li2_1320e WITH ifIl, ifIl+1
                               DO muE_1320e WITH "F", "i"
                               DO muE_1320e WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1320e WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1320e WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1320e WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1320e
                          STORE ifIl TO vfIl
                          DO muE_1320e WITH "i", "v"
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1320e WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1320e
                          STORE ifIl TO vfIl
                          DO muE_1320e WITH "i", "v"
                          DO seE_1320e WITH "v"
                          DO diS_1320e WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1320e WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1320e
 STORE ifIl TO vfIl, ufIl
 DO muE_1320e WITH "F", "i"
 DO muE_1320e WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_1320e WITH "N"
      DO muE_1320e WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coL_fondo
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_1320e WITH ufIl+1, ffIl+1
      DO li1_1320e WITH ufIl+1, ffIl+1
      DO li2_1320e WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Lin_1320e
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, icLn+026.1 TO pfIn, icLn+026.1
 @ piNi, icLn+039.7 TO pfIn, icLn+039.7
 @ piNi, icLn+101.2 TO pfIn, icLn+101.2
 @ piNi, icLn+117.9 TO pfIn, icLn+117.9
 @ piNi, icLn+144.5 TO pfIn, icLn+144.5
ENDPROC
*
PROCEDURE Li1_1320e
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, icLn+004.0 TO pfIn, icLn+004.0
 @ piNi, icLn+010.7 TO pfIn, icLn+010.7
 @ piNi, icLn+122.3 TO pfIn, icLn+122.3
 @ piNi, icLn+129.1 TO pfIn, icLn+129.1
ENDPROC
*
PROCEDURE Li2_1320e
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, icLn+158.0 TO pfIn, icLn+158.0
 @ piNi, icLn+175.9 TO pfIn, icLn+175.9
 @ piNi, icLn+183.6 TO pfIn, icLn+183.6
 IF mrEs>"3"
      @ piNi, icLn+201.5 TO pfIn, icLn+201.5
 ENDIF
ENDPROC
*
PROCEDURE Dis_1320e
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN+00.1 Say FTM3TDO                    Font "&mLetAri",9 Style "NQ" Size 1,03.3 Pict "@S02"
 @vFIL,iCLN+04.5 Say FTM3SER                    Font "&mLetAri",9 Style "NQ" Size 1,05.8 Pict "@S04"
 @vFIL,iCLN+11.3 Say FTM3DOC                    Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "@S10"
 @vFIL,iCLN+26.7 Say FTM3FEM                    Font "&mLetAri",9 Style "NQ" Size 1,12.5
 IF ftM3est="9"
      @vFIL,iCLN+40.3 Say "*** A N U L A D O ***" Font "&mLetAri",9 Style "NQ" Size 1,60.6 Pict "@S63"
 ELSE
      @vFIL,iCLN+40.3 Say FTM3NOM                 Font "&mLetAri",9 Style "NQ" Size 1,60.6 Pict "@S63"
 ENDIF
 @vFIL,iCLN+101.8 Say FTM3RUC                   Font "&mLetAri",9 Style "NQ" Size 1,15.5
 @vFIL,iCLN+118.5 Say FTM3TDF                   Font "&mLetAri",9 Style "NQ" Size 1,03.3 Pict "@S02"
 @vFIL,iCLN+122.9 Say FTM3SRF                   Font "&mLetAri",9 Style "NQ" Size 1,05.8 Pict "@S04"
 @vFIL,iCLN+129.7 Say FTM3DOF                   Font "&mLetAri",9 Style "NQ" Size 1,14.4 Pict "@S10"
 @vFIL,iCLN+145.1 Say FTM3FEF                   Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,iCLN+158.6 Say FTM3TOT                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 @vFIL,iCLN+176.4 Say FTM3PPE                   Font "&mLetAri",9 Style "NQ" Size 1,06.7 Pict "99.99"
 @vFIL,iCLN+184.3 Say FTM3PER                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 IF mrEs>"3"
      @vFIL,iCLN+202.1 Say FTM3TOT+FTM3PER        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
 ENDIF
ENDPROC
*
PROCEDURE Imp_1320e
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_1320e
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_1320e
 PRIVATE ptAm
 DO CASE
      CASE mpRt="1"
           STORE 96 TO ptAm
           STORE 12 TO mcLn
      CASE mpRt="2"
           STORE 98 TO ptAm
           STORE 12 TO mcLn
 ENDCASE
 STORE 00 TO vlIn, vpAg, cpEr, ctOt
 SELECT teMporal_3
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO CASE
                CASE vpAg=0
                     DO caB_1320e WITH "1"
                CASE vlIn>mpAg-4
                     DO caB_1320e WITH "2"
                OTHERWISE
                     DO caB_1320e WITH "3"
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN    Say Substr(Dtoc(FTM3FEM),1,2)                Font "&mLetAri",9 Style "NQ" Size 1,3
                     @vLIN,mCLN+06 Say FTM3TDF+":"+AllTrim(FTM3SRF)+"-"+FTM3DOF Font "&mLetAri",9 Style "NQ" Size 1,20
                     @vLIN,mCLN+26 Say AllTrim(FTM3SER)+"-"+FTM3DOC             Font "&mLetAri",9 Style "NQ" Size 1,20
                     IF ftM3est="9"
                          @vLIN,mCLN+43 Say "* * * A N U L A D O * * *"           Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S43"
                     ELSE
                          @vLIN,mCLN+43 Say Substr(Lower(FTM3NOM),1,40)           Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S35"
                          @vLIN,mCLN+83 Say Space(40)                             Font "&mLetAri",9 Style "NQ" Size 1,10
                          @vLIN,mCLN+85 Say FTM3RUC                               Font "&mLetAri",9 Style "NQ"
                     ENDIF
                     @vLIN,mCLN+115 Say FTM3TOT                                 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "999,999.99"
                     @vLIN,mCLN+127 Say FTM3PPE                                 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "999,999.99"
                     @vLIN,mCLN+142 Say FTM3PER                                 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN    Say Substr(Dtoc(FTM3FEM),1,2)                Font "&mLetRom",10 Style "NQ" Size 1,13
                     @vLIN,mCLN+06 Say FTM3TDF+":"+AllTrim(FTM3SRF)+"-"+FTM3DOF Font "&mLetRom",10 Style "NQ" Size 1,20
                     @vLIN,mCLN+26 Say AllTrim(FTM3SER)+"-"+FTM3DOC             Font "&mLetRom",10 Style "NQ" Size 1,20
                     IF ftM3est="9"
                          @vLIN,mCLN+43 Say "* * * A N U L A D O * * *"           Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S33"
                     ELSE
                          @vLIN,mCLN+43 Say Substr(Lower(FTM3NOM),1,40)           Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S33"
                          @vLIN,mCLN+82 Say Space(20)                             Font "&mLetRom",10 Style "NQ" Size 1,20
                          @vLIN,mCLN+84 Say FTM3RUC                               Font "&mLetRom",10 Style "NQ" Size 1,17
                     ENDIF
                     @vLIN,mCLN+101 Say FTM3TOT                                 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+117 Say FTM3PPE                                 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "99.99"
                     @vLIN,mCLN+133 Say FTM3PER                                 Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+1.3 TO vlIn
      STORE cpEr+ftM3per TO cpEr
      STORE cpEr+ftM3tot TO ctOt
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+070.0 Say "Total General S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+114.4 Say tTOT                Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+141.8 Say tPER                Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+060.0 Say "Total General S/." Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+101.0 Say tTOT                Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                @vLIN,mCLN+133.0 Say tPER                Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_1320e
 PARAMETER ptPo
 IF vpAg>0
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+070.0 Say "Van S/."  Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+114.4 Say cTOT       Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+141.8 Say cPER       Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+060.0 Say "Van S/."  Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+101.0 Say cTOT       Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+133.0 Say cPER       Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
           ENDCASE
      ENDIF
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO taM_0000a WITH ptAm, "1"
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_prt
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,00 Say " " Font "&mLetRom",12 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_pr1
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say AllTrim(mRAZ)+"  RUC:"+mRUC Font "&mLetRom",13 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN Say AllTrim(mRAZ)+"  RUC:"+mRUC Font "&mLetRom",14 Style "BQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE SUBSTR(DTOC(dfEm), 4, 2)="01"
                STORE "Enero de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="02"
                STORE "Febrero de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="03"
                STORE "Marzo de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="04"
                STORE "Abril de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="05"
                STORE "Mayo de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="06"
                STORE "Junio de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="07"
                STORE "Julio de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="08"
                STORE "Agosto de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="09"
                STORE "Setiembre de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="10"
                STORE "Octubre de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="11"
                STORE "Noviembre de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
           CASE SUBSTR(DTOC(dfEm), 4, 2)="12"
                STORE "Diciembre de "+SUBSTR(DTOC(dfEm), 7, 4) TO cfEc
      ENDCASE
      IF voPc=3
           @vLIN,mCLN Say "Registro de Percepciones "+cFEC Font "&mLetRom",14 Style "BQI"
      ELSE
           @vLIN,mCLN Say "Percepciones Temporales"+cFEC   Font "&mLetRom",14 Style "BQI"
      ENDIF
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN     Say "DI"         Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+05  Say "DOCUMENTO"  Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+26  Say "DOC.INTER"  Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+43  Say "CLIENTE"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+90  Say "RUC"        Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+106 Say "TOT.AFEC"   Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+121 Say "%PERC"      Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+132 Say "PERCEP.S/." Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "DI"         Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+05  Say "DOCUMENTO"  Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+26  Say "DOC.INTER"  Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+43  Say "CLIENTE"    Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+89  Say "RUC"        Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+103 Say "TOT.AFEC"   Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+120 Say "%PERC"      Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+133 Say "PERCEP.S/." Font "&mLetRom",10 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetRom",11 Style "NT"
 ENDIF
 STORE vlIn+2 TO vlIn
 DO coL_pr1
 IF vpAg>1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+070.0 Say "Vienen S/." Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+114.4 Say cTOT         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+141.8 Say cPER         Font "&mLetAri",9 Style "BQ" Size 1,15 Pict "9999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+060.0 Say "Vienen S/." Font "&mLetRom",10 Style "BQ"
                     @vLIN,mCLN+101.0 Say cTOT         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
                     @vLIN,mCLN+133.0 Say cPER         Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+2 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE P00_1320e
 STORE mcO0 TO icLn
 DO CASE
      CASE mrEs="3"
           STORE icLn-1 TO icLn
           STORE icLn+201.8 TO ucLn
      OTHERWISE
           STORE icLn+20 TO icLn
           STORE icLn+219.2 TO ucLn
 ENDCASE
 RESTORE SCREEN FROM vpAn_99
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 DO cuAdro WITH ifIl-1.9, icLn, ffIl+3.5, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifIl-1.8, icLn-0.6 TO ifIl-0.4, ucLn+0.4 PATTERN 1
 @ ffIl+1.6, icLn-0.6 TO ffIl+3.4, ucLn+0.4 PATTERN 1
 @FFIL+2.0,iCLN+0.5 Say vNUM Pict "99,999,999"  Font "&mLetAri",8  Style "NQU" Size 1,12
 DO CASE
      CASE voPc=3
           @fFIL+3.8,uCLN-100 Say "Registro de Percepciones del "+Dtoc(dFEM)+" al "+Dtoc(hFEM) Font "&mLetAri",14 Style "BT" Color 7+
      OTHERWISE
           @fFIL+3.8,uCLN-100 Say "Percepciones Temporales del "+Dtoc(dFEM)+" al "+Dtoc(hFEM)  Font "&mLetAri",14 Style "BT" Color 7+
 ENDCASE
 DO liN_1320e WITH ifIl-1.8, ffIl+1.6
 DO li1_1320e WITH ifIl-0.4, ffIl+1.6
 DO li2_1320e WITH ifIl-1.8, ffIl+3.3
 @iFIL-1.7,iCLN+006.1 Say "Documento"      Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+029.0 Say "Fecha"          Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+040.3 Say "Cliente"        Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+106.4 Say "RUC"            Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+124.5 Say "Documento"      Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+146.1 Say "Fec.Doc."       Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+159.2 Say "Total Docum"    Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+176.4 Say "%Per"           Font "&mLetAri",10 Style "NQ"
 @iFIL-1.7,iCLN+184.3 Say "Percepcion S/"  Font "&mLetAri",10 Style "NQ"
 @fFIL+1.9,iCLN+142.0 Say "TOTALES:"       Font "&mLetAri",10 Style "BQ"
 @fFIL+1.9,iCLN+158.6 Say tTOT             Font "&mLetAri",9  Style "BQ" Size 1,14.1 Pict "9,999,999.99"
 @fFIL+1.9,iCLN+184.2 Say tPER             Font "&mLetAri",9  Style "BQ" Size 1,14.1 Pict "9,999,999.99"
 IF mrEs>"3"
      @iFIL-1.7,iCLN+202.3 Say "Total+Percepc" Font "&mLetAri",10 Style "NQ"
      @fFIL+1.9,iCLN+202.3 Say tTOT+tPER       Font "&mLetAri",9  Style "BQ" Size 1,14.1 Pict "9,999,999.99"
 ENDIF
ENDPROC
*
PROCEDURE Res_1320e
 DO p00_1320a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_1320e
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 DO seE_1320e WITH "i"
 DO paN_1320e
 DO seE_1320e WITH "i"
 STORE 00 TO cfIl
 STORE ifIl TO vfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"=ftM3tdo+ ;
         ALLTRIM(ftM3ser)+"*"+ALLTRIM(ftM3doc)+"*"
           STORE vfIl TO cfIl
           EXIT
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF cfIl=0
      DO muE_1320e WITH "i", "v"
      STORE ifIl TO vfIl
 ENDIF
 DO seE_1320e WITH "v"
 DO diS_1320e WITH "R"
ENDPROC
*
PROCEDURE See_1320e
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vtDo+ALLTRIM(vsEr)+"*"+ALLTRIM(vdOc)+"*"
      CASE psEe="i"
           SEEK itDo+ALLTRIM(isEr)+"*"+ALLTRIM(idOc)+"*"
      CASE psEe="u"
           SEEK utDo+ALLTRIM(usEr)+"*"+ALLTRIM(udOc)+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1320e
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM3tdo TO vtDo
           STORE ftM3ser TO vsEr
           STORE ftM3doc TO vdOc
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM3tdo TO utDo
           STORE ftM3ser TO usEr
           STORE ftM3doc TO udOc
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM3tdo TO itDo
           STORE ftM3ser TO isEr
           STORE ftM3doc TO idOc
 ENDCASE
ENDPROC
*
PROCEDURE Cam_1320e
 PARAMETER paNt, pnUe
 PRIVATE pnUm, ptAm
 IF AT(paNt, xnOm)<>0
      STORE AT(paNt, xnOm) TO pnUm
      STORE LEN(paNt) TO ptAm
      STORE SUBSTR(xnOm, 1, pnUm-1)+pnUe+SUBSTR(xnOm, pnUm+ptAm, 80) TO xnOm
 ENDIF
 RELEASE pnUm, ptAm
ENDPROC
*
PROCEDURE Xls_1320e
 PRIVATE pmEs
 DO CASE
      CASE SUBSTR(DTOC(dfEm), 4, 2)="01"
           STORE "Enero" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="02"
           STORE "Febrero" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="03"
           STORE "Marzo" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="04"
           STORE "Abril" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="05"
           STORE "Mayo" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="06"
           STORE "Junio" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="07"
           STORE "Julio" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="08"
           STORE "Agosto" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="09"
           STORE "Setiembre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="10"
           STORE "Octubre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="11"
           STORE "Noviembre" TO pmEs
      CASE SUBSTR(DTOC(dfEm), 4, 2)="12"
           STORE "Diciembre" TO pmEs
 ENDCASE
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 DO xl0_0000a WITH "Registro de Percepciones", "Ventas", 15
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO xl2_0000a WITH 15
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.raNge(pxLs.ceLls(3,01), pxLs.ceLls(6,15)).inSert
 pxLs.ceLls(3, 01).vaLue = "Período:"
 pxLs.ceLls(3, 04).vaLue = pmEs+" del "+SUBSTR(DTOC(dfEm), 7, 4)
 pxLs.ceLls(4, 01).vaLue = "RUC:"
 pxLs.ceLls(4, 04).vaLue = mrUc
 pxLs.ceLls(5, 01).vaLue = "Apellidos y Nombres o Razón Social:"
 pxLs.ceLls(5, 04).vaLue = mrAz
 pxLs.raNge(pxLs.ceLls(3,4), pxLs.ceLls(3,8)).meRge
 pxLs.raNge(pxLs.ceLls(4,4), pxLs.ceLls(4,8)).meRge
 pxLs.raNge(pxLs.ceLls(5,4), pxLs.ceLls(5,8)).meRge
 pxLs.ceLls(7, 01).vaLue = "Comprobante de Pago"
 pxLs.ceLls(8, 01).vaLue = "Tipo"
 pxLs.ceLls(8, 02).vaLue = "Serie"
 pxLs.ceLls(8, 03).vaLue = "Número"
 pxLs.ceLls(7, 04).vaLue = "Fecha de"
 pxLs.ceLls(8, 04).vaLue = "Emisión"
 pxLs.ceLls(8, 05).vaLue = "RUC/DNI"
 pxLs.ceLls(7, 06).vaLue = "Apellidos/Nombres o"
 pxLs.ceLls(8, 06).vaLue = "Razón Social"
 pxLs.ceLls(7, 07).vaLue = "Documento Aplicado"
 pxLs.ceLls(8, 07).vaLue = "Fecha"
 pxLs.ceLls(8, 08).vaLue = "Tipo"
 pxLs.ceLls(8, 09).vaLue = "Serie"
 pxLs.ceLls(8, 10).vaLue = "Número"
 pxLs.ceLls(7, 11).vaLue = "Tipo de"
 pxLs.ceLls(8, 11).vaLue = "Cambio"
 pxLs.ceLls(8, 12).vaLue = "Valor Facturado"
 pxLs.ceLls(8, 13).vaLue = "% Percepcion"
 pxLs.ceLls(7, 14).vaLue = "Importe Total"
 pxLs.ceLls(8, 14).vaLue = "Percepcion Soles"
 pxLs.ceLls(8, 15).vaLue = "Total Cobrado"
 pxLs.coLumns(11).nuMberformat = "##0.000"
 pxLs.coLumns(12).nuMberformat = "###,##0.00"
 pxLs.coLumns(13).nuMberformat = "##0.000"
 pxLs.coLumns(14).nuMberformat = "###,##0.00"
 pxLs.coLumns(15).nuMberformat = "###,##0.00"
 pxLs.raNge(pxLs.ceLls(7,01), pxLs.ceLls(7,03)).meRge
 pxLs.raNge(pxLs.ceLls(7,07), pxLs.ceLls(7,10)).meRge
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(10)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(01), pxLs.coLumns(04)).hoRizontalalignment = 3
 pxLs.raNge(pxLs.coLumns(05), pxLs.coLumns(06)).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(07), pxLs.coLumns(10)).hoRizontalalignment = 3
 pxLs.coLumns(11).hoRizontalalignment = 3
 pxLs.coLumns(13).hoRizontalalignment = 3
 pxLs.coLumns(12).hoRizontalalignment = 1
 pxLs.coLumns(14).hoRizontalalignment = 1
 pxLs.coLumns(15).hoRizontalalignment = 1
 pxLs.coLumns(01).coLumnwidth = 4.6
 pxLs.coLumns(02).coLumnwidth = 5.3
 pxLs.coLumns(03).coLumnwidth = 9.5
 pxLs.coLumns(04).coLumnwidth = 10.5
 pxLs.coLumns(05).coLumnwidth = 11.5
 pxLs.coLumns(06).coLumnwidth = 60
 pxLs.coLumns(07).coLumnwidth = 10.5
 pxLs.coLumns(08).coLumnwidth = 4.6
 pxLs.coLumns(09).coLumnwidth = 5.3
 pxLs.coLumns(10).coLumnwidth = 7.9
 pxLs.coLumns(11).coLumnwidth = 8.3
 pxLs.coLumns(12).coLumnwidth = 15.7
 pxLs.coLumns(13).coLumnwidth = 13.43
 pxLs.coLumns(14).coLumnwidth = 16.5
 pxLs.coLumns(15).coLumnwidth = 13.8
 SELECT teMporal_3
 GOTO TOP
 STORE 9 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 01).seLect
      pxLs.ceLls(viT1, 01).vaLue = ALLTRIM(ftM3tdo)
      pxLs.ceLls(viT1, 02).vaLue = ALLTRIM(ftM3ser)
      pxLs.ceLls(viT1, 03).vaLue = ALLTRIM(ftM3doc)
      pxLs.ceLls(viT1, 04).vaLue = DTOC(ftM3fem)
      pxLs.ceLls(viT1, 05).vaLue = ALLTRIM(ftM3ruc)
      pxLs.ceLls(viT1, 06).vaLue = ALLTRIM(ftM3nom)
      pxLs.ceLls(viT1, 07).vaLue = DTOC(ftM3fef)
      pxLs.ceLls(viT1, 08).vaLue = ALLTRIM(ftM3tdf)
      pxLs.ceLls(viT1, 09).vaLue = ALLTRIM(ftM3srf)
      pxLs.ceLls(viT1, 10).vaLue = ALLTRIM(ftM3dof)
      pxLs.ceLls(viT1, 11).vaLue = ftM3tca
      pxLs.ceLls(viT1, 12).vaLue = ftM3tot
      pxLs.ceLls(viT1, 13).vaLue = ftM3ppe
      pxLs.ceLls(viT1, 14).vaLue = ftM3per
      pxLs.ceLls(viT1, 15).vaLue = ftM3tot+ftM3per
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT teMporal_3
      SKIP
 ENDDO
 IF meN1<meNn
      pxLs.ceLls(viT1, 12).boRders.liNestyle = 7
      pxLs.ceLls(viT1, 12).boRders(1).weIght = 2
      pxLs.ceLls(viT1, 12).boRders(2).weIght = 2
      pxLs.ceLls(viT1, 12).boRders(3).weIght = 2
      pxLs.ceLls(viT1, 12).boRders(4).weIght = 2
      pxLs.ceLls(viT1, 12).foNt.naMe = "Times New Roman"
      pxLs.ceLls(viT1, 12).foNt.siZe = 11
      pxLs.ceLls(viT1, 12).foNt.boLd = .T.
      pxLs.ceLls(viT1, 12).foNt.coLorindex = 1
      pxLs.ceLls(viT1, 12).inTerior.coLorindex = 15
      pxLs.ceLls(viT1, 12).veRticalalignment = 2
      pxLs.ceLls(viT1, 12).hoRizontalalignment = 4
      pxLs.ceLls(viT1, 14).boRders.liNestyle = 7
      pxLs.ceLls(viT1, 14).boRders(1).weIght = 2
      pxLs.ceLls(viT1, 14).boRders(2).weIght = 2
      pxLs.ceLls(viT1, 14).boRders(3).weIght = 2
      pxLs.ceLls(viT1, 14).boRders(4).weIght = 2
      pxLs.ceLls(viT1, 14).foNt.naMe = "Times New Roman"
      pxLs.ceLls(viT1, 14).foNt.siZe = 11
      pxLs.ceLls(viT1, 14).foNt.boLd = .T.
      pxLs.ceLls(viT1, 14).foNt.coLorindex = 1
      pxLs.ceLls(viT1, 14).inTerior.coLorindex = 15
      pxLs.ceLls(viT1, 14).veRticalalignment = 2
      pxLs.ceLls(viT1, 14).hoRizontalalignment = 4
      pxLs.ceLls(viT1, 15).boRders.liNestyle = 7
      pxLs.ceLls(viT1, 15).boRders(1).weIght = 2
      pxLs.ceLls(viT1, 15).boRders(2).weIght = 2
      pxLs.ceLls(viT1, 15).boRders(3).weIght = 2
      pxLs.ceLls(viT1, 15).boRders(4).weIght = 2
      pxLs.ceLls(viT1, 15).foNt.naMe = "Times New Roman"
      pxLs.ceLls(viT1, 15).foNt.siZe = 11
      pxLs.ceLls(viT1, 15).foNt.boLd = .T.
      pxLs.ceLls(viT1, 15).foNt.coLorindex = 1
      pxLs.ceLls(viT1, 15).inTerior.coLorindex = 15
      pxLs.ceLls(viT1, 15).veRticalalignment = 2
      pxLs.ceLls(viT1, 15).hoRizontalalignment = 4
      pxLs.ceLls(viT1, 12).vaLue = ttOt
      pxLs.ceLls(viT1, 14).vaLue = tpEr
      pxLs.ceLls(viT1, 15).vaLue = ttOt+tpEr
 ENDIF
 DO xl1_0000a WITH 2
 WAIT CLEAR
 SELECT teMporal_3
 DO seE_1320e WITH "v"
ENDPROC
*
PROCEDURE Clp_1320e
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_1320e WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1320e WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 999 TO mkEy
           DO muE_1320e WITH "F", "v"
           DO diS_1320e WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1320e
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos: Facturas,"
 @ pfIl+01, 01 SAY  ;
   "Boletas, Notas de Crédito y Débito, en el rango de fechas seleccionadas."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+13, 29 SAY ":" STYLE "BT"
 @ pfIl+14, 29 SAY ":" STYLE "BT"
 @ pfIl+15, 29 SAY ":" STYLE "BT"
 @ pfIl+05, 11 SAY "ESC" STYLE "BT"
 @ pfIl+06, 11 SAY "F10" STYLE "BT"
 @ pfIl+07, 11 SAY "F1" STYLE "BT"
 @ pfIl+08, 11 SAY "F8" STYLE "BT"
 @ pfIl+09, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 11 SAY "HOME" STYLE "BT"
 @ pfIl+14, 11 SAY "END" STYLE "BT"
 @ pfIl+15, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 31 SAY "Regresar a Cabecera"
 @ pfIl+06, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 31 SAY "Ayuda del Programa"
 @ pfIl+08, 31 SAY "Pasar Datos a Excel"
 @ pfIl+09, 31 SAY "Línea inferior"
 @ pfIl+10, 31 SAY "Línea superior"
 @ pfIl+11, 31 SAY "Página siguiente"
 @ pfIl+12, 31 SAY "Página anterior"
 @ pfIl+13, 31 SAY "Primera línea"
 @ pfIl+14, 31 SAY "Última línea"
 @ pfIl+15, 31 SAY "Imprimir Reporte"
 STORE pfIl+16 TO pfIl
 IF voPc=3
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "CTRL O" STYLE "BT"
      @ pfIl, 31 SAY "Pasar Datos a TXT, para PDT"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
