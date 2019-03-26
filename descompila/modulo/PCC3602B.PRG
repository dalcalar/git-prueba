 = INKEY(0.01)
 SELECT teMporal
 SET ORDER TO FTM1NOM
 IF LEN(ALLTRIM(ipRv))=0
      GOTO TOP
      DO paN_3602b
      DO muE_3602b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3602b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO seE_3602b WITH "v"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3602b WITH "F", "v"
      ENDIF
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_3602b WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ftM1prv=vpRv
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3602b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3602b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3602b WITH "i"
      SET NEAR OFF
      DO paN_3602b
      STORE ifIl TO vfIl
      DO muE_3602b WITH "i", "v"
      DO seE_3602b WITH "v"
 ENDIF
 DO diS_3602b IN PCC3602B WITH "R"
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
           DO reS_3602b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3602b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3602b IN PCC3602B WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3602b IN PCC3602B WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3602b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3602b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                vXLS=PutFile("Archivo Excel:","&mVIN"+"CTAS_x_PAGAR_x_TIPO_DE_PROVEEDOR.XLS","XLS")
                RESTORE SCREEN FROM vpAn_11
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               DO xlS_3602b IN PCC3602B WITH "PCC3602B"
                     ENDCASE
                ENDIF
                SELECT teMporal
                DO seE_3602b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3602b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                SELECT teMporal
                DO seE_3602b WITH "v"
                DO diS_3602b IN PCC3602B WITH "R"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3602b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3602b WITH "v"
           CASE mkEy=k_Enter
                SAVE SCREEN TO vpAn_11
                STORE 99 TO mkEy
                SELECT peNd_cpras
                DO pcC3602c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                STORE " " TO veSt
                STORE 99 TO mkEy
                SELECT teMporal
                DO seE_3602b WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ftM1prv=ipRv .AND. vpRv=ipRv
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpRv=ipRv
                                    DO paN_3602b
                               OTHERWISE
                                    DO seE_3602b WITH "v"
                                    DO diS_3602b IN PCC3602B WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_3602b WITH "i", "v"
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ftM1prv=upRv .AND. vpRv=upRv
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vpRv=upRv
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3602b
                               OTHERWISE
                                    DO seE_3602b WITH "v"
                                    DO diS_3602b IN PCC3602B WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_3602b WITH "u", "v"
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "N"
                          SKIP
                          IF vpRv=upRv
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3602a WITH ifIl, ffIl+1
                               DO muE_3602b WITH "F", "v"
                               DO muE_3602b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3602b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3602b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "N"
                          SKIP -1
                          IF vpRv=ipRv
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3602a WITH ifIl, ffIl+1
                               DO muE_3602b WITH "F", "v"
                               DO muE_3602b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3602b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3602b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3602b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3602b
                          STORE ifIl TO vfIl
                          DO muE_3602b WITH "i", "v"
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3602b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3602b
                          STORE ifIl TO vfIl
                          DO muE_3602b WITH "i", "v"
                          DO seE_3602b WITH "v"
                          DO diS_3602b IN PCC3602B WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3602b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3602b
 STORE ifIl TO vfIl, ufIl
 DO muE_3602b WITH "F", "i"
 DO muE_3602b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3602b IN PCC3602B WITH "N"
      DO muE_3602b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3602a IN PCC3602A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3602b
 PARAMETER ptIp
 PRIVATE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2
 PRIVATE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
 STORE ftM1dv1 TO pdV1
 STORE ftM1dv2 TO pdV2
 STORE ftM1dn1 TO pdN1
 STORE ftM1dn2 TO pdN2
 STORE ftM1cv1 TO pcV1
 STORE ftM1cv2 TO pcV2
 STORE ftM1cn1 TO pcN1
 STORE ftM1cn2 TO pcN2
 STORE pdV1-pcV1 TO pvE1
 STORE pdV2-pcV2 TO pvE2
 STORE pdN1-pcN1 TO pnV1
 STORE pdN2-pcN2 TO pnV2
 STORE pvE1+pnV1 TO ptO1
 STORE pvE2+pnV2 TO ptO2
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0   Say FTM1PRV Font "&mLetAri",9 Style "NQ" Size 1,06
 @vFIL,mCO0+7 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
 IF vsW0=1
      @vFIL,mCO0+073.6 Say pVE1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @vFIL,mCO0+094.6 Say pNV1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @vFIL,mCO0+115.6 Say pTO1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @vFIL,mCO0+136.6 Say pVE2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @vFIL,mCO0+157.6 Say pNV2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
      @vFIL,mCO0+178.6 Say pTO2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
 ENDIF
 RELEASE pdV1, pdV2, pdN1, pdN2, pcV1, pcV2, pcN1, pcN2
 RELEASE pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
