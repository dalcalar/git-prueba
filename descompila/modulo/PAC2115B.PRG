 = INKEY(0.01)
 DO orD_2115b
 IF LEN(ALLTRIM(icOd))=0
      GOTO TOP
      DO paN_2115b
      STORE ifIl TO vfIl
      DO muE_2115b WITH "i", "v"
 ELSE
      DO seE_2115b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(vcOd)+"*"
                CASE vsW0=2
                     SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2115b WITH "F", "v"
      ENDIF
      DO seE_2115b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(ftM1cod)+"*"+ftM1tip=ALLTRIM(vcOd)+"*"+vtIp
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2115b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_2115b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2115b WITH "i"
      SET NEAR OFF
      DO paN_2115b
      STORE ifIl TO vfIl
      DO muE_2115b WITH "i", "v"
      DO seE_2115b WITH "v"
 ENDIF
 DO diS_2115b WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2115b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2115b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2115b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_2115b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2115b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2115b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2115b
                DO p1_0000a
                STORE 99 TO mkEy
                SELECT teMporal_1
                DO seE_2115b WITH "v"
           CASE mkEy=k_Right .OR. mkEy=k_Left
                IF vsW0=1
                     STORE 2 TO vsW0
                ELSE
                     STORE 1 TO vsW0
                ENDIF
                DO caM_2115b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSU3", ifIl-1.7, mcO0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSU3", ifIl-1.7, mcO0+17
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsW0=1
                          DO prEsiona WITH "1", "CONSU3", ifIl-1.7, mcO0
                     CASE vsW0=2
                          DO prEsiona WITH "1", "CONSU3", ifIl-1.7, mcO0+17
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_12
                DO paC2115c
                RESTORE SCREEN FROM vpAn_12
                SELECT teMporal_1
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(ftM1cod)+"*"+ftM1tip=ALLTRIM(icOd)+"*"+ ;
                          itIp .AND. ALLTRIM(vcOd)+"*"+vtIp=ALLTRIM(icOd)+ ;
                          "*"+itIp
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"+vtIp=ALLTRIM(icOd)+ ;
                                    "*"+itIp
                                    DO paN_2115b
                               OTHERWISE
                                    DO seE_2115b WITH "v"
                                    DO diS_2115b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2115b WITH "i", "v"
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(ftM1cod)+"*"+ftM1tip=ALLTRIM(ucOd)+"*"+ ;
                          utIp .AND. ALLTRIM(vcOd)+"*"+vtIp=ALLTRIM(ucOd)+ ;
                          "*"+utIp
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"+vtIp=ALLTRIM(ucOd)+ ;
                                    "*"+utIp
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2115b
                               OTHERWISE
                                    DO seE_2115b WITH "v"
                                    DO diS_2115b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2115b WITH "u", "v"
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"+vtIp=ALLTRIM(ucOd)+"*"+utIp
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2115a WITH ffIl, ffIl+1
                               DO muE_2115b WITH "F", "v"
                               DO muE_2115b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2115b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2115b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"+vtIp=ALLTRIM(icOd)+"*"+itIp
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2115a WITH ifIl, ifIl+1
                               DO muE_2115b WITH "F", "v"
                               DO muE_2115b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2115b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2115b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2115b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2115b
                          STORE ifIl TO vfIl
                          DO muE_2115b WITH "i", "v"
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2115b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2115b
                          STORE ifIl TO vfIl
                          DO muE_2115b WITH "i", "v"
                          DO seE_2115b WITH "v"
                          DO diS_2115b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
           DO seE_2115b WITH "v"
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2115b
 DO pn1_2115b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2115b
 DO pn1_2115b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2115b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2115b WITH "F", "i"
 DO muE_2115b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. ftM1tip+UPPER(ALLTRIM(ftM1cod))+"*"=xtIp+ ;
                UPPER(ALLTRIM(xcOd))+"*"
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2115b WITH "N"
      ENDCASE
      DO muE_2115b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_2115a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2115b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say FTM1COD Font "&mLetAri",9 Style "NQ" Size 1,16   Pict "@S15"
 @vFIL,mCO0+017.0 Say FTM1DES Font "&mLetAri",9 Style "NQ" Size 1,82.8 Pict "@S85"
 @vFIL,mCO0+100.8 Say FTM1NUC Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S17"
 @vFIL,mCO0+116.7 Say FTM1NUV Font "&mLetAri",9 Style "NQ" Size 1,14.8 Pict "@S17"
 @vFIL,mCO0+132.6 Say FTM1NTI Font "&mLetAri",9 Style "NQ" Size 1,44.2 Pict "@S46"
 @vFIL,mCO0+177.8 Say FTM1CAN Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "9999,999.9999"
 DO coLsc3
 @fFIL+1.5,mCO0 Say FTM1DES Font "&mLetAri",9 Style "NQ" Size 1,125.5 Pict "@S125"
 @fFIL+2.8,mCO0 Say FTM1NTI Font "&mLetAri",9 Style "NQ" Size 1,125.5 Pict "@S30"
 DO coLsc4
 @fFIL+2.8,mCO0+129.5 Say Space(58) Font "&mLetAri",9 Style "NQ" Size 1,58
 DO CASE
      CASE ftM1la1<>0 .AND. ftM1la2<>0 .AND. ftM1an1<>0 .AND. ftM1an2<>0
           @fFIL+2.8,mCO0+129.5 Say "Mt"    Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+133.9 Say FTM1LA1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @fFIL+2.8,mCO0+144.6 Say "x"     Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+146.2 Say FTM1AN1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @fFIL+2.8,mCO0+157.0 Say "Pulg"  Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+162.4 Say FTM1LA2 Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "9999.999"
           @fFIL+2.8,mCO0+174.5 Say "x"     Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+176.2 Say FTM1AN2 Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "9999.999"
      CASE ftM1la1<>0 .AND. ftM1an1<>0
           @fFIL+2.8,mCO0+159.5 Say "Mt"    Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+162.4 Say FTM1LA1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @fFIL+2.8,mCO0+174.5 Say "x"     Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+176.2 Say FTM1AN1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
      CASE ftM1la2<>0 .AND. ftM1an2<>0
           @fFIL+2.8,mCO0+157.0 Say "Pulg"  Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+162.4 Say FTM1LA2 Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "9999.999"
           @fFIL+2.8,mCO0+174.5 Say "x"     Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+176.2 Say FTM1AN2 Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "9999.999"
      CASE ftM1la1<>0
           @fFIL+2.8,mCO0+171.8 Say "Mt"    Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+176.2 Say FTM1LA1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
      CASE ftM1la2<>0
           @fFIL+2.8,mCO0+171.8 Say "Pulg"  Font "&mLetAri",9 Style "NQ"
           @fFIL+2.8,mCO0+176.2 Say FTM1LA2 Font "&mLetAri",9 Style "NQ" Size 1,11.3 Pict "9999.999"
 ENDCASE
