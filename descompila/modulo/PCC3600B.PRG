 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW5=2 .AND. (STR(imOn, 1, 0)+STR(isLd, 12,  ;
    2)+itDo+isEr+idOc>STR(vmOn, 1, 0)+STR(vsLd, 12, 2)+vtDo+vsEr+vdOc  ;
    .OR. STR(umOn, 1, 0)+STR(usLd, 12, 2)+utDo+usEr+udOc<STR(vmOn, 1, 0)+ ;
    STR(vsLd, 12, 2)+vtDo+vsEr+vdOc)) .OR. (vsW0=1 .AND. (itDo+isEr+idOc> ;
    vtDo+vsEr+vdOc .OR. utDo+usEr+udOc<vtDo+vsEr+vdOc)) .OR. (vsW0=2  ;
    .AND. (UPPER(ALLTRIM(inOm))+ipRv+iaNo+imEs+idIa+itDo+isEr+idOc> ;
    UPPER(ALLTRIM(vnOm))+vpRv+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc .OR.  ;
    UPPER(ALLTRIM(unOm))+upRv+uaNo+umEs+udIa+utDo+usEr+udOc< ;
    UPPER(ALLTRIM(vnOm))+vpRv+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc)) .OR. (vsW0= ;
    3 .AND. (iaNo+imEs+idIa+itDo+isEr+idOc>vaNo+vmEs+vdIa+vtDo+vsEr+vdOc  ;
    .OR. uaNo+umEs+udIa+utDo+usEr+udOc<vaNo+vmEs+vdIa+vtDo+vsEr+vdOc))  ;
    .OR. (vsW0=4 .AND. (iaNv+imEv+idIv+itDo+isEr+idOc>vaNv+vmEv+vdIv+vtDo+ ;
    vsEr+vdOc .OR. uaNv+umEv+udIv+utDo+usEr+udOc<vaNv+vmEv+vdIv+vtDo+vsEr+ ;
    vdOc)) .OR. (vsW0=5 .AND. (itD1+isRr+idO1+itDo+isEr+idOc>vtD1+vsRr+ ;
    vdO1+vtDo+vsEr+vdOc .OR. utD1+usRr+udO1+utDo+usEr+udOc<vtD1+vsRr+vdO1+ ;
    vtDo+vsEr+vdOc))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW5=2
                SEEK veSt+STR(vmOn, 1, 0)+STRTRAN(STR(vsLd, 12, 2), " ",  ;
                     "0")+vtDo+vsEr+vdOc
           CASE vsW0=1
                SEEK veSt+vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK veSt+UPPER(vnOm)
           CASE vsW0=3
                SEEK veSt+vaNo+vmEs+vdIa
           CASE vsW0=4
                SEEK veSt+vaNv+vmEv+vdIv
           CASE vsW0=5
                SEEK veSt+vtD1+vsRr+vdO1
      ENDCASE
      SET NEAR OFF
      IF EOF() .OR. f3600est<>veSt
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
      ENDIF
      DO paN_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3600b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3600b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW5=2
                     SEEK veSt+STR(vmOn, 1, 0)+STRTRAN(STR(vsLd, 12, 2),  ;
                          " ", "0")+vtDo+vsEr+vdOc
                CASE vsW0=1
                     SEEK veSt+vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK veSt+UPPER(vnOm)
                CASE vsW0=3
                     SEEK veSt+vaNo+vmEs+vdIa
                CASE vsW0=4
                     SEEK veSt+vaNv+vmEv+vdIv
                CASE vsW0=5
                     SEEK veSt+vtD1+vsRr+vdO1
           ENDCASE
           SET NEAR OFF
           IF EOF() .OR. f3600est<>veSt
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           DO muE_3600b WITH "F", "v"
      ENDIF
      DO seE_3600b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. f3600est=veSt .AND. vfIl<ffIl+1
           IF f3600tdo+f3600ser+f3600doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3600b WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3600b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3600b WITH "i"
      SET NEAR OFF
      DO paN_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3600b WITH "i", "v"
      DO seE_3600b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_3600b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vsW1 TO csW1
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
           DO reS_3600b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3600b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3600b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_3600b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_3600b IN PCC3600B WITH "PCC3600B"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2
                DO CASE
                     CASE vsW5=1
                          STORE 2 TO vsW5
                     CASE vsW5=2
                          STORE 1 TO vsW5
                ENDCASE
                DO caM_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. (vsW3=1 .OR. vsW3=2)
                DO pf3_3600b IN PCC3600B WITH "PCC3600B"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. (vsW4=1 .OR. vsW4=2)
                DO pf4_3600b IN PCC3600B WITH "PCC3600B"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. miMp=1
                SET READBORDER ON
                DO op1_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3600b WITH "v"
                DO diS_3600b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE vsW0=5
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO tiT_3600a
                SET READBORDER ON
                DO coLbln
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,iCLN+20.0 Get  vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"      Color ,&mColBlN
                          @iFIL-4,iCLN+26.3 Get  vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "999"     Color ,&mColBlN
                          @iFIL-4,iCLN+33.3 Get  vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999" Color ,&mColBlN
                     CASE vsW0=2
                          @iFIL-4,iCLN+18.0 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,28,70
                     CASE vsW0=3
                          @iFIL-4,iCLN+30.5 Get  vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
                     CASE vsW0=4
                          @iFIL-4,iCLN+35.5 Get  vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7 Color ,&mColBlN
                     CASE vsW0=5
                          @iFIL-4,iCLN+17.0 Get  vTD1 Font "&mLetRom",11 Style "NQ" Size 1,3.5  Pict "!!"                   Color ,&mColBlN
                          @iFIL-4,iCLN+23.3 Get  vSRR Font "&mLetRom",11 Style "NQ" Size 1,4    Pict "999"                  Color ,&mColBlN
                          @iFIL-4,iCLN+30.3 Get  vDO1 Font "&mLetRom",11 Style "NQ" Size 1,19.1 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
                ENDCASE
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                vXLS=PutFile("Archivo Excel:","&mVIN"+"CTAS_X_PAGAR_DETALLADAS.XLS","XLS")
                RESTORE SCREEN FROM vpAn_11
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               SELECT tmP_excel
                               ZAP
                               DO CASE
                                    CASE vsW1=1
                                         SELECT peNd_cpras
                                    CASE vsW1=2
                                         SELECT coPia
                               ENDCASE
                               GOTO TOP
                               SEEK veSt
                               SAVE SCREEN TO vpAn_11
                               DO WHILE  .NOT. EOF() .AND. f3600est=veSt
                                    WAIT WINDOW NOWAIT "Leyendo: "+ ;
                                     f3600tdo+":"+f3600ser+"-"+f3600doc
                                    DO muE_3600a IN PCC3600A
                                    SELECT tmP_excel
                                    APPEND BLANK
                                    REPLACE doCumen WITH xtDo+":"+xsEr+"-"+xdOc
                                    REPLACE doC_real WITH xtD1+":"+xsRr+ ;
                                     "-"+xdO1
                                    REPLACE emIsion WITH DTOC(xfEm)
                                    REPLACE veNcimi WITH DTOC(xfVe)
                                    REPLACE coD_prv WITH xpRv
                                    REPLACE prOveed WITH xnOm
                                    DO CASE
                                         CASE xmOn=1
                                              REPLACE moNeda WITH "S/."
                                              REPLACE toT_sol WITH xtOt
                                              REPLACE acU_sol WITH xaCu
                                              REPLACE slD_sol WITH xtOt-xaCu
                                         CASE xmOn=2
                                              REPLACE moNeda WITH "US$"
                                              REPLACE toT_usd WITH xtOt
                                              REPLACE acU_usd WITH xaCu
                                              REPLACE slD_usd WITH xtOt-xaCu
                                    ENDCASE
                                    IF xtD1="NC"
                                         DO CASE
                                              CASE xmOn=1
                                                   REPLACE toT_sol WITH  ;
                                                    toT_sol*-1
                                                   REPLACE acU_sol WITH  ;
                                                    acU_sol*-1
                                                   REPLACE slD_sol WITH  ;
                                                    slD_sol*-1
                                              CASE xmOn=2
                                                   REPLACE toT_usd WITH  ;
                                                    toT_usd*-1
                                                   REPLACE acU_usd WITH  ;
                                                    acU_usd*-1
                                                   REPLACE slD_usd WITH  ;
                                                    slD_usd*-1
                                         ENDCASE
                                    ENDIF
                                    DO CASE
                                         CASE vsW1=1
                                              SELECT peNd_cpras
                                         CASE vsW1=2
                                              SELECT coPia
                                    ENDCASE
                                    SKIP
                               ENDDO
                               WAIT CLEAR
                               RESTORE SCREEN FROM vpAn_11
                               SELECT tmP_excel
                               SUM toT_sol TO xtO1 ALL
                               SUM acU_sol TO xaC1 ALL
                               SUM slD_sol TO xsL1 ALL
                               SUM toT_usd TO xtO2 ALL
                               SUM acU_usd TO xaC2 ALL
                               SUM slD_usd TO xsL2 ALL
                               APPEND BLANK
                               REPLACE toT_sol WITH xtO1
                               REPLACE acU_sol WITH xaC1
                               REPLACE slD_sol WITH xsL1
                               REPLACE toT_usd WITH xtO2
                               REPLACE acU_usd WITH xaC2
                               REPLACE slD_usd WITH xsL2
                               PRIVATE pnUm, prEc, pxLs
                               IF RECNO()<=16383
                                    Export to &vXLS Type XLS
                                    DO xlS_0000a
                               ELSE
                                    STORE 1 TO pnUm, prEc
                                    STORE vxLs TO pxLs
                                    DO WHILE .T.
                                         GOTO TOP
                                         DO CASE
                                              CASE pnUm<10
                                                   STORE SUBSTR(pxLs, 1,  ;
                                                    AT(".XLS", pxLs)-1)+ ;
                                                    "_"+STR(pnUm, 1, 0)+ ;
                                                    ".XLS" TO vxLs
                                              CASE pnUm<100
                                                   STORE SUBSTR(pxLs, 1,  ;
                                                    AT(".XLS", pxLs)-1)+ ;
                                                    "_"+STR(pnUm, 2, 0)+ ;
                                                    ".XLS" TO vxLs
                                              CASE pnUm<1000
                                                   STORE SUBSTR(pxLs, 1,  ;
                                                    AT(".XLS", pxLs)-1)+ ;
                                                    "_"+STR(pnUm, 3, 0)+ ;
                                                    ".XLS" TO vxLs
                                              CASE pnUm<10000
                                                   STORE SUBSTR(pxLs, 1,  ;
                                                    AT(".XLS", pxLs)-1)+ ;
                                                    "_"+STR(pnUm, 4, 0)+ ;
                                                    ".XLS" TO vxLs
                                              OTHERWISE
                                                   STORE SUBSTR(pxLs, 1,  ;
                                                    AT(".XLS", pxLs)-1)+ ;
                                                    "_"+STR(pnUm, 5, 0)+ ;
                                                    ".XLS" TO vxLs
                                         ENDCASE
                                         Export to &vXLS Type XLS for Recno() >= pREC .and. Recno() <= pREC+16382
                                         DO xlS_0000a
                                         pnUm = pnUm+1
                                         prEc = prEc+16383
                                         GOTO BOTTOM
                                         IF RECNO()<prEc
                                              EXIT
                                         ENDIF
                                    ENDDO
                               ENDIF
                               RELEASE pnUm, prEc, pxLs
                     ENDCASE
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3600b WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3600b WITH "v"
                DO diS_3600b WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Tab
                DO CASE
                     CASE vsW1=1
                          SELECT ctAs_total_cpras
                          SUM f3602to1-f3602ac1 TO tfA1 FOR f3602tdo="FA"
                          SUM f3602to1-f3602ac1 TO tbO1 FOR f3602tdo="BO"
                          SUM f3602to1-f3602ac1 TO tlE1 FOR f3602tdo="LP"
                          SUM f3602to1-f3602ac1 TO tnC1 FOR f3602tdo="NC"
                          SUM f3602to1-f3602ac1 TO tnD1 FOR f3602tdo="ND"
                          SUM f3602to1-f3602ac1 TO tpU1 FOR f3602tdo="PU"
                          SUM f3602to1-f3602ac1 TO tnP1 FOR f3602tdo<> ;
                              "FA" .AND. f3602tdo<>"BO" .AND. f3602tdo<> ;
                              "LP" .AND. f3602tdo<>"NC" .AND. f3602tdo<> ;
                              "ND" .AND. f3602tdo<>"PU"
                          SUM f3602to2-f3602ac2 TO tfA2 FOR f3602tdo="FA"
                          SUM f3602to2-f3602ac2 TO tbO2 FOR f3602tdo="BO"
                          SUM f3602to2-f3602ac2 TO tlE2 FOR f3602tdo="LP"
                          SUM f3602to2-f3602ac2 TO tnC2 FOR f3602tdo="NC"
                          SUM f3602to2-f3602ac2 TO tnD2 FOR f3602tdo="ND"
                          SUM f3602to2-f3602ac2 TO tpU2 FOR f3602tdo="PU"
                          SUM f3602to2-f3602ac2 TO tnP2 FOR f3602tdo<> ;
                              "FA" .AND. f3602tdo<>"BO" .AND. f3602tdo<> ;
                              "LP" .AND. f3602tdo<>"NC" .AND. f3602tdo<> ;
                              "ND" .AND. f3602tdo<>"PU"
                ENDCASE
                DO coLsc3
                SAVE SCREEN TO vpAn_11
                STORE icLn+53 TO vcLn
                @ ifIl-02.4, vcLn+00 TO ifIl+16.0, vcLn+85 PATTERN 1
                @ ifIl-00.4, vcLn+00 TO ifIl-00.4, vcLn+85
                @ ifIl+14.0, vcLn+00 TO ifIl+16.0, vcLn+85
                @ ifIl-02.4, vcLn+29 TO ifIl+16.0, vcLn+29
                @ ifIl-02.4, vcLn+57 TO ifIl+16.0, vcLn+57
                @iFIL-02.0,vCLN+02 Say "Saldo de:"        Font "&mLetRom",12 Style "BQ"
                @iFIL-02.0,vCLN+42 Say "S/."              Font "&mLetRom",12 Style "BQ"
                @iFIL-02.0,vCLN+69 Say "US$"              Font "&mLetRom",12 Style "BQ"
                @iFIL+00.0,vCLN+02 Say "Factura"          Font "&mLetRom",12 Style "BQ"
                @iFIL+02.0,vCLN+02 Say "Boleta"           Font "&mLetRom",12 Style "BQ"
                @iFIL+04.0,vCLN+02 Say "NP"               Font "&mLetRom",12 Style "BQ"
                @iFIL+06.0,vCLN+02 Say "Letras"           Font "&mLetRom",12 Style "BQ"
                @iFIL+08.0,vCLN+02 Say "Notas de Crédito" Font "&mLetRom",12 Style "BQ"
                @iFIL+10.0,vCLN+02 Say "Notas de Débito"  Font "&mLetRom",12 Style "BQ"
                @iFIL+12.0,vCLN+02 Say "Recibos Públicos" Font "&mLetRom",12 Style "BQ"
                @iFIL+14.3,vCLN+02 Say "Totales:"         Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE vsW1=1
                          @iFIL+00.0,vCLN+31 Say tFA1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+00.0,vCLN+59 Say tFA2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+02.0,vCLN+31 Say tBO1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+02.0,vCLN+59 Say tBO2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+04.0,vCLN+31 Say tNP1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+04.0,vCLN+59 Say tNP2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+06.0,vCLN+31 Say tLE1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+06.0,vCLN+59 Say tLE2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+08.0,vCLN+31 Say tNC1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+08.0,vCLN+59 Say tNC2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+10.0,vCLN+31 Say tND1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+10.0,vCLN+59 Say tND2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+12.0,vCLN+31 Say tPU1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+12.0,vCLN+59 Say tPU2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+14.3,vCLN+31 Say tFA1+tBO1+tNP1+tLE1-tNC1+tND1+tPU1 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+14.3,vCLN+59 Say tFA2+tBO2+tNP2+tLE2-tNC2+tND2+tPU2 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                     CASE vsW1=2
                          @iFIL+00.0,vCLN+31 Say vFA1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+00.0,vCLN+59 Say vFA2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+02.0,vCLN+31 Say vBO1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+02.0,vCLN+59 Say vBO2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+04.0,vCLN+31 Say vNP1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+04.0,vCLN+59 Say vNP2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+06.0,vCLN+31 Say vLE1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+06.0,vCLN+59 Say vLE2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+08.0,vCLN+31 Say vNC1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+08.0,vCLN+59 Say vNC2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+10.0,vCLN+31 Say vND1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+10.0,vCLN+59 Say vND2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+12.0,vCLN+31 Say vPU1               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+12.0,vCLN+59 Say vPU2               Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+14.3,vCLN+31 Say vFA1+vBO1+vNP1+vLE1-vNC1+vND1+vPU1 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                          @iFIL+14.3,vCLN+59 Say vFA2+vBO2+vNP2+vLE2-vNC2+vND2+vPU2 Font "&mLetRom",12 Style "NQ" Pict "999,999,999.99" Size 1,20
                ENDCASE
                mkEy = INKEY(0, "HM")
                RESTORE SCREEN FROM vpAn_11
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                STORE 99 TO mkEy
           CASE mkEy=k_Enter
                SELECT peNd_cpras
                STORE 00 TO vpA1, vpA2
                STORE 99 TO mkEy
                DO orD_0000a WITH "3600", "C", "F3600DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SEEK vtDo+vsEr+vdOc
                IF  .NOT. EOF()
                     DO paG_3600b IN PCC3600B WITH vtDo, vsEr, vdOc
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO orD_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT paGos
                GOTO TOP
                IF BOF()
                     STORE "No hay Pagos realizados en este Documento..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pcC3600c WITH "PCC3600B"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO seE_3600b WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3600b
                DO p1_0000a
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT peNd_cpras
                     CASE vsW1=2
                          SELECT coPia
                ENDCASE
                DO orD_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_3600b WITH "v"
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (vsW4=1  ;
                .OR. vsW4=2)
                DO pcT_3600b IN PCC3600B WITH "PCC3600B"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK veSt
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3600b
                               OTHERWISE
                                    DO seE_3600b WITH "v"
                                    DO diS_3600b WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3600b WITH "i", "v"
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK veSt+"ZZZZZZZZZZZZ"
                SET NEAR OFF
                IF EOF() .OR. f3600est<>veSt
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3600b
                               OTHERWISE
                                    DO seE_3600b WITH "v"
                                    DO diS_3600b WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufIl TO vfIl
                          DO muE_3600b WITH "u", "v"
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f3600est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3600a IN PCC3600A WITH ifIl, ffIl+1
                               DO muE_3600b WITH "F", "v"
                               DO muE_3600b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3600b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3600b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3600est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3600a IN PCC3600A WITH ifIl, ffIl+1
                               DO muE_3600b WITH "F", "v"
                               DO muE_3600b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3600b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3600b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3600b WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f3600est<>veSt
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3600b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3600b WITH "i", "v"
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3600b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f3600est<>veSt
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF() .OR. f3600est<>veSt
                               GOTO TOP
                               SEEK veSt
                          ENDIF
                          DO paN_3600b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3600b WITH "i", "v"
                          DO seE_3600b WITH "v"
                          DO diS_3600b WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3600b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3600b
 DO pn1_3600b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3600b
 DO pn1_3600b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3600b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3600b WITH "F", "v"
 DO muE_3600b WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. f3600est=veSt .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3600tdo+f3600ser+f3600doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3600b WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO muE_3600b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_3600a IN PCC3600A WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_3600b
 PARAMETER ptIp
 PRIVATE ptDo, psEr, pdOc, psIg, paNo, pmEs, psR1, pnUm
 PRIVATE plTr, pcHe, pcJn, plEt, ptOt, paCu, psLd
 STORE "" TO plTr, pcJn
 STORE SPACE(1) TO pcHe, plEt
 STORE f3600tdo TO ptDo
 STORE f3600ser TO psEr
 STORE f3600doc TO pdOc
 STORE f3600tot TO ptOt
 STORE f3600acu TO paCu
 STORE ptOt-paCu TO psLd
 DO CASE
      CASE f3600mon=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "U$" TO psIg
 ENDCASE
 IF ptDo<>"LP"
      SELECT deT_sal_caja
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f3521tdo+f3521sr1+f3521doc=ptDo+psEr+pdOc
           STORE f3521ano TO paNo
           STORE f3521mes TO pmEs
           STORE f3521ser TO psR1
           STORE f3521num TO pnUm
           SELECT caB_sal_caja
           SEEK paNo+pmEs+psR1+pnUm
           IF  .NOT. EOF() .AND. f3520est<>"9" .AND. LEN(ALLTRIM(f3520let))<>0
                IF LEN(ALLTRIM(plTr))<>0
                     STORE plTr+";"+f3520srl+"-"+f3520let TO plTr
                ELSE
                     STORE plTr+f3520srl+"-"+f3520let TO plTr
                ENDIF
           ENDIF
           SELECT deT_sal_caja
           SKIP
      ENDDO
      SELECT deT_sal_bancos
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=ptDo+psEr+pdOc
           STORE f3541ano TO paNo
           STORE f3541mes TO pmEs
           STORE f3541ser TO psR1
           STORE f3541num TO pnUm
           SELECT caB_sal_bancos
           SEEK paNo+pmEs+psR1+pnUm
           IF  .NOT. EOF() .AND. f3540est<>"9" .AND. f3540tpo=1
                STORE "*" TO pcHe
                EXIT
           ENDIF
           SELECT deT_sal_bancos
           SKIP
      ENDDO
 ELSE
      SELECT deT_sal_caja
      DO orD_0000a WITH "3521", "C", "F3521NUM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT caB_sal_caja
      DO orD_0000a WITH "3520", "C", "F3520LET", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK psEr+pdOc
      IF EOF()
           STORE "*" TO pcJn
      ELSE
           DO WHILE  .NOT. EOF() .AND. f3520srl+f3520let=psEr+pdOc
                STORE f3520ano TO paNo
                STORE f3520mes TO pmEs
                STORE f3520ser TO psR1
                STORE f3520num TO pnUm
                SELECT deT_sal_caja
                SEEK paNo+pmEs+psR1+pnUm
                DO WHILE  .NOT. EOF() .AND. f3521ano+f3521mes+f3521ser+ ;
                   f3521num=paNo+pmEs+psR1+pnUm
                     IF LEN(ALLTRIM(plTr))<>0
                          STORE plTr+";"+f3521tdo+":"+f3521sr1+"-"+ ;
                                f3521doc TO plTr
                     ELSE
                          STORE plTr+f3521tdo+":"+f3521sr1+"-"+f3521doc TO plTr
                     ENDIF
                     SELECT deT_sal_caja
                     SKIP
                ENDDO
                SELECT caB_sal_caja
                SKIP
           ENDDO
      ENDIF
      SELECT caB_sal_caja
      DO orD_0000a WITH "3520", "C", "F3520NUM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_sal_caja
      DO orD_0000a WITH "3521", "C", "F3521DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT leTras_prv
      SEEK psEr+pdOc
      DO CASE
           CASE SUBSTR(f3210com, 1, 2)="PR"
                STORE "pr" TO plEt
           CASE f3210tip=1
                STORE "D" TO plEt
           CASE f3210tip=2
                STORE "C" TO plEt
           CASE f3210tip=3
                STORE "N" TO plEt
      ENDCASE
 ENDIF
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f3600td1="NC"
           DO coLscr
           STORE ptOt*-1 TO ptOt
           STORE paCu*-1 TO paCu
           STORE psLd*-1 TO psLd
      CASE ptIp="R" .AND. f3600td1="NC"
           DO coLblr
           STORE ptOt*-1 TO ptOt
           STORE paCu*-1 TO paCu
           STORE psLd*-1 TO psLd
      CASE ptIp="N" .AND. f3600fem=f3600fve
           DO coLsc7
      CASE ptIp="R" .AND. f3600fem=f3600fve
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN     Say pCJN+F3600TDO Font "&mLetAri",9 Style "NQ" Size 1,3.5
 @vFIL,iCLN+4.2 Say F3600SER      Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFIL,iCLN+9.0 Say F3600DOC      Font "&mLetAri",9 Style "NQ" Size 1,10.2
 DO CASE
      CASE ptIp="N" .AND. f3600fve<DATE() .AND. f3600td1<>"NC" .AND.  ;
           f3600tdo<>"ND"
           DO coLscz
      CASE ptIp="R" .AND. f3600fve<DATE() .AND. f3600td1<>"NC" .AND.  ;
           f3600tdo<>"ND"
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN+33 Say F3600FVE Font "&mLetAri",9 Style "NQ" Size 1,12.5
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN+019.8 Say F3600FEM Font "&mLetAri",9 Style "NQ" Size 1,12.5
 @vFIL,iCLN+137.1 Say pSIG     Font "&mLetAri",9 Style "NQ" Size 1,3.5
 @vFIL,iCLN+194.1 Say pLET     Font "&mLetAri",9 Style "BQ" Size 1,1.6
 @vFIL,iCLN+196.8 Say pCHE     Font "&mLetAri",9 Style "BQ" Size 1,1.6
 DO CASE
      CASE vsW3=1
           @vFIL,iCLN+46.1 Say F3600PRV Font "&mLetAri",9 Style "NQ" Size 1,06
           @vFIL,iCLN+52.7 Say F3600NOM Font "&mLetAri",9 Style "NQ" Size 1,41.3 Pict "@S44"
      CASE vsW3=2
           @vFIL,iCLN+46.1 Say F3600PRV Font "&mLetAri",9 Style "NQ" Size 1,06
           @vFIL,iCLN+52.7 Say F3600NOM Font "&mLetAri",9 Style "NQ" Size 1,83.7 Pict "@S86"
 ENDCASE
 DO CASE
      CASE vsW4=1
           DO CASE
                CASE vsW2=1
                     @vFIL,iCLN+94.7 Say Space(01)                          Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+94.8 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ" Size 1,41.7 Pict "@S43"
                CASE vsW2=2
                     DO CASE
                          CASE ptIp="N" .AND. f3600tpr="00"
                               DO coLscz
                          CASE ptIp="R" .AND. f3600tpr="00"
                               DO coLblz
                     ENDCASE
                     @vFIL,iCLN+094.7 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+094.8 Say F3600TPR Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vFIL,iCLN+100.7 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+101.2 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.2
                     @vFIL,iCLN+101.4 Say F3600NTP Font "&mLetAri",9 Style "NQ" Size 1,35.1 Pict "@S33"
                CASE vsW2=3
                     @vFIL,iCLN+094.7 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+094.8 Say pLTR     Font "&mLetAri",9 Style "NQ" Size 1,41.7 Pict "@S43"
                CASE vsW2=4 .AND. miMp=1
                     @vFIL,iCLN+094.7 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+094.8 Say F3600PED Font "&mLetAri",9 Style "NQ" Size 1,41.7 Pict "@S43"
           ENDCASE
      CASE vsW4=2
           DO CASE
                CASE vsW2=1
                     @vFIL,iCLN+46.0 Say Space(01)                          Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+46.1 Say F3600TD1+":"+F3600SR1+"-"+F3600DO1 Font "&mLetAri",9 Style "NQ" Size 1,90.3 Pict "@S92"
                CASE vsW2=2
                     DO CASE
                          CASE ptIp="N" .AND. f3600tpr="00"
                               DO coLscz
                          CASE ptIp="R" .AND. f3600tpr="00"
                               DO coLblz
                     ENDCASE
                     @vFIL,iCLN+46.0 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+46.1 Say F3600TPR Font "&mLetAri",9 Style "NQ" Size 1,06
                     @vFIL,iCLN+52.0 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+52.5 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.2
                     @vFIL,iCLN+52.7 Say F3600NTP Font "&mLetAri",9 Style "NQ" Size 1,83.7 Pict "@S86"
                CASE vsW2=3
                     @vFIL,iCLN+46.0 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+46.1 Say pLTR     Font "&mLetAri",9 Style "NQ" Size 1,90.3 Pict "@S92"
                CASE vsW2=4 .AND. miMp=1
                     @vFIL,iCLN+46.0 Say Space(1) Font "&mLetAri",9 Style "NQ" Size 1,00.1
                     @vFIL,iCLN+46.1 Say F3600PED Font "&mLetAri",9 Style "NQ" Size 1,90.3 Pict "@S92"
           ENDCASE
 ENDCASE
 @vFIL,iCLN+141.3 Say pTOT Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,16.7
 @vFIL,iCLN+158.8 Say pACU Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,16.7
 DO CASE
      CASE ptIp="N" .AND. psLd<0
           DO coLscr
      CASE ptIp="R" .AND. psLd<0
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF psLd<0
      @vFIL,iCLN+176.1 Say pSLD Font "&mLetAri",9 Style "BQ" Pict "9,999,999.99" Size 1,14.2
 ELSE
      @vFIL,iCLN+176.1 Say pSLD Font "&mLetAri",9 Style "NQ" Pict "9,999,999.99" Size 1,16.7
 ENDIF
 IF ptIp="R"
      DO coLbln
      DO muE_3600b WITH "F", "v"
      DO CASE
           CASE vsW0=1
                @iFIL-4,iCLN+20.0 Say vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!"
                @iFIL-4,iCLN+26.3 Say vSER Font "&mLetRom",11 Style "NQ" Size 1,4   Pict "999"
                @iFIL-4,iCLN+33.3 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9.1 Pict "9999999"
           CASE vsW0=2
                @iFIL-4,iCLN+18.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,28 Pict "@S31"
           CASE vsW0=3
                @iFIL-4,iCLN+30.5 Say vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.7
           CASE vsW0=4
                @iFIL-4,iCLN+35.5 Say vFVE Font "&mLetRom",11 Style "NQ" Size 1,10.7
           CASE vsW0=5
                @iFIL-4,iCLN+17.0 Say vTD1 Font "&mLetRom",11 Style "NQ" Size 1,3.5  Pict "!!"                   Color ,&mColBlN
                @iFIL-4,iCLN+23.3 Say vSRR Font "&mLetRom",11 Style "NQ" Size 1,4    Pict "999"                  Color ,&mColBlN
                @iFIL-4,iCLN+30.3 Say vDO1 Font "&mLetRom",11 Style "NQ" Size 1,19.1 Pict "!!!!!!!!!!!!!!!!!!!!" Color ,&mColBlN
      ENDCASE
 ENDIF
 RELEASE ptDo, psEr, pdOc, psIg, paNo, pmEs, psR1, pnUm
 RELEASE plTr, pcHe, pcJn, plEt, ptOt, paCu, psLd