ENDPROC
*
PROCEDURE Res_3602b
 SET READBORDER ON
 DO reS_3602a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 SELECT teMporal
 DO diS_3602b IN PCC3602B WITH "R"
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
PROCEDURE Opc_3602b
 DO rs2_3600a IN PCC3600A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3602b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_3600a IN PCC3600A
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
                DO reS_3602b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_3600a IN PCC3600A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_3600b IN PCC3600B
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
                SET FILTER TO AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(ftM1nom)))<>0
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
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO toT_3602a IN PCC3602A
 IF vsW1<>csW1
      SELECT teMporal
      GOTO TOP
      DO paN_3602b
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3602b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Font "&mLetRom",9 Style "BQ" Size 1,40 Pict "@S42"
ENDPROC
*
PROCEDURE Imp_3602b
 STORE 0 TO mvIs
 DO ipR_0001a WITH "HO"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PCC3602B
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
 DO reP_3602b IN PCC3602B WITH "PCC3602B"
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Cln_3602b
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 24 TO pcL1
           STORE mcLn TO pcL2
      CASE mvIs=0 .AND. mpRt="2"
           STORE 10 TO pcL1
           STORE mcLn TO pcL2
      OTHERWISE
           STORE mcLn+08.0 TO pcL1
           STORE pcL1-18.6 TO pcL2
 ENDCASE
