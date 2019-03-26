 = INKEY(0.01)
 SELECT teMporal
 DO orD_3502b IN PCC3502B WITH "3502"
 IF LEN(ALLTRIM(itIt))=0
      GOTO TOP
      DO paN_3502b
      DO muE_3502b IN PCC3502B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3502b IN PCC3502B WITH "v", "3502"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_3502b IN PCC3502B WITH "v", "3502"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3502b IN PCC3502B WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3502b IN PCC3502B WITH "i", "3502"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1tit=vtIt
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3502b IN PCC3502B WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3502b IN PCC3502B WITH "v", "3502"
 IF EOF()
      SET NEAR ON
      DO seE_3502b IN PCC3502B WITH "i", "3502"
      SET NEAR OFF
      DO paN_3502b
      STORE ifIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "i", "v"
      DO seE_3502b IN PCC3502B WITH "v", "3502"
 ENDIF
 DO diS_3502b IN PCC3502B WITH "R", "3502"
 STORE 99 TO mkEy
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
           DO reS_3502b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3502b IN PCC3502B WITH "3502"
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3502b IN PCC3502B WITH "N", "3502"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3502b IN PCC3502B WITH "N", "3502"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3502b IN PCC3502B WITH "3502"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3502b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_3502b IN PCC3502B WITH "3502"
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3502"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3502b IN PCC3502B WITH "3502"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3502"
                DO diS_3502b IN PCC3502B WITH "R", "3502"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3502b IN PCC3502B WITH "3502"
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE SPACE(01) TO veSt
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3502"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                STORE SPACE(01) TO veSt
                STORE 99 TO mkEy
                DO pcC3502c WITH "3502"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE SPACE(01) TO veSt
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3502b IN PCC3502B WITH "v", "3502"
           CASE (mkEy=k_Right .OR. mkEy=k_Left) .AND. vuLt>1
                DO CASE
                     CASE mkEy=k_Right .AND. vsW0=vuLt
                          STORE 1 TO vsW0
                     CASE mkEy=k_Right
                          STORE vsW0+1 TO vsW0
                     CASE mkEy=k_Left .AND. vsW0=1
                          STORE vuLt TO vsW0
                     CASE mkEy=k_Left
                          STORE vsW0-1 TO vsW0
                ENDCASE
                SELECT teMporal
                DO caM_3502b
                STORE 99 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1tit=itIt .AND. vtIt=itIt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt=itIt
                                    DO paN_3502b
                               OTHERWISE
                                    DO seE_3502b IN PCC3502B WITH "v", "3502"
                                    DO diS_3502b IN PCC3502B WITH "N", "3502"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "R", "3502"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1tit=utIt .AND. vtIt=utIt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtIt=utIt
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3502b
                               OTHERWISE
                                    DO seE_3502b IN PCC3502B WITH "v", "3502"
                                    DO diS_3502b IN PCC3502B WITH "N", "3502"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "u", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "R", "3502"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "N", "3502"
                          SKIP
                          IF vtIt=utIt
                               DO coLsc1
                               DO suBe WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3502a IN PCC3502A WITH ifIl, ffIl+1,  ;
                                  "3502"
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               DO muE_3502b IN PCC3502B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3502b IN PCC3502B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "R", "3502"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "N", "3502"
                          SKIP -1
                          IF vtIt=itIt
                               DO coLsc1
                               DO baJa WITH ifIl, mcO0, ffIl, mcO0+muCo, 1
                               DO liN_3502a IN PCC3502A WITH ifIl, ffIl+1,  ;
                                  "3502"
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               DO muE_3502b IN PCC3502B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3502b IN PCC3502B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3502b IN PCC3502B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "R", "3502"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3502b IN PCC3502B WITH "u", "3502"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3502b
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "R", "3502"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3502b IN PCC3502B WITH "i", "3502"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3502b
                          STORE ifIl TO vfIl
                          DO muE_3502b IN PCC3502B WITH "i", "v"
                          DO seE_3502b IN PCC3502B WITH "v", "3502"
                          DO diS_3502b IN PCC3502B WITH "R", "3502"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3502b IN PCC3502B WITH "v", "3502"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3502b
 STORE ifIl TO vfIl, ufIl
 DO muE_3502b IN PCC3502B WITH "F", "i"
 DO muE_3502b IN PCC3502B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3502b IN PCC3502B WITH "N", "3502"
      DO muE_3502b IN PCC3502B WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, mcO0 CLEAR TO ffIl+1, mcO0+muCo
      DO liN_3502a IN PCC3502A WITH ufIl+1, ffIl+1, "3502"
 ENDIF