ENDPROC
*
PROCEDURE Opc_3600b
 DO rs2_3600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3600b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_3600a
           IF mkEy=k_Esc
                EXIT
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
                     77 .AND. mcCc<=mmC1+85.80
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
           CASE mkEy=k_F1
                DO hl2_3600b
           CASE mkEy=k_F12
                DO reS_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT coPia
                ZAP
                REINDEX
                SELECT peNd_cpras
                GOTO TOP
                SEEK veSt
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, vfA1, vfA2, vbO1,  ;
                      vbO2, vnP1
                STORE 00 TO vnP2, vlE1, vlE2, vnC1, vnC2, vnD1, vnD2,  ;
                      vpU1, vpU2
                DO WHILE  .NOT. EOF() .AND. f3600est=veSt
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3600nom)))<>0
                          DO muE_3600a
                          DO grA_3600a
                          DO CASE
                               CASE f3600mon=1 .AND. f3600td1="NC"
                                    STORE vtO1-f3600tot TO vtO1
                                    STORE vaC1-f3600acu TO vaC1
                               CASE f3600mon=1
                                    STORE vtO1+f3600tot TO vtO1
                                    STORE vaC1+f3600acu TO vaC1
                               CASE f3600mon=2 .AND. f3600td1="NC"
                                    STORE vtO2-f3600tot TO vtO2
                                    STORE vaC2-f3600acu TO vaC2
                               CASE f3600mon=2
                                    STORE vtO2+f3600tot TO vtO2
                                    STORE vaC2+f3600acu TO vaC2
                          ENDCASE
                          DO CASE
                               CASE f3600td1="FA" .AND. f3600mon=1
                                    STORE vfA1+(f3600tot-f3600acu) TO vfA1
                               CASE f3600td1="FA" .AND. f3600mon=2
                                    STORE vfA2+(f3600tot-f3600acu) TO vfA2
                               CASE f3600td1="BO" .AND. f3600mon=1
                                    STORE vbO1+(f3600tot-f3600acu) TO vbO1
                               CASE f3600td1="BO" .AND. f3600mon=2
                                    STORE vbO2+(f3600tot-f3600acu) TO vbO2
                               CASE f3600td1="LP" .AND. f3600mon=1
                                    STORE vlE1+(f3600tot-f3600acu) TO vlE1
                               CASE f3600td1="LP" .AND. f3600mon=2
                                    STORE vlE2+(f3600tot-f3600acu) TO vlE2
                               CASE f3600td1="ND" .AND. f3600mon=1
                                    STORE vnD1+(f3600tot-f3600acu) TO vnD1
                               CASE f3600td1="ND" .AND. f3600mon=2
                                    STORE vnD2+(f3600tot-f3600acu) TO vnD2
                               CASE f3600td1="NC" .AND. f3600mon=1
                                    STORE vnC1+(f3600tot-f3600acu) TO vnC1
                               CASE f3600td1="NC" .AND. f3600mon=2
                                    STORE vnC2+(f3600tot-f3600acu) TO vnC2
                               CASE f3600td1="PU" .AND. f3600mon=1
                                    STORE vpU1+(f3600tot-f3600acu) TO vpU1
                               CASE f3600td1="PU" .AND. f3600mon=2
                                    STORE vpU2+(f3600tot-f3600acu) TO vpU2
                               CASE f3600mon=1
                                    STORE vnP1+(f3600tot-f3600acu) TO vnP1
                               CASE f3600mon=2
                                    STORE vnP2+(f3600tot-f3600acu) TO vnP2
                          ENDCASE
                          SELECT peNd_cpras
                     ENDIF
                     SKIP
                ENDDO
                SELECT coPia
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,iCLN+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,65,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW1<>csW1
      DO orD_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      SEEK veSt
      DO paN_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3600b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1,iCLN+1  Say "Palabra:" Font "&mLetRom",9 Style "BQ" Size 1,10
 @mFI0+mUFI-1,iCLN+11 Say vPAL       Font "&mLetRom",9 Style "BQ" Size 1,60 Pict "@S65"
 DO toT_3600a
