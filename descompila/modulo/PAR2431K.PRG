 = INKEY(0.01)
 SELECT teMporal_3
 SET ORDER TO FTM3DDE
 STORE 2 TO vsW2
 DO boT_2431k
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(vpEd)+"*"
 DO paN_2431k
 STORE 999 TO mkEy
 STORE icOd TO vcOd
 STORE idEs TO vdEs
 STORE ifFs TO vfFs
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 ENDCASE
 DO diS_2431k WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2431k
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2431k
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                DO diS_2431k WITH "N"
                STORE 0 TO vsW2
                DO boT_2431k
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2431k
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2431k
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right .OR. mkEy=k_Left
                IF mkEy=k_Right
                     DO CASE
                          CASE vsW2=2
                               STORE 1 TO vsW2
                          OTHERWISE
                               STORE vsW2+1 TO vsW2
                     ENDCASE
                ELSE
                     DO CASE
                          CASE vsW2=1
                               STORE 2 TO vsW2
                          OTHERWISE
                               STORE vsW2-1 TO vsW2
                     ENDCASE
                ENDIF
                DO caM_2431k
           CASE mkEy=k_F8
                STORE SUBSTR(DTOC(dfEm), 1, 2)+"-"+SUBSTR(DTOC(dfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(dfEm), 7, 4)+"_al_"+ ;
                      SUBSTR(DTOC(hfEm), 1, 2)+"-"+SUBSTR(DTOC(hfEm), 4,  ;
                      2)+"-"+SUBSTR(DTOC(hfEm), 7, 4) TO vfEc
                SAVE SCREEN TO vpAn_13
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Cpras_"+vFEC+"_Ped."+AllTrim(vPED)+".XLS","XLS")
                RESTORE SCREEN FROM vpAn_13
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel FTM3COD,FTM3DES,FTM3NUC,FTM3NUX,FTM3CAN,FTM3TO1,FTM3TO2 Type XLS for AllTrim(FTM3PED)+"*" = AllTrim(vPED)+"*"
                     ENDCASE
                ENDIF
                SELECT teMporal_3
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                ENDCASE
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2431k
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                GOTO TOP
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vpEd)+"*"
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM3cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                                    DO paN_2431k
                               OTHERWISE
                                    DO CASE
                                         CASE vsW2=1
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               ALLTRIM(vcOd)+"*"
                                         CASE vsW2=2
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                                    ENDCASE
                                    DO diS_2431k WITH "N"
                          ENDCASE
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK ALLTRIM(vpEd)+"*ZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ftM3cod)+"*" .AND.  ;
                          ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2431k
                               OTHERWISE
                                    DO CASE
                                         CASE vsW2=1
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               ALLTRIM(vcOd)+"*"
                                         CASE vsW2=2
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               UPPER(vdEs)+ALLTRIM(vcOd)+"*"
                                    ENDCASE
                                    DO diS_2431k WITH "N"
                          ENDCASE
                          STORE ucOd TO vcOd
                          STORE udEs TO vdEs
                          STORE ufFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "N"
                          SKIP
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ucOd)+"*"
                               DO coL_beige
                               DO suBe WITH ifFs, piC2, ffFs, puC2-1, 1
                               DO liN_2431k WITH ifFs, ffFs+1
                               STORE ftM3cod TO ucOd, vcOd
                               STORE ftM3des TO udEs, vdEs
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM3cod TO icOd
                               STORE ftM3des TO idEs
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM3cod TO vcOd
                               STORE ftM3des TO vdEs
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(icOd)+"*"
                               DO coL_beige
                               DO baJa WITH ifFs, piC2, ffFs, puC2-1, 1
                               DO liN_2431k WITH ifFs, ffFs+1
                               STORE ftM3cod TO icOd, vcOd
                               STORE ftM3des TO idEs, vdEs
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM3cod TO ucOd
                                    STORE ftM3des TO udEs
                               ENDIF
                          ELSE
                               STORE ftM3cod TO vcOd
                               STORE ftM3des TO vdEs
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(ucOd)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(udEs)+ALLTRIM(ucOd)+"*"
                ENDCASE
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2431k
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(icOd)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(idEs)+ALLTRIM(icOd)+"*"
                ENDCASE
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vpEd)+"*"
                          ENDIF
                          DO paN_2431k
                          STORE icOd TO vcOd
                          STORE idEs TO vdEs
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ ;
                                     ALLTRIM(vcOd)+"*"
                          ENDCASE
                          DO diS_2431k WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO CASE
                CASE vsW2=1
                     SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                CASE vsW2=2
                     SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"
           ENDCASE
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2431k
 STORE ifFs TO vfFs, ufFs
 STORE ftM3cod TO icOd, ucOd
 STORE ftM3des TO idEs, udEs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3ped)+"*"=ALLTRIM(vpEd)+"*" .AND.  ;
    vfFs<ffFs+1
      DO diS_2431k WITH "N"
      STORE ftM3cod TO ucOd
      STORE ftM3des TO udEs
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, piC2 CLEAR TO ffFs+1, puC2
      DO liN_2431k WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2431k
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N" .AND. ftM3tpp<>1
           DO coL_beive
      CASE ptIp="R" .AND. ftM3tpp<>1
           DO coLblv
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC2+00.2 Say FTM3COD Font "&mLetAri",9 Style "NQ" Size 1,12.4
 @vFFS,pIC2+13.6 Say FTM3DES Font "&mLetAri",9 Style "NQ" Size 1,58.6 Pict "@S62"
 @vFFS,pIC2+73.3 Say FTM3NUC Font "&mLetAri",9 Style "NQ" Size 1,06.8 Pict "@S09"
 @vFFS,pIC2+81.0 Say FTM3CAN Font "&mLetAri",9 Style "NQ" Size 1,21.7 Pict "999,999,999.9999"
 DO CASE
      CASE ptIp="N" .AND. ftM3to1<0
           DO coL_beiro
      CASE ptIp="R" .AND. ftM3to1<0
           DO coLblr
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC2+103.9 Say FTM3TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 @vFFS,pIC2+123.9 Say FTM3TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 DO coLsc7
 @fFFS+2,pIC2+0.2 Say Space(10) Font "&mLetAri",9 Style "BQ" Size 1,21.8