ENDPROC
*
PROCEDURE Rep_3602b
 PARAMETER ppRg
 PUBLIC pcL1, pcL2, ptAm, ptA1
 PRIVATE ptDo, psR1, pdOc, ppRv, pfEm, pmOn, ptOt, paCu, pdV1, pdV2, pdN1, pdN2
 PRIVATE pcV1, pcV2, pcN1, pcN2, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2, psV1, psN1
 PRIVATE psT1, psV2, psN2, psT2, psL1, psL2, ptT1, ptT2, pcTi, ptD1
 DO CASE
      CASE mvIs=0 .AND. mpRt="1"
           STORE 131 TO ptAm
           STORE 17 TO mcLn
           STORE 126 TO ptA1
      CASE mvIs=0 .AND. mpRt="2"
           STORE 101 TO ptAm
           STORE 07 TO mcLn
           STORE 118 TO ptA1
      OTHERWISE
           STORE 124 TO ptAm
           STORE 03 TO mcLn
           STORE 82 TO ptA1
 ENDCASE
 DO clN_3602b IN PCC3602B
 DO coL_pr1
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vlIn, vpAg, psV1, psN1, psT1, psV2, psN2, psT2
 STORE "**" TO pcTi
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF ALLTRIM(ftM1prv)+"*">=ALLTRIM(dpRv)+"*" .AND. ALLTRIM(ftM1prv)+ ;
         "*"<=ALLTRIM(hpRv)+"*"
      ELSE
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3602b IN PCC3602B WITH ppRg
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE ftM1prv TO ppRv
      STORE ftM1dv1 TO pdV1
      STORE ftM1dv2 TO pdV2
      STORE ftM1dn1 TO pdN1
      STORE ftM1dn2 TO pdN2
      STORE ftM1cv1 TO pcV1
      STORE ftM1cv2 TO pcV2
      STORE ftM1cn1 TO pcN1
      STORE ftM1cn2 TO pcN2
      STORE pdV1-pcV1 TO pvE1
      STORE pdV2-pcV2 TO pvE2
      STORE pdN1-pcN1 TO pnV1
      STORE pdN2-pcN2 TO pnV2
      STORE pvE1+pnV1 TO ptO1
      STORE pvE2+pnV2 TO ptO2
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1 .AND. voPc=1
                     DO coLbln
                     @vLIN,mCLN       Say FTM1PRV Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vLIN,mCLN+008.0 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     @vLIN,mCLN+073.6 Say pVE1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+094.6 Say pNV1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+115.6 Say pTO1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+136.6 Say pVE2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+157.6 Say pNV2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say pTO2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                CASE mvIs=1 .AND. voPc>1
                     DO coLbln
                     @vLIN,mCLN       Say FTM1PRV Font "&mLetAri",9 Style "BQ" Size 1,06
                     @vLIN,mCLN+008.0 Say FTM1NOM Font "&mLetAri",9 Style "BQ" Size 1,65.5 Pict "@S70"
                     @vLIN,mCLN+073.9 Say pVE1    Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
                     @vLIN,mCLN+094.9 Say pNV1    Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
                     @vLIN,mCLN+115.9 Say pTO1    Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
                     @vLIN,mCLN+136.9 Say pVE2    Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
                     @vLIN,mCLN+157.9 Say pNV2    Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
                     @vLIN,mCLN+178.9 Say pTO2    Font "&mLetAri",9 Style "BQ" Size 1,16.4 Pict "999,999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM1PRV Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vLIN,mCLN+007.0 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     @vLIN,mCLN+091.6 Say pVE1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+112.6 Say pNV1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+133.6 Say pTO1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+154.6 Say pVE2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+175.6 Say pNV2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+196.6 Say pTO2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM1PRV Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vLIN,mCLN+007.0 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,65.5 Pict "@S70"
                     @vLIN,mCLN+073.6 Say pVE1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+094.6 Say pNV1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+115.6 Say pTO1    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+136.6 Say pVE2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+157.6 Say pNV2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
                     @vLIN,mCLN+178.6 Say pTO2    Font "&mLetAri",9 Style "NQ" Size 1,19.9 Pict "999,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE psV1+pvE1 TO psV1
      STORE psN1+pnV1 TO psN1
      STORE psT1+ptO1 TO psT1
      STORE psV2+pvE2 TO psV2
      STORE psN2+pnV2 TO psN2
      STORE psT2+ptO2 TO psT2
      STORE vlIn+1.3 TO vlIn
      IF voPc>1
           STORE 0 TO psL1, psL2, ptT1, ptT2
           STORE vlIn+0.2 TO vlIn
           SELECT peNd_cpras
           GOTO TOP
           IF voPc=3
                SEEK "@"+vtPr+ppRv
                IF  .NOT. EOF()
                     IF vlIn+2.3>mpAg-3
                          DO caB_3602b IN PCC3602B WITH ppRg
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                ENDIF
                DO cb1_3602b IN PCC3602B WITH ptA1, pcL1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT peNd_cpras
                DO WHILE  .NOT. EOF() .AND. f3600est+f3600prv="@"+ppRv
                     IF mkEy=k_F10 .AND. mvIs=1
                          DO reTorna
                     ENDIF
                     IF vpAg>muPg
                          EXIT
                     ENDIF
                     IF f3600tpr<>vtPr
                          EXIT
                     ENDIF
                     IF vlIn>mpAg-3
                          DO caB_3602b IN PCC3602B WITH ppRg
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                     STORE f3600tdo TO ptDo
                     STORE f3600ser TO psR1
                     STORE f3600doc TO pdOc
                     STORE f3600td1 TO ptD1
                     STORE f3600fem TO pfEm
                     STORE f3600mon TO pmOn
                     STORE f3600tot TO ptOt
                     STORE f3600acu TO paCu
                     DO CASE
                          CASE ptD1="NC" .AND. pmOn=1
                               STORE psL1-(ptOt-paCu) TO psL1
                               STORE ptT1-ptOt TO ptT1
                          CASE ptD1="NC"
                               STORE psL2-(ptOt-paCu) TO psL2
                               STORE ptT2-ptOt TO ptT2
                          CASE pmOn=1
                               STORE psL1+(ptOt-paCu) TO psL1
                               STORE ptT1+ptOt TO ptT1
                          CASE pmOn=2
                               STORE psL2+(ptOt-paCu) TO psL2
                               STORE ptT2+ptOt TO ptT2
                     ENDCASE
                     DO im1_3602b WITH pcL1, "PCC3602B"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE vlIn+1.3 TO vlIn
                     SELECT peNd_cpras
                     SKIP
                ENDDO
                IF vpAg>muPg
                     EXIT
                ENDIF
                STORE vlIn+0.6 TO vlIn
           ENDIF
           GOTO TOP
           SEEK veSt+vtPr+ppRv
           IF voPc<>3
                IF  .NOT. EOF()
                     IF vlIn+2.3>mpAg-3
                          DO caB_3602b IN PCC3602B WITH ppRg
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                ENDIF
                DO cb1_3602b IN PCC3602B WITH ptA1, pcL1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           SELECT peNd_cpras
           DO WHILE  .NOT. EOF() .AND. f3600est+f3600prv=veSt+ppRv
                IF mkEy=k_F10 .AND. mvIs=1
                     DO reTorna
                ENDIF
                IF vpAg>muPg
                     EXIT
                ENDIF
                IF f3600tpr<>vtPr
                     EXIT
                ENDIF
                IF vlIn>mpAg-3
                     DO caB_3602b IN PCC3602B WITH ppRg
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE f3600tdo TO ptDo
                STORE f3600ser TO psR1
                STORE f3600doc TO pdOc
                STORE f3600td1 TO ptD1
                STORE f3600fem TO pfEm
                STORE f3600mon TO pmOn
                STORE f3600tot TO ptOt
                STORE f3600acu TO paCu
                DO CASE
                     CASE ptD1="NC" .AND. pmOn=1
                          STORE psL1-(ptOt-paCu) TO psL1
                          STORE ptT1-ptOt TO ptT1
                     CASE ptD1="NC"
                          STORE psL2-(ptOt-paCu) TO psL2
                          STORE ptT2-ptOt TO ptT2
                     CASE pmOn=1
                          STORE psL1+(ptOt-paCu) TO psL1
                          STORE ptT1+ptOt TO ptT1
                     CASE pmOn=2
                          STORE psL2+(ptOt-paCu) TO psL2
                          STORE ptT2+ptOt TO ptT2
                ENDCASE
                DO im1_3602b WITH pcL1, "PCC3602B"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE vlIn+1.3 TO vlIn
                SELECT peNd_cpras
                SKIP
           ENDDO
           IF vpAg>muPg
                EXIT
           ENDIF
           DO suB_3602b IN PCC3602B WITH ppRg, pcL2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           IF vpAg>muPg
                EXIT
           ENDIF
           DO rsM_3602b IN PCC3602B WITH ppRg, pcL2
           STORE vlIn+0.5 TO vlIn
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 IF vpAg>muPg
      RETURN
 ENDIF
 IF vlIn>mpAg-3
      DO caB_3602b IN PCC3602B WITH ppRg
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblr
                @vLIN,mCLN+060.6 Say "TOTALES" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+073.6 Say pSV1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+094.6 Say pSN1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+115.6 Say pST1      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+136.6 Say pSV2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+157.6 Say pSN2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
                @vLIN,mCLN+178.6 Say pST2      Font "&mLetAri",9  Style "BQ" Pict "999,999,999.99" Size 1,16.7
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
 RELEASE pcL1, pcL2, ptAm, ptA1
 RELEASE ptDo, psR1, pdOc, ppRv, pfEm, pmOn, ptOt, paCu, pdV1, pdV2, pdN1, pdN2
 RELEASE pcV1, pcV2, pcN1, pcN2, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2, psV1, psN1
 RELEASE psT1, psV2, psN2, psT2, psL1, psL2, ptT1, ptT2, pcTi, ptD1