ENDPROC
*
PROCEDURE Op1_3600b
 DO rs3_3600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3600b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs3_3600a
           IF mkEy=k_Esc
                EXIT
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
                     77 .AND. mcCc<=mmC1+85.80
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
           CASE mkEy=k_F1
                DO hl2_3600b
           CASE mkEy=k_F12
                DO reS_3600b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs3_3600a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT coPia
                ZAP
                REINDEX
                SELECT peNd_cpras
                GOTO TOP
                SEEK veSt
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, vfA1, vfA2, vbO1,  ;
                      vbO2, vnP1
                STORE 00 TO vnP2, vlE1, vlE2, vnC1, vnC2, vnD1, vnD2,  ;
                      vpU1, vpU2
                DO WHILE  .NOT. EOF() .AND. f3600est=veSt
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3600ped)))<>0
                          DO muE_3600a
                          DO grA_3600a
                          DO CASE
                               CASE f3600mon=1 .AND. f3600td1="NC"
                                    STORE vtO1-f3600tot TO vtO1
                                    STORE vaC1-f3600acu TO vaC1
                               CASE f3600mon=1
                                    STORE vtO1+f3600tot TO vtO1
                                    STORE vaC1+f3600acu TO vaC1
                               CASE f3600mon=2 .AND. f3600td1="NC"
                                    STORE vtO2-f3600tot TO vtO2
                                    STORE vaC2-f3600acu TO vaC2
                               CASE f3600mon=2
                                    STORE vtO2+f3600tot TO vtO2
                                    STORE vaC2+f3600acu TO vaC2
                          ENDCASE
                          DO CASE
                               CASE f3600td1="FA" .AND. f3600mon=1
                                    STORE vfA1+(f3600tot-f3600acu) TO vfA1
                               CASE f3600td1="FA" .AND. f3600mon=2
                                    STORE vfA2+(f3600tot-f3600acu) TO vfA2
                               CASE f3600td1="BO" .AND. f3600mon=1
                                    STORE vbO1+(f3600tot-f3600acu) TO vbO1
                               CASE f3600td1="BO" .AND. f3600mon=2
                                    STORE vbO2+(f3600tot-f3600acu) TO vbO2
                               CASE f3600td1="LP" .AND. f3600mon=1
                                    STORE vlE1+(f3600tot-f3600acu) TO vlE1
                               CASE f3600td1="LP" .AND. f3600mon=2
                                    STORE vlE2+(f3600tot-f3600acu) TO vlE2
                               CASE f3600td1="ND" .AND. f3600mon=1
                                    STORE vnD1+(f3600tot-f3600acu) TO vnD1
                               CASE f3600td1="ND" .AND. f3600mon=2
                                    STORE vnD2+(f3600tot-f3600acu) TO vnD2
                               CASE f3600td1="NC" .AND. f3600mon=1
                                    STORE vnC1+(f3600tot-f3600acu) TO vnC1
                               CASE f3600td1="NC" .AND. f3600mon=2
                                    STORE vnC2+(f3600tot-f3600acu) TO vnC2
                               CASE f3600td1="PU" .AND. f3600mon=1
                                    STORE vpU1+(f3600tot-f3600acu) TO vpU1
                               CASE f3600td1="PU" .AND. f3600mon=2
                                    STORE vpU2+(f3600tot-f3600acu) TO vpU2
                               CASE f3600mon=1
                                    STORE vnP1+(f3600tot-f3600acu) TO vnP1
                               CASE f3600mon=2
                                    STORE vnP2+(f3600tot-f3600acu) TO vnP2
                          ENDCASE
                          SELECT peNd_cpras
                     ENDIF
                     SKIP
                ENDDO
                SELECT coPia
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,iCLN+91.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,10,7
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW1<>csW1
      DO orD_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      SEEK veSt
      DO paN_3600b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3600b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1,iCLN+1  Say "Pedido:" Font "&mLetRom",9 Style "BQ" Size 1,10
 @mFI0+mUFI-1,iCLN+11 Say vPAL      Font "&mLetRom",9 Style "BQ" Size 1,60 Pict "@S65"
 DO toT_3600a