ENDPROC
*
PROCEDURE Dis_3502b
 PARAMETER ptIp, ppRg
 PRIVATE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2, piV1, piV2, piN1, piN2
 PRIVATE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
 STORE ftM1dv1 TO pdV1
 STORE ftM1dv2 TO pdV2
 STORE ftM1dn1 TO pdN1
 STORE ftM1dn2 TO pdN2
 STORE ftM1cv1 TO pcV1
 STORE ftM1cv2 TO pcV2
 STORE ftM1cn1 TO pcN1
 STORE ftM1cn2 TO pcN2
 STORE ftM1iv1 TO piV1
 STORE ftM1iv2 TO piV2
 STORE ftM1in1 TO piN1
 STORE ftM1in2 TO piN2
 STORE pdV1+piV1-pcV1 TO pvE1
 STORE pdV2+piV2-pcV2 TO pvE2
 STORE pdN1+piN1-pcN1 TO pnV1
 STORE pdN2+piN2-pcN2 TO pnV2
 STORE pvE1+pnV1 TO ptO1
 STORE pvE2+pnV2 TO ptO2
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3" .AND. (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506"  ;
           .OR. ppRg="3507" .OR. ppRg="3508")
           @vFIL,mCO0     Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,006.2
           @vFIL,mCO0+6.8 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,070.5 Pict "@S73"
      CASE mrEs="4" .AND. (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506"  ;
           .OR. ppRg="3507" .OR. ppRg="3508")
           @vFIL,mCO0     Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,006.2
           @vFIL,mCO0+6.8 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,123.3 Pict "@S127"
      CASE mrEs>"4" .AND. (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506"  ;
           .OR. ppRg="3507" .OR. ppRg="3508")
           @vFIL,mCO0     Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,006.2
           @vFIL,mCO0+6.8 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,140.5 Pict "@S143"
      CASE (ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509") .AND. vsW7=1
           @vFIL,mCO0 Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06.2
           IF mrEs="3"
                @vFIL,mCO0+06.8 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,41.8 Pict "@S44"
                @vFIL,mCO0+49.1 Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06.2
           ELSE
                @vFIL,mCO0+06.8 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,57.8 Pict "@S60"
                @vFIL,mCO0+65.1 Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06.2
           ENDIF
           DO CASE
                CASE mrEs="3"
                     @vFIL,mCO0+56 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,22.4 Pict "@S25"
                CASE mrEs="4"
                     @vFIL,mCO0+72 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,58.1 Pict "@S60"
                OTHERWISE
                     @vFIL,mCO0+72 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,75.1 Pict "@S78"
           ENDCASE
      CASE (ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509") .AND. vsW7=2
           @vFIL,mCO0 Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06.2
           IF mrEs="3"
                @vFIL,mCO0+06.8 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,41.8 Pict "@S44"
                @vFIL,mCO0+49.1 Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06.2
           ELSE
                @vFIL,mCO0+06.8 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,57.8 Pict "@S60"
                @vFIL,mCO0+65.1 Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06.2
           ENDIF
           DO CASE
                CASE mrEs="3"
                     @vFIL,mCO0+56 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,22.4 Pict "@S25"
                CASE mrEs="4"
                     @vFIL,mCO0+72 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,58.1 Pict "@S60"
                OTHERWISE
                     @vFIL,mCO0+72 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,75.1 Pict "@S78"
           ENDCASE
 ENDCASE
 DO CASE
      CASE vsW0=1
           @vFIL,vCL1+000.0 Say pVE1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+020.6 Say pNV1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+041.2 Say pTO1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+061.8 Say pVE2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+082.4 Say pNV2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+103.0 Say pTO2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      CASE vsW0=2 .AND. miNt<>0
           @vFIL,vCL1+000.0 Say pVE1-pIV1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+020.6 Say pNV1-pIN1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+041.2 Say pTO1-(pIV1+pIN1) Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+061.8 Say pVE2-pIV2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+082.4 Say pNV2-pIN2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+103.0 Say pTO2-(pIV2+pIN2) Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      CASE vsW0=3 .AND. miNt<>0
           @vFIL,vCL1+000.0 Say pIV1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+020.6 Say pIN1             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+041.2 Say pIV1+pIN1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+061.8 Say pIV2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+082.4 Say pIN2             Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           @vFIL,vCL1+103.0 Say pIV2+pIN2        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
 ENDCASE
 RELEASE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2, piV1, piV2, piN1, piN2
 RELEASE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
ENDPROC
*
PROCEDURE Res_3502b
 SET READBORDER ON
 DO reS_3502a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 SELECT teMporal
 DO diS_3502b IN PCC3502B WITH "R", "3502"
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Opc_3502b
 PARAMETER ppRg
 DO rs2_1101a IN PVC1101A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO CASE
                CASE ppRg="3502"
                     DO reS_3502b IN PCC3502B
                CASE ppRg="3503"
                     DO reS_3503b IN PCC3503B
                CASE ppRg="3504"
                     DO reS_3504b IN PCC3504B
                CASE ppRg="3505"
                     DO reS_3505b IN PCC3505B
                CASE ppRg="3506"
                     DO reS_3506b IN PCC3506B
                CASE ppRg="3507"
                     DO reS_3507b IN PCC3507B
                CASE ppRg="3508"
                     DO reS_3508b IN PCC3508B
                CASE ppRg="3509"
                     DO reS_3509b IN PCC3509B
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_1101a IN PVC1101A
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO CASE
                     CASE ppRg="3502"
                          DO reS_3502b IN PCC3502B
                     CASE ppRg="3503"
                          DO reS_3503b IN PCC3503B
                     CASE ppRg="3504"
                          DO reS_3504b IN PCC3504B
                     CASE ppRg="3505"
                          DO reS_3505b IN PCC3505B
                     CASE ppRg="3506"
                          DO reS_3506b IN PCC3506B
                     CASE ppRg="3507"
                          DO reS_3507b IN PCC3507B
                     CASE ppRg="3508"
                          DO reS_3508b IN PCC3508B
                     CASE ppRg="3509"
                          DO reS_3509b IN PCC3509B
                ENDCASE
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_1101a IN PVC1101A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_3500b IN PCC3500B
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                SELECT teMporal
                SET FILTER TO
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal
                SET FILTER TO AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(ftM1ntt)))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     SET FILTER TO
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     SUM ftM1dv1 TO vdV1 ALL
                     SUM ftM1dv2 TO vdV2 ALL
                     SUM ftM1dn1 TO vdN1 ALL
                     SUM ftM1dn2 TO vdN2 ALL
                     SUM ftM1cv1 TO vcV1 ALL
                     SUM ftM1cv2 TO vcV2 ALL
                     SUM ftM1cn1 TO vcN1 ALL
                     SUM ftM1cn2 TO vcN2 ALL
                     SUM ftM1iv1 TO viV1 ALL
                     SUM ftM1iv2 TO viV2 ALL
                     SUM ftM1in1 TO viN1 ALL
                     SUM ftM1in2 TO viN2 ALL
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      DO paL_1101a IN PVC1101A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO toT_3502a IN PCC3502A
 IF vsW1<>csW1
      SELECT teMporal
      GOTO TOP
      DO CASE
           CASE ppRg="3502"
                DO paN_3502b
           CASE ppRg="3503"
                DO paN_3503b
           CASE ppRg="3504"
                DO paN_3504b
           CASE ppRg="3505"
                DO paN_3505b
           CASE ppRg="3506"
                DO paN_3506b
           CASE ppRg="3507"
                DO paN_3507b
           CASE ppRg="3508"
                DO paN_3508b
           CASE ppRg="3509"
                DO paN_3509b
      ENDCASE
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3502b IN PCC3502B WITH "i", "v"
 ENDIF
 DO coLsc7
 @mFI0+mUFI,mCO0+11 Say vPAL Size 1,60 Pict "@S65" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Imp_3502b
 PARAMETER ppRg
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PCC3502B
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
 DO reP_3502b IN PCC3502B WITH ppRg
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_3502b
 PARAMETER ppRg
 PRIVATE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2, piV1
 PRIVATE piV2, piN1, piN2, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
 PRIVATE psV1, psN1, psT1, psV2, psN2, psT2, psW0, ptAm, ptIt, pcTi, pvEn
 STORE "**" TO pcTi
 STORE 00 TO vlIn, vpAg, psV1, psN1, psT1, psV2, psN2, psT2
 IF (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg="3507" .OR.  ;
    ppRg="3508") .OR. vsW7=1
      STORE 1 TO psW0
 ELSE
      STORE 2 TO psW0
 ENDIF
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 131 TO ptAm
           STORE 17 TO mcLn
      CASE mvIs=0 .AND. mpRt="2"
           STORE 101 TO ptAm
           STORE 07 TO mcLn
      CASE mrEs="3" .OR. (mrEs>"3" .AND. miNt=0)
           STORE 121 TO ptAm
           DO npG_0000a
           STORE mcLn-10 TO mcLn
      CASE mrEs="4"
           STORE 158 TO ptAm
           DO npG_0000a
           STORE mcLn-20.2 TO mcLn
      OTHERWISE
           STORE 169 TO ptAm
           DO npG_0000a
           STORE mcLn-23.9 TO mcLn
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
      IF ALLTRIM(ftM1tit)+"*"<ALLTRIM(dtIt)+"*" .OR. ALLTRIM(ftM1tit)+"*"> ;
         ALLTRIM(htIt)+"*"
           SKIP
           LOOP
      ENDIF
      IF (ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509") .AND.  ;
         (ALLTRIM(ftM1ven)+"*"<ALLTRIM(dvEn)+"*" .OR. ALLTRIM(ftM1ven)+ ;
         "*">ALLTRIM(hvEn)+"*")
           SKIP
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_3502b IN PCC3502B WITH ppRg, ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE ftM1tit TO ptIt
      STORE ftM1ven TO pvEn
      STORE ftM1dv1 TO pdV1
      STORE ftM1dv2 TO pdV2
      STORE ftM1dn1 TO pdN1
      STORE ftM1dn2 TO pdN2
      STORE ftM1cv1 TO pcV1
      STORE ftM1cv2 TO pcV2
      STORE ftM1cn1 TO pcN1
      STORE ftM1cn2 TO pcN2
      STORE ftM1iv1 TO piV1
      STORE ftM1iv2 TO piV2
      STORE ftM1in1 TO piN1
      STORE ftM1in2 TO piN2
      STORE pdV1+piV1-pcV1 TO pvE1
      STORE pdV2+piV2-pcV2 TO pvE2
      STORE pdN1+piN1-pcN1 TO pnV1
      STORE pdN2+piN2-pcN2 TO pnV2
      STORE pvE1+pnV1 TO ptO1
      STORE pvE2+pnV2 TO ptO2
      IF (psW0=1 .AND. ptIt<>pcTi) .OR. (psW0=2 .AND. pvEn<>pcTi)
           IF psW0=1
                STORE ptIt TO pcTi
           ELSE
                STORE pvEn TO pcTi
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1 .AND. psW0=1
                          DO coLbln
                          @vLIN,mCLN   Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+7 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     CASE mvIs=1
                          DO coLbln
                          @vLIN,mCLN   Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+7 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     CASE mpRt="1" .AND. psW0=1
                          @vLIN,mCLN   Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+7 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     CASE mpRt="1"
                          @vLIN,mCLN   Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+7 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     CASE mpRt="2" .AND. psW0=1
                          @vLIN,mCLN   Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+7 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     CASE mpRt="2"
                          @vLIN,mCLN   Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+7 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                ENDCASE
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
                STORE vlIn+1.4 TO vlIn
           ENDIF
           LOOP
      ENDIF
      IF ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1 .AND. psW0=1
                          DO coLbln
                          @vLIN,mCLN+07 Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+14 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,58.5 Pict "@S60"
                     CASE mvIs=1
                          DO coLbln
                          @vLIN,mCLN+07 Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+14 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,58.5 Pict "@S60"
                     CASE mpRt="1" .AND. psW0=1
                          @vLIN,mCLN+07 Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+14 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,58.5 Pict "@S60"
                     CASE mpRt="1"
                          @vLIN,mCLN+07 Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+14 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,58.5 Pict "@S60"
                     CASE mpRt="2" .AND. psW0=1
                          @vLIN,mCLN+07 Say FTM1VEN Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+14 Say FTM1NVE Font "&mLetAri",9 Style "NQ" Size 1,58.5 Pict "@S60"
                     CASE mpRt="2"
                          @vLIN,mCLN+07 Say FTM1TIT Font "&mLetAri",9 Style "NQ" Size 1,06
                          @vLIN,mCLN+14 Say FTM1NTT Font "&mLetAri",9 Style "NQ" Size 1,58.5 Pict "@S60"
                ENDCASE
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE mvIs=1
                DO coLbln
                @vLIN,mCLN+073.6 Say pVE1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                @vLIN,mCLN+093.6 Say pNV1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                @vLIN,mCLN+113.6 Say pTO1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                @vLIN,mCLN+133.6 Say pVE2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                @vLIN,mCLN+153.6 Say pNV2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                @vLIN,mCLN+173.6 Say pTO2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                IF mrEs>"3" .AND. miNt<>0
                     @vLIN,mCLN+193.6 Say pVE1-pIV1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                     @vLIN,mCLN+213.6 Say pNV1-pIN1        Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                     @vLIN,mCLN+233.6 Say pTO1-(pIV1+pIN1) Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.6
                ENDIF
                IF mrEs>"4" .AND. miNt<>0
                     @vLIN,mCLN+253.6 Say pVE1-pIV1        Font "&mLetAri",9 Style "NQ" Pict "999999,999.99"  Size 1,17.6
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN+091.6 Say pVE1    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+112.6 Say pNV1    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+133.6 Say pTO1    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+154.6 Say pVE2    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+175.6 Say pNV2    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+196.6 Say pTO2    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
           CASE mpRt="2"
                @vLIN,mCLN+073.6 Say pVE1    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+094.6 Say pNV1    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+115.6 Say pTO1    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+136.6 Say pVE2    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+157.6 Say pNV2    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
                @vLIN,mCLN+178.6 Say pTO2    Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.3 TO vlIn
      STORE psV1+pvE1 TO psV1
      STORE psN1+pnV1 TO psN1
      STORE psT1+ptO1 TO psT1
      STORE psV2+pvE2 TO psV2
      STORE psN2+pnV2 TO psN2
      STORE psT2+ptO2 TO psT2
      IF voPn=1
           SELECT teMporal
           SKIP
           LOOP
      ENDIF
      SELECT peNd_vtas
      DO CASE
           CASE voPn=2 .AND. (ppRg="3507" .OR. ppRg="3508")
                DO imP_3502c IN PCC3502C WITH " ", " ", ptIt
           CASE voPn=2
                DO imP_3502c IN PCC3502C WITH " ", vtCl, ptIt
           CASE voPn=3
                DO imP_3502c IN PCC3502C WITH " ", vtCl, ptIt
                DO imP_3502c IN PCC3502C WITH "@", vtCl, ptIt
      ENDCASE
      SELECT teMporal
      SKIP
 ENDDO
 IF vpAg>muPg
      RETURN
 ENDIF
 IF vlIn>mpAg-3
      DO caB_3502b IN PCC3502B WITH ppRg, ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLbln
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+073.6 Say pSV1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
                @vLIN,mCLN+093.6 Say pSN1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
                @vLIN,mCLN+113.6 Say pST1      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
                @vLIN,mCLN+133.6 Say pSV2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
                @vLIN,mCLN+153.6 Say pSN2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
                @vLIN,mCLN+173.6 Say pST2      Font "&mLetAri",9 Style "BQ" Pict "999,999,999.99" Size 1,16.3
           CASE mpRt="1"
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+091.6 Say pSV1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+112.6 Say pSN1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+133.6 Say pST1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+154.6 Say pSV2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+175.6 Say pSN2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+196.6 Say pST2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
           CASE mpRt="2"
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+073.6 Say pSV1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+094.6 Say pSN1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+115.6 Say pST1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+136.6 Say pSV2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+157.6 Say pSN2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+178.6 Say pST2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
      ENDCASE
 ENDIF
 IF vpAg>muPg
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2, piV1
 RELEASE piV2, piN1, piN2, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
 RELEASE psV1, psN1, psT1, psV2, psN2, psT2, psW0, ptAm, ptIt, pcTi, pvEn
 RELEASE pcN2, piV1, piV2, piN1, piN2, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
ENDPROC
*
PROCEDURE Cab_3502b
 PARAMETER ppRg, ptAm
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
           CASE ppRg="3502" .OR. ppRg="3503"
                @vLIN,mCLN Say "Cuentas x Cobrar de "+AllTrim(vNTC)                    Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3504" .OR. ppRg="3505"
                @vLIN,mCLN Say "Cuentas x Cobrar "+vANO+" de "+AllTrim(vNTC)           Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3506" .OR. ppRg="3509"
                @vLIN,mCLN Say "Cuentas x Cobrar x Fecha de Emisión de "+AllTrim(vNTC) Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3507"
                @vLIN,mCLN Say "Cuentas x Cobrar x Fecha de Emisión"                   Font "&mLetRom",14 Style "BQI"
           CASE ppRg="3508"
                @vLIN,mCLN Say "Cuentas x Cobrar x Fecha de Vencimiento"               Font "&mLetRom",14 Style "BQI"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2.5 TO vlIn
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3504"
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde el Titular: "+dTIT+" hasta el "+hTIT Font "&mLetAri",10 Style "NT"
           ENDIF
      CASE ppRg="3503" .OR. ppRg="3505"
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde el Titular: "+dTIT+" hasta el "+hTIT Font "&mLetAri",10 Style "NT"
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde el Vendedor: "+dVEN+" hasta el "+hVEN Font "&mLetAri",10 Style "NT"
           ENDIF
      CASE ppRg="3506"
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde el Titular: "+dTIT+" hasta el "+hTIT Font "&mLetAri",10 Style "NT"
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde: "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           ENDIF
      CASE ppRg="3507" .OR. ppRg="3508"
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde: "+Dtoc(dFEC)+" hasta "+Dtoc(hFEC) Font "&mLetAri",10 Style "NT"
           ENDIF
      CASE ppRg="3509"
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde el Titular: "+dTIT+" hasta el "+hTIT Font "&mLetAri",10 Style "NT"
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde el Vendedor: "+dVEN+" hasta el "+hVEN Font "&mLetAri",10 Style "NT"
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say "Desde: "+Dtoc(dFEM)+" hasta "+Dtoc(hFEM) Font "&mLetAri",10 Style "NT"
           ENDIF
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.5 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLbln
                @vLIN,mCLN+082.6 Say "S/." Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+101.8 Say "S/." Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+125.5 Say "S/." Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+140.5 Say "US$" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+161.6 Say "US$" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+183.1 Say "US$" Font "&mLetAri",9 Style "BT"
                IF mrEs>"3" .AND. miNt<>0
                     @vLIN,mCLN+195.6 Say "s/Intereses S/." Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+216.0 Say "s/Intereses S/." Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+236.3 Say "s/Intereses S/." Font "&mLetAri",9 Style "BT"
                ENDIF
                IF mrEs>"4" .AND. miNt<>0
                     @vLIN,mCLN+254.0 Say "s/Intereses U$"  Font "&mLetAri",9 Style "BT"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN+082.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+103.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+127.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+143.6 Say "US$" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+165.6 Say "US$" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+190.1 Say "US$" Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN+082.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+103.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+127.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+143.6 Say "US$" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+164.6 Say "US$" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+190.1 Say "US$" Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLbln
                @vLIN,mCLN+00.0 Say "Códi"            Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+74.4 Say "Saldos Vencidos" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+95.4 Say "Sld.no vencidos" Font "&mLetAri",9 Style "BT"
                DO CASE
                     CASE (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506"  ;
                          .OR. ppRg="3507" .OR. ppRg="3508")
                          @vLIN,mCLN+7 Say "Nombre del Titular"          Font "&mLetAri",9 Style "BT"
                     CASE vsW7=1
                          @vLIN,mCLN+7 Say "Nombre del Titular/Vendedor" Font "&mLetAri",9 Style "BT"
                     CASE vsW7=2
                          @vLIN,mCLN+7 Say "Nombre del Vendedor/Titular" Font "&mLetAri",9 Style "BT"
                ENDCASE
                @vLIN,mCLN+119.5 Say "Total Saldos"       Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+134.5 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+155.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+178.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BT"
                IF mrEs>"3" .AND. miNt<>0
                     @vLIN,mCLN+194.6 Say "Saldos Vencidos" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+215.6 Say "Sld.no vencidos" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+237.3 Say "Total Saldos"    Font "&mLetAri",9 Style "BT"
                ENDIF
                IF mrEs>"4" .AND. miNt<>0
                     @vLIN,mCLN+253.5 Say "Saldos Vencid"   Font "&mLetAri",9 Style "BT"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN+000.0 Say "Códi"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
                DO CASE
                     CASE (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506"  ;
                          .OR. ppRg="3507" .OR. ppRg="3508")
                          @vLIN,mCLN+7 Say "Nombre del Titular"          Font "&mLetAri",9 Style "BT"
                     CASE vsW7=1
                          @vLIN,mCLN+7 Say "Nombre del Titular/Vendedor" Font "&mLetAri",9 Style "BT"
                     CASE vsW7=2
                          @vLIN,mCLN+7 Say "Nombre del Vendedor/Titular" Font "&mLetAri",9 Style "BT"
                ENDCASE
           CASE mpRt="2"
                @vLIN,mCLN+000.0 Say "Códi"               Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"       Font "&mLetAri",9 Style "BQ"
                DO CASE
                     CASE (ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506"  ;
                          .OR. ppRg="3507" .OR. ppRg="3508")
                          @vLIN,mCLN+7 Say "Nombre del Titular"          Font "&mLetAri",9 Style "BT"
                     CASE vsW7=1
                          @vLIN,mCLN+7 Say "Nombre del Titular/Vendedor" Font "&mLetAri",9 Style "BT"
                     CASE vsW7=2
                          @vLIN,mCLN+7 Say "Nombre del Vendedor/Titular" Font "&mLetAri",9 Style "BT"
                ENDCASE
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.7 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Mue_3502b
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtIt TO itIt
           STORE vnTt TO inTt
           STORE vvEn TO ivEn
           STORE vnVe TO inVe
      CASE ptP1="v" .AND. ptP2="x"
           STORE vtIt TO xtIt
           STORE vnTt TO xnTt
           STORE vvEn TO xvEn
           STORE vnVe TO xnVe
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtIt TO ctIt
           STORE vnTt TO cnTt
           STORE vvEn TO cvEn
           STORE vnVe TO cnVe
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctIt TO vtIt
           STORE cnTt TO vnTt
           STORE cvEn TO vvEn
           STORE cnVe TO vnVe
      CASE ptP1="i" .AND. ptP2="v"
           STORE itIt TO vtIt
           STORE inTt TO vnTt
           STORE ivEn TO vvEn
           STORE inVe TO vnVe
      CASE ptP1="u" .AND. ptP2="v"
           STORE utIt TO vtIt
           STORE unTt TO vnTt
           STORE uvEn TO vvEn
           STORE unVe TO vnVe
      CASE ptP1="x" .AND. ptP2="v"
           STORE xtIt TO vtIt
           STORE xnTt TO vnTt
           STORE xvEn TO vvEn
           STORE xnVe TO vnVe
      CASE ptP1="F" .AND. ptP2="v"
           STORE ftM1tit TO vtIt
           STORE ftM1ntt TO vnTt
           STORE ftM1ven TO vvEn
           STORE ftM1nve TO vnVe
      CASE ptP1="F" .AND. ptP2="i"
           STORE ftM1tit TO itIt
           STORE ftM1ntt TO inTt
           STORE ftM1ven TO ivEn
           STORE ftM1nve TO inVe
      CASE ptP1="F" .AND. ptP2="u"
           STORE ftM1tit TO utIt
           STORE ftM1ntt TO unTt
           STORE ftM1ven TO uvEn
           STORE ftM1nve TO unVe
      CASE ptP1="F" .AND. ptP2="c"
           STORE ftM1tit TO ctIt
           STORE ftM1ntt TO cnTt
           STORE ftM1ven TO cvEn
           STORE ftM1nve TO cnVe
 ENDCASE
ENDPROC
*
PROCEDURE See_3502b
 PARAMETER psEe, ppRg
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg="3507"  ;
           .OR. ppRg="3508"
           DO CASE
                CASE psEe="v"
                     SEEK UPPER(vnTt)+vtIt
                CASE psEe="i"
                     SEEK UPPER(inTt)+itIt
                CASE psEe="u"
                     SEEK UPPER(unTt)+utIt
           ENDCASE
      CASE ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
           DO CASE
                CASE psEe="v" .AND. vsW7=1
                     SEEK UPPER(vnTt)+vtIt+vvEn
                CASE psEe="v" .AND. vsW7=2
                     SEEK UPPER(vnVe)+vvEn+UPPER(vnTt)+vtIt
                CASE psEe="i" .AND. vsW7=1
                     SEEK UPPER(inTt)+itIt+ivEn
                CASE psEe="i" .AND. vsW7=2
                     SEEK UPPER(inVe)+ivEn+UPPER(inTt)+itIt
                CASE psEe="u" .AND. vsW7=1
                     SEEK UPPER(unTt)+utIt+uvEn
                CASE psEe="u" .AND. vsW7=2
                     SEEK UPPER(unVe)+uvEn+UPPER(unTt)+utIt
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Cam_3502b
 DO tiT_3502a IN PCC3502A
 DO toT_3502a IN PCC3502A
 STORE vfIl TO cfIl
 STORE ifIl TO vfIl
 DO muE_3502b IN PCC3502B WITH "v", "c"
 DO muE_3502b IN PCC3502B WITH "i", "v"
 DO seE_3502b IN PCC3502B WITH "v", "3502"
 DO paN_3502b
 STORE cfIl TO vfIl
 DO muE_3502b IN PCC3502B WITH "c", "v"
 DO seE_3502b IN PCC3502B WITH "v", "3502"
 DO diS_3502b IN PCC3502B WITH "R", "3502"
ENDPROC
*
PROCEDURE Xls_3502b
 PARAMETER ppRg
 PRIVATE ptI1, ptI2, ptI3, piTe, piT1
 DO CASE
      CASE ppRg="3502"
           STORE "Ctas. x Cobrar x Tipos de Clientes" TO ptI1
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE SPACE(20) TO ptI3
      CASE ppRg="3503"
           STORE "Ctas. x Cobrar x Tipo de Clientes: Titular/Vendedor" TO ptI1
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE SPACE(20) TO ptI3
      CASE ppRg="3504"
           STORE "Ctas. x Cobrar x Año y Tipos de Clientes" TO ptI1
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Año:"+vaNo TO ptI3
      CASE ppRg="3505"
           STORE "Ctas. x Cobrar x Año y Tipos de Clientes: Titular/Vendedor"  ;
                 TO ptI1
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Año:"+vaNo TO ptI3
      CASE ppRg="3506"
           STORE "Ctas. x Cobrar x Fechas de Emisión y Tipos de Clientes"  ;
                 TO ptI1
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Desde: "+DTOC(dfEm)+" al "+DTOC(hfEm) TO ptI3
      CASE ppRg="3507"
           STORE "Ctas. x Cobrar x Fechas de Emisión" TO ptI1
           STORE "Desde: "+DTOC(dfEm)+" al "+DTOC(hfEm) TO ptI2
           STORE SPACE(20) TO ptI3
      CASE ppRg="3508"
           STORE "Ctas. x Cobrar x Fechas de Vencimiento" TO ptI1
           STORE "Desde: "+DTOC(dfEm)+" al "+DTOC(hfEm) TO ptI2
           STORE SPACE(20) TO ptI3
      CASE ppRg="3509"
           STORE "Ctas. x Cobrar x Fechas de Emisión y Tipos de Clientes: Titular/Vendedor"  ;
                 TO ptI1
           STORE "Tipo de Cliente: "+vnTc TO ptI2
           STORE "Desde: "+DTOC(dfEm)+" al "+DTOC(hfEm) TO ptI3
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg="3507"  ;
           .OR. ppRg="3508"
           STORE 2 TO piT1
      OTHERWISE
           STORE 4 TO piT1
 ENDCASE
 STORE piT1+6 TO piT1
 IF miNt<>0
      STORE piT1+12 TO piT1
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 DO xl0_0000a WITH ptI1, "Listado", piT1
 pxLs.raNge(pxLs.ceLls(1,1), pxLs.ceLls(1,piT1)).meRge
 pxLs.ceLls(1, 1).foNt.siZe = 15
 pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).inSert
 pxLs.raNge(pxLs.ceLls(2,1), pxLs.ceLls(2,piT1)).meRge
 pxLs.ceLls(2, 1).foNt.siZe = 12
 pxLs.ceLls(2, 1).foNt.boLd = .T.
 pxLs.ceLls(2, 1).foNt.siZe = 11
 pxLs.ceLls(2, 1).foNt.naMe = "Times New Roman"
 pxLs.ceLls(2, 1).vaLue = ptI2
 IF LEN(ALLTRIM(ptI3))<>0
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).inSert
      pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,piT1)).meRge
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.boLd = .T.
      pxLs.ceLls(3, 1).foNt.siZe = 11
      pxLs.ceLls(3, 1).foNt.naMe = "Times New Roman"
      pxLs.ceLls(3, 1).vaLue = ptI3
 ENDIF
 STORE 4 TO piT1, piTe
 IF LEN(ALLTRIM(ptI3))<>0
      STORE 5 TO piTe
 ENDIF
 pxLs.ceLls(piTe, 1).vaLue = "Codigo"
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg="3507"  ;
           .OR. ppRg="3508"
           pxLs.ceLls(piTe, 2).vaLue = "Titular"
           STORE 2 TO piT1
      CASE vsW7=1
           pxLs.ceLls(piTe, 2).vaLue = "Titular"
           pxLs.ceLls(piTe, 3).vaLue = "Codigo"
           pxLs.ceLls(piTe, 4).vaLue = "Vendedor"
      OTHERWISE
           pxLs.ceLls(piTe, 2).vaLue = "Vendedor"
           pxLs.ceLls(piTe, 3).vaLue = "Codigo"
           pxLs.ceLls(piTe, 4).vaLue = "Titular"
 ENDCASE
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(piT1)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(piT1)).hoRizontalalignment = 2
 pxLs.raNge(pxLs.coLumns(piT1+1), pxLs.coLumns(piT1+6)).nuMberformat =  ;
           "###,###,##0.00"
 pxLs.raNge(pxLs.coLumns(piT1+1), pxLs.coLumns(piT1+6)).hoRizontalalignment = 1
 pxLs.ceLls(piTe, piT1+01).vaLue = "Vencidos S/."
 pxLs.ceLls(piTe, piT1+02).vaLue = "No Vencidos S/."
 pxLs.ceLls(piTe, piT1+03).vaLue = "Total S/."
 pxLs.ceLls(piTe, piT1+04).vaLue = "Vencidos US$"
 pxLs.ceLls(piTe, piT1+05).vaLue = "No Vencidos US$"
 pxLs.ceLls(piTe, piT1+06).vaLue = "Total US$"
 IF miNt<>0
      pxLs.raNge(pxLs.coLumns(piT1+7), pxLs.coLumns(piT1+ ;
                18)).nuMberformat = "###,###,##0.00"
      pxLs.raNge(pxLs.coLumns(piT1+7), pxLs.coLumns(piT1+ ;
                18)).hoRizontalalignment = 1
      pxLs.ceLls(piTe, piT1+07).vaLue = "Vencidos S/."
      pxLs.ceLls(piTe, piT1+08).vaLue = "No Vencidos S/."
      pxLs.ceLls(piTe, piT1+09).vaLue = "Total S/."
      pxLs.ceLls(piTe, piT1+10).vaLue = "Vencidos US$"
      pxLs.ceLls(piTe, piT1+11).vaLue = "No Vencidos US$"
      pxLs.ceLls(piTe, piT1+12).vaLue = "Total US$"
      pxLs.ceLls(piTe, piT1+13).vaLue = "Vencidos S/."
      pxLs.ceLls(piTe, piT1+14).vaLue = "No Vencidos S/."
      pxLs.ceLls(piTe, piT1+15).vaLue = "Total S/."
      pxLs.ceLls(piTe, piT1+16).vaLue = "Vencidos US$"
      pxLs.ceLls(piTe, piT1+17).vaLue = "No Vencidos US$"
      pxLs.ceLls(piTe, piT1+18).vaLue = "Total US$"
 ENDIF
 SELECT teMporal
 GOTO TOP
 STORE piTe+1 TO piTe
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(piTe, 1).seLect
      STORE 4 TO piT1
      DO CASE
           CASE ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg= ;
                "3507" .OR. ppRg="3508"
                WAIT WINDOW NOWAIT "Codigo: "+ALLTRIM(ftM1ntt)
                pxLs.ceLls(piTe, 01).vaLue = ftM1tit
                pxLs.ceLls(piTe, 02).vaLue = ftM1ntt
                STORE 2 TO piT1
           CASE vsW7=1
                WAIT WINDOW NOWAIT "Codigo: "+ALLTRIM(ftM1ntt)
                pxLs.ceLls(piTe, 01).vaLue = ftM1tit
                pxLs.ceLls(piTe, 02).vaLue = ftM1ntt
                pxLs.ceLls(piTe, 03).vaLue = ftM1ven
                pxLs.ceLls(piTe, 04).vaLue = ftM1nve
           OTHERWISE
                WAIT WINDOW NOWAIT "Codigo: "+ALLTRIM(ftM1nve)
                pxLs.ceLls(piTe, 01).vaLue = ftM1ven
                pxLs.ceLls(piTe, 02).vaLue = ftM1nve
                pxLs.ceLls(piTe, 03).vaLue = ftM1tit
                pxLs.ceLls(piTe, 04).vaLue = ftM1ntt
      ENDCASE
      pxLs.ceLls(piTe, piT1+01).vaLue = ftM1dv1+ftM1iv1-ftM1cv1
      pxLs.ceLls(piTe, piT1+02).vaLue = ftM1dn1+ftM1in1-ftM1cn1
      pxLs.ceLls(piTe, piT1+03).vaLue = ftM1dv1+ftM1iv1-ftM1cv1+ftM1dn1+ ;
                ftM1in1-ftM1cn1
      pxLs.ceLls(piTe, piT1+04).vaLue = ftM1dv2+ftM1iv2-ftM1cv2
      pxLs.ceLls(piTe, piT1+05).vaLue = ftM1dn2+ftM1in2-ftM1cn2
      pxLs.ceLls(piTe, piT1+06).vaLue = ftM1dv2+ftM1iv2-ftM1cv2+ftM1dn2+ ;
                ftM1in2-ftM1cn2
      IF miNt<>0
           pxLs.ceLls(piTe, piT1+07).vaLue = ftM1dv1+ftM1iv1-ftM1cv1-ftM1iv1
           pxLs.ceLls(piTe, piT1+08).vaLue = ftM1dn1+ftM1in1-ftM1cn1-ftM1in1
           pxLs.ceLls(piTe, piT1+09).vaLue = ftM1dv1+ftM1iv1-ftM1cv1+ ;
                     ftM1dn1+ftM1in1-ftM1cn1-ftM1iv1+ftM1in1
           pxLs.ceLls(piTe, piT1+10).vaLue = ftM1dv2+ftM1iv2-ftM1cv2-ftM1iv2
           pxLs.ceLls(piTe, piT1+11).vaLue = ftM1dn2+ftM1in2-ftM1cn2-ftM1in2
           pxLs.ceLls(piTe, piT1+12).vaLue = ftM1dv2+ftM1iv2-ftM1cv2+ ;
                     ftM1dn2+ftM1in2-ftM1cn2-ftM1iv2+ftM1in2
           pxLs.ceLls(piTe, piT1+13).vaLue = ftM1iv1
           pxLs.ceLls(piTe, piT1+14).vaLue = ftM1in1
           pxLs.ceLls(piTe, piT1+15).vaLue = ftM1iv1+ftM1in1
           pxLs.ceLls(piTe, piT1+16).vaLue = ftM1iv2
           pxLs.ceLls(piTe, piT1+17).vaLue = ftM1in2
           pxLs.ceLls(piTe, piT1+18).vaLue = ftM1iv2+ftM1in2
      ENDIF
      STORE piTe+1 TO piTe
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SELECT teMporal
      SKIP
 ENDDO
 DO vaT_3502a IN PCC3502A
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg="3507"  ;
           .OR. ppRg="3508"
           STORE 2 TO piT1
      OTHERWISE
           STORE 4 TO piT1
 ENDCASE
 pxLs.ceLls(piTe, 01).seLect
 pxLs.raNge(pxLs.ceLls(piTe,piT1+1), pxLs.ceLls(piTe,piT1+6)).foNt.boLd = .T.
 pxLs.raNge(pxLs.ceLls(piTe,piT1+1), pxLs.ceLls(piTe,piT1+6)).foNt.siZe = 11
 pxLs.raNge(pxLs.ceLls(piTe,piT1+1), pxLs.ceLls(piTe,piT1+6)).foNt.naMe =  ;
           "Times New Roman"
 pxLs.ceLls(piTe, piT1+1).vaLue = pvE1
 pxLs.ceLls(piTe, piT1+2).vaLue = pnV1
 pxLs.ceLls(piTe, piT1+3).vaLue = ptO1
 pxLs.ceLls(piTe, piT1+4).vaLue = pvE2
 pxLs.ceLls(piTe, piT1+5).vaLue = pnV2
 pxLs.ceLls(piTe, piT1+6).vaLue = ptO2
 IF miNt<>0
      pxLs.raNge(pxLs.ceLls(piTe,piT1+7), pxLs.ceLls(piTe,piT1+ ;
                18)).foNt.boLd = .T.
      pxLs.raNge(pxLs.ceLls(piTe,piT1+7), pxLs.ceLls(piTe,piT1+ ;
                18)).foNt.siZe = 11
      pxLs.raNge(pxLs.ceLls(piTe,piT1+7), pxLs.ceLls(piTe,piT1+ ;
                18)).foNt.naMe = "Times New Roman"
      pxLs.ceLls(piTe, piT1+07).vaLue = pvE1-piV1
      pxLs.ceLls(piTe, piT1+08).vaLue = pnV1-piN1
      pxLs.ceLls(piTe, piT1+09).vaLue = ptO1-(piV1+piN1)
      pxLs.ceLls(piTe, piT1+10).vaLue = pvE2-piV2
      pxLs.ceLls(piTe, piT1+11).vaLue = pnV2-piN2
      pxLs.ceLls(piTe, piT1+12).vaLue = ptO2-(piV2+piN2)
      pxLs.ceLls(piTe, piT1+13).vaLue = piV1
      pxLs.ceLls(piTe, piT1+14).vaLue = piN1
      pxLs.ceLls(piTe, piT1+15).vaLue = piV1+piN1
      pxLs.ceLls(piTe, piT1+16).vaLue = piV2
      pxLs.ceLls(piTe, piT1+17).vaLue = piN2
      pxLs.ceLls(piTe, piT1+18).vaLue = piV2+piN2
 ENDIF
 DO brT_3502a IN PCC3502A
 DO xl1_0000a WITH 1
 WAIT CLEAR
 RELEASE ptI1, ptI2, ptI3, piTe, piT1