ENDPROC
*
PROCEDURE Im1_3602b
 PARAMETER pcLn, ppRg
 PRIVATE qtD1, qdO1, qfVe, qaNo, qmEs, qsEr, qnUm, qsIg, qsWa, qsWb
 STORE f3600td1 TO qtD1
 STORE qtD1+":"+f3600sr1+"-"+f3600do1 TO qdO1
 STORE f3600fve TO qfVe
 STORE SPACE(1) TO qsWa, qsWb, qsIg
 DO CASE
      CASE pmOn=1
           STORE "S/." TO qsIg
      CASE pmOn=2
           STORE "U$" TO qsIg
 ENDCASE
 IF qtD1<>"NC" .AND. qtD1<>"ND" .AND. ptOt-paCu>0
      IF qtD1<>"NC"
           SELECT deT_sal_bancos
           SEEK ptDo+psR1+pdOc
           DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=ptDo+ ;
              psR1+pdOc
                STORE f3541ano TO qaNo
                STORE f3541mes TO qmEs
                STORE f3541ser TO qsEr
                STORE f3541num TO qnUm
                SELECT caB_sal_bancos
                SEEK qaNo+qmEs+qsEr+qnUm
                IF  .NOT. EOF() .AND. f3540est<>"9" .AND. f3540tpo=1
                     STORE "*" TO qsWa
                     EXIT
                ENDIF
                SELECT deT_sal_bancos
                SKIP
           ENDDO
      ENDIF
      IF qtD1="LP"
           SELECT leTras_prv
           SEEK psR1+pdOc
           DO CASE
                CASE SUBSTR(f3210com, 1, 2)="PR"
                     STORE "pr" TO qsWb
                CASE f3210tip=1
                     STORE "D" TO qsWb
                CASE f3210tip=2
                     STORE "C" TO qsWb
                CASE f3210tip=3
                     STORE "N" TO qsWb
           ENDCASE
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblz
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.5 Say qDO1             Font "&mLetAri",9 Style "NQ" Size 1,30.3 Pict "@S33"
                @vLIN,pCLN+076.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+080.0 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+097.4 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+114.9 Say pTOT-pACU        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+132.2 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+134.3 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
           CASE mpRt="1"
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.5 Say qDO1             Font "&mLetAri",9 Style "NQ" Size 1,30.3 Pict "@S33"
                @vLIN,pCLN+076.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+080.0 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+097.4 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+114.9 Say pTOT-pACU        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+132.2 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+134.3 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
           CASE mpRt="2"
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.5 Say qDO1             Font "&mLetAri",9 Style "NQ" Size 1,30.3 Pict "@S33"
                @vLIN,pCLN+076.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+080.0 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+097.4 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+114.9 Say pTOT-pACU        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+132.2 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+134.3 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
      ENDCASE
 ENDIF
 RELEASE qtD1, qdO1, qfVe, qnOm, qaNo, qmEs, qsEr, qnUm, qsIg, qsWa, qsWb