ENDPROC
*
PROCEDURE Cam_3600b
 DO muE_3600b WITH "v", "x"
 STORE vsW0 TO csW0
 STORE 00 TO cfIl
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 DO orD_3600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3600b WITH "i"
 DO pa1_3600b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_3600b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3600b WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3600b WITH "v"
 DO diS_3600b WITH "R"
ENDPROC
*
PROCEDURE Pag_3600b
 PARAMETER ptDo, psEr, pdOc
 PRIVATE qmOn, qaNo, qmEs, qsR1, qnUm, qpGo, qrCb, qtPo, qtPp, qtIp, qnTi, qdIa
 PRIVATE qgLo, qmNd, qtCa, qbAn, qnBa, qcTa, qnCt, qcHe, qrCc, qsRl, qlEt, qcAj
 PRIVATE qdNc, qfCa, qaCu, qpA1, qpA2, qrEn
 STORE CTOD("  /  /    ") TO qfCa
 STORE f3600mon TO qmOn
 STORE 00 TO qaCu, qpA1, qpA2, qrEn
 SELECT paGos
 ZAP
 REINDEX
 SELECT deT_sal_caja
 SEEK ptDo+psEr+pdOc
 DO WHILE  .NOT. EOF() .AND. f3521tdo+f3521sr1+f3521doc=ptDo+psEr+pdOc
      STORE f3521ano TO qaNo
      STORE f3521mes TO qmEs
      STORE f3521ser TO qsR1
      STORE f3521num TO qnUm
      STORE f3521pag TO qpGo
      STORE f3521rcb TO qrCb
      SELECT caB_sal_caja
      SEEK qaNo+qmEs+qsR1+qnUm
      IF  .NOT. EOF() .AND. f3520est<>"9"
           STORE f3520dia TO qdIa
           STORE f3520tpo TO qtPo
           STORE f3520tpp TO qtPp
           STORE f3520caj TO qcAj
           STORE f3520tip TO qtIp
           STORE f3520nti TO qnTi
           STORE f3520glo TO qgLo
           STORE f3520mon TO qmNd
           STORE f3520tca TO qtCa
           STORE f3520srl TO qsRl
           STORE f3520let TO qlEt
           STORE f3520rcb TO qrCc
           SELECT paGos
           DO nuEvo_rg
           REPLACE ftM2ano WITH qaNo
           REPLACE ftM2mes WITH qmEs
           REPLACE ftM2dia WITH qdIa
           REPLACE ftM2ttt WITH "1"
           REPLACE ftM2ser WITH qsR1
           REPLACE ftM2num WITH qnUm
           REPLACE ftM2tpp WITH qtPp
           REPLACE ftM2caj WITH qcAj
           REPLACE ftM2tpo WITH qtPo
           REPLACE ftM2tip WITH qtIp
           REPLACE ftM2nti WITH qnTi
           REPLACE ftM2glo WITH qgLo
           REPLACE ftM2rcb WITH qrCb
           REPLACE ftM2rcc WITH qrCc
           REPLACE ftM2mon WITH qmNd
           REPLACE ftM2tca WITH qtCa
           REPLACE ftM2pag WITH qpGo
           REPLACE ftM2srl WITH qsRl
           REPLACE ftM2let WITH qlEt
           IF qfCa=CTOD("  /  /    ") .OR. qfCa<CTOD(qdIa+"/"+qmEs+"/"+qaNo)
                STORE CTOD(qdIa+"/"+qmEs+"/"+qaNo) TO qfCa
           ENDIF
           IF qtPo<>1
                IF qmNd=1
                     STORE qpA1+qpGo TO qpA1
                ELSE
                     STORE qpA2+qpGo TO qpA2
                ENDIF
                DO CASE
                     CASE qmOn=qmNd
                          STORE qaCu+qpGo TO qaCu
                     CASE qmOn=1
                          STORE qaCu+(qpGo*qtCa) TO qaCu
                     CASE qmOn=2
                          STORE qaCu+(qpGo/qtCa) TO qaCu
                ENDCASE
           ELSE
                STORE qrEn+qpGo TO qrEn
           ENDIF
      ENDIF
      SELECT deT_sal_caja
      SKIP
 ENDDO
 SELECT deT_sal_bancos
 SEEK ptDo+psEr+pdOc
 DO WHILE  .NOT. EOF() .AND. f3541tdo+f3541sr1+f3541doc=ptDo+psEr+pdOc
      STORE f3541ano TO qaNo
      STORE f3541mes TO qmEs
      STORE f3541ser TO qsR1
      STORE f3541num TO qnUm
      STORE f3541pag TO qpGo
      STORE f3541rcb TO qrCb
      SELECT caB_sal_bancos
      SEEK qaNo+qmEs+qsR1+qnUm
      IF  .NOT. EOF() .AND. f3540est<>"9"
           STORE f3540dia TO qdIa
           STORE f3540tpo TO qtPo
           STORE f3540tpp TO qtPp
           STORE f3540tip TO qtIp
           STORE f3540nti TO qnTi
           STORE f3540glo TO qgLo
           STORE f3540mon TO qmNd
           STORE f3540tca TO qtCa
           STORE f3540ban TO qbAn
           STORE f3540nba TO qnBa
           STORE f3540cta TO qcTa
           STORE f3540nct TO qnCt
           STORE f3540che TO qcHe
           STORE f3540rcb TO qrCc
           SELECT paGos
           DO nuEvo_rg
           REPLACE ftM2ano WITH qaNo
           REPLACE ftM2mes WITH qmEs
           REPLACE ftM2dia WITH qdIa
           REPLACE ftM2ttt WITH "2"
           REPLACE ftM2ser WITH qsR1
           REPLACE ftM2num WITH qnUm
           REPLACE ftM2tpp WITH qtPp
           REPLACE ftM2caj WITH 0
           REPLACE ftM2tpo WITH qtPo
           REPLACE ftM2tip WITH qtIp
           REPLACE ftM2nti WITH qnTi
           REPLACE ftM2glo WITH qgLo
           REPLACE ftM2rcb WITH qrCb
           REPLACE ftM2rcc WITH qrCc
           REPLACE ftM2mon WITH qmNd
           REPLACE ftM2tca WITH qtCa
           REPLACE ftM2pag WITH qpGo
           REPLACE ftM2ban WITH qbAn
           REPLACE ftM2nba WITH qnBa
           REPLACE ftM2cta WITH qcTa
           REPLACE ftM2nct WITH qnCt
           REPLACE ftM2che WITH qcHe
           IF qfCa=CTOD("  /  /    ") .OR. qfCa<CTOD(qdIa+"/"+qmEs+"/"+qaNo)
                STORE CTOD(qdIa+"/"+qmEs+"/"+qaNo) TO qfCa
           ENDIF
           IF qtPo<>1
                IF qmNd=1
                     STORE qpA1+qpGo TO qpA1
                ELSE
                     STORE qpA2+qpGo TO qpA2
                ENDIF
                DO CASE
                     CASE qmOn=qmNd
                          STORE qaCu+qpGo TO qaCu
                     CASE qmOn=1
                          STORE qaCu+(qpGo*qtCa) TO qaCu
                     CASE qmOn=2
                          STORE qaCu+(qpGo/qtCa) TO qaCu
                ENDCASE
           ELSE
                STORE qrEn+qpGo TO qrEn
           ENDIF
      ENDIF
      SELECT deT_sal_bancos
      SKIP
 ENDDO
 SELECT ctAs_ini_cpras
 SEEK ptDo+psEr+pdOc
 IF  .NOT. EOF() .AND. f3601acu<>0
      STORE SUBSTR(DTOC(f3601fem), 7, 4) TO qaNo
      STORE SUBSTR(DTOC(f3601fem), 4, 2) TO qmEs
      STORE SUBSTR(DTOC(f3601fem), 1, 2) TO qdIa
      STORE f3601acu TO qpGo
      SELECT paGos
      DO nuEvo_rg
      REPLACE ftM2ano WITH qaNo
      REPLACE ftM2mes WITH qmEs
      REPLACE ftM2dia WITH qdIa
      REPLACE ftM2ttt WITH "1"
      REPLACE ftM2ser WITH "001"
      REPLACE ftM2num WITH "0000000"
      REPLACE ftM2glo WITH "Saldo anterior"
      REPLACE ftM2tpo WITH 3
      REPLACE ftM2mon WITH qmOn
      REPLACE ftM2tca WITH 1
      REPLACE ftM2pag WITH qpGo
      IF qfCa=CTOD("  /  /    ") .OR. qfCa<CTOD(qdIa+"/"+qmEs+"/"+qaNo)
           STORE CTOD(qdIa+"/"+qmEs+"/"+qaNo) TO qfCa
      ENDIF
      IF qmOn=1
           STORE qpA1+qpGo TO qpA1
      ELSE
           STORE qpA2+qpGo TO qpA2
      ENDIF
      STORE qaCu+qpGo TO qaCu
 ENDIF
 STORE qfCa TO vfCa
 STORE qaCu TO vaCu
 STORE qrEn TO vrEn
 STORE qpA1 TO vpA1
 STORE qpA2 TO vpA2
 RELEASE qmOn, qaNo, qmEs, qsR1, qnUm, qpGo, qrCb, qdIa, qtPo, qtPp, qtIp, qnTi
 RELEASE qgLo, qmNd, qtCa, qbAn, qnBa, qcTa, qnCt, qcHe, qrCc, qsRl, qlEt, qcAj
 RELEASE qdNc, qfCa, qaCu, qpA1, qpA2, qrEn
