 = INKEY(0.01)
 SELECT teMporal
 GOTO TOP
 STORE ftM1ruc TO drUc
 GOTO BOTTOM
 STORE ftM1ruc TO hrUc
 GOTO TOP
 IF LEN(ALLTRIM(icLi))=0
      DO paN_3559b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE icLi TO vcLi
      STORE irUc TO vrUc
      STORE inOm TO vnOm
      STORE ifIl TO vfIl
 ELSE
      SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           STORE ftM1cli TO vcLi
           STORE ftM1ruc TO vrUc
           STORE ftM1nom TO vnOm
      ENDIF
      SEEK ALLTRIM(irUc)+"*"+UPPER(inOm)+ALLTRIM(icLi)+"*"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(ftM1ruc)+"*"+ALLTRIM(ftM1cli)+"*"=ALLTRIM(vrUc)+"*"+ ;
              ALLTRIM(vcLi)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=00
           STORE vcLi TO icLi
           STORE vrUc TO irUc
           STORE vnOm TO inOm
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
 IF EOF()
      SET NEAR ON
      SEEK ALLTRIM(irUc)+"*"+UPPER(inOm)+ALLTRIM(icLi)+"*"
      SET NEAR OFF
      DO paN_3559b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE icLi TO vcLi
      STORE irUc TO vrUc
      STORE inOm TO vnOm
      STORE ifIl TO vfIl
      SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
 ENDIF
 DO diS_3559b WITH "R"
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
           DO reS_3559b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3559b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3559b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_3559b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_3559b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3559b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT teMporal_2
                SET FILTER TO ALLTRIM(ftM2ruc)+"*"=ALLTRIM(vrUc)+"*"
                BROWSE
                SELECT teMporal
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_14
                vxLs = PUTFILE("Archivo Excel:", "XLS\CTAS.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_14
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM1CLI,FTM1NOM,FTM1SL1,FTM1SL2 Type XLS
                               DO xlS_0000a
                     ENDCASE
                ENDIF
                SELECT teMporal
                SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3559b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                SELECT teMporal
                SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE ALLTRIM(ftM1ruc)+"*"+ALLTRIM(ftM1cli)+"*"= ;
                          ALLTRIM(irUc)+"*"+ALLTRIM(icLi)+"*" .AND.  ;
                          ALLTRIM(vrUc)+"*"+ALLTRIM(vcLi)+"*"= ;
                          ALLTRIM(irUc)+"*"+ALLTRIM(icLi)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vrUc)+"*"+ALLTRIM(vcLi)+"*"= ;
                                    ALLTRIM(irUc)+"*"+ALLTRIM(icLi)+"*"
                                    DO paN_3559b
                               OTHERWISE
                                    SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vcLi)+"*"
                                    DO diS_3559b WITH "N"
                          ENDCASE
                          STORE icLi TO vcLi
                          STORE irUc TO vrUc
                          STORE inOm TO vnOm
                          STORE ifIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE ALLTRIM(ftM1ruc)+"*"+ALLTRIM(ftM1cli)+"*"= ;
                          ALLTRIM(urUc)+"*"+ALLTRIM(ucLi)+"*" .AND.  ;
                          ALLTRIM(vrUc)+"*"+ALLTRIM(vcLi)+"*"= ;
                          ALLTRIM(urUc)+"*"+ALLTRIM(ucLi)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vrUc)+"*"+ALLTRIM(vcLi)+"*"= ;
                                    ALLTRIM(urUc)+"*"+ALLTRIM(ucLi)+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3559b
                               OTHERWISE
                                    SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vcLi)+"*"
                                    DO diS_3559b WITH "N"
                          ENDCASE
                          STORE ucLi TO vcLi
                          STORE urUc TO vrUc
                          STORE unOm TO vnOm
                          STORE ufIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "N"
                          SKIP
                          IF ALLTRIM(vrUc)+"*"+ALLTRIM(vcLi)+"*"= ;
                             ALLTRIM(urUc)+"*"+ALLTRIM(ucLi)+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3559a WITH ifIl, ffIl+1
                               STORE ftM1cli TO ucLi, vcLi
                               STORE ftM1ruc TO urUc, vrUc
                               STORE ftM1nom TO unOm, vnOm
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               STORE ftM1cli TO icLi
                               STORE ftM1ruc TO irUc
                               STORE ftM1nom TO inOm
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               STORE ftM1cli TO vcLi
                               STORE ftM1ruc TO vrUc
                               STORE ftM1nom TO vnOm
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "N"
                          SKIP -1
                          IF ALLTRIM(vrUc)+"*"+ALLTRIM(vcLi)+"*"= ;
                             ALLTRIM(irUc)+"*"+ALLTRIM(icLi)+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3559a WITH ifIl, ffIl+1
                               STORE ftM1cli TO icLi, vcLi
                               STORE ftM1ruc TO irUc, vrUc
                               STORE ftM1nom TO inOm, vnOm
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    STORE ftM1cli TO ucLi
                                    STORE ftM1ruc TO urUc
                                    STORE ftM1nom TO unOm
                               ENDIF
                          ELSE
                               STORE ftM1cli TO vcLi
                               STORE ftM1ruc TO vrUc
                               STORE ftM1nom TO vnOm
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                SEEK ALLTRIM(urUc)+"*"+UPPER(unOm)+ALLTRIM(ucLi)+"*"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3559b
                          STORE icLi TO vcLi
                          STORE irUc TO vrUc
                          STORE inOm TO vnOm
                          STORE ifIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                SEEK ALLTRIM(irUc)+"*"+UPPER(inOm)+ALLTRIM(icLi)+"*"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3559b
                          STORE icLi TO vcLi
                          STORE irUc TO vrUc
                          STORE inOm TO vnOm
                          STORE ifIl TO vfIl
                          SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
                          DO diS_3559b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3559b
 STORE ifIl TO vfIl, ufIl
 STORE ftM1cli TO icLi, ucLi
 STORE ftM1ruc TO irUc, urUc
 STORE ftM1nom TO inOm, unOm
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO diS_3559b WITH "N"
      STORE ftM1cli TO ucLi
      STORE ftM1ruc TO urUc
      STORE ftM1nom TO unOm
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3559a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3559b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+000.0 Say FTM1RUC Font "&mLetAri",9 Style "NQ" Size 1,16
 IF ALLTRIM(ftM1cli)+"*"=ALLTRIM(ftM1ruc)+"*"
      @vFIL,mCO0+17 Say "     " Font "&mLetAri",9 Style "NQ" Size 1,07
 ELSE
      @vFIL,mCO0+17 Say FTM1CLI Font "&mLetAri",9 Style "NQ" Size 1,07
 ENDIF
 @vFIL,mCO0+025.0 Say FTM1NOM Font "&mLetAri",9 Style "NQ" Size 1,58.8 Pict "@S61"
 @vFIL,mCO0+084.7 Say FTM1SL1 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
 @vFIL,mCO0+105.7 Say FTM1SL2 Font "&mLetAri",9 Style "NQ" Pict "999,999,999.99" Size 1,19.9