ENDPROC
*
PROCEDURE Sub_3602b
 PARAMETER ppRg, pcLn
 STORE vlIn+0.1 TO vlIn
 IF vlIn>mpAg-3
      DO CASE
           CASE ppRg="PCC3602B"
                DO caB_3602b IN PCC3602B WITH ppRg
           CASE ppRg="PCC3602C"
                DO caB_3602c IN PCC3602C WITH ppRg
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF vpAg>muPg
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,pCLN+082.7 Say "Totales" Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLN+092.7 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+096.4 Say pTT1      Font "&mLetAri",9 Style "BQ" Size 1,16 Pict "99,999,999.99"
                @vLIN,pCLN+126.1 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+131.2 Say pTT2      Font "&mLetAri",9 Style "BQ" Size 1,16 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,pCLN+086.8 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+101.9 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+119.2 Say pTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,pCLN+130.4 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+149.8 Say pTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,pCLN+081.0 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+093.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+098.3 Say pTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,pCLN+121.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+128.4 Say pTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.3 TO vlIn
 IF vlIn>mpAg-3
      DO CASE
           CASE ppRg="PCC3602B"
                DO caB_3602b IN PCC3602B WITH ppRg
           CASE ppRg="PCC3602C"
                DO caB_3602c IN PCC3602C WITH ppRg
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF vpAg>muPg
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,pCLN+082.7 Say "Saldos"  Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLN+092.7 Say "S/."     Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLN+096.4 Say pSL1      Font "&mLetAri",9 Style "BQ" Size 1,16 Pict "99,999,999.99"
                @vLIN,pCLN+126.1 Say "US$"     Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLN+131.2 Say pSL2      Font "&mLetAri",9 Style "BQ" Size 1,16 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,pCLN+086.8 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+101.9 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+119.2 Say pSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,pCLN+130.4 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+149.8 Say pSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,pCLN+081.0 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+093.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+098.3 Say pSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,pCLN+121.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+128.4 Say pSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 STORE vlIn+0.5 TO vlIn
 RELEASE ppRg, pcLn
