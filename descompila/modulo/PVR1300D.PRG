 DO CASE
      CASE csW3=1
           SELECT teMporal_4
           STORE "" TO vtPo
      CASE csW3=2
           SELECT teMporal_5
           STORE "" TO vtPo
      CASE csW3=3
           SELECT teMporal_6
           STORE "1" TO vtPo
      CASE csW3=4
           SELECT teMporal_7
           STORE "2" TO vtPo
      CASE csW3=5
           SELECT teMporal_8
           STORE "" TO vtPo
      CASE csW3=6
           SELECT teMporal_9
           STORE "" TO vtPo
      CASE csW3=7
           SELECT teMporal_10
           STORE "" TO vtPo
 ENDCASE
 IF csW3=3 .OR. csW3=4
      SET ORDER TO FTM4CD1
 ELSE
      SET ORDER TO FTM4CDG
 ENDIF
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+vtPo+"ZZ"
 SET NEAR OFF
 IF EOF() .OR. ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+"*" .OR. ((csW3=3 .OR.  ;
    csW3=4) .AND. ftM4tpo<>vtPo)
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 STORE ftM4cdg TO hcDg
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+vtPo
 STORE ftM4cdg TO dcDg
 STORE 1 TO vsW4, csW4
 DO orD_1300d
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+vtPo
 DO p00_1300d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_1300d
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+vtPo
 STORE 999 TO mkEy
 STORE ifFs TO vfFs
 DO muE_1300d WITH "i", "v"
 DO seE_1300d WITH "v"
 DO diS_1300d WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_1300d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_1300d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. vsW4>1
                = INKEY(0.01)
                IF csW4=1
                     STORE 2 TO csW4
                ELSE
                     STORE 1 TO csW4
                ENDIF
                DO caM_1300d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_1300d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE mkEy=k_Left .AND. vsW4=1
                          STORE 4 TO vsW4
                     CASE mkEy=k_Left
                          STORE vsW4-1 TO vsW4
                          IF (csW3<>3 .AND. csW3<>4) .AND. vsW4=2
                               STORE 1 TO vsW4
                          ENDIF
                     CASE mkEy=k_Right .AND. vsW4=4
                          STORE 1 TO vsW4
                     CASE mkEy=k_Right
                          STORE vsW4+1 TO vsW4
                          IF (csW3<>3 .AND. csW3<>4) .AND. vsW4=2
                               STORE 3 TO vsW4
                          ENDIF
                ENDCASE
                DO caM_1300d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_13
                DO muE_1300c WITH "v", "x"
                DO muE_1300c WITH "i", "y"
                DO muE_1300c WITH "u", "z"
                DO muE_1300d WITH "v", "x"
                DO diS_1300d WITH "N"
                STORE vfFs TO cfFs
                STORE ifFs TO vfFs
                DO diS_1300d WITH "R1"
                STORE cfFs TO vfFs
                STORE vfIl TO vfFr
                STORE ifIl TO ifFr
                STORE ufIl TO ufFr
                STORE ffIl TO ffFr
                STORE cfIl TO cfFr
                STORE ifIl+6 TO ifIl
                STORE ffIl-1 TO ffIl
                DO pvR1300e
                STORE vfFr TO vfIl
                STORE ifFr TO ifIl
                STORE ufFr TO ufIl
                STORE ffFr TO ffIl
                STORE cfFr TO cfIl
                DO muE_1300c WITH "x", "v"
                DO muE_1300c WITH "y", "i"
                DO muE_1300c WITH "z", "u"
                DO muE_1300d WITH "x", "v"
                RESTORE SCREEN FROM vpAn_13
                DO CASE
                     CASE csW3=1
                          SELECT teMporal_4
                     CASE csW3=2
                          SELECT teMporal_5
                     CASE csW3=3
                          SELECT teMporal_6
                     CASE csW3=4
                          SELECT teMporal_7
                     CASE csW3=5
                          SELECT teMporal_8
                     CASE csW3=6
                          SELECT teMporal_9
                     CASE csW3=7
                          SELECT teMporal_10
                ENDCASE
                DO seE_1300d WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"+vtPo
                DO CASE
                     CASE ALLTRIM(vcDg)+"*"=ALLTRIM(ftM4cdg)+"*" .AND.  ;
                          ALLTRIM(vcDg)+"*"=ALLTRIM(icDg)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcDg)+"*"=ALLTRIM(icDg)+"*"
                                    DO paN_1300d
                               OTHERWISE
                                    DO seE_1300d WITH "v"
                                    DO diS_1300d WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_1300d WITH "i", "v"
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+vtPo+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+"*"  ;
                   .OR. ((csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo)
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(vcDg)+"*"=ALLTRIM(ftM4cdg)+"*" .AND.  ;
                          ALLTRIM(vcDg)+"*"=ALLTRIM(ucDg)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcDg)+"*"=ALLTRIM(ucDg)+"*"
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_1300d
                               OTHERWISE
                                    DO seE_1300d WITH "v"
                                    DO diS_1300d WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_1300d WITH "u", "v"
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+ ;
                          "*" .OR. ((csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "N"
                          SKIP
                          IF ALLTRIM(vcDg)+"*"=ALLTRIM(ucDg)+"*"
                               DO coL_beige
                               DO suBe WITH ifFs, mcO0+4, ffFs, mcO0+muCo, 1
                               DO liN_1300d WITH ffFs, ffFs+1
                               DO muE_1300d WITH "F", "u"
                               DO muE_1300d WITH "F", "v"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_1300d WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_1300d WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+ ;
                          "*" .OR. ((csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcDg)+"*"=ALLTRIM(icDg)+"*"
                               DO coL_beige
                               DO baJa WITH ifFs, mcO0+4, ffFs, mcO0+muCo, 1
                               DO liN_1300d WITH ifFs, ifFs+1
                               DO muE_1300d WITH "F", "v"
                               DO muE_1300d WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_1300d WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1300d WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1300d WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+ ;
                          "*" .OR. ((csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo)
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300d
                          STORE ifFs TO vfFs
                          DO muE_1300d WITH "i", "v"
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1300d WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+ ;
                          "*" .OR. ((csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo)
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(ftM4cod)+"*"<> ;
                             ALLTRIM(vcOd)+"*" .OR. ((csW3=3 .OR. csW3=4)  ;
                             .AND. ftM4tpo<>vtPo)
                               GOTO TOP
                               SEEK ALLTRIM(vcOd)+"*"+vtPo
                          ENDIF
                          DO paN_1300d
                          STORE ifFs TO vfFs
                          DO muE_1300d WITH "i", "v"
                          DO seE_1300d WITH "v"
                          DO diS_1300d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1300d WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300d
 STORE ifFs TO vfFs, ufFs
 DO muE_1300d WITH "F", "i"
 DO muE_1300d WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
    vfFs<ffFs+1
      IF (csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo
           EXIT
      ENDIF
      DO diS_1300d WITH "N"
      DO muE_1300d WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, mcO0+4 CLEAR TO ffFs+1, mcO0+muCo
      DO liN_1300d WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300d
 PARAMETER ptIp
 DO CASE
      CASE ptIp="R1"
           DO coLblv
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLblz
 ENDCASE
 DO CASE
      CASE mrEs="3" .AND. (csW3<>3 .AND. csW3<>4)
           IF ptIp="R1"
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",9 Style "BQI" Size 1,022.9 Pict "@S25"
                @vFFS,mCO0+027.6 Say FTM4DCR Font "&mLetAri",9 Style "BQI" Size 1,109.3 Pict "@S112"
                @vFFS,mCO0+137.5 Say FTM4TT1 Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+169.0 Say FTM4TT2 Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "999,999,999,999,999.99"
           ELSE
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",9 Style "NQ" Size 1,022.9 Pict "@S25"
                @vFFS,mCO0+027.6 Say FTM4DCR Font "&mLetAri",9 Style "NQ" Size 1,109.3 Pict "@S112"
                @vFFS,mCO0+137.5 Say FTM4TT1 Font "&mLetAri",9 Style "NQ" Size 1,030.8 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+169.0 Say FTM4TT2 Font "&mLetAri",9 Style "NQ" Size 1,030.8 Pict "999,999,999,999,999.99"
           ENDIF
      CASE mrEs="3"
           IF ptIp="R1"
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",9 Style "BQI" Size 1,022.9 Pict "@S25"
                @vFFS,mCO0+027.6 Say FTM4DCR Font "&mLetAri",9 Style "BQI" Size 1,072.4 Pict "@S75"
                @vFFS,mCO0+100.6 Say FTM4NUV Font "&mLetAri",9 Style "BQI" Size 1,005.0 Pict "@S08"
                @vFFS,mCO0+106.2 Say FTM4CTD Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "9,999,999,999,999.9999"
                @vFFS,mCO0+137.5 Say FTM4TT1 Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+169.0 Say FTM4TT2 Font "&mLetAri",9 Style "BQI" Size 1,030.8 Pict "999,999,999,999,999.99"
           ELSE
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",9 Style "NQ" Size 1,022.9 Pict "@S25"
                @vFFS,mCO0+027.6 Say FTM4DCR Font "&mLetAri",9 Style "NQ" Size 1,072.4 Pict "@S75"
                @vFFS,mCO0+100.6 Say FTM4NUV Font "&mLetAri",9 Style "NQ" Size 1,005.0 Pict "@S08"
                @vFFS,mCO0+106.2 Say FTM4CTD Font "&mLetAri",9 Style "NQ" Size 1,030.8 Pict "9,999,999,999,999.9999"
                @vFFS,mCO0+137.5 Say FTM4TT1 Font "&mLetAri",9 Style "NQ" Size 1,030.8 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+169.0 Say FTM4TT2 Font "&mLetAri",9 Style "NQ" Size 1,030.8 Pict "999,999,999,999,999.99"
           ENDIF
      CASE mrEs="4" .AND. (csW3<>3 .AND. csW3<>4)
           IF ptIp="R1"
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "BQI" Size 1,022.6 Pict "@S25"
                @vFFS,mCO0+032.6 Say FTM4DCR Font "&mLetAri",10 Style "BQI" Size 1,130.4 Pict "@S120"
                @vFFS,mCO0+189.5 Say FTM4TT1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+221.0 Say FTM4TT2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "NQ" Size 1,022.6 Pict "@S25"
                @vFFS,mCO0+032.6 Say FTM4DCR Font "&mLetAri",10 Style "NQ" Size 1,130.4 Pict "@S120"
                @vFFS,mCO0+189.5 Say FTM4TT1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+221.0 Say FTM4TT2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
           ENDIF
      CASE mrEs="4"
           IF ptIp="R1"
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "BQI" Size 1,022.6 Pict "@S25"
                @vFFS,mCO0+032.6 Say FTM4DCR Font "&mLetAri",10 Style "BQI" Size 1,099.5 Pict "@S102"
                @vFFS,mCO0+152.5 Say FTM4NUV Font "&mLetAri",10 Style "BQI" Size 1,004.1 Pict "@S07"
                @vFFS,mCO0+158.2 Say FTM4CTD Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "9,999,999,999,999.9999"
                @vFFS,mCO0+189.5 Say FTM4TT1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+221.0 Say FTM4TT2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "NQ" Size 1,022.6 Pict "@S25"
                @vFFS,mCO0+032.6 Say FTM4DCR Font "&mLetAri",10 Style "NQ" Size 1,099.5 Pict "@S102"
                @vFFS,mCO0+152.5 Say FTM4NUV Font "&mLetAri",10 Style "NQ" Size 1,004.1 Pict "@S07"
                @vFFS,mCO0+158.2 Say FTM4CTD Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "9,999,999,999,999.9999"
                @vFFS,mCO0+189.5 Say FTM4TT1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+221.0 Say FTM4TT2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
           ENDIF
      CASE csW3<>3 .AND. csW3<>4
           IF ptIp="R1"
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "BQI" Size 1,026.8 Pict "@S25"
                @vFFS,mCO0+037.6 Say FTM4DCR Font "&mLetAri",10 Style "BQI" Size 1,140.6 Pict "@S120"
                @vFFS,mCO0+206.9 Say FTM4TT1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+238.2 Say FTM4TT2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "NQ" Size 1,026.8 Pict "@S25"
                @vFFS,mCO0+037.6 Say FTM4DCR Font "&mLetAri",10 Style "NQ" Size 1,140.6 Pict "@S120"
                @vFFS,mCO0+206.9 Say FTM4TT1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+238.2 Say FTM4TT2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
           ENDIF
      OTHERWISE
           IF ptIp="R1"
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "BQI" Size 1,026.8 Pict "@S25"
                @vFFS,mCO0+037.6 Say FTM4DCR Font "&mLetAri",10 Style "BQI" Size 1,109.6 Pict "@S112"
                @vFFS,mCO0+169.9 Say FTM4NUV Font "&mLetAri",10 Style "BQI" Size 1,004.1 Pict "@S07"
                @vFFS,mCO0+175.4 Say FTM4CTD Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "9,999,999,999,999.9999"
                @vFFS,mCO0+206.9 Say FTM4TT1 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+238.2 Say FTM4TT2 Font "&mLetAri",10 Style "BQI" Size 1,025.6 Pict "999,999,999,999,999.99"
           ELSE
                @vFFS,mCO0+004.0 Say FTM4CDG Font "&mLetAri",10 Style "NQ" Size 1,026.8 Pict "@S25"
                @vFFS,mCO0+037.6 Say FTM4DCR Font "&mLetAri",10 Style "NQ" Size 1,109.6 Pict "@S112"
                @vFFS,mCO0+169.9 Say FTM4NUV Font "&mLetAri",10 Style "NQ" Size 1,004.1 Pict "@S07"
                @vFFS,mCO0+175.4 Say FTM4CTD Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "9,999,999,999,999.9999"
                @vFFS,mCO0+206.9 Say FTM4TT1 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
                @vFFS,mCO0+238.2 Say FTM4TT2 Font "&mLetAri",10 Style "NQ" Size 1,025.6 Pict "999,999,999,999,999.99"
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Lin_1300d
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3" .AND. (csW3<>3 .AND. csW3<>4)
           @ piNi, mcO0+027.1 TO pfIn, mcO0+027.1
           @ piNi, mcO0+137.1 TO pfIn, mcO0+137.1
           @ piNi, mcO0+168.6 TO pfIn, mcO0+168.6
      CASE mrEs="3"
           @ piNi, mcO0+027.1 TO pfIn, mcO0+027.1
           @ piNi, mcO0+100.2 TO pfIn, mcO0+100.2
           @ piNi, mcO0+105.8 TO pfIn, mcO0+105.8
           @ piNi, mcO0+137.1 TO pfIn, mcO0+137.1
           @ piNi, mcO0+168.6 TO pfIn, mcO0+168.6
      CASE mrEs="4" .AND. (csW3<>3 .AND. csW3<>4)
           @ piNi, mcO0+032.1 TO pfIn, mcO0+032.1
           @ piNi, mcO0+189.1 TO pfIn, mcO0+189.1
           @ piNi, mcO0+220.6 TO pfIn, mcO0+220.6
      CASE mrEs="4"
           @ piNi, mcO0+032.1 TO pfIn, mcO0+032.1
           @ piNi, mcO0+152.1 TO pfIn, mcO0+152.1
           @ piNi, mcO0+157.8 TO pfIn, mcO0+157.8
           @ piNi, mcO0+189.1 TO pfIn, mcO0+189.1
           @ piNi, mcO0+220.6 TO pfIn, mcO0+220.6
      CASE csW3<>3 .AND. csW3<>4
           @ piNi, mcO0+037.1 TO pfIn, mcO0+037.1
           @ piNi, mcO0+206.4 TO pfIn, mcO0+206.4
           @ piNi, mcO0+237.8 TO pfIn, mcO0+237.8
      OTHERWISE
           @ piNi, mcO0+037.1 TO pfIn, mcO0+037.1
           @ piNi, mcO0+169.5 TO pfIn, mcO0+169.5
           @ piNi, mcO0+175.0 TO pfIn, mcO0+175.0
           @ piNi, mcO0+206.4 TO pfIn, mcO0+206.4
           @ piNi, mcO0+237.8 TO pfIn, mcO0+237.8
 ENDCASE
ENDPROC
*
PROCEDURE P00_1300d
 DO coL_beige
 DO cuAdro WITH ifFs-0.1, mcO0+4, ffFs+1.0, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc1
 DO liN_1300d WITH ifFs-0.2, ffFs+1.2
 DO p01_1300d
ENDPROC
*
PROCEDURE P01_1300d
 DO CASE
      CASE mrEs="3"
           STORE mcO0+027.6 TO vcL1
           STORE mcO0+135.0 TO vcL2
           STORE mcO0+166.4 TO vcL3
           STORE mcO0+198.4 TO vcL4
      CASE mrEs="4"
           STORE mcO0+032.6 TO vcL1
           STORE mcO0+187.1 TO vcL2
           STORE mcO0+218.7 TO vcL3
           STORE mcO0+250.1 TO vcL4
      OTHERWISE
           STORE mcO0+038.0 TO vcL1
           STORE mcO0+204.1 TO vcL2
           STORE mcO0+236.0 TO vcL3
           STORE mcO0+267.1 TO vcL4
 ENDCASE
 DO prEsiona WITH "3", "CONSU3", ifFs-0.3, vcL1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF csW3=3 .OR. csW3=4
      DO prEsiona WITH "3", "CONSU3", ifFs-0.3, vcL2
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFs-0.3, vcL3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFs-0.3, vcL4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW4=1
           DO prEsiona WITH "1", "CONSU3", ifFs-0.3, vcL1
      CASE vsW4=2
           DO prEsiona WITH "1", "CONSU3", ifFs-0.3, vcL2
      CASE vsW4=3
           DO prEsiona WITH "1", "CONSU3", ifFs-0.3, vcL3
      CASE vsW4=4
           DO prEsiona WITH "1", "CONSU3", ifFs-0.3, vcL4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cam_1300d
 DO p01_1300d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_1300d
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+vtPo
 DO seE_1300d WITH "i"
 DO paN_1300d
 STORE ifFs TO vfFs
 DO muE_1300d WITH "i", "v"
 DO seE_1300d WITH "v"
 DO diS_1300d WITH "R"
ENDPROC
*
PROCEDURE Ord_1300d
 DO CASE
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=1
           SET ORDER TO FTM4DC1
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=2 .AND. csW4=1
           SET ORDER TO FTM4CT1 ASCENDING
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=2 .AND. csW4=2
           SET ORDER TO FTM4CT1 DESCENDING
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=3 .AND. csW4=1
           SET ORDER TO FTM4T11 ASCENDING
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=3 .AND. csW4=2
           SET ORDER TO FTM4T11 DESCENDING
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=4 .AND. csW4=1
           SET ORDER TO FTM4T12 ASCENDING
      CASE (csW3=3 .OR. csW3=4) .AND. vsW4=4 .AND. csW4=2
           SET ORDER TO FTM4T12 DESCENDING
      CASE vsW4=1
           SET ORDER TO FTM4DCR
      CASE vsW4=2 .AND. csW4=1
           SET ORDER TO FTM4CTD ASCENDING
      CASE vsW4=2 .AND. csW4=2
           SET ORDER TO FTM4CTD DESCENDING
      CASE vsW4=3 .AND. csW4=1
           SET ORDER TO FTM4TT1 ASCENDING
      CASE vsW4=3 .AND. csW4=2
           SET ORDER TO FTM4TT1 DESCENDING
      CASE vsW4=4 .AND. csW4=1
           SET ORDER TO FTM4TT2 ASCENDING
      CASE vsW4=4 .AND. csW4=2
           SET ORDER TO FTM4TT2 DESCENDING
 ENDCASE
ENDPROC
*
PROCEDURE See_1300d
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW4=1
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+UPPER(vdCr)+ALLTRIM(vcDg)+"*"
                CASE vsW4=2
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(vcTd, 16, 4)+ ;
                          UPPER(vdCr)+ALLTRIM(vcDg)+"*"
                CASE vsW4=3
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(vtT1, 16, 2)+ ;
                          UPPER(vdCr)+ALLTRIM(vcDg)+"*"
                CASE vsW4=4
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(vtT2, 16, 2)+ ;
                          UPPER(vdCr)+ALLTRIM(vcDg)+"*"
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW4=1
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+UPPER(idCr)+ALLTRIM(icDg)+"*"
                CASE vsW4=2
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(icTd, 16, 4)+ ;
                          UPPER(idCr)+ALLTRIM(icDg)+"*"
                CASE vsW4=3
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(itT1, 16, 2)+ ;
                          UPPER(idCr)+ALLTRIM(icDg)+"*"
                CASE vsW4=4
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(itT2, 16, 2)+ ;
                          UPPER(idCr)+ALLTRIM(icDg)+"*"
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW4=1
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+UPPER(udCr)+ALLTRIM(ucDg)+"*"
                CASE vsW4=2
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(utT1, 16, 4)+ ;
                          UPPER(udCr)+ALLTRIM(ucDg)+"*"
                CASE vsW4=3
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(utT1, 16, 2)+ ;
                          UPPER(udCr)+ALLTRIM(ucDg)+"*"
                CASE vsW4=4
                     SEEK ALLTRIM(vcOd)+"*"+vtPo+STR(itT2, 16, 2)+ ;
                          UPPER(udCr)+ALLTRIM(ucDg)+"*"
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1300d
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcDg TO xcDg
           STORE vdCr TO xdCr
           STORE vcTd TO xcTd
           STORE vtT1 TO xtT1
           STORE vtT2 TO xtT2
      CASE pmU1="x" .AND. pmU2="v"
           STORE xcDg TO vcDg
           STORE xdCr TO vdCr
           STORE xcTd TO vcTd
           STORE xtT1 TO vtT1
           STORE xtT2 TO vtT2
      CASE pmU1="i" .AND. pmU2="v"
           STORE icDg TO vcDg
           STORE idCr TO vdCr
           STORE icTd TO vcTd
           STORE itT1 TO vtT1
           STORE itT2 TO vtT2
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucDg TO vcDg
           STORE udCr TO vdCr
           STORE ucTd TO vcTd
           STORE utT1 TO vtT1
           STORE utT2 TO vtT2
      CASE pmU1="F" .AND. pmU2="v"
           STORE ftM4cdg TO vcDg
           STORE ftM4dcr TO vdCr
           STORE ftM4ctd TO vcTd
           STORE ftM4tt1 TO vtT1
           STORE ftM4tt2 TO vtT2
      CASE pmU1="F" .AND. pmU2="u"
           STORE ftM4cdg TO ucDg
           STORE ftM4dcr TO udCr
           STORE ftM4ctd TO ucTd
           STORE ftM4tt1 TO utT1
           STORE ftM4tt2 TO utT2
      CASE pmU1="F" .AND. pmU2="i"
           STORE ftM4cdg TO icDg
           STORE ftM4dcr TO idCr
           STORE ftM4ctd TO icTd
           STORE ftM4tt1 TO itT1
           STORE ftM4tt2 TO itT2
 ENDCASE
ENDPROC
*
PROCEDURE Res_1300d
 DO reS_1300c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 SAVE SCREEN TO vpAn_12
 DO diS_1300c WITH "N"
 STORE vfIl TO cfIl
 STORE ifIl TO vfIl
 DO diS_1300c WITH "R1"
 STORE cfIl TO vfIl
 STORE ftM3nuv TO vnUv
 DO p00_1300d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE csW3=1
           SELECT teMporal_4
      CASE csW3=2
           SELECT teMporal_5
      CASE csW3=3
           SELECT teMporal_6
      CASE csW3=4
           SELECT teMporal_7
      CASE csW3=5
           SELECT teMporal_8
      CASE csW3=6
           SELECT teMporal_9
      CASE csW3=7
           SELECT teMporal_10
 ENDCASE
 DO orD_1300d
 DO seE_1300d WITH "i"
 DO paN_1300d
 DO seE_1300d WITH "i"
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
    vfFs<ffFs+1
      IF (csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo
           EXIT
      ENDIF
      IF ALLTRIM(vcDg)+"*"=ALLTRIM(ftM4cdg)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_1300d WITH "i", "v"
      STORE ifFs TO vfFs
 ENDIF
 DO seE_1300d WITH "v"
 DO muE_1300d WITH "F", "v"
 DO diS_1300d WITH "R"
ENDPROC
*
PROCEDURE Xls_1300d
 PRIVATE ptIt
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 STORE vtTt TO ptIt
 DO CASE
      CASE csW3=1
           STORE ptIt+"/"+"Tipos de Productos" TO ptIt
      CASE csW3=2
           STORE ptIt+"/"+"Grupos de Productos" TO ptIt
      CASE csW3=3
           STORE ptIt+"/"+"Productos" TO ptIt
      CASE csW3=4
           STORE ptIt+"/"+"Servicios" TO ptIt
      CASE csW3=5
           STORE ptIt+"/"+"Vendedores" TO ptIt
      CASE csW3=6
           STORE ptIt+"/"+"Clientes" TO ptIt
      CASE csW3=7
           STORE ptIt+"/"+"Tipos de Clientes" TO ptIt
 ENDCASE
 DO xl0_0000a WITH ptIt+": "+DTOC(dfEm)+" hasta "+DTOC(hfEm), "Listado", 6
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.raNge(pxLs.coLumns(5), pxLs.coLumns(6)).nuMberformat =  ;
           "###,###,###,##0.00"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(3)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(3)).hoRizontalalignment = 2
 pxLs.ceLls(3, 1).vaLue = ALLTRIM(vcOd)
 pxLs.ceLls(3, 2).vaLue = vnOm
 pxLs.ceLls(3, 5).vaLue = "Totales en S/."
 pxLs.ceLls(3, 6).vaLue = "Totales en US$"
 DO CASE
      CASE voPc>6
           pxLs.ceLls(3, 4).vaLue = vnUv
           pxLs.raNge(pxLs.ceLls(3,2), pxLs.ceLls(3,3)).meRge
      CASE csW3=3 .OR. csW3=4
           pxLs.ceLls(3, 3).vaLue = "Unidad"
           pxLs.ceLls(3, 4).vaLue = "Cantidad"
           pxLs.coLumns(4).nuMberformat = "###,###,###,##0.0000"
 ENDCASE
 STORE 4 TO viT1
 STORE 1 TO meN1
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+vtPo
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
    ftM4tpo=vtPo
      IF (csW3=3 .OR. csW3=4) .AND. ftM4tpo<>vtPo
           EXIT
      ENDIF
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 1).vaLue = ALLTRIM(ftM4cdg)
      pxLs.ceLls(viT1, 2).vaLue = ftM4dcr
      pxLs.ceLls(viT1, 5).vaLue = ftM4tt1
      pxLs.ceLls(viT1, 6).vaLue = ftM4tt2
      IF csW3=3 .OR. csW3=4
           pxLs.ceLls(viT1, 3).vaLue = ftM4nuv
           pxLs.ceLls(viT1, 4).vaLue = ftM4ctd
      ELSE
           pxLs.raNge(pxLs.ceLls(3,2), pxLs.ceLls(3,4)).meRge
      ENDIF
      STORE viT1+1 TO viT1
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1,6)).foNt.boLd = .T.
 pxLs.ceLls(viT1, 5).vaLue = vtO1
 pxLs.ceLls(viT1, 6).vaLue = vtO2
 IF csW3=3 .OR. csW3=4
      pxLs.ceLls(viT1, 4).vaLue = vcAn
      WITH pxLs.raNge(pxLs.ceLls(viT1,4),pxLs.ceLls(viT1,4))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
           .hoRizontalalignment = 4
      ENDWITH
 ENDIF
 WITH pxLs.raNge(pxLs.ceLls(viT1,5),pxLs.ceLls(viT1,6))
      .boRders.liNestyle = 7
      .boRders(1).weIght = 2
      .boRders(2).weIght = 2
      .boRders(3).weIght = 2
      .boRders(4).weIght = 2
      .foNt.naMe = "Times New Roman"
      .foNt.siZe = 11
      .foNt.boLd = .T.
      .foNt.coLorindex = 1
      .inTerior.coLorindex = 15
      .veRticalalignment = 2
      .hoRizontalalignment = 4
 ENDWITH
 DO xl1_0000a WITH 1
 WAIT CLEAR
 DO seE_1300d WITH "v"
 RELEASE ptIt
ENDPROC
*
PROCEDURE Clp_1300d
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=mcO0+4  ;
           .AND. mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=mcO0+4  ;
           .AND. mcCc<=mcO0+muCo
           DO diS_1300d WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_1300d WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           DO muE_1300d WITH "F", "v"
           DO diS_1300d WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran el resumen totalizado en Soles"
 @ pfIl+01, 01 SAY "y Dólares en el rango de fechas seleccionadas."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 20 SAY ":" STYLE "BT"
 @ pfIl+06, 20 SAY ":" STYLE "BT"
 @ pfIl+07, 20 SAY ":" STYLE "BT"
 @ pfIl+08, 20 SAY ":" STYLE "BT"
 @ pfIl+09, 20 SAY ":" STYLE "BT"
 @ pfIl+10, 20 SAY ":" STYLE "BT"
 @ pfIl+11, 20 SAY ":" STYLE "BT"
 @ pfIl+12, 20 SAY ":" STYLE "BT"
 @ pfIl+13, 20 SAY ":" STYLE "BT"
 @ pfIl+14, 20 SAY ":" STYLE "BT"
 @ pfIl+15, 20 SAY ":" STYLE "BT"
 @ pfIl+16, 20 SAY ":" STYLE "BT"
 @ pfIl+17, 20 SAY ":" STYLE "BT"
 @ pfIl+18, 20 SAY ":" STYLE "BT"
 @ pfIl+19, 20 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "F5" STYLE "BT"
 @ pfIl+09, 02 SAY "F8" STYLE "BT"
 @ pfIl+10, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+12, 02 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+13, 02 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+14, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+15, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+16, 02 SAY "HOME" STYLE "BT"
 @ pfIl+17, 02 SAY "END" STYLE "BT"
 @ pfIl+18, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+19, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+05, 22 SAY "Regresar a Cabecera"
 @ pfIl+06, 22 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 22 SAY "Ayuda del Programa"
 @ pfIl+08, 22 SAY "Cambiar Orden ascendente o descendente en totales"
 @ pfIl+09, 22 SAY "Pasar Datos a Excel"
 @ pfIl+10, 22 SAY "Línea inferior"
 @ pfIl+11, 22 SAY "Línea superior"
 @ pfIl+12, 22 SAY "Cambiar de Orden"
 @ pfIl+13, 22 SAY "Cambiar de Orden"
 @ pfIl+14, 22 SAY "Página siguiente"
 @ pfIl+15, 22 SAY "Página anterior"
 @ pfIl+16, 22 SAY "Primera línea"
 @ pfIl+17, 22 SAY "Última línea"
 @ pfIl+18, 22 SAY "Ver Detalle de Resumen"
 @ pfIl+19, 22 SAY "Imprimir Listado de Ventas"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
