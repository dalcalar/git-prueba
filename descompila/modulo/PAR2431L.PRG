 = INKEY(0.01)
 SELECT teMporal_3
 SET ORDER TO FTM3DNO
 STORE 2 TO vsW2
 DO boT_2431l
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(vpEd)+"*"
 DO paN_2431l
 STORE 999 TO mkEy
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE ifFs TO vfFs
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ALLTRIM(vpRv)+"*"
 ENDCASE
 DO diS_2431l WITH "R"
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2431l
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2431l
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                DO diS_2431l WITH "N"
                STORE 0 TO vsW2
                DO boT_2431l
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2431l
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2431l
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
                DO caM_2431l
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
                               Export to &vXLS Fiel FTM3PRV,FTM3NOM,FTM3TO1,FTM3TO2 Type XLS for AllTrim(FTM3PED)+"*" = AllTrim(vPED)+"*"
                     ENDCASE
                ENDIF
                SELECT teMporal_3
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ALLTRIM(vpRv)+"*"
                ENDCASE
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_2431l
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 999 TO mkEy
                GOTO TOP
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ALLTRIM(vpRv)+"*"
                ENDCASE
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vpEd)+"*"
                DO CASE
                     CASE ALLTRIM(vpRv)+"*"=ALLTRIM(ftM3prv)+"*" .AND.  ;
                          ALLTRIM(vpRv)+"*"=ALLTRIM(ipRv)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpRv)+"*"=ALLTRIM(ipRv)+"*"
                                    DO paN_2431l
                               OTHERWISE
                                    DO CASE
                                         CASE vsW2=1
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               ALLTRIM(vpRv)+"*"
                                         CASE vsW2=2
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               UPPER(vnOm)+ALLTRIM(vpRv)+"*"
                                    ENDCASE
                                    DO diS_2431l WITH "N"
                          ENDCASE
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "R"
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
                     CASE ALLTRIM(vpRv)+"*"=ALLTRIM(ftM3prv)+"*" .AND.  ;
                          ALLTRIM(vpRv)+"*"=ALLTRIM(upRv)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpRv)+"*"=ALLTRIM(upRv)+"*"
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2431l
                               OTHERWISE
                                    DO CASE
                                         CASE vsW2=1
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               ALLTRIM(vpRv)+"*"
                                         CASE vsW2=2
                                              SEEK ALLTRIM(vpEd)+"*"+ ;
                                               UPPER(vnOm)+ALLTRIM(vpRv)+"*"
                                    ENDCASE
                                    DO diS_2431l WITH "N"
                          ENDCASE
                          STORE upRv TO vpRv
                          STORE unOm TO vnOm
                          STORE ufFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "N"
                          SKIP
                          IF ALLTRIM(vpRv)+"*"=ALLTRIM(upRv)+"*"
                               DO coL_beige
                               DO suBe WITH ifFs, piC2, ffFs, puC2-1, 1
                               DO liN_2431l WITH ifFs, ffFs+1
                               STORE ftM3prv TO upRv, vpRv
                               STORE ftM3nom TO unOm, vnOm
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               STORE ftM3prv TO ipRv
                               STORE ftM3nom TO inOm
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               STORE ftM3prv TO vpRv
                               STORE ftM3nom TO vnOm
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "N"
                          SKIP -1
                          IF ALLTRIM(vpRv)+"*"=ALLTRIM(ipRv)+"*"
                               DO coL_beige
                               DO baJa WITH ifFs, piC2, ffFs, puC2-1, 1
                               DO liN_2431l WITH ifFs, ffFs+1
                               STORE ftM3prv TO ipRv, vpRv
                               STORE ftM3nom TO inOm, vnOm
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    STORE ftM3prv TO upRv
                                    STORE ftM3nom TO unOm
                               ENDIF
                          ELSE
                               STORE ftM3prv TO vpRv
                               STORE ftM3nom TO vnOm
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(upRv)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(unOm)+ALLTRIM(upRv)+"*"
                ENDCASE
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(ftM3ped)+"*"<>ALLTRIM(vpEd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2431l
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO CASE
                     CASE vsW2=1
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(ipRv)+"*"
                     CASE vsW2=2
                          SEEK ALLTRIM(vpEd)+"*"+UPPER(inOm)+ALLTRIM(ipRv)+"*"
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
                          DO paN_2431l
                          STORE ipRv TO vpRv
                          STORE inOm TO vnOm
                          STORE ifFs TO vfFs
                          DO CASE
                               CASE vsW2=1
                                    SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                               CASE vsW2=2
                                    SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ ;
                                     ALLTRIM(vpRv)+"*"
                          ENDCASE
                          DO diS_2431l WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO CASE
                CASE vsW2=1
                     SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                CASE vsW2=2
                     SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ALLTRIM(vpRv)+"*"
           ENDCASE
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
      STORE 999 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2431l
 STORE ifFs TO vfFs, ufFs
 STORE ftM3prv TO ipRv, upRv
 STORE ftM3nom TO inOm, unOm
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3ped)+"*"=ALLTRIM(vpEd)+"*" .AND.  ;
    vfFs<ffFs+1
      DO diS_2431l WITH "N"
      STORE ftM3prv TO upRv
      STORE ftM3nom TO unOm
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, piC2 CLEAR TO ffFs+1, puC2
      DO liN_2431l WITH ufFs+1, ffFs+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2431l
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC2+000.2 Say FTM3PRV Font "&mLetAri",9 Style "NQ" Size 1,06.4
 @vFFS,pIC2+007.6 Say FTM3NOM Font "&mLetAri",9 Style "NQ" Size 1,95.1 Pict "@S80"
 DO CASE
      CASE ptIp="N" .AND. ftM3to1<0
           DO coL_beiro
      CASE ptIp="R" .AND. ftM3to1<0
           DO coLblr
 ENDCASE
 @vFFS,pIC2+103.9 Say FTM3TO1 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
 DO CASE
      CASE ptIp="N" .AND. ftM3to2<0
           DO coL_beiro
      CASE ptIp="R" .AND. ftM3to2<0
           DO coLblr
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,pIC2+124.6 Say FTM3TO2 Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "999,999,999.99"
ENDPROC
*
PROCEDURE Lin_2431l
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, piC2+007.0 TO pfIn, piC2+007.0
 @ piNi, piC2+103.3 TO pfIn, piC2+103.3
 @ piNi, piC2+124.0 TO pfIn, piC2+124.0