ENDPROC
*
PROCEDURE Lin_2431k
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piC2+013.0 TO pfIn, piC2+013.0
 @ piNi, piC2+072.7 TO pfIn, piC2+072.7
 @ piNi, piC2+080.4 TO pfIn, piC2+080.4
 @ piNi, piC2+103.3 TO pfIn, piC2+103.3
 @ piNi, piC2+124.0 TO pfIn, piC2+124.0
ENDPROC
*
PROCEDURE Bot_2431k
 DO prEsiona WITH "3", "CONSU3", vfB1+2, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", vfB2+2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW2=1
           DO prEsiona WITH "1", "CONSU3", vfB1+2, vcB1
      CASE vsW2=2
           DO prEsiona WITH "1", "CONSU3", vfB2+2, vcB2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cam_2431k
 SELECT teMporal_3
 DO CASE
      CASE vsW2=1
           SET ORDER TO FTM3DCO
      CASE vsW2=2
           SET ORDER TO FTM3DDE
 ENDCASE
 DO boT_2431k
 GOTO TOP
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(icOd)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(idEs)+ALLTRIM(icOd)+"*"
 ENDCASE
 DO paN_2431k
 STORE icOd TO vcOd
 STORE idEs TO vdEs
 STORE ifFs TO vfFs
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 ENDCASE
 DO diS_2431k WITH "R"
ENDPROC
*
PROCEDURE Imp_2431k
 STORE 0 TO mvIs
 DO ipR_0001a WITH "VE"
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
 DO ipR_0001a WITH "VE"
 IF mkEy=k_Esc
      STORE 999 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 DO reP_2431k
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2431k
 PRIVATE ptAm, psW0
 STORE 92 TO ptAm
 STORE 01 TO mcLn
 SELECT teMporal_3
 GOTO TOP
 SEEK ALLTRIM(vpEd)+"*"
 STORE 0 TO vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3ped)+"*"=ALLTRIM(vpEd)+"*"
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-4
           DO caB_2431k
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+000.0 Say FTM3DES Font "&mLetAri",9  Style "NQ" Size 1,67   Pict "@S67"
                     @vLIN,mCLN+077.6 Say FTM3NUC Font "&mLetAri",9  Style "NQ" Size 1,08   Pict "@S10"
                     @vLIN,mCLN+087.2 Say FTM3CAN Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "9999,999.9999"
                     @vLIN,mCLN+107.5 Say FTM3TO1 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+127.8 Say FTM3TO2 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+000.0 Say FTM3DES Font "&mLetRom",10 Style "NQ" Size 1,67   Pict "@S67"
                     @vLIN,mCLN+077.6 Say FTM3NUC Font "&mLetRom",10 Style "NQ" Size 1,08   Pict "@S10"
                     @vLIN,mCLN+087.2 Say FTM3CAN Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "9999,999.9999"
                     @vLIN,mCLN+107.5 Say FTM3TO1 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+127.8 Say FTM3TO2 Font "&mLetRom",10 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
      IF EOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
           STORE vlIn+0.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN+107.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+128.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                     CASE mpRt="2"
                          @vLIN,mCLN+107.5 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+128.0 Say Replicate("_",13) Font "&mLetAri",9 Style "NT"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDDO
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+083   Say "TOTAL PEDIDO" Font "&mLetAri",9  Style "BQ"
                @vLIN,mCLN+107.5 Say tTT1           Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+128.0 Say tTT2           Font "&mLetAri",9  Style "BQ" Size 1,15.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+083   Say "TOTAL PEDIDO" Font "&mLetRom",10 Style "BQ"
                @vLIN,mCLN+107.5 Say tTT1           Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
                @vLIN,mCLN+128.0 Say tTT2           Font "&mLetRom",10 Style "BQ" Size 1,15.1 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2431k
 IF vpAg>=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
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
      STORE "del "+DTOC(dfEm)+" al "+DTOC(hfEm) TO vfEc
      @vLIN,mCLN Say "Compras x Pedido/Producto "+vFEC Font "&mLetRom",13 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Pedido: "+AllTrim(vPED) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde Producto: "+AllTrim(dCOD)+" hasta "+AllTrim(hCOD) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "PRODUCTO"  Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+077.6 Say "UNIDAD"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+092.4 Say "CANTIDAD"  Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+113.4 Say "TOTAL S/." Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+132.2 Say "TOTAL US$" Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "PRODUCTO"  Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+077.6 Say "UNIDAD"    Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+092.4 Say "CANTIDAD"  Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+113.4 Say "TOTAL S/." Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+132.2 Say "TOTAL US$" Font "&mLetRom",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