ENDPROC
*
PROCEDURE Cab_3602b
 PARAMETER ppRg
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
      @vLIN,mCLN Say "Cuentas x Pagar de "+AllTrim(vNTP) Font "&mLetRom",14 Style "BQI"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde el Proveedor: "+dPRV+" hasta el "+hPRV Font "&mLetAri",10 Style "NT"
 ENDIF
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
                @vLIN,mCLN+082.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+103.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+127.6 Say "S/." Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+143.6 Say "US$" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+164.6 Say "US$" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+190.1 Say "US$" Font "&mLetAri",9 Style "BQ"
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
                @vLIN,mCLN+000.0 Say "Códi"                 Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+008.0 Say "Nombre del Proveedor" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"         Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"         Font "&mLetAri",9 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN+000.0 Say "Códi"                 Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+008.0 Say "Nombre del Proveedor" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"         Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"         Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN+000.0 Say "Códi"                 Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+008.0 Say "Nombre del Proveedor" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+074.6 Say "Saldos Vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+096.6 Say "Sld.no vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+121.6 Say "Total Saldos"         Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+137.6 Say "Saldos Vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+159.6 Say "Sld.no vencidos"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+184.6 Say "Total Saldos"         Font "&mLetAri",9 Style "BQ"
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
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Cb1_3602b
 PARAMETER ptAx, pcLx
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblz
                @vLIN,pCLX       Say "Documento"      Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX+019.5 Say "Fecha-Emi"      Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX+032.5 Say "Vencimien"      Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX+045.8 Say "Documento Real" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX+091.0 Say "Total"          Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX+109.5 Say "A/C"            Font "&mLetAri",9 Style "BT"
                @vLIN,pCLX+125.5 Say "Saldo"          Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,pCLX       Say "Documento"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+019.5 Say "Fecha-Emi"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+032.5 Say "Vencimien"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+045.8 Say "Documento Real" Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+081.5 Say "Proveedor"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+151.0 Say "Total"          Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+170.5 Say "A/C"            Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+186.0 Say "Saldo"          Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,pCLX       Say "Documento"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+019.5 Say "Fecha-Emi"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+032.5 Say "Vencimien"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+045.8 Say "Documento Real" Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+081.5 Say "Proveedor"      Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+151.0 Say "Total"          Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+170.5 Say "A/C"            Font "&mLetAri",9 Style "BQ"
                @vLIN,pCLX+186.0 Say "Saldo"          Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,pCLX Say Replicate("_",pTAX) Font "&mLetRom",11 Style "NT"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO coL_pr1
 RELEASE ptAx, pcLx
ENDPROC
*
PROCEDURE Rsm_3602b
 PARAMETER ppRg, pcLx
 PRIVATE paNo, pmEs, psEr, pnUm, pdIa, pgLo, pcHe, psIg, ppGo, ppAg, pcLn
 DO CASE
      CASE mvIs=1
           STORE pcLx+17.8 TO pcLn
      CASE mpRt="1"
           STORE pcLx+20.2 TO pcLn
      CASE mpRt="2"
           STORE pcLx+20.5 TO pcLn
 ENDCASE
 STORE 99 TO mkEy
 STORE 00 TO ppAg
 SELECT peNd_cpras
 GOTO TOP
 SEEK veSt+vtPr+ppRv
 DO WHILE  .NOT. EOF() .AND. f3600est+f3600prv=veSt+ppRv
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF f3600tpr<>vtPr
           EXIT
      ENDIF
      STORE f3600tdo TO ptDo
      STORE f3600ser TO psR1
      STORE f3600doc TO pdOc
      SELECT deT_sal_bancos
      SEEK ptDo+psR1+pdOc
      DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=ptDo+psR1+pdOc
           STORE f3541ano TO paNo
           STORE f3541mes TO pmEs
           STORE f3541ser TO psEr
           STORE f3541num TO pnUm
           STORE f3541pag TO ppGo
           SELECT caB_sal_bancos
           SEEK paNo+pmEs+psEr+pnUm
           IF  .NOT. EOF() .AND. f3540est<>"9" .AND. f3540tpo=1
                STORE f3540dia TO pdIa
                STORE f3540glo TO pgLo
                STORE f3540che TO pcHe
                STORE f3540mon TO pmOn
                IF pmOn=1
                     STORE "S/." TO psIg
                ELSE
                     STORE "US$" TO psIg
                ENDIF
                IF ppAg=0
                     IF vlIn+2>mpAg-3
                          DO CASE
                               CASE ppRg="PCC3602B"
                                    DO caB_3602b IN PCC3602B WITH ppRg
                               CASE ppRg="PCC3602C"
                                    DO caB_3602c IN PCC3602C WITH ppRg
                          ENDCASE
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                     STORE vlIn+0.5 TO vlIn
                     DO cb3_3600b IN PCC3600B WITH pcLn
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE 1 TO ppAg
                ENDIF
                IF vlIn>mpAg-3
                     DO CASE
                          CASE ppRg="PCC3602B"
                               DO caB_3602b IN PCC3602B WITH ppRg
                          CASE ppRg="PCC3602C"
                               DO caB_3602c IN PCC3602C WITH ppRg
                     ENDCASE
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mvIs=1
                               DO coLblv
                               @vLIN,pCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                               @vLIN,pCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NQ"
                               @vLIN,pCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NQ" Size 1,44.5 Pict "@S47"
                               @vLIN,pCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NQ" Size 1,27.0 Pict "@S29"
                               @vLIN,pCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NQ" Size 1,05.2
                               @vLIN,pCLN+115 Say pPGO                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                          CASE mpRt="1"
                               @vLIN,pCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NT"
                               @vLIN,pCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NT"
                               @vLIN,pCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NT" Size 1,44.5 Pict "@S47"
                               @vLIN,pCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NT" Size 1,27.0 Pict "@S29"
                               @vLIN,pCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NT" Size 1,05.2
                               @vLIN,pCLN+129.5 Say pPGO                  Font "&mLetAri",9 Style "NT" Size 1,16.7 Pict "9,999,999.99"
                          CASE mpRt="2"
                               @vLIN,pCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                               @vLIN,pCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NQ"
                               @vLIN,pCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NQ" Size 1,44.5 Pict "@S47"
                               @vLIN,pCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NQ" Size 1,27.0 Pict "@S29"
                               @vLIN,pCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NQ" Size 1,05.2
                               @vLIN,pCLN+115 Say pPGO                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                     ENDCASE
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE vlIn+1.3 TO vlIn
           ENDIF
           SELECT deT_sal_bancos
           SKIP
      ENDDO
      SELECT peNd_cpras
      SKIP
 ENDDO
 STORE vlIn+0.8 TO vlIn
 RELEASE ppRg, pcLx
 RELEASE paNo, pmEs, psEr, pnUm, pdIa, pgLo, pcHe, psIg, ppGo, ppAg, pcLn