ENDPROC
*
PROCEDURE Res_3559b
 DO p00_3559a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal
 IF LEN(ALLTRIM(icLi))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      STORE vcLi TO ccLi
      STORE vrUc TO crUc
      STORE vnOm TO cnOm
      SELECT teMporal
      SEEK ALLTRIM(irUc)+"*"+UPPER(inOm)+ALLTRIM(icLi)+"*"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(ftM1ruc)+"*"+ALLTRIM(ftM1cli)+"*"=ALLTRIM(irUc)+"*"+ ;
              ALLTRIM(icLi)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE vcLi TO icLi, ccLi
           STORE vrUc TO irUc, crUc
           STORE vnOm TO inOm, cnOm
           STORE ifIl TO vfIl, cfIl
      ENDIF
      SEEK ALLTRIM(irUc)+"*"+UPPER(inOm)+ALLTRIM(icLi)+"*"
      DO paN_3559b IN PCC3559B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ccLi TO vcLi
      STORE crUc TO vrUc
      STORE cnOm TO vnOm
      STORE cfIl TO vfIl
      SEEK ALLTRIM(vrUc)+"*"+UPPER(vnOm)+ALLTRIM(vcLi)+"*"
 ENDIF
 DO diS_3559b WITH "R"
ENDPROC
*
PROCEDURE Imp_3559b
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
 DO reP_3559b
 DO fpR_0000a