ENDPROC
*
PROCEDURE Bot_2431l
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
PROCEDURE Cam_2431l
 SELECT teMporal_3
 DO CASE
      CASE vsW2=1
           SET ORDER TO FTM3DPR
      CASE vsW2=2
           SET ORDER TO FTM3DNO
 ENDCASE
 DO boT_2431l
 GOTO TOP
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(ipRv)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(inOm)+ALLTRIM(ipRv)+"*"
 ENDCASE
 DO paN_2431l
 STORE ipRv TO vpRv
 STORE inOm TO vnOm
 STORE ifFs TO vfFs
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ALLTRIM(vpRv)+"*"
 ENDCASE
 DO diS_2431l WITH "R"
ENDPROC
*
PROCEDURE Imp_2431l
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
 DO reP_2431l
 DO fpR_0001a
 STORE 999 TO mkEy
ENDPROC
*
PROCEDURE Rep_2431l
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
           DO caB_2431l
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+000.0 Say FTM3NOM Font "&mLetAri",9  Style "NQ" Size 1,75   Pict "@S70"
                     @vLIN,mCLN+107.5 Say FTM3TO1 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+127.8 Say FTM3TO2 Font "&mLetAri",9  Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+000.0 Say FTM3NOM Font "&mLetRom",10 Style "NQ" Size 1,75   Pict "@S70"
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
PROCEDURE Cab_2431l
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
      @vLIN,mCLN Say "Compras x Pedido/Proveedor "+vFEC Font "&mLetRom",13 Style "BQI"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Pedido: "+AllTrim(vPED) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Desde Proveedor: "+AllTrim(dPRV)+" hasta "+AllTrim(hPRV) Font "&mLetRom",11 Style "BQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN       Say "PROVEEDOR" Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+113.4 Say "TOTAL S/." Font "&mLetRom",9 Style "BQ"
                @vLIN,mCLN+132.2 Say "TOTAL US$" Font "&mLetRom",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "PROVEEDOR" Font "&mLetRom",9 Style "BQ"
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
PROCEDURE Res_2431l
 STORE vsW2 TO csW2
 DO reS_2430l
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE csW2 TO vsW2
 DO boT_2431l
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT teMporal_3
 DO CASE
      CASE vsW2=1
           SET ORDER TO FTM3DPR
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(ipRv)+"*"
      CASE vsW2=2
           SET ORDER TO FTM3DNO
           SEEK ALLTRIM(vpEd)+"*"+UPPER(inOm)+ALLTRIM(ipRv)+"*"
 ENDCASE
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM3ped)+"*"=ALLTRIM(vpEd)+"*" .AND.  ;
    vfFs<ffFs+1
      IF ALLTRIM(vpRv)+"*"=ALLTRIM(ftM3prv)+"*"
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      STORE ipRv TO vpRv
      STORE inOm TO vnOm
      STORE ifFs TO vfFs
 ENDIF
 DO CASE
      CASE vsW2=1
           SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
      CASE vsW2=2
           SEEK ALLTRIM(vpEd)+"*"+UPPER(vnOm)+ALLTRIM(vpRv)+"*"
 ENDCASE
 DO diS_2431l WITH "R"
ENDPROC
*
PROCEDURE Clp_2431l
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
           DO caM_2431l
           STORE 99 TO mkEy
      CASE mfIl>=vfB2+2 .AND. mfIl<=vfB2+2.464 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+1.8 .AND. vsW2<>2
           STORE 02 TO vsW2
           DO caM_2431l
           STORE 99 TO mkEy
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=piC2 .AND.  ;
           mcCc<=puC2
           STORE 99 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=piC2 .AND.  ;
           mcCc<=puC2
           DO diS_2431l WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO CASE
                CASE vsW2=1
                     SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(ipRv)+"*"
                CASE vsW2=2
                     SEEK ALLTRIM(vpEd)+"*"+UPPER(inOm)+ALLTRIM(ipRv)+"*"
           ENDCASE
           SKIP INT(mfIl-ifFs)
           STORE 999 TO mkEy
           STORE ftM3prv TO vpRv
           STORE ftM3nom TO vnOm
           DO diS_2431l WITH "R"
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2431l
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Proveedors con sus"
 @ pfIl+01, 02 SAY  ;
   "Montos en Soles y Dólares, en el rango de fechas seleccionado y Pedido"
 @ pfIl+02, 02 SAY "escogido."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
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