ENDPROC
*
PROCEDURE Mue_3602b
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vpRv TO cpRv
           STORE vnOm TO cnOm
      CASE ptP1="v" .AND. ptP2="c"
           STORE vpRv TO cpRv
           STORE vnOm TO cnOm
      CASE ptP1="c" .AND. ptP2="v"
           STORE cpRv TO vpRv
           STORE cnOm TO vnOm
      CASE ptP1="i" .AND. ptP2="v"
           STORE ipRv TO vpRv
           STORE inOm TO vnOm
      CASE ptP1="u" .AND. ptP2="v"
           STORE upRv TO vpRv
           STORE unOm TO vnOm
      CASE ptP1="F" .AND. ptP2="v"
           STORE ftM1prv TO vpRv
           STORE ftM1nom TO vnOm
      CASE ptP1="F" .AND. ptP2="i"
           STORE ftM1prv TO ipRv
           STORE ftM1nom TO inOm
      CASE ptP1="F" .AND. ptP2="u"
           STORE ftM1prv TO upRv
           STORE ftM1nom TO unOm
      CASE ptP1="F" .AND. ptP2="c"
           STORE ftM1prv TO cpRv
           STORE ftM1nom TO cnOm
 ENDCASE
 RELEASE ptP1, ptP2
ENDPROC
*
PROCEDURE See_3602b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK UPPER(vnOm)+vpRv
      CASE psEe="i"
           SEEK UPPER(inOm)+ipRv
      CASE psEe="u"
           SEEK UPPER(unOm)+upRv
 ENDCASE
 RELEASE psEe
ENDPROC
*
PROCEDURE Xls_3602b
 PARAMETER ppRg
 PRIVATE ppRv, pnOm, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
 SELECT tmP_excel
 ZAP
 APPEND BLANK
 REPLACE noMbre WITH "Tipo de Proveedor: "+vnTp
 APPEND BLANK
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1prv TO ppRv
      STORE ftM1nom TO pnOm
      STORE ftM1dv1-ftM1cv1 TO pvE1
      STORE ftM1dv2-ftM1cv2 TO pvE2
      STORE ftM1dn1-ftM1cn1 TO pnV1
      STORE ftM1dn2-ftM1cn2 TO pnV2
      STORE pvE1+pnV1 TO ptO1
      STORE pvE2+pnV2 TO ptO2
      SELECT tmP_excel
      APPEND BLANK
      REPLACE coD_prv WITH ppRv
      REPLACE noMbre WITH pnOm
      REPLACE veNcido1 WITH pvE1
      REPLACE n_Venci1 WITH pnV1
      REPLACE slD_sole WITH ptO1
      REPLACE veNcido2 WITH pvE2
      REPLACE no_venc2 WITH pnV2
      REPLACE slD_dola WITH ptO2
      SELECT teMporal
      SKIP
 ENDDO
 SELECT tmP_excel
 SUM veNcido1 TO pvE1 ALL
 SUM n_Venci1 TO pnV1 ALL
 SUM slD_sole TO ptO1 ALL
 SUM veNcido2 TO pvE2 ALL
 SUM no_venc2 TO pnV2 ALL
 SUM slD_dola TO ptO2 ALL
 APPEND BLANK
 REPLACE noMbre WITH "Totales:"
 REPLACE veNcido1 WITH pvE1
 REPLACE n_Venci1 WITH pnV1
 REPLACE slD_sole WITH ptO1
 REPLACE veNcido2 WITH pvE2
 REPLACE no_venc2 WITH pnV2
 REPLACE slD_dola WITH ptO2
 Export to &vXLS Type XLS
 DO xlS_0000a
 RELEASE ppRv, pnOm, pvE1, pvE2, pnV1, pnV2, ptO1, ptO2