ENDPROC
*
PROCEDURE Res_3600b
 SET READBORDER ON
 DO reS_3600a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3600b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
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
PROCEDURE Ord_3600b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW5=2 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600PTO", "A"
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600PEN", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600NO2", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600FE2", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600FV2", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600FA2", "A"
      CASE vsW5=2
           DO orD_0000a WITH "TMP", "C", "F3600PTO", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3600PEN", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3600NO2", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3600FE2", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3600FV2", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "C", "F3600FA2", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_3600b
 PARAMETER ptP1, ptP2
 DO CASE
      CASE ptP1="v" .AND. ptP2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vtD1 TO itD1
           STORE vsRr TO isRr
           STORE vdO1 TO idO1
           STORE vpRv TO ipRv
           STORE vnOm TO inOm
           STORE vaNo TO iaNo
           STORE vmEs TO imEs
           STORE vdIa TO idIa
           STORE vaNv TO iaNv
           STORE vmEv TO imEv
           STORE vdIv TO idIv
           STORE vmOn TO imOn
           STORE vsLd TO isLd
      CASE ptP1="v" .AND. ptP2="u"
           STORE vtDo TO utDo
           STORE vsEr TO usEr
           STORE vdOc TO udOc
           STORE vtD1 TO utD1
           STORE vsRr TO usRr
           STORE vdO1 TO udO1
           STORE vpRv TO upRv
           STORE vnOm TO unOm
           STORE vaNo TO uaNo
           STORE vmEs TO umEs
           STORE vdIa TO udIa
           STORE vaNv TO uaNv
           STORE vmEv TO umEv
           STORE vdIv TO udIv
           STORE vmOn TO umOn
           STORE vsLd TO usLd
      CASE ptP1="v" .AND. ptP2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vtD1 TO ctD1
           STORE vsRr TO csRr
           STORE vdO1 TO cdO1
           STORE vpRv TO cpRv
           STORE vnOm TO cnOm
           STORE vaNo TO caNo
           STORE vmEs TO cmEs
           STORE vdIa TO cdIa
           STORE vaNv TO caNv
           STORE vmEv TO cmEv
           STORE vdIv TO cdIv
           STORE vmOn TO cmOn
           STORE vsLd TO csLd
      CASE ptP1="v" .AND. ptP2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vtD1 TO xtD1
           STORE vsRr TO xsRr
           STORE vdO1 TO xdO1
           STORE vpRv TO xpRv
           STORE vnOm TO xnOm
           STORE vaNo TO xaNo
           STORE vmEs TO xmEs
           STORE vdIa TO xdIa
           STORE vaNv TO xaNv
           STORE vmEv TO xmEv
           STORE vdIv TO xdIv
           STORE vmOn TO xmOn
           STORE vsLd TO xsLd
      CASE ptP1="x" .AND. ptP2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xtD1 TO vtD1
           STORE xsRr TO vsRr
           STORE xdO1 TO vdO1
           STORE xpRv TO vpRv
           STORE xnOm TO vnOm
           STORE xaNo TO vaNo
           STORE xmEs TO vmEs
           STORE xdIa TO vdIa
           STORE xaNv TO vaNv
           STORE xmEv TO vmEv
           STORE xdIv TO vdIv
           STORE xmOn TO vmOn
           STORE xsLd TO vsLd
      CASE ptP1="i" .AND. ptP2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE itD1 TO vtD1
           STORE isRr TO vsRr
           STORE idO1 TO vdO1
           STORE ipRv TO vpRv
           STORE inOm TO vnOm
           STORE iaNo TO vaNo
           STORE imEs TO vmEs
           STORE idIa TO vdIa
           STORE iaNv TO vaNv
           STORE imEv TO vmEv
           STORE idIv TO vdIv
           STORE imOn TO vmOn
           STORE isLd TO vsLd
      CASE ptP1="u" .AND. ptP2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE utD1 TO vtD1
           STORE usRr TO vsRr
           STORE udO1 TO vdO1
           STORE upRv TO vpRv
           STORE unOm TO vnOm
           STORE uaNo TO vaNo
           STORE umEs TO vmEs
           STORE udIa TO vdIa
           STORE uaNv TO vaNv
           STORE umEv TO vmEv
           STORE udIv TO vdIv
           STORE umOn TO vmOn
           STORE usLd TO vsLd
      CASE ptP1="c" .AND. ptP2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE ctD1 TO vtD1
           STORE csRr TO vsRr
           STORE cdO1 TO vdO1
           STORE cpRv TO vpRv
           STORE cnOm TO vnOm
           STORE caNo TO vaNo
           STORE cmEs TO vmEs
           STORE cdIa TO vdIa
           STORE caNv TO vaNv
           STORE cmEv TO vmEv
           STORE cdIv TO vdIv
           STORE cmOn TO vmOn
           STORE csLd TO vsLd
      CASE ptP1="F" .AND. ptP2="v"
           STORE f3600tdo TO vtDo
           STORE f3600ser TO vsEr
           STORE f3600doc TO vdOc
           STORE f3600td1 TO vtD1
           STORE f3600sr1 TO vsRr
           STORE f3600do1 TO vdO1
           STORE f3600prv TO vpRv
           STORE f3600nom TO vnOm
           STORE f3600mon TO vmOn
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO vaNo
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO vmEs
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO vdIa
           STORE SUBSTR(DTOC(f3600fve), 7, 4) TO vaNv
           STORE SUBSTR(DTOC(f3600fve), 4, 2) TO vmEv
           STORE SUBSTR(DTOC(f3600fve), 1, 2) TO vdIv
           STORE f3600tot-f3600acu TO vsLd
      CASE ptP1="F" .AND. ptP2="u"
           STORE f3600tdo TO utDo
           STORE f3600ser TO usEr
           STORE f3600doc TO udOc
           STORE f3600td1 TO utD1
           STORE f3600sr1 TO usRr
           STORE f3600do1 TO udO1
           STORE f3600prv TO upRv
           STORE f3600nom TO unOm
           STORE f3600mon TO umOn
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO uaNo
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO umEs
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO udIa
           STORE SUBSTR(DTOC(f3600fve), 7, 4) TO uaNv
           STORE SUBSTR(DTOC(f3600fve), 4, 2) TO umEv
           STORE SUBSTR(DTOC(f3600fve), 1, 2) TO udIv
           STORE f3600tot-f3600acu TO usLd
      CASE ptP1="F" .AND. ptP2="i"
           STORE f3600tdo TO itDo
           STORE f3600ser TO isEr
           STORE f3600doc TO idOc
           STORE f3600td1 TO itD1
           STORE f3600sr1 TO isRr
           STORE f3600do1 TO idO1
           STORE f3600prv TO ipRv
           STORE f3600nom TO inOm
           STORE f3600mon TO imOn
           STORE SUBSTR(DTOC(f3600fem), 7, 4) TO iaNo
           STORE SUBSTR(DTOC(f3600fem), 4, 2) TO imEs
           STORE SUBSTR(DTOC(f3600fem), 1, 2) TO idIa
           STORE SUBSTR(DTOC(f3600fve), 7, 4) TO iaNv
           STORE SUBSTR(DTOC(f3600fve), 4, 2) TO imEv
           STORE SUBSTR(DTOC(f3600fve), 1, 2) TO idIv
           STORE f3600tot-f3600acu TO isLd
 ENDCASE
ENDPROC
*
PROCEDURE See_3600b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW5=2
                     SEEK veSt+STR(vmOn, 1, 0)+STRTRAN(STR(vsLd, 12, 2),  ;
                          " ", "0")+vtDo+vsEr+vdOc
                CASE vsW0=1
                     SEEK veSt+vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK veSt+UPPER(vnOm)+vpRv+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK veSt+vaNo+vmEs+vdIa+vtDo+vsEr+vdOc
                CASE vsW0=4
                     SEEK veSt+vaNv+vmEv+vdIv+vtDo+vsEr+vdOc
                CASE vsW0=5
                     SEEK veSt+vtD1+vsRr+vdO1+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW5=2
                     SEEK veSt+STR(imOn, 1, 0)+STRTRAN(STR(isLd, 12, 2),  ;
                          " ", "0")+itDo+isEr+idOc
                CASE vsW0=1
                     SEEK veSt+itDo+isEr+idOc
                CASE vsW0=2
                     SEEK veSt+UPPER(inOm)+ipRv+iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK veSt+iaNo+imEs+idIa+itDo+isEr+idOc
                CASE vsW0=4
                     SEEK veSt+iaNv+imEv+idIv+itDo+isEr+idOc
                CASE vsW0=5
                     SEEK veSt+itD1+isRr+idO1+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW5=2
                     SEEK veSt+STR(umOn, 1, 0)+STRTRAN(STR(usLd, 12, 2),  ;
                          " ", "0")+utDo+usEr+udOc
                CASE vsW0=1
                     SEEK veSt+utDo+usEr+udOc
                CASE vsW0=2
                     SEEK veSt+UPPER(unOm)+upRv+uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK veSt+uaNo+umEs+udIa+utDo+usEr+udOc
                CASE vsW0=4
                     SEEK veSt+uaNv+umEv+udIv+utDo+usEr+udOc
                CASE vsW0=5
                     SEEK veSt+utD1+usRr+udO1+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Imp_3600b
 STORE 0 TO mvIs
 DO CASE
      CASE voP1=1
           DO ipR_0001a WITH "VE"
      CASE voP1=2
           DO ipR_0001a WITH "HO"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PCC3600B
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE voP1=1
           DO ipR_0001a WITH "VE"
      CASE voP1=2
           DO ipR_0001a WITH "HO"
 ENDCASE
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3600b
 DO fpR_0001a
 STORE 99 TO mkEy
 SELECT caB_sal_bancos
 DO orD_0000a WITH "3540", "C", "F3540NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sal_bancos
 DO orD_0000a WITH "3541", "C", "F3541DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rep_3600b
 PUBLIC pcL1, pcL2, ptAm
 PRIVATE ptDo, ptD1, psR1, pdOc, pfEm, pmOn, ptOt
 PRIVATE paCu, paNo, pmEs, psEr, pnUm, pdIa, pgLo, pcHe
 DO CASE
      CASE mvIs=0 .AND. mpRt="1" .AND. voP1=1
           STORE 96 TO ptAm
           STORE 07 TO mcLn
      CASE mvIs=0 .AND. mpRt="1" .AND. voP1=2
           STORE 135 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=0 .AND. mpRt="2" .AND. voP1=1
           STORE 97 TO ptAm
           STORE 08 TO mcLn
      CASE mvIs=0 .AND. mpRt="2" .AND. voP1=2
           STORE 135 TO ptAm
           STORE 12 TO mcLn
      OTHERWISE
           STORE 121 TO ptAm
           STORE 03 TO mcLn
 ENDCASE
 STORE mcLn TO pcL1
 DO CASE
      CASE mvIs=1
           STORE mcLn+19.5 TO pcL2
      CASE mpRt="1"
           STORE mcLn+16.6 TO pcL2
      CASE mpRt="2"
           STORE mcLn+20.5 TO pcL2
 ENDCASE
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 GOTO TOP
 SEEK veSt
 DO coLbln
 STORE 0 TO csL1, csL2, ctT1, ctT2, vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. f3600est=veSt
      STORE f3600tdo TO ptDo
      STORE f3600td1 TO ptD1
      STORE f3600ser TO psR1
      STORE f3600doc TO pdOc
      STORE f3600fem TO pfEm
      STORE f3600mon TO pmOn
      STORE f3600tot TO ptOt
      STORE f3600acu TO paCu
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF (voPc=1 .AND. (ptDo+psR1+pdOc<dtDo+dsEr+ddOc .OR. ptDo+psR1+pdOc> ;
         htDo+hsEr+hdOc)) .OR. (voPc=2 .AND. (pfEm<dfEm .OR. pfEm>hfEm))
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3 .OR. vpAg=0
           DO caB_3600b WITH "PCC3600A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO im1_3600b WITH pcL1, "PCC3600A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE ptD1="NC" .AND. pmOn=1
                STORE csL1-(ptOt-paCu) TO csL1
                STORE ctT1-ptOt TO ctT1
           CASE ptD1="NC"
                STORE csL2-(ptOt-paCu) TO csL2
                STORE ctT2-ptOt TO ctT2
           CASE pmOn=1
                STORE csL1+(ptOt-paCu) TO csL1
                STORE ctT1+ptOt TO ctT1
           CASE pmOn=2
                STORE csL2+(ptOt-paCu) TO csL2
                STORE ctT2+ptOt TO ctT2
      ENDCASE
      STORE vlIn+1.3 TO vlIn
      IF voP2=2
           DO CASE
                CASE vsW1=1
                     SELECT peNd_cpras
                CASE vsW1=2
                     SELECT coPia
           ENDCASE
           DO paG_3600b IN PCC3600B WITH ptDo, psR1, pdOc
           SELECT paGos
           GOTO TOP
           IF  .NOT. BOF()
                STORE vlIn+0.8 TO vlIn
                IF vlIn+1.5>mpAg-3
                     DO caB_3600b WITH "PCC3600A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                DO cb2_3600b IN PCC3600B WITH pcL2
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT paGos
                DO WHILE  .NOT. EOF()
                     IF vlIn>mpAg-3
                          DO caB_3600b WITH "PCC3600A"
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          DO cb2_3600b IN PCC3600B WITH pcL2
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                     ENDIF
                     DO im2_3600b IN PCC3600B WITH pcL2
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE vlIn+1.3 TO vlIn
                     SKIP
                ENDDO
                STORE vlIn+0.8 TO vlIn
           ENDIF
           DO CASE
                CASE vsW1=1
                     SELECT peNd_cpras
                CASE vsW1=2
                     SELECT coPia
           ENDCASE
           DO orD_3600b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT peNd_cpras
           CASE vsW1=2
                SELECT coPia
      ENDCASE
      SKIP
 ENDDO
 IF vpAg>0
      IF vlIn+2.3>mpAg-3
           DO caB_3600b WITH "PCC3600A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO suB_3600b IN PCC3600B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+2.5 TO vlIn
      IF vlIn>mpAg-3
           DO caB_3600b WITH "PCC3600A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO rsM_3600b IN PCC3600B
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 RELEASE pcL1, pcL2, ptAm
 RELEASE ptDo, ptD1, psR1, pdOc, pfEm, pmOn, ptOt
 RELEASE paCu, paNo, pmEs, psEr, pnUm, pdIa, pgLo, pcHe