ENDPROC
*
PROCEDURE Res_2431k
 STORE vsW2 TO csW2
 DO reS_2430k
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE csW2 TO vsW2
 DO boT_2431k
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 DO CASE
      CASE vsW2=1
           SET ORDER TO FTM3DCO
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(icOd)+"*"
      CASE vsW2=2
           SET ORDER TO FTM3DDE
           SEEK ALLTRIM(vpEd)+"*"+UPPER(idEs)+ALLTRIM(icOd)+"*"
 ENDCASE
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3ped)+"*"=ALLTRIM(vpEd)+"*" .AND.  ;
    vfFs<ffFs+1
      IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM3cod)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE icOd TO vcOd
      STORE idEs TO vdEs
      STORE ifFs TO vfFs
 ENDIF
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(vdEs)+ALLTRIM(vcOd)+"*"
 ENDCASE
 DO diS_2431k WITH "R"
ENDPROC
*
PROCEDURE Clp_2431k
 = INKEY(0.01)
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
      CASE mfIl>=vfB1+2 .AND. mfIl<=vfB1+2.464 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+1.8 .AND. vsW2<>1
           STORE 01 TO vsW2
           DO caM_2431k
           STORE 99 TO mkEy
      CASE mfIl>=vfB2+2 .AND. mfIl<=vfB2+2.464 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+1.8 .AND. vsW2<>2
           STORE 02 TO vsW2
           DO caM_2431k
           STORE 99 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=piC2 .AND.  ;
           mcCc<=puC2
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=piC2 .AND.  ;
           mcCc<=puC2
           DO diS_2431k WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO CASE
                CASE vsW2=1
                     SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(icOd)+"*"
                CASE vsW2=2
                     SEEK ALLTRIM(vpEd)+"*"+UPPER(idEs)+ALLTRIM(icOd)+"*"
           ENDCASE
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           STORE ftM3cod TO vcOd
           STORE ftM3des TO vdEs
           DO diS_2431k WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2431k
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Productos con canti-"
 @ pfIl+01, 01 SAY  ;
   "dades, Montos en Soles y Dólares, en el rango de fechas seleccionado y "
 @ pfIl+02, 01 SAY "Pedido escogido."
 @ pfIl+04, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+06, 11 SAY "ESC" STYLE "BT"
 @ pfIl+07, 11 SAY "F10" STYLE "BT"
 @ pfIl+08, 11 SAY "F1" STYLE "BT"
 @ pfIl+09, 11 SAY "F8" STYLE "BT"
 @ pfIl+10, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+06, 31 SAY "Regresar a Cabecera"
 @ pfIl+07, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 31 SAY "Ayuda del Programa"
 @ pfIl+09, 31 SAY "Pasar Datos a Excel"
 @ pfIl+10, 31 SAY "Línea inferior"
 @ pfIl+11, 31 SAY "Línea superior"
 STORE pfIl+12 TO pfIl
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+1, 11 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+0, 31 SAY "Cambiar de Orden de Consulta"
 @ pfIl+1, 31 SAY "Cambiar de Orden de Consulta"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 11 SAY "HOME" STYLE "BT"
 @ pfIl+3, 11 SAY "END" STYLE "BT"
 @ pfIl+4, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 31 SAY "Página siguiente"
 @ pfIl+1, 31 SAY "Página anterior"
 @ pfIl+2, 31 SAY "Primera línea"
 @ pfIl+3, 31 SAY "Última línea"
 @ pfIl+4, 31 SAY "Imprimir Reporte"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