ENDPROC
*
PROCEDURE Clp_3602b
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
           DO diS_3602b IN PCC3602B WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3602b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3602b WITH "F", "v"
           DO diS_3602b IN PCC3602B WITH "R"
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
 STORE 01 TO miPg, pnUm, voPc
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE SPACE(04) TO dpRv
 STORE "ZZZZ" TO hpRv
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
 @pFIL+09.6,pCOL+17 Say "Cód.de Prov"    Font "&mLetRom",12 Style "NT"
 @pFIL+11.3,pCOL+17 Say "Cód.de Prov"    Font "&mLetRom",12 Style "NT"
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
      @pFIL+09.7,pCOL+36.0 Get dPRV Font "&mLetAri",9 Style "NQ" Pict "!!!!"                  Size 1,6.9 Color ,&mColBlN
      @pFIL+11.4,pCOL+36.0 Get hPRV Font "&mLetAri",9 Style "NQ" Pict "!!!!"                  Size 1,6.9 Color ,&mColBlN
      @pFIL+09.7,pCOL+56.0 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9   Color ,&mColBlN
      @pFIL+11.4,pCOL+56.0 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9   Color ,&mColBlN
      @pFIL+14.0,pCOL+13.0 Get vOPC Font "&mLetAri",9 Style "NQ" Default vOPC Function "*RVT Reporte;Detallado (solo Pendientes);Detallado (Cancelados y Pendientes)" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+23.4,pCOL+14.5 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dpRv) TO dpRv
                STORE UPPER(hpRv) TO hpRv
                DO CASE
                     CASE dpRv>hpRv
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(dpRv))=0 .AND. LEN(ALLTRIM(hpRv))=0
                          STORE "Código de Proveedores vacío..." TO mmSj
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
PROCEDURE Hl1_3602b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta,  se muestran a todos los Proveedores del"
 @ pfIl+1, 02 SAY  ;
   "Tipo elegido. Se puede ver los totales vencidos, los no vencidos a la"
 @ pfIl+2, 02 SAY "fecha."
 STORE pfIl+4 TO pfIl
 @ pfIl, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 21 SAY ":" STYLE "BT"
 @ pfIl+1, 21 SAY ":" STYLE "BT"
 @ pfIl+2, 21 SAY ":" STYLE "BT"
 @ pfIl+3, 21 SAY ":" STYLE "BT"
 @ pfIl+4, 21 SAY ":" STYLE "BT"
 @ pfIl+5, 21 SAY ":" STYLE "BT"
 @ pfIl+6, 21 SAY ":" STYLE "BT"
 @ pfIl+0, 02 SAY "ESC" STYLE "BT"
 @ pfIl+1, 02 SAY "F10" STYLE "BT"
 @ pfIl+2, 02 SAY "F1" STYLE "BT"
 @ pfIl+3, 02 SAY "F8" STYLE "BT"
 @ pfIl+4, 02 SAY "F9" STYLE "BT"
 @ pfIl+5, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+6, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+0, 23 SAY "Regresar a Cabecera"
 @ pfIl+1, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 23 SAY "Ayuda del Programa"
 @ pfIl+3, 23 SAY "Pasar datos a Excel"
 @ pfIl+4, 23 SAY "Buscar palabra o frase en Proveedor"
 @ pfIl+5, 23 SAY "Línea inferior"
 @ pfIl+6, 23 SAY "Línea superior"
 STORE pfIl+7 TO pfIl
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