ENDPROC
*
PROCEDURE Im1_3600b
 PARAMETER pcLn, ppRg
 PRIVATE qtD1, qdO1, qfVe, qnOm, qaNo, qmEs, qsEr, qnUm, qsIg, qsWa, qsWb
 STORE UPPER(ALLTRIM(f3600nom)) TO qnOm
 STORE SUBSTR(qnOm, 1, 1)+SUBSTR(LOWER(qnOm), 2, 100) TO qnOm
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
                @vLIN,pCLN+045.8 Say qDO1             Font "&mLetAri",9 Style "NQ" Size 1,34.7 Pict "@S37"
                @vLIN,pCLN+081.5 Say qNOM             Font "&mLetAri",9 Style "NQ" Size 1,55.2 Pict "@S58"
                @vLIN,pCLN+137.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+141.2 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+158.8 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+176.3 Say pTOT-pACU        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+193.7 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+196.0 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
           CASE mpRt="1"
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.8 Say qDO1             Font "&mLetAri",9 Style "NQ" Size 1,34.7 Pict "@S37"
                @vLIN,pCLN+081.5 Say qNOM             Font "&mLetAri",9 Style "NQ" Size 1,55.2 Pict "@S58"
                @vLIN,pCLN+137.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+141.2 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+158.8 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+176.3 Say pTOT-pACU        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+193.7 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+196.0 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
           CASE mpRt="2"
                @vLIN,pCLN Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+019.5 Say pFEM             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+032.5 Say qFVE             Font "&mLetAri",9 Style "NQ"
                @vLIN,pCLN+045.8 Say qDO1             Font "&mLetAri",9 Style "NQ" Size 1,34.7 Pict "@S37"
                @vLIN,pCLN+081.5 Say qNOM             Font "&mLetAri",9 Style "NQ" Size 1,55.2 Pict "@S58"
                @vLIN,pCLN+137.5 Say qSIG             Font "&mLetAri",9 Style "NQ" Size 1,3
                @vLIN,pCLN+141.2 Say pTOT             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+158.8 Say pACU             Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+176.3 Say pTOT-pACU        Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                @vLIN,pCLN+193.7 Say qSWA             Font "&mLetAri",9 Style "BQ" Size 1,1.5
                @vLIN,pCLN+196.0 Say qSWB             Font "&mLetAri",9 Style "BQ" Size 1,1.7
      ENDCASE
 ENDIF
 RELEASE qtD1, qdO1, qfVe, qnOm, qaNo, qmEs, qsEr, qnUm, qsIg, qsWa, qsWb
ENDPROC
*
PROCEDURE Im2_3600b
 PARAMETER pcLn
 PRIVATE psIg
 DO CASE
      CASE ftM2mon=1
           STORE "S/." TO psIg
      OTHERWISE
           STORE "US$" TO psIg
 ENDCASE
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblr
                @vLIN,pCLN Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",9 Style "NQ" Size 1,12.5
                @vLIN,pCLN+013.5 Say FTM2NTI                   Font "&mLetAri",9 Style "NQ" Size 1,30.0 Pict "@S33"
                @vLIN,pCLN+044.3 Say FTM2GLO                   Font "&mLetAri",9 Style "NQ" Size 1,41.5 Pict "@S43"
                @vLIN,pCLN+086.6 Say FTM2RCB                   Font "&mLetAri",9 Style "NQ" Size 1,09.0 Pict "@S07"
                @vLIN,pCLN+096.4 Say FTM2CHE                   Font "&mLetAri",9 Style "NQ" Size 1,18.0 Pict "@S21"
                @vLIN,pCLN+115.2 Say pSIG                      Font "&mLetAri",9 Style "NQ" Size 1,05.2
                @vLIN,pCLN+120.1 Say FTM2PAG                   Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
           CASE mpRt="1"
                @vLIN,pCLN Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetAri",8 Style "NT" Size 1,12.5
                @vLIN,pCLN+013.5 Say FTM2NTI                   Font "&mLetAri",8 Style "NT" Size 1,30.0 Pict "@S33"
                @vLIN,pCLN+052.5 Say FTM2GLO                   Font "&mLetAri",8 Style "NT" Size 1,31.5 Pict "@S33"
                @vLIN,pCLN+079.0 Say FTM2RCB                   Font "&mLetAri",8 Style "NT" Size 1,09.0 Pict "@S07"
                @vLIN,pCLN+091.0 Say FTM2CHE                   Font "&mLetAri",8 Style "NT" Size 1,20.0 Pict "@S23"
                @vLIN,pCLN+112.0 Say pSIG                      Font "&mLetAri",8 Style "NT" Size 1,05.2
                @vLIN,pCLN+127.3 Say FTM2PAG                   Font "&mLetAri",8 Style "NT" Size 1,15.1 Pict "9,999,999.99"
           CASE mpRt="2"
                @vLIN,pCLN Say FTM2DIA+"/"+FTM2MES+"/"+FTM2ANO Font "&mLetSwi",9 Style "NQ" Size 1,12.5
                @vLIN,pCLN+013.5 Say FTM2NTI                   Font "&mLetSwi",9 Style "NQ" Size 1,30.0 Pict "@S33"
                @vLIN,pCLN+039.5 Say FTM2GLO                   Font "&mLetSwi",9 Style "NQ" Size 1,31.5 Pict "@S33"
                @vLIN,pCLN+075.0 Say FTM2RCB                   Font "&mLetSwi",9 Style "NQ" Size 1,09.0 Pict "@S07"
                @vLIN,pCLN+085.0 Say FTM2CHE                   Font "&mLetSwi",9 Style "NQ" Size 1,20.0 Pict "@S23"
                @vLIN,pCLN+106.0 Say pSIG                      Font "&mLetSwi",9 Style "NQ" Size 1,05.2
                @vLIN,pCLN+111.5 Say FTM2PAG                   Font "&mLetSwi",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
      ENDCASE
 ENDIF
 RELEASE psIg
ENDPROC
*
PROCEDURE Rsm_3600b
 PRIVATE ppAg
 STORE 99 TO mkEy
 STORE 00 TO ppAg
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
           DO orD_0000a WITH "3600", "C", "F3600DOC", "A"
      CASE vsW1=2
           SELECT coPia
           DO orD_0000a WITH "TMP", "C", "F3600DOC", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sal_bancos
 DO orD_0000a WITH "3540", "C", "F3540TPO", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sal_bancos
 DO orD_0000a WITH "3541", "C", "F3541NUM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sal_bancos
 SEEK STR(1, 0)
 DO WHILE  .NOT. EOF() .AND. f3540tpo=1
      IF f3540est="9"
           SKIP
           LOOP
      ENDIF
      STORE f3540ano TO paNo
      STORE f3540mes TO pmEs
      STORE f3540dia TO pdIa
      STORE f3540ser TO psEr
      STORE f3540num TO pnUm
      STORE f3540glo TO pgLo
      STORE f3540che TO pcHe
      STORE f3540mon TO pmOn
      SELECT deT_sal_bancos
      SEEK paNo+pmEs+psEr+pnUm
      DO WHILE  .NOT. EOF() .AND. f3541ano+f3541mes+f3541ser+f3541num= ;
         paNo+pmEs+psEr+pnUm
           STORE f3541tdo TO ptDo
           STORE f3541sr1 TO psR1
           STORE f3541doc TO pdOc
           IF voPc=1 .AND. (ptDo+psR1+pdOc<dtDo+dsEr+ddOc .OR. ptDo+psR1+ ;
              pdOc>htDo+hsEr+hdOc)
                SKIP
                LOOP
           ENDIF
           DO CASE
                CASE vsW1=1
                     SELECT peNd_cpras
                CASE vsW1=2
                     SELECT coPia
           ENDCASE
           SEEK ptDo+psR1+pdOc
           IF EOF() .OR. BOF() .OR. (voPc=2 .AND. (f3600fem<dfEm .OR.  ;
              f3600fem>hfEm))
                SELECT deT_sal_bancos
                SKIP
                LOOP
           ENDIF
           SELECT deT_sal_bancos
           IF pmOn=1
                STORE "S/." TO psIg
           ELSE
                STORE "US$" TO psIg
           ENDIF
           IF ppAg=0
                IF vlIn+1.5>mpAg-3
                     DO caB_3600b WITH "PCC3600A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                DO cb3_3600b IN PCC3600B WITH mcLn
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 1 TO ppAg
           ENDIF
           IF vlIn>mpAg-3
                DO caB_3600b WITH "PCC3600A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mvIs=1
                          DO coLblv
                          @vLIN,mCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NT" Size 1,44.5 Pict "@S47"
                          @vLIN,mCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NT" Size 1,27.0 Pict "@S29"
                          @vLIN,mCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NT" Size 1,05.2
                          @vLIN,mCLN+115 Say F3541PAG               Font "&mLetAri",9 Style "NT" Size 1,16.7 Pict "9,999,999.99"
                     CASE mpRt="1"
                          @vLIN,mCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NT"
                          @vLIN,mCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NT" Size 1,44.5 Pict "@S47"
                          @vLIN,mCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NT" Size 1,27.0 Pict "@S29"
                          @vLIN,mCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NT" Size 1,05.2
                          @vLIN,mCLN+115 Say F3541PAG               Font "&mLetAri",9 Style "NT" Size 1,16.7 Pict "9,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN     Say pTDO+":"+pSR1+"-"+pDOC Font "&mLetAri",9 Style "NQ"
                          @vLIN,mCLN+020 Say pDIA+"/"+pMES+"/"+pANO Font "&mLetAri",9 Style "NQ"
                          @vLIN,mCLN+034 Say pGLO                   Font "&mLetAri",9 Style "NQ" Size 1,44.5 Pict "@S47"
                          @vLIN,mCLN+080 Say pCHE                   Font "&mLetAri",9 Style "NQ" Size 1,27.0 Pict "@S29"
                          @vLIN,mCLN+109 Say pSIG                   Font "&mLetAri",9 Style "NQ" Size 1,05.2
                          @vLIN,mCLN+117 Say F3541PAG               Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "9,999,999.99"
                ENDCASE
           ENDIF
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.3 TO vlIn
           SKIP
      ENDDO
      SELECT caB_sal_bancos
      SKIP
 ENDDO
 RELEASE ppAg