ENDPROC
*
PROCEDURE Ord_3502b
 PARAMETER ppRg
 DO CASE
      CASE ppRg="3502" .OR. ppRg="3504" .OR. ppRg="3506" .OR. ppRg="3507"  ;
           .OR. ppRg="3508"
           SET ORDER TO FTM1NTT
      CASE ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
           IF vsW7=1
                SET ORDER TO FTM1NTT
           ELSE
                SET ORDER TO FTM1NVE
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Clp_3502b
 PARAMETER ppRg
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
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
           DO diS_3502b IN PCC3502B WITH "N", ppRg
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3502b IN PCC3502B WITH "i", ppRg
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3502b IN PCC3502B WITH "F", "v"
           DO diS_3502b IN PCC3502B WITH "R", ppRg
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-36 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm, voPn
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE SPACE(04) TO dtIt
 STORE "ZZZZ" TO htIt
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI2", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+09.6,pCOL+06 Say "Desde"          Font "&mLetRom",11 Style "BT"
 @pFIL+11.3,pCOL+06 Say "Hasta"          Font "&mLetRom",11 Style "BT"
 @pFIL+09.5,pCOL+15 Say ":"              Font "&mLetRom",12 Style "BT"
 @pFIL+11.2,pCOL+15 Say ":"              Font "&mLetRom",12 Style "BT"
 @pFIL+09.6,pCOL+17 Say "Cód.de Titular" Font "&mLetRom",12 Style "NT"
 @pFIL+11.3,pCOL+17 Say "Cód.de Titular" Font "&mLetRom",12 Style "NT"
 @pFIL+09.6,pCOL+46 Say "Página"         Font "&mLetRom",12 Style "NT"
 @pFIL+11.3,pCOL+46 Say "Página"         Font "&mLetRom",12 Style "NT"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"     Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG             Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+17 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+23 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+5, pcOl+23 TO pfIl+8.7, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+23 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+23 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+09.7,pCOL+36.0 Get dTIT Font "&mLetAri",9 Style "NQ" Pict "!!!!"                  Size 1,6.9 Color ,&mColBlN
      @pFIL+11.4,pCOL+36.0 Get hTIT Font "&mLetAri",9 Style "NQ" Pict "!!!!"                  Size 1,6.9 Color ,&mColBlN
      @pFIL+09.7,pCOL+56.0 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9   Color ,&mColBlN
      @pFIL+11.4,pCOL+56.0 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9   Color ,&mColBlN
      @pFIL+14.0,pCOL+13.0 Get vOPN Font "&mLetAri",9 Style "NQ" Default vOPN Function "*RVT Reporte;Detallado (solo Pendientes);Detallado (Cancelados y Pendientes)" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+23.4,pCOL+14.5 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dtIt) TO dtIt
                STORE UPPER(htIt) TO htIt
                DO CASE
                     CASE dtIt>htIt
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(dtIt))=0 .AND. LEN(ALLTRIM(htIt))=0
                          STORE "Código de Titulares vacío..." TO mmSj
                          DO poNmsj
                     CASE mmAl=01
                          STORE "Error en tamaño de papel..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE k_Enter TO mkEy
                          STORE 0 TO mvIs
                          EXIT
                ENDCASE
                STORE 00 TO poPc
           CASE mkEy=k_Esc .OR. poPc=2
                STORE 0 TO mvIs
                STORE k_Esc TO mkEy
                EXIT
           CASE mkEy=k_Esc .OR. poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Hl1_3502b
 PARAMETER ppRg
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE ppRg="3502" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo elegido. Se puede ver los totales vencidos, los no vencidos y los"
           @ pfIl+2, 2 SAY "intereses de los montos vencidos a la fecha."
      CASE ppRg="3502"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo elegido. Se puede ver los totales vencidos, los no vencidos a la"
           @ pfIl+2, 2 SAY "fecha."
      CASE ppRg="3503" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran a todos los Clientes Titulares x"
           @ pfIl+1, 2 SAY  ;
             "Vendedor o viceversa del Tipo de Cliente elegido.Se puede ver los totales"
           @ pfIl+2, 2 SAY  ;
             "vencidos,los no vencidos y los intereses de los montos vencidos a la fecha"
      CASE ppRg="3503"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta, se muestran a todos los Clientes Titulares x"
           @ pfIl+1, 2 SAY  ;
             "Vendedor o viceversa del Tipo de Cliente elegido.  Se puede ver los tota-"
           @ pfIl+2, 2 SAY "les vencidos y los no vencidos a la fecha."
      CASE ppRg="3504" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente y Año elegido. Se puede ver los totales vencidos, los"
           @ pfIl+2, 2 SAY  ;
             "no vencidos y los intereses de los montos vencidos a la fecha."
      CASE ppRg="3504"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente y Año elegido. Se puede ver los totales vencidos y los"
           @ pfIl+2, 2 SAY "no vencidos a la fecha."
      CASE ppRg="3505" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente y Año elegido. Se puede ver los totales vencidos, los"
           @ pfIl+2, 2 SAY  ;
             "no vencidos y los intereses de los montos vencidos a la fecha."
      CASE ppRg="3505"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente y Año elegido. Se puede ver los totales vencidos y los"
           @ pfIl+2, 2 SAY "no vencidos a la fecha."
      CASE ppRg="3506" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY  ;
             "vencidos, los no vencidos y los intereses de los montos vencidos."
      CASE ppRg="3506"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY "los montos vencidos y los no vencidos."
      CASE ppRg="3507" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY  ;
             "vencidos, los no vencidos y los intereses de los montos vencidos."
      CASE ppRg="3507"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY "los montos vencidos y los no vencidos."
      CASE ppRg="3508" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY  ;
             "vencidos, los no vencidos y los intereses de los montos vencidos."
      CASE ppRg="3508"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY "los montos vencidos y los no vencidos."
      CASE ppRg="3509" .AND. miNt>0
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY  ;
             "vencidos, los no vencidos y los intereses de los montos vencidos."
      CASE ppRg="3509"
           @ pfIl+0, 2 SAY  ;
             "En esta parte de la consulta,  se muestran a todos los Clientes Titulares"
           @ pfIl+1, 2 SAY  ;
             "del Tipo de Cliente x rango de fechas elegido. Se puede ver los totales  "
           @ pfIl+2, 2 SAY "los montos vencidos y los no vencidos."
 ENDCASE
 STORE pfIl+4 TO pfIl
 @ pfIl, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "ESC" STYLE "BT"
 @ pfIl+1, 02 SAY "F10" STYLE "BT"
 @ pfIl+2, 02 SAY "F1" STYLE "BT"
 @ pfIl+0, 23 SAY "Regresar a Cabecera"
 @ pfIl+1, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 23 SAY "Ayuda del Programa"
 STORE pfIl+3 TO pfIl
 IF ppRg="3503" .OR. ppRg="3505" .OR. ppRg="3509"
      @ pfIl, 21 SAY ":" STYLE "BT"
      @ pfIl, 02 SAY "F6" STYLE "BT"
      @ pfIl, 23 SAY "Cambiar de Titular a Vendedores y viceversa"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "F8" STYLE "BT"
 @ pfIl+1, 02 SAY "F9" STYLE "BT"
 @ pfIl+2, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+0, 23 SAY "Pasar datos a Excel"
 @ pfIl+1, 23 SAY "Buscar palabra o frase en Cliente"
 @ pfIl+2, 23 SAY "Línea inferior"
 @ pfIl+3, 23 SAY "Línea superior"
 STORE pfIl+4 TO pfIl
 IF miNt<>0
      @ pfIl+0, 21 SAY ":" STYLE "BT"
      @ pfIl+1, 21 SAY ":" STYLE "BT"
      @ pfIl+0, 02 SAY "FLECHA ->" STYLE "BT"
      @ pfIl+1, 02 SAY "FLECHA <-" STYLE "BT"
      @ pfIl+0, 23 SAY "Cambiar de Vista"
      @ pfIl+1, 23 SAY "Cambiar de Vista"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+4, 21 SAY ":" STYLE "BT"
 @ pfIl+5, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 02 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 02 SAY "HOME" STYLE "BT"
 @ pfIl+3, 02 SAY "END" STYLE "BT"
 @ pfIl+4, 02 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 02 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 23 SAY "Página siguiente"
 @ pfIl+1, 23 SAY "Página anterior"
 @ pfIl+2, 23 SAY "Primera línea"
 @ pfIl+3, 23 SAY "Última línea"
 @ pfIl+4, 23 SAY "Ver los Documentos"
 @ pfIl+5, 23 SAY "Imprimir Listado en el orden en que se encuentran"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