ENDPROC
*
PROCEDURE Cam_2115b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2115b WITH "v", "x"
 DO orD_2115b
 GOTO TOP
 DO seE_2115b WITH "i"
 DO pa1_2115b
 IF cfIl=00
      DO muE_2115b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_2115b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_2115b WITH "v"
 DO diS_2115b WITH "R"
ENDPROC
*
PROCEDURE Res_2115b
 SET READBORDER ON
 DO reS_2115a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 SELECT teMporal_1
 DO diS_2115b WITH "R"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Imp_2115b
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
 DO reP_2115b
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2115b
 PRIVATE ptAm
 DO coLbln
 STORE 100 TO ptAm
 STORE 10 TO mcLn
 SELECT teMporal_1
 GOTO TOP
 STORE 0 TO vlIn, vpAg
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_2115b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+000.0 Say FTM1COD Font "&mLetAri",9 Style "NQ" Size 1,15   Pict "@S15"
           @vLIN,mCLN+016.5 Say FTM1DES Font "&mLetAri",9 Style "NQ" Size 1,69   Pict "@S72"
           @vLIN,mCLN+087.2 Say FTM1NUC Font "&mLetAri",9 Style "NQ" Size 1,11   Pict "@S13"
           @vLIN,mCLN+099.3 Say FTM1NTI Font "&mLetAri",9 Style "NQ" Size 1,30   Pict "@S32"
           @vLIN,mCLN+130.8 Say FTM1CAN Font "&mLetAri",9 Style "NQ" Size 1,18.9 Pict "999,999.9999"
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.5 TO vlIn
      IF SUBSTR(DTOC(dfEm), 7, 4)=SUBSTR(DTOC(hfEm), 7, 4) .AND.  ;
         SUBSTR(DTOC(dfEm), 4, 2)=SUBSTR(DTOC(hfEm), 4, 2)
      ELSE
           STORE ftM1cod TO ccOd
           STORE ftM1tip TO ctIp
           SELECT teMporal_2
           SEEK ALLTRIM(ccOd)+"*"+ctIp
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM2cod)+"*"+ftM2tip= ;
              ALLTRIM(ccOd)+"*"+ctIp
                IF vpAg>muPg
                     EXIT
                ENDIF
                IF vlIn>mpAg-3
                     DO caB_2115b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+15 Say FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ"
                     @vLIN,mCLN+35 Say FTM2CAN             Font "&mLetAri",9 Style "NQ" Size 1,18.9 Pict "999,999.9999"
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE vlIn+1.3 TO vlIn
                SKIP
           ENDDO
           IF vpAg>muPg
                EXIT
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+0.6 TO vlIn
      SELECT teMporal_1
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2115b
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
      @vLIN,mCLN Say "Movimientos de Productos: "+AllTrim(vNGR) Font "&mLetRom",14 Style "BQI"
 ENDIF
 STORE vlIn+3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde el: "+Dtoc(dFEM)+" hasta el "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN       Say "Producto"           Font "&mLetAri",9 Style "BT"
      @vLIN,mCLN+087.2 Say "Un-Inv"             Font "&mLetAri",9 Style "BT"
      @vLIN,mCLN+099.3 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "BT"
      @vLIN,mCLN+139.1 Say "Cantidad"           Font "&mLetAri",9 Style "BT"
 ENDIF
 STORE vlIn+0.3 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Ord_2115b
 SELECT teMporal_1
 DO CASE
      CASE vsW0=1
           SET ORDER TO FTM1COD
      CASE vsW0=2
           SET ORDER TO FTM1DES
 ENDCASE