ENDPROC
*
PROCEDURE Cab_3600b
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
      DO CASE
           CASE ppRg="PCC3600A"
                @vLIN,mCLN Say "Cuentas por Pagar detalladas"    Font "&mLetAri",13 Style "NQ"
           CASE ppRg="PCC3601A"
                @vLIN,mCLN Say "Histórico de Cuentas de Compras" Font "&mLetAri",13 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+2.5 TO vlIn
 IF voP2=2
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN Say "Especifica detalle de pagos" Font "&mLetAri",10 Style "NT"
      ENDIF
      STORE vlIn+2 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE vsW0=1 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Documentos - Rango Desde: "            +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC    Font "&mLetAri",10 Style "NT"
           CASE vsW0=2 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Nombres de Proveedores - Rango Desde: "   +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC Font "&mLetAri",10 Style "NT"
           CASE vsW0=3 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Fechas de Emisión - Rango Desde: "     +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC    Font "&mLetAri",10 Style "NT"
           CASE vsW0=4 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Fechas de Vencimiento - Rango Desde: " +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC    Font "&mLetAri",10 Style "NT"
           CASE vsW0=5 .AND. voPc=1
                @vLIN,mCLN Say "Orden de Documentos Reales - Rango Desde: " +dTDO+":"+dSER+"-"+dDOC+" hasta: "+hTDO+":"+hSER+"-"+hDOC        Font "&mLetAri",10 Style "NT"
           CASE vsW0=1 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Documentos - Rango Desde: "            +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM)                            Font "&mLetAri",10 Style "NT"
           CASE vsW0=2 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Nombres de Proveedores - Rango Desde: "   +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM)                         Font "&mLetAri",10 Style "NT"
           CASE vsW0=3 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Fechas de Emisión - Rango Desde: "     +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM)                            Font "&mLetAri",10 Style "NT"
           CASE vsW0=4 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Fechas de Vencimiento - Rango Desde: " +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM)                            Font "&mLetAri",10 Style "NT"
           CASE vsW0=5 .AND. voPc>=2
                @vLIN,mCLN Say "Orden de Documentos Reales - Rango Desde: " +Dtoc(dFEM)+" hasta: "+Dtoc(hFEM)                                Font "&mLetAri",10 Style "NT"
      ENDCASE
 ENDIF
 STORE vlIn+0.8 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblz
                @vLIN,mCLN       Say "Documento"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+019.5 Say "Fecha-Emi"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+032.5 Say "Vencimien"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+045.8 Say "Documento Real" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+081.5 Say "Proveedor"      Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+152.0 Say "Total"          Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+171.5 Say "A/C"            Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+187.2 Say "Saldo"          Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,mCLN       Say "Documento"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+019.5 Say "Fecha-Emi"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+032.5 Say "Vencimien"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+045.8 Say "Documento Real" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+081.5 Say "Proveedor"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+151.0 Say "Total"          Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+170.5 Say "A/C"            Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+186.0 Say "Saldo"          Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN       Say "Documento"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+019.5 Say "Fecha-Emi"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+032.5 Say "Vencimien"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+045.8 Say "Documento Real" Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+081.5 Say "Proveedor"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+151.0 Say "Total"          Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+170.5 Say "A/C"            Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+186.0 Say "Saldo"          Font "&mLetAri",9 Style "BQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.3 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Cb2_3600b
 PARAMETER pcLn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblr
                @vLIN,pCLN       Say "Fecha"              Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+013.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+044.5 Say "Glosa"              Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+086.6 Say "Recibo"             Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+096.4 Say "Cheque/Depós"       Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+130.3 Say "Monto"              Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,pCLN       Say "Fecha"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+013.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+052.5 Say "Glosa"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+079.0 Say "Recibo"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+091.0 Say "Cheq/Depós"         Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+112.0 Say "Mn"                 Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+124.3 Say "Monto"              Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN       Say "Fecha"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+013.5 Say "Tipo de Movimiento" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+039.5 Say "Glosa"              Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+075.0 Say "Recibo"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+085.0 Say "Cheque/Depósito"    Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+106.0 Say "Mon"                Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+111.5 Say "Monto"              Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,pCLN     Say Replicate("_",01) Font "&mLetRom",11 Style "NT"
                @vLIN,pCLN+0.4 Say Replicate("_",85) Font "&mLetRom",11 Style "NT"
           CASE mpRt="1"
                @vLIN,pCLN     Say Replicate("_",85) Font "&mLetRom",11 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN     Say Replicate("_",84) Font "&mLetRom",11 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.4 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Cb3_3600b
 PARAMETER pcLn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,pCLN Say "***" Font "&mLetAri",9 Style "BT"
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,pCLN       Say "Documento"       Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+020.0 Say "Fec-Cob"         Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+034.0 Say "Glosa"           Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+080.0 Say "Cheque Diferido" Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+109.0 Say "Mon"             Font "&mLetAri",9 Style "BT"
                @vLIN,pCLN+125.7 Say "Pago"            Font "&mLetAri",9 Style "BT"
           CASE mpRt="1"
                @vLIN,pCLN       Say "Documento"       Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+020.0 Say "Fec-Cob"         Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+034.0 Say "Glosa"           Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+080.0 Say "Cheque Diferido" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+109.0 Say "Mon"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+126.4 Say "Pago"            Font "&mLetAri",9 Style "NT"
           CASE mpRt="2"
                @vLIN,pCLN       Say "Documento"       Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+020.0 Say "Fec-Cob"         Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+034.0 Say "Glosa"           Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+080.0 Say "Cheque Diferido" Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+109.0 Say "Mon"             Font "&mLetAri",9 Style "NT"
                @vLIN,pCLN+125.5 Say "Pago"            Font "&mLetAri",9 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+0.1 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,pCLN     Say Replicate("_",01) Font "&mLetRom",11 Style "NT"
                @vLIN,pCLN+0.5 Say Replicate("_",82) Font "&mLetRom",11 Style "NT"
           CASE mpRt="1"
                @vLIN,pCLN     Say Replicate("_",01) Font "&mLetRom",11 Style "NT"
                @vLIN,pCLN+0.4 Say Replicate("_",86) Font "&mLetRom",11 Style "NT"
           CASE mpRt="2" .AND. voP1=1
                @vLIN,pCLN     Say Replicate("_",88) Font "&mLetRom",11 Style "NT"
           CASE mpRt="2" .AND. voP1=2
                @vLIN,pCLN     Say Replicate("_",83) Font "&mLetRom",11 Style "NT"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.4 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE Sub_3600b
 STORE vlIn+0.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,mCLN+125.2 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+135.2 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+138.9 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
                @vLIN,mCLN+168.7 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+173.8 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+080.0 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+112.4 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+123.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+142.6 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2" .AND. voP1=1
                @vLIN,mCLN+083.0 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.1 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+125.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+128.2 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2" .AND. voP1=2
                @vLIN,mCLN+081.0 Say "Totales" Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+093.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.3 Say cTT1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+121.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+128.4 Say cTT2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.8 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                DO coLblv
                @vLIN,mCLN+125.2 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+135.2 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+138.9 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
                @vLIN,mCLN+168.7 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+173.8 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,16 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+080.0 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+095.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+112.4 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+123.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+142.6 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2" .AND. voP1=1
                @vLIN,mCLN+083.0 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+096.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.1 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+125.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+128.2 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
           CASE mpRt="2" .AND. voP1=2
                @vLIN,mCLN+081.0 Say "Saldos"  Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+093.1 Say "S/."     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+098.3 Say cSL1      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
                @vLIN,mCLN+121.2 Say "US$"     Font "&mLetAri",9 Style "BT"
                @vLIN,mCLN+128.4 Say cSL2      Font "&mLetAri",9 Style "BT" Size 1,18 Pict "99,999,999.99"
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE PF3_3600b
 PARAMETER ppRg
 DO diS_3600b IN PCC3600B WITH "N"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW3=1
           STORE 2 TO vsW3
           STORE 0 TO vsW4
      CASE vsW3=2
           STORE 1 TO vsW3
           STORE 1 TO vsW4
 ENDCASE
 DO coLsc1
 @ ifIl-0.20, icLn+052.1 CLEAR TO ffIl+1.1, icLn+052.7
 @ ifIl-1.45, icLn+094.3 CLEAR TO ffIl+1.1, icLn+094.7
 @ ifIl-0.20, icLn+100.8 CLEAR TO ffIl+1.1, icLn+101.2
 DO coLsc3
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 DO p02_3600a IN PCC3600A
 DO muE_3600b IN PCC3600B WITH "v", "x"
 STORE vfIl TO cfIl
 DO seE_3600b IN PCC3600B WITH "i"
 DO CASE
      CASE ppRg="PCC3600B"
           DO pa1_3600b IN PCC3600B
      CASE ppRg="PCC3601B"
           DO pa1_3601b IN PCC3601B
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_3600b IN PCC3600B WITH "x", "v"
 STORE cfIl TO vfIl
 DO seE_3600b IN PCC3600B WITH "v"
 DO diS_3600b IN PCC3600B WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_3600a IN PCC3600A WITH ifIl-0.2, ffIl+1.1
 DO li2_3600a IN PCC3600A
ENDPROC
*
PROCEDURE PF4_3600b
 PARAMETER ppRg
 DO diS_3600b IN PCC3600B WITH "N"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW4=1
           STORE 2 TO vsW4
           STORE 0 TO vsW3
      CASE vsW4=2
           STORE 1 TO vsW4
           STORE 1 TO vsW3
 ENDCASE
 DO coLsc1
 @ ifIl-0.20, icLn+052.1 CLEAR TO ffIl+1.1, icLn+052.7
 @ ifIl-1.45, icLn+094.3 CLEAR TO ffIl+1.1, icLn+094.7
 @ ifIl-0.20, icLn+100.8 CLEAR TO ffIl+1.1, icLn+101.2
 DO coLsc3
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 DO p02_3600a IN PCC3600A
 DO muE_3600b IN PCC3600B WITH "v", "x"
 STORE vfIl TO cfIl
 DO seE_3600b IN PCC3600B WITH "i"
 DO CASE
      CASE ppRg="PCC3600B"
           DO pa1_3600b IN PCC3600B
      CASE ppRg="PCC3601B"
           DO pa1_3601b IN PCC3601B
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_3600b IN PCC3600B WITH "x", "v"
 STORE cfIl TO vfIl
 DO seE_3600b IN PCC3600B WITH "v"
 DO diS_3600b IN PCC3600B WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO liN_3600a IN PCC3600A WITH ifIl-0.2, ffIl+1.1
 DO li2_3600a IN PCC3600A
ENDPROC
*
PROCEDURE PCt_3600b
 PARAMETER ppRg
 DO diS_3600b IN PCC3600B WITH "N"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mkEy=k_Ctrl_right .AND. vsW2=3 .AND. miMp<>1
           STORE 1 TO vsW2
      CASE mkEy=k_Ctrl_right .AND. vsW2=4
           STORE 1 TO vsW2
      CASE mkEy=k_Ctrl_left .AND. vsW2=1 .AND. miMp<>1
           STORE 3 TO vsW2
      CASE mkEy=k_Ctrl_left .AND. vsW2=1
           STORE 4 TO vsW2
      CASE mkEy=k_Ctrl_right
           STORE vsW2+1 TO vsW2
      CASE mkEy=k_Ctrl_left
           STORE vsW2-1 TO vsW2
 ENDCASE
 DO coLsc1
 @ ifIl-0.20, icLn+052.1 CLEAR TO ffIl+1.1, icLn+052.7
 @ ifIl-1.45, icLn+094.3 CLEAR TO ffIl+1.1, icLn+094.7
 @ ifIl-0.20, icLn+100.8 CLEAR TO ffIl+1.1, icLn+101.2
 DO coLsc3
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 DO p02_3600a IN PCC3600A
 DO muE_3600b IN PCC3600B WITH "v", "x"
 STORE vfIl TO cfIl
 DO seE_3600b IN PCC3600B WITH "i"
 DO CASE
      CASE ppRg="PCC3600B"
           DO pa1_3600b IN PCC3600B
      CASE ppRg="PCC3601B"
           DO pa1_3601b IN PCC3601B
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO muE_3600b IN PCC3600B WITH "x", "v"
 STORE cfIl TO vfIl
 DO seE_3600b IN PCC3600B WITH "v"
 DO diS_3600b IN PCC3600B WITH "R"
 DO liN_3600a IN PCC3600A WITH ifIl-0.2, ffIl+1.1
 DO li2_3600a IN PCC3600A
