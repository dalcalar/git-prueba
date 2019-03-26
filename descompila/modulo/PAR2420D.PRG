 = INKEY(0.01)
 GOTO TOP
 DO p00_2420d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO paN_2420d
 STORE 999 TO mkEy
 STORE inOm TO vnOm
 STORE irUc TO vrUc
 STORE ifFs TO vfFs
 SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
 DO diS_2420d WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2420d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2420d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2420d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2420d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_13
                vXLS=PutFile("Archivo Excel:","&mVIN"+"DAOT_Compras_"+vFEC+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM2RUC,FTM2NOM,FTM2TO2 Type XLS
                     ENDCASE
                     DO xlS_0000a
                ENDIF
                SELECT teMporal_2
                SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2420d
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 999 TO mkEy
                SELECT teMporal_2
                SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
           CASE mkEy=k_Enter
                STORE ftM2net TO xnEt
                STORE ftM2igv TO xiGv
                STORE ftM2tot TO xtOt
                SAVE SCREEN TO vpAn_13
                DO paR2420e
                RESTORE SCREEN FROM vpAn_13
                SELECT teMporal_2
                STORE 999 TO mkEy
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(ftM2nom)+ ;
                          ALLTRIM(ftM2ruc)+"*" .AND. UPPER(vnOm)+ ;
                          ALLTRIM(vrUc)+"*"=UPPER(inOm)+ALLTRIM(irUc)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(vnOm)+ALLTRIM(vrUc)+"*"= ;
                                    UPPER(inOm)+ALLTRIM(irUc)+"*"
                                    DO paN_2420d
                               OTHERWISE
                                    SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                                    DO diS_2420d WITH "N"
                          ENDCASE
                          STORE inOm TO vnOm
                          STORE irUc TO vrUc
                          STORE ifFs TO vfFs
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(ftM2nom)+ ;
                          ALLTRIM(ftM2ruc)+"*" .AND. UPPER(vnOm)+ ;
                          ALLTRIM(vrUc)+"*"=UPPER(unOm)+ALLTRIM(urUc)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(vnOm)+ALLTRIM(vrUc)+"*"= ;
                                    UPPER(unOm)+ALLTRIM(urUc)+"*"
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2420d
                               OTHERWISE
                                    SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                                    DO diS_2420d WITH "N"
                          ENDCASE
                          STORE unOm TO vnOm
                          STORE urUc TO vrUc
                          STORE ufFs TO vfFs
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "N"
                          SKIP
                          IF UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(unOm)+ ;
                             ALLTRIM(urUc)+"*"
                               DO coL_fondo
                               DO suBe WITH ifFs, vcO0+0.2, ffFs, vcO0+124.4, 1
                               DO liN_2420d WITH ifFs, ffFs+1
                               STORE ftM2nom TO unOm, vnOm
                               STORE ftM2ruc TO urUc, vrUc
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM2nom TO inOm
                               STORE ftM2ruc TO irUc
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM2nom TO vnOm
                               STORE ftM2ruc TO vrUc
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "N"
                          SKIP -1
                          IF UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(inOm)+ ;
                             ALLTRIM(irUc)+"*"
                               DO coL_fondo
                               DO baJa WITH ifFs, vcO0+0.2, ffFs, vcO0+124.4, 1
                               DO liN_2420d WITH ifFs, ffFs+1
                               STORE ftM2nom TO inOm, vnOm
                               STORE ftM2ruc TO irUc, vrUc
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM2nom TO unOm
                                    STORE ftM2ruc TO urUc
                               ENDIF
                          ELSE
                               STORE ftM2nom TO vnOm
                               STORE ftM2ruc TO vrUc
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK UPPER(unOm)+ALLTRIM(urUc)+"*"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2420d
                          STORE inOm TO vnOm
                          STORE irUc TO vrUc
                          STORE ifFs TO vfFs
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK UPPER(inOm)+ALLTRIM(irUc)+"*"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2420d
                          STORE inOm TO vnOm
                          STORE irUc TO vrUc
                          STORE ifFs TO vfFs
                          SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
                          DO diS_2420d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2420d
 STORE ifFs TO vfFs, ufFs
 STORE ftM2nom TO inOm, unOm
 STORE ftM2ruc TO irUc, urUc
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      DO diS_2420d WITH "N"
      STORE ftM2nom TO unOm
      STORE ftM2ruc TO urUc
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_fondo
      @ ufFs+1, vcO0+0.2 CLEAR TO ffFs+1, vcO0+125.4
      DO liN_2420d WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2420d
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,vCO0+000.2 Say FTM2RUC Font "&mLetAri",9 Style "NQ" Size 1,15.5 Pict "@S11"
 @vFFS,vCO0+017.2 Say FTM2NOM Font "&mLetAri",9 Style "NQ" Size 1,90.2 Pict "@S80"
 @vFFS,vCO0+108.8 Say FTM2TO2 Font "&mLetAri",9 Style "NQ" Size 1,16.6 Pict "99,999,999.99"
ENDPROC
*
PROCEDURE Imp_2420d
 STORE 0 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 DO paGina
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO reP_2420d
 DO fpR_0000a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2420d
 PRIVATE ptAm
 DO CASE
      CASE mpRt="1"
           STORE 96 TO ptAm
           STORE 10 TO mcLn
      CASE mpRt="2"
           STORE 96 TO ptAm
           STORE 10 TO mcLn
 ENDCASE
 SELECT teMporal_2
 GOTO TOP
 STORE 00 TO vpAg
 DO WHILE  .NOT. EOF()
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_2420d
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN       Say FTM2RUC Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+022   Say FTM2NOM Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+126.5 Say FTM2TO2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN       Say FTM2RUC Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+022   Say FTM2NOM Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+126.5 Say FTM2TO2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ftM2ruc TO crUc
      SELECT teMporal
      GOTO TOP
      SEEK ALLTRIM(crUc)+"*"
      IF  .NOT. EOF()
           STORE vlIn+1.8 TO vlIn
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(crUc)+"*"=ALLTRIM(ftM1ruc)+"*"
                IF mkEy=k_F10 .AND. mvIs=1
                     DO reTorna
                ENDIF
                IF vpAg>muPg
                     EXIT
                ENDIF
                IF vlIn>mpAg-3
                     DO caB_2420d
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE mpRt="1"
                               @vLIN,mCLN+022 Say FTM1REG                         Font "&mLetRom",11 Style "NQ" Size 1,13
                               @vLIN,mCLN+039 Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",11 Style "NQ" Size 1,20
                               @vLIN,mCLN+063 Say FTM1TCA                         Font "&mLetRom",11 Style "NQ" Size 1,08 Pict "99.999"
                               @vLIN,mCLN+074 Say FTM1TNE                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+092 Say FTM1TIG                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+110 Say FTM1TFA                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                          CASE mpRt="2"
                               @vLIN,mCLN+022 Say FTM1REG                         Font "&mLetRom",11 Style "NQ" Size 1,13
                               @vLIN,mCLN+039 Say FTM1TD1+":"+FTM1SER+"-"+FTM1DOC Font "&mLetRom",11 Style "NQ" Size 1,20
                               @vLIN,mCLN+063 Say FTM1TCA                         Font "&mLetRom",11 Style "NQ" Size 1,08 Pict "99.999"
                               @vLIN,mCLN+074 Say FTM1TNE                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+092 Say FTM1TIG                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                               @vLIN,mCLN+110 Say FTM1TFA                         Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.99"
                     ENDCASE
                ENDIF
                STORE vlIn+1.3 TO vlIn
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_2
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 IF vlIn>mpAg-3
      DO caB_2420d
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+098   Say "TOTAL "+mSIG Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+116.5 Say tTOT          Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+098   Say "TOTAL "+mSIG Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+116.5 Say tTOT          Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "999,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2420d
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0001a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "DAOT de Compras "+cFEC Font "&mLetAri",13 Style "NQ"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "RUC/DNI/Cód" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+022.0 Say "Fecha"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+039.0 Say "Documento"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+064.5 Say "T/C"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+077.0 Say "Neto "+mSIG  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+096.0 Say "IGV "+mSIG   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+113.0 Say "Total "+mSIG Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "RUC/DNI/Cód" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+022.0 Say "Fecha"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+039.0 Say "Documento"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+064.5 Say "T/C"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+077.0 Say "Neto "+mSIG  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+096.0 Say "IGV "+mSIG   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+113.0 Say "Total "+mSIG Font "&mLetRom",11 Style "NQ"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Lin_2420d
 PARAMETER piNi, pfIn
 DO coLsc7
 @ piNi, vcO0+016.3 TO pfIn, vcO0+016.3
 @ piNi, vcO0+108.0 TO pfIn, vcO0+108.0
ENDPROC
*
PROCEDURE P00_2420d
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
 DO cuAdro WITH ifFs-1.9, vcO0, ffFs+3.5, vcO0+126
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @fFFS+3.8,vCO0 Say "DAOT de Compras: "+cFEC Font "&mLetAri",14 Style "NT" Color 7+
 @ ifFs-1.8, vcO0-000.6 TO ifFs-0.4, vcO0+126.3 PATTERN 1
 @ ffFs+1.6, vcO0-000.6 TO ffFs+3.4, vcO0+126.3 PATTERN 1
 @ ifFs-1.8, vcO0+016.3 TO ffFs+1.5, vcO0+016.3
 @ ifFs-1.8, vcO0+108.0 TO ffFs+3.3, vcO0+108.0
 @iFFS-1.7,vCO0+000.6 Say "RUC/Códig"            Font "&mLetAri",9 Style "BQ"
 @iFFS-1.7,vCO0+045.6 Say "Proveedor"            Font "&mLetAri",9 Style "BQ"
 @iFFS-1.7,vCO0+114.0 Say "Neto "+mSIG           Font "&mLetAri",9 Style "BQ"
 @fFFS+1.9,vCO0+087.0 Say "TOTALES:"             Font "&mLetAri",9 Style "BQ"
 @fFFS+1.9,vCO0+108.6 Say tTO2                   Font "&mLetAri",9 Style "BQ" Size 1,14 Pict "99999,999.99"
 @fFFS+2.0,vCO0+000.5 Say vNUM Pict "99,999,999" Font "&mLetAri",8 Style "NQU" Size 1,12
ENDPROC
*
PROCEDURE Res_2420d
 DO reS_2420b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_12
 DO p00_2420d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_2
 SEEK UPPER(inOm)+ALLTRIM(irUc)+"*"
 DO paN_2420d
 SEEK UPPER(inOm)+ALLTRIM(irUc)+"*"
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. vfFs<ffFs+1
      IF UPPER(vnOm)+ALLTRIM(vrUc)+"*"=UPPER(ftM2nom)+ALLTRIM(ftM2ruc)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE inOm TO vnOm
      STORE irUc TO vrUc
      STORE ifFs TO vfFs
 ENDIF
 SEEK UPPER(vnOm)+ALLTRIM(vrUc)+"*"
 DO diS_2420d WITH "R"
ENDPROC
*
PROCEDURE Clp_2420d
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+126
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO0 .AND.  ;
           mcCc<=vcO0+126
           DO diS_2420d WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           SEEK UPPER(inOm)+ALLTRIM(irUc)+"*"
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           STORE ftM2nom TO vnOm
           STORE ftM2ruc TO vrUc
           DO diS_2420d WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2420d
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestra un Resumen General totalizado en"
 @ pfIl+01, 01 SAY  ;
   "S/., en el rango de fechas seleccionadas. Todo son Totales sin IGV."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 26 SAY ":" STYLE "BT"
 @ pfIl+06, 26 SAY ":" STYLE "BT"
 @ pfIl+07, 26 SAY ":" STYLE "BT"
 @ pfIl+08, 26 SAY ":" STYLE "BT"
 @ pfIl+09, 26 SAY ":" STYLE "BT"
 @ pfIl+10, 26 SAY ":" STYLE "BT"
 @ pfIl+11, 26 SAY ":" STYLE "BT"
 @ pfIl+12, 26 SAY ":" STYLE "BT"
 @ pfIl+13, 26 SAY ":" STYLE "BT"
 @ pfIl+14, 26 SAY ":" STYLE "BT"
 @ pfIl+15, 26 SAY ":" STYLE "BT"
 @ pfIl+16, 26 SAY ":" STYLE "BT"
 @ pfIl+05, 08 SAY "ESC" STYLE "BT"
 @ pfIl+06, 08 SAY "F10" STYLE "BT"
 @ pfIl+07, 08 SAY "F1" STYLE "BT"
 @ pfIl+08, 08 SAY "F8" STYLE "BT"
 @ pfIl+09, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+10, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+11, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+12, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+13, 08 SAY "HOME" STYLE "BT"
 @ pfIl+14, 08 SAY "END" STYLE "BT"
 @ pfIl+15, 08 SAY "CTRL P" STYLE "BT"
 @ pfIl+16, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 28 SAY "Regresar a Cabecera"
 @ pfIl+06, 28 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 28 SAY "Ayuda del Programa"
 @ pfIl+08, 28 SAY "Pasar Datos a Excel"
 @ pfIl+09, 28 SAY "Línea inferior"
 @ pfIl+10, 28 SAY "Línea superior"
 @ pfIl+11, 28 SAY "Página siguiente"
 @ pfIl+12, 28 SAY "Página anterior"
 @ pfIl+13, 28 SAY "Primera línea"
 @ pfIl+14, 28 SAY "Última línea"
 @ pfIl+15, 28 SAY "Imprimir Listado de Compras"
 @ pfIl+16, 28 SAY "Ver detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