ENDPROC
*
PROCEDURE See_2115b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(vcOd)+"*"+vtIp
                CASE vsW0=2
                     SEEK UPPER(vdEs)+ALLTRIM(vcOd)+"*"+vtIp
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(icOd)+"*"+itIp
                CASE vsW0=2
                     SEEK UPPER(idEs)+ALLTRIM(icOd)+"*"+itIp
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(ucOd)+"*"+utIp
                CASE vsW0=2
                     SEEK UPPER(udEs)+ALLTRIM(ucOd)+"*"+utIp
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2115b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcOd TO ccOd
           STORE vdEs TO cdEs
           STORE vtIp TO ctIp
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcOd TO xcOd
           STORE vdEs TO xdEs
           STORE vtIp TO xtIp
      CASE pmU1="v" .AND. pmU2="i"
           STORE vcOd TO icOd
           STORE vdEs TO idEs
           STORE vtIp TO itIp
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccOd TO vcOd
           STORE cdEs TO vdEs
           STORE ctIp TO vtIp
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcOd TO vcOd
           STORE xdEs TO vdEs
           STORE xtIp TO vtIp
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucOd TO vcOd
           STORE udEs TO vdEs
           STORE utIp TO vtIp
      CASE pmU1="i" .AND. pmU2="v"
           STORE icOd TO vcOd
           STORE idEs TO vdEs
           STORE itIp TO vtIp
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM1cod TO vcOd
           STORE ftM1des TO vdEs
           STORE ftM1tip TO vtIp
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM1cod TO ucOd
           STORE ftM1des TO udEs
           STORE ftM1tip TO utIp
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM1cod TO icOd
           STORE ftM1des TO idEs
           STORE ftM1tip TO itIp
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2115b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+3.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+1.08 .AND. mcCc>=mmC2+3.6 .AND.  ;
           mcCc<=mmC2+7
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_2115b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2115b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2115b WITH "F", "v"
           DO diS_2115b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2115b
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran a todos los Productos en orden"
 @ pfIl+1, 2 SAY  ;
   "de códigos o alfabético, segun los rangos escogidos en la Cabecera."
 DO hl3_2111b IN PAC2111B
 @ pfIl+0, 2 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+00, 21 SAY ":" STYLE "BT"
 @ pfIl+01, 21 SAY ":" STYLE "BT"
 @ pfIl+02, 21 SAY ":" STYLE "BT"
 @ pfIl+03, 21 SAY ":" STYLE "BT"
 @ pfIl+04, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+12, 21 SAY ":" STYLE "BT"
 @ pfIl+00, 02 SAY "ESC" STYLE "BT"
 @ pfIl+01, 02 SAY "F10" STYLE "BT"
 @ pfIl+02, 02 SAY "F1" STYLE "BT"
 @ pfIl+03, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+04, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 02 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+06, 02 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+07, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+08, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+09, 02 SAY "HOME" STYLE "BT"
 @ pfIl+10, 02 SAY "END" STYLE "BT"
 @ pfIl+11, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+12, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+00, 23 SAY "Regresar a Cabecera"
 @ pfIl+01, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+02, 23 SAY "Ayuda del Programa"
 @ pfIl+03, 23 SAY "Línea inferior"
 @ pfIl+04, 23 SAY "Línea superior"
 @ pfIl+05, 23 SAY "Cambiar de Orden de Códigos a Descripción y vic"
 @ pfIl+06, 23 SAY "Cambiar de Orden de Códigos a Descripción y vic"
 @ pfIl+07, 23 SAY "Página siguiente"
 @ pfIl+08, 23 SAY "Página anterior"
 @ pfIl+09, 23 SAY "Primera línea"
 @ pfIl+10, 23 SAY "Última línea"
 @ pfIl+11, 23 SAY "Ver resumen x Año y Mes"
 @ pfIl+12, 23 SAY "Imprimir Reporte"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