ENDPROC
*
PROCEDURE Clp_3600b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+42.2
           STORE k_Ctrl_p TO mkEy
           DO prEsiona WITH "2", "IMPRIM", mmF1+0.1, mmC1+33.4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
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
      CASE mfIl>=ifIl-1.164 .AND. mfIl<=ifIl-0.235 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+2 .AND. (vsW3=1 .OR. vsW3=2)
           STORE k_F3 TO mkEy
      CASE mfIl>=ifIl-1.164 .AND. mfIl<=ifIl-0.235 .AND. mcCc>=vcB1+3.6  ;
           .AND. mcCc<=vcB1+5.8 .AND. (vsW3=1 .OR. vsW3=2)
           STORE k_F3 TO mkEy
      CASE mfIl>=ifIl-1.164 .AND. mfIl<=ifIl-0.235 .AND. mcCc>=vcB2 .AND.  ;
           mcCc<=vcB2+2 .AND. vsW4=1
           STORE k_F4 TO mkEy
      CASE mfIl>=ifIl-1.164 .AND. mfIl<=ifIl-0.235 .AND. mcCc>=vcB2+3.6  ;
           .AND. mcCc<=vcB2+5.8 .AND. vsW4=1
           STORE k_F4 TO mkEy
      CASE mfIl>=ifIl-1.164 .AND. mfIl<=ifIl-0.235 .AND. mcCc>=vcB1 .AND.  ;
           mcCc<=vcB1+2 .AND. vsW4=2
           STORE k_F4 TO mkEy
      CASE mfIl>=ifIl-1.164 .AND. mfIl<=ifIl-0.235 .AND. mcCc>=vcB1+3.6  ;
           .AND. mcCc<=vcB1+5.8 .AND. vsW4=2
           STORE k_F4 TO mkEy
      CASE mfIl>=ifIl-1.664 .AND. mfIl<=ifIl-1.021 .AND. mcCc>=vcB3-0.3  ;
           .AND. mcCc<=vcB3+1.7
           STORE k_F2 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_3600b WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_3600b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_3600b WITH "F", "v"
           DO diS_3600b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, plIs, poPc, piN1, piN2, pnUm, piN9, poP1, poPp
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE (mwFi/2)-12 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9, poPp
 STORE 01 TO miPg, pnUm, voPc, voP1, voP2, poP1
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE DATE() TO dfEm, hfEm
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "4", "R_CONS99", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONFI1", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE pfIl+5 TO pfIl
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 STORE pfIl-5 TO pfIl
 @pFIL+03.0,pCOL+36 Say "Opción"                Font "&mLetRom",11 Style "BT"
 @pFIL+14.0,pCOL+32 Say "Tipo de Impresión"     Font "&mLetRom",11 Style "NTU"
 @pFIL+19.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NT"
 @pFIL+19.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NT" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.0,pCOL+04 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 @pFIL+12.1,pCOL+05 Say "Desde Pág:"            Font "&mLetRom",11 Style "BT"
 @pFIL+13.6,pCOL+05 Say "Hasta Pág:"            Font "&mLetRom",11 Style "BT"
 SET COLOR TO RGB(0,0,0,192,192,192)
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF voPc<>poPp
           DO CASE
                CASE voPc=1
                     @pFIL+08.8,pCOL+05 Say "Desde Documento" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+10.3,pCOL+05 Say "Hasta Documento" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+08.8,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                     @pFIL+10.3,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                CASE voPc=2
                     @pFIL+08.8,pCOL+05 Say "Desde Fecha Emi" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+10.3,pCOL+05 Say "Hasta Fecha Emi" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+08.8,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                     @pFIL+10.3,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                CASE voPc=3
                     @pFIL+08.8,pCOL+05 Say "Desde Fecha Vct" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+10.3,pCOL+05 Say "Hasta Fecha Vct" Font "&mLetRom",11 Style "BQ" Size 1,20
                     @pFIL+08.8,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
                     @pFIL+10.3,pCOL+31 Say Space(25)         Font "&mLetRom",11 Style "BQ" Size 1,18
           ENDCASE
           STORE voPc TO poPp
      ENDIF
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+4.5, pcOl+4 TO pfIl+7.7, pcOl+35 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+4.4,pCOL+4 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+4.4,pCOL+4 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+04.5,pCOL+36 Get vOPC Font "&mLetAri",9 Style "NQ" Size 1,12 Default vOPC Function "*RVT x Documento;x Fecha"     Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+32 Get vOP1 Font "&mLetAri",9 Style "NQ" Size 1,12 Default vOP1 Function "*RVT Simple;Extendida-Horiz"  Color ,,,,,,,,1/2,RGB(100,100,100,192,192,192)
      @pFIL+15.5,pCOL+05 Get vOP2 Font "&mLetAri",9 Style "NQ" Size 1,12 Default vOP2 Function "*RVT Sin detalle;Con detalle" Color ,,,,,,,,5/2,RGB(100,100,100,192,192,192)
      @pFIL+12.2,pCOL+21 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlZ
      @pFIL+13.7,pCOL+21 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlZ
      DO CASE
           CASE voPc=1
                @pFIL+08.9,pCOL+31 Get dTDO Font "&mLetAri",9 Style "NQ" Pict "!!"      Size 1,3.2 Color ,&mColBlN
                @pFIL+08.9,pCOL+36 Get dSER Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,4.0 Color ,&mColBlN
                @pFIL+08.9,pCOL+42 Get dDOC Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,9.6 Color ,&mColBlN
                @pFIL+10.4,pCOL+31 Get hTDO Font "&mLetAri",9 Style "NQ" Pict "!!"      Size 1,3.2 Color ,&mColBlN
                @pFIL+10.4,pCOL+36 Get hSER Font "&mLetAri",9 Style "NQ" Pict "999"     Size 1,4.0 Color ,&mColBlN
                @pFIL+10.4,pCOL+42 Get hDOC Font "&mLetAri",9 Style "NQ" Pict "9999999" Size 1,9.6 Color ,&mColBlN
           CASE voPc=2 .OR. voPc=3
                @pFIL+08.9,pCOL+31 Say "  " Font "&mLetAri",9 Style "NQ" Size 1,20
                @pFIL+08.9,pCOL+31 Get dFEM Font "&mLetAri",9 Style "NQ" Size 1,12.8 Color ,&mColBlN
                @pFIL+10.4,pCOL+31 Get hFEM Font "&mLetAri",9 Style "NQ" Size 1,12.8 Color ,&mColBlN
      ENDCASE
      @pFIL+23.5,pCOL+06 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF voP1<>poP1 .AND. ((voP1<2 .AND. poP1=3) .OR. (poP1<2 .AND. voP1=3))
           DO CASE
                CASE voP1<2
                     DO ipR_0001a WITH "VE"
                CASE voP1=3
                     DO ipR_0001a WITH "HO"
           ENDCASE
           SET DEVICE TO SCREEN
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           STORE voP1 TO poP1
           STORE pfIl+5 TO pfIl
           DO nlI_0000a WITH piN1, piN2
           DO dlI_0000a WITH piN1, piN2
           STORE pfIl-5 TO pfIl
           @pFIL+19,pCOL+49 Say mPAG Font "&mLetAri",8 Style "NT" Size 1,4 Pict "999"
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                STORE UPPER(dtDo) TO dtDo
                STORE UPPER(dsEr) TO dsEr
                STORE UPPER(ddOc) TO ddOc
                STORE UPPER(htDo) TO htDo
                STORE UPPER(hsEr) TO hsEr
                STORE UPPER(hdOc) TO hdOc
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. dtDo+dsEr+ddOc>htDo+hsEr+hdOc
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(dtDo))=0 .AND.  ;
                          LEN(ALLTRIM(htDo))=0
                          STORE "Tipos de Documentos se encuentran vacías..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(dsEr))=0 .AND.  ;
                          LEN(ALLTRIM(hsEr))=0
                          STORE "Series de Documentos se encuentran vacías..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(htDo))=0
                          STORE "Tipo de Documento final se encuentra vacía..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(hsEr))=0
                          STORE "Serie de Documento final se encuentra vacía..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc=1 .AND. LEN(ALLTRIM(hdOc))=0
                          STORE "Número de Documento final se encuentra vacía..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE voPc>=2 .AND. dfEm>hfEm
                          STORE "Rango Inicial mayor a la Final..." TO mmSj
                          DO poNmsj
                     CASE voPc>=2 .AND. AT(" ", DTOC(dfEm))<>0 .AND. AT( ;
                          " ", DTOC(hfEm))<>0
                          STORE "Fechas se encuentran vacías..." TO mmSj
                          DO poNmsj
                     CASE voPc>=2 .AND. AT(" ", DTOC(hfEm))<>0
                          STORE "Fecha final se encuentra vacía..." TO mmSj
                          DO poNmsj
                     CASE mmAl=1
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
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9, poP1, poPp
ENDPROC
*
PROCEDURE Hl1_3600b
 PARAMETER ppRg
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or-"
 @ pfIl+1, 02 SAY "den que se ha elegido."
 @ pfIl+2, 02 SAY "Las teclas para movilizarse son:"
 STORE pfIl+4 TO pfIl
 @ pfIl+0, 24 SAY ":" STYLE "BT"
 @ pfIl+1, 24 SAY ":" STYLE "BT"
 @ pfIl+2, 24 SAY ":" STYLE "BT"
 @ pfIl+3, 24 SAY ":" STYLE "BT"
 @ pfIl+4, 24 SAY ":" STYLE "BT"
 @ pfIl+5, 24 SAY ":" STYLE "BT"
 @ pfIl+0, 05 SAY "ESC" STYLE "BT"
 @ pfIl+1, 05 SAY "F10" STYLE "BT"
 @ pfIl+2, 05 SAY "F1" STYLE "BT"
 @ pfIl+3, 05 SAY "F2" STYLE "BT"
 @ pfIl+4, 05 SAY "F3" STYLE "BT"
 @ pfIl+5, 05 SAY "F4" STYLE "BT"
 @ pfIl+0, 26 SAY "Regresar a Cabecera"
 @ pfIl+1, 26 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 26 SAY "Ayuda del Programa"
 @ pfIl+3, 26 SAY "Ordenar x Totales/Regresar Orden Anterior"
 @ pfIl+4, 26 SAY "Ampliar/Reducir Proveedor"
 DO CASE
      CASE vsW2=1
           @ pfIl+5, 26 SAY "Ampliar/Reducir Documento Real"
      CASE vsW2=2
           @ pfIl+5, 26 SAY "Ampliar/Reducir Tipo de Proveedor"
      CASE vsW2=3
           @ pfIl+5, 26 SAY "Ampliar/Reducir Letras"
      CASE vsW2=4
           @ pfIl+5, 26 SAY "Ampliar/Reducir Pedido"
 ENDCASE
 STORE pfIl+6 TO pfIl
 IF ppRg="PCC3601B"
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "F5" STYLE "BT"
      @ pfIl, 26 SAY "Calcular Cuentas"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ppRg<>"PCC3601B" .AND. miMp=1
      @ pfIl, 24 SAY ":" STYLE "BT"
      @ pfIl, 05 SAY "F5" STYLE "BT"
      @ pfIl, 26 SAY "Buscar x Pedido"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+00, 24 SAY ":" STYLE "BT"
 @ pfIl+01, 24 SAY ":" STYLE "BT"
 @ pfIl+02, 24 SAY ":" STYLE "BT"
 @ pfIl+03, 24 SAY ":" STYLE "BT"
 @ pfIl+04, 24 SAY ":" STYLE "BT"
 @ pfIl+05, 24 SAY ":" STYLE "BT"
 @ pfIl+06, 24 SAY ":" STYLE "BT"
 @ pfIl+07, 24 SAY ":" STYLE "BT"
 @ pfIl+08, 24 SAY ":" STYLE "BT"
 @ pfIl+09, 24 SAY ":" STYLE "BT"
 @ pfIl+10, 24 SAY ":" STYLE "BT"
 @ pfIl+11, 24 SAY ":" STYLE "BT"
 @ pfIl+12, 24 SAY ":" STYLE "BT"
 @ pfIl+00, 05 SAY "F6" STYLE "BT"
 @ pfIl+01, 05 SAY "F8" STYLE "BT"
 @ pfIl+02, 05 SAY "F9" STYLE "BT"
 @ pfIl+03, 05 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+04, 05 SAY "PAGE UP" STYLE "BT"
 @ pfIl+05, 05 SAY "HOME" STYLE "BT"
 @ pfIl+06, 05 SAY "END" STYLE "BT"
 @ pfIl+07, 05 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+08, 05 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+09, 05 SAY "ENTER" STYLE "BT"
 @ pfIl+10, 05 SAY "TAB" STYLE "BT"
 @ pfIl+11, 05 SAY "CTRL P" STYLE "BT"
 @ pfIl+12, 05 SAY "CTRL --> / <--" STYLE "BT"
 @ pfIl+00, 26 SAY "Cambio de Orden de Consulta"
 @ pfIl+01, 26 SAY "Pasar Datos a Excel"
 @ pfIl+02, 26 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+03, 26 SAY "Página siguiente"
 @ pfIl+04, 26 SAY "Página anterior"
 @ pfIl+05, 26 SAY "Primera línea"
 @ pfIl+06, 26 SAY "Última línea"
 @ pfIl+07, 26 SAY "Línea inferior"
 @ pfIl+08, 26 SAY "Línea superior"
 @ pfIl+09, 26 SAY "Ver Detalle"
 DO CASE
      CASE vsW1=1
           @ pfIl+10, 26 SAY "Ver Saldos x Tipo de Documento"
      CASE vsW1=2
           @ pfIl+10, 26 SAY "Ver Saldos del Rango x Tipo de Documento"
 ENDCASE
 @ pfIl+11, 26 SAY "Imprimir Listado"
 DO CASE
      CASE miMp=1
           @ pfIl+12, 26 SAY "Cambiar de Doc. Real,Tipo de Proveedor"
      CASE miMp=2
           @ pfIl+12, 26 SAY "Cambiar de Doc. Real,Tipo de Proveedor,Pedido"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_3600b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social."
 @ pfIl+01, 02 SAY  ;
   "Si la palabra o frase no se encuentra contenida en ninguno de los Do-"
 @ pfIl+02, 02 SAY  ;
   "cumentos, saldrá un mensaje, en caso de encontrase se regresará al"
 @ pfIl+03, 02 SAY "Detalle."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Detalle"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 RELEASE pfIl
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