ENDPROC
*
PROCEDURE Rep_3559b
 PRIVATE ptAm
 DO coLbln
 STORE 00 TO vlIn, vpAg
 DO CASE
      CASE mvIs=0
           STORE 94 TO ptAm
           STORE 14 TO mcLn
      CASE mvIs=1
           STORE 94 TO ptAm
           STORE 14 TO mcLn
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
      IF ALLTRIM(ftM1ruc)+"*">=ALLTRIM(drUc)+"*" .AND. ALLTRIM(ftM1ruc)+ ;
         "*"<=ALLTRIM(hrUc)+"*"
      ELSE
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3559b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      @vLIN,mCLN Say "RUC/DNI: "+FTM1RUC+" - "+FTM1NOM Font "&mLetRom",13 Style "BQ"
      STORE ftM1ruc TO crUc
      STORE vlIn+2 TO vlIn
      SELECT teMporal_2
      GOTO TOP
      SEEK ALLTRIM(crUc)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM2ruc)+"*"=ALLTRIM(crUc)+"*"
           IF vlIn>mpAg-3
                DO caB_3559b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           @vLIN,mCLN     Say FTM2TDO+":"+FTM2SER+"-"+FTM2DOC Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+024 Say FTM2FEM                         Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+060 Say FTM2TOT                         Font "&mLetRom",11 Style "NQ" Size 1,10 Pict   "99,999.99"
           @vLIN,mCLN+075 Say FTM2ACU                         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "9999,999.99"
           @vLIN,mCLN+090 Say FTM2SLD                         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "9999,999.99"
           @vLIN,mCLN+105 Say FTM2NOM                         Font "&mLetRom",11 Style "NQ" Size 1,26 Pict "@S26"
           IF ftM2mon=1
                @vLIN,mCLN+44 Say "S/."                         Font "&mLetRom",11 Style "NQ"
           ELSE
                @vLIN,mCLN+44 Say "US$"                         Font "&mLetRom",11 Style "NQ"
           ENDIF
           STORE vlIn+1.3 TO vlIn
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SKIP
      ENDDO
      SELECT teMporal
      STORE vlIn+0.5 TO vlIn
      IF vlIn>mpAg-3
           DO caB_3559b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      @vLIN,mCLN+24 Say "SALDOS" Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+41 Say "S/."    Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+52 Say FTM1SL1  Font "&mLetRom",11 Style "BQ" Size 1,18 Pict "99,999,999.99"
      @vLIN,mCLN+75 Say "US$"    Font "&mLetRom",11 Style "BQ"
      @vLIN,mCLN+84 Say FTM1SL2  Font "&mLetRom",11 Style "BQ" Size 1,18 Pict "99,999,999.99"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+2 TO vlIn
      SKIP
 ENDDO
 STORE vlIn+1 TO vlIn
 IF vlIn>mpAg-4
      DO caB_3559b
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 @vLIN,mCLN+00 Say "SALDOS GENERALES" Font "&mLetRom",10 Style "BQ"
 @vLIN,mCLN+41 Say "S/."              Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+52 Say tSL1               Font "&mLetRom",11 Style "BQ" Size 1,18 Pict "99,999,999.99"
 @vLIN,mCLN+75 Say "US$"              Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+84 Say tSL2               Font "&mLetRom",11 Style "BQ" Size 1,18 Pict "99,999,999.99"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_3559b
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
 @vLIN,mCLN Say "Cuentas x Cobrar x RUC al "+Dtoc(Date()) Font "&mLetRom",14 Style "BQI"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+3 TO vlIn
 @vLIN,mCLN Say "Desde el: "+dRUC+" hasta el "+hRUC       Font "&mLetAri",10 Style "NT"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1 TO vlIn
 @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN     Say "Documento" Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+024 Say "Fecha"     Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+044 Say "Mn"        Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+063 Say "Total"     Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+081 Say "A/C"       Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+094 Say "Saldo"     Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+105 Say "Nombre"    Font "&mLetRom",11 Style "BQ"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.4 TO vlIn
 @vLIN,mCLN Say Replicate("_",pTAM) Font "&mLetAri",10 Style "NT"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Clp_3559b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+50.6
           IF mkEy=k_Esc
                RETURN
           ENDIF
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
           DO diS_3559b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           SEEK ALLTRIM(irUc)+"*"+UPPER(inOm)+ALLTRIM(icLi)+"*"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           STORE ftM1cli TO vcLi
           STORE ftM1ruc TO vrUc
           STORE ftM1nom TO vnOm
           DO diS_3559b WITH "R"
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
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+08.8,pCOL+12 Say "Desde RUC:"            Font "&mLetRom",11 Style "BQ"
 @pFIL+10.3,pCOL+12 Say "Hasta RUC:"            Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT" Color 1/1
 @pFIL+03.0,pCOL+12 Say "Color de las Letras"   Font "&mLetRom",11 Style "BQ"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+6.5, pcOl+11 TO pfIl+8.7, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+4.8,pCOL+12 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+4.8,pCOL+12 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+08.8,pCOL+30.0 Get dRUC Font "&mLetAri",9 Style "NQ" Pict "99999999999" Size 1,16 Color ,&mColBlN
      @pFIL+10.3,pCOL+30.0 Get hRUC Font "&mLetAri",9 Style "NQ" Pict "99999999999" Size 1,16 Color ,&mColBlN
      @pFIL+18.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(drUc) TO drUc
                STORE UPPER(hrUc) TO hrUc
                DO CASE
                     CASE drUc>hrUc
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(drUc))=0 .AND. LEN(ALLTRIM(hrUc))=0
                          STORE "RUCs vacío..." TO mmSj
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
PROCEDURE Hl1_3559b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 02 SAY  ;
   "En esta parte de la consulta,  se muestran a todos los Clientes con sus"
 @ 1.200, 02 SAY "RUCs."
 @ 3.200, 02 SAY "Las teclas para movilizarse son:"
 @ 5.200, 21 SAY ":" STYLE "BT"
 @ 6.200, 21 SAY ":" STYLE "BT"
 @ 7.200, 21 SAY ":" STYLE "BT"
 @ 8.200, 21 SAY ":" STYLE "BT"
 @ 9.200, 21 SAY ":" STYLE "BT"
 @ 10.200, 21 SAY ":" STYLE "BT"
 @ 11.200, 21 SAY ":" STYLE "BT"
 @ 12.200, 21 SAY ":" STYLE "BT"
 @ 13.200, 21 SAY ":" STYLE "BT"
 @ 14.200, 21 SAY ":" STYLE "BT"
 @ 15.200, 21 SAY ":" STYLE "BT"
 @ 5.200, 02 SAY "ESC" STYLE "BT"
 @ 6.200, 02 SAY "F10" STYLE "BT"
 @ 7.200, 02 SAY "F1" STYLE "BT"
 @ 8.200, 02 SAY "F8" STYLE "BT"
 @ 9.200, 02 SAY "FLECHA ABAJO" STYLE "BT"
 @ 10.200, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 11.200, 02 SAY "PAGE DOWN" STYLE "BT"
 @ 12.200, 02 SAY "PAGE UP" STYLE "BT"
 @ 13.200, 02 SAY "HOME" STYLE "BT"
 @ 14.200, 02 SAY "END" STYLE "BT"
 @ 15.200, 02 SAY "CTRL P" STYLE "BT"
 @ 5.200, 23 SAY "Regresar a Cabecera"
 @ 6.200, 23 SAY "Cerrar y regresar a Windows"
 @ 7.200, 23 SAY "Ayuda del Programa"
 @ 8.200, 23 SAY "Pasar datos a Excel"
 @ 9.200, 23 SAY "Línea inferior"
 @ 10.200, 23 SAY "Línea superior"
 @ 11.200, 23 SAY "Página siguiente"
 @ 12.200, 23 SAY "Página anterior"
 @ 13.200, 23 SAY "Primera línea"
 @ 14.200, 23 SAY "Última línea"
 @ 15.200, 23 SAY "Imprimir Listado"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
