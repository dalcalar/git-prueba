 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_3601b
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
                SEEK STR(vmOn, 1, 0)+STRTRAN(STR(vsLd, 12, 2), " ", "0")+ ;
                     vtDo+vsEr+vdOc
           CASE vsW0=1
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK UPPER(vnOm)
           CASE vsW0=3
                SEEK vaNo+vmEs+vdIa
           CASE vsW0=4
                SEEK vaNv+vmEv+vdIv
           CASE vsW0=5
                SEEK vtD1+vsRr+vdO1
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_3601b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3600b IN PCC3600B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_3600b IN PCC3600B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW5=2
                     SEEK STR(vmOn, 1, 0)+STRTRAN(STR(vsLd, 12, 2), " ",  ;
                          "0")+vtDo+vsEr+vdOc
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)
                CASE vsW0=3
                     SEEK vaNo+vmEs+vdIa
                CASE vsW0=4
                     SEEK vaNv+vmEv+vdIv
                CASE vsW0=5
                     SEEK vtD1+vsRr+vdO1
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_3600b IN PCC3600B WITH "F", "v"
      ENDIF
      DO seE_3600b IN PCC3600B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f3600tdo+f3600ser+f3600doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_3600b IN PCC3600B WITH "v", "i"
           STORE ifIl TO vfIl
      ENDIF
 ENDIF
 DO seE_3600b IN PCC3600B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_3600b IN PCC3600B WITH "i"
      SET NEAR OFF
      DO paN_3601b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO muE_3600b IN PCC3600B WITH "i", "v"
      DO seE_3600b IN PCC3600B WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_3600b IN PCC3600B WITH "R"
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
           DO reS_3601b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_3600b IN PCC3600B
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_3600b IN PCC3600B WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_3600b IN PCC3600B WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_3600b IN PCC3600B WITH "PCC3601B"
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_3601b
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
                DO caM_3601b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. (vsW3=1 .OR. vsW3=2)
                DO pf3_3600b IN PCC3600B WITH "PCC3601B"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. (vsW4=1 .OR. vsW4=2)
                DO pf4_3600b IN PCC3600B WITH "PCC3601B"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5
                STORE "N" TO moPc
                STORE 99 TO mkEy
                DO prE_docum WITH "¿Está seguro de Recalcular Pagos?"
                IF moPc$"Ss"
                     STORE 99 TO mkEy
                     SELECT peNd_cpras
                     DO orD_0000a WITH "3600", "C", "F3600DOC", "A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SEEK vtDo+vsEr+vdOc
                     IF  .NOT. EOF()
                          DO paG_3600b IN PCC3600B WITH vtDo, vsEr, vdOc
                          PRIVATE qmOn, qaCu, qtDo, qsEr
                          SELECT peNd_cpras
                          SEEK vtDo+vsEr+vdOc
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH vtDo+vsEr+vdOc
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    = INKEY(0.01)
                                    EXIT
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          STORE f3600mon TO qmOn
                          STORE f3600acu TO qaCu
                          STORE f3600td1 TO qtDo
                          STORE f3600sr1 TO qsEr
                          SELECT ctAs_total_cpras
                          SEEK qtDo+qsEr
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH qtDo+qsEr
                               IF mkEy=k_Esc
                                    WAIT CLEAR
                                    = INKEY(0.01)
                                    EXIT
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          SELECT peNd_cpras
                          REPLACE f3600acu WITH vaCu
                          IF vrEn=0 .AND. f3600tot-f3600acu=0
                               REPLACE f3600fca WITH vfCa
                               REPLACE f3600est WITH "@"
                          ELSE
                               REPLACE f3600fca WITH CTOD("  /  /    ")
                               REPLACE f3600est WITH SPACE(01)
                          ENDIF
                          STORE f3600est TO xeSt
                          STORE f3600fca TO vfCa
                          UNLOCK
                          SELECT ctAs_total_cpras
                          IF qmOn=1
                               REPLACE f3602ac1 WITH f3602ac1-qaCu+vaCu
                          ELSE
                               REPLACE f3602ac2 WITH f3602ac2-qaCu+vaCu
                          ENDIF
                          UNLOCK
                          IF vsW1=2
                               SELECT coPia
                               REPLACE f3600acu WITH vaCu
                               REPLACE f3600fca WITH vfCa
                               REPLACE f3600est WITH xeSt
                          ENDIF
                          FLUSH
                          RELEASE qmOn, qaCu, qtDo, qsEr
                     ENDIF
                     DO CASE
                          CASE vsW1=1
                               SELECT peNd_cpras
                          CASE vsW1=2
                               SELECT coPia
                     ENDCASE
                     DO orD_3601b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                DO seE_3600b IN PCC3600B WITH "v"
                IF EOF()
                     SET NEAR ON
                     DO seE_3600b IN PCC3600B WITH "i"
                     SET NEAR OFF
                     IF EOF()
                          GOTO TOP
                          IF BOF()
                               EXIT
                          ENDIF
                     ENDIF
                     DO paN_3601b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO muE_3600b IN PCC3600B WITH "i", "v"
                     DO seE_3600b IN PCC3600B WITH "v"
                     STORE ifIl TO vfIl
                ENDIF
                DO diS_3600b IN PCC3600B WITH "R"
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
                DO tiT_3600a IN PCC3600A
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
                DO caM_3601b
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
                               SAVE SCREEN TO vpAn_11
                               DO WHILE  .NOT. EOF()
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
                DO seE_3600b IN PCC3600B WITH "v"
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_3601b
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
                DO seE_3600b IN PCC3600B WITH "v"
                DO diS_3600b IN PCC3600B WITH "R"
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
                DO orD_3601b
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
                DO seE_3600b IN PCC3600B WITH "v"
           CASE mkEy=k_Ctrl_p
                = INKEY(0.01)
                DO q1_0000a
                DO imP_3601b
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
                DO orD_3601b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_3600b IN PCC3600B WITH "v"
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. (vsW4=1  ;
                .OR. vsW4=2)
                DO pcT_3600b IN PCC3600B WITH "PCC3601B"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_3601b
                               OTHERWISE
                                    DO seE_3600b IN PCC3600B WITH "v"
                                    DO diS_3600b IN PCC3600B WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3600b IN PCC3600B WITH "i", "v"
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f3600tdo+f3600ser+f3600doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_3601b
                               OTHERWISE
                                    DO seE_3600b IN PCC3600B WITH "v"
                                    DO diS_3600b IN PCC3600B WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufIl TO vfIl
                          DO muE_3600b IN PCC3600B WITH "u", "v"
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3600a IN PCC3600A WITH ifIl, ffIl+1
                               DO muE_3600b IN PCC3600B WITH "F", "v"
                               DO muE_3600b IN PCC3600B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_3600b IN PCC3600B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_3600b IN PCC3600B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_3600a IN PCC3600A WITH ifIl, ffIl+1
                               DO muE_3600b IN PCC3600B WITH "F", "v"
                               DO muE_3600b IN PCC3600B WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_3600b IN PCC3600B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_3600b IN PCC3600B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_3600b IN PCC3600B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_3601b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3600b IN PCC3600B WITH "i", "v"
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_3600b IN PCC3600B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_3601b
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifIl TO vfIl
                          DO muE_3600b IN PCC3600B WITH "i", "v"
                          DO seE_3600b IN PCC3600B WITH "v"
                          DO diS_3600b IN PCC3600B WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_3600b IN PCC3600B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_3601b
 DO pn1_3601b WITH "1"
ENDPROC
*
PROCEDURE Pa1_3601b
 DO pn1_3601b WITH "2"
ENDPROC
*
PROCEDURE Pn1_3601b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_3600b IN PCC3600B WITH "F", "v"
 DO muE_3600b IN PCC3600B WITH "F", "i"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f3600tdo+f3600ser+f3600doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_3600b IN PCC3600B WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO muE_3600b IN PCC3600B WITH "F", "u"
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
PROCEDURE Opc_3601b
 DO rs2_3600a IN PCC3600A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_3601b
           IF mkEy=k_Esc
                EXIT
           ENDIF
           SET READBORDER ON
           DO rs2_3600a IN PCC3600A
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
                DO hl2_3600b IN PCC3600B
           CASE mkEy=k_F12
                DO reS_3601b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO rs2_3600a IN PCC3600A
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
                STORE 00 TO vtO1, vtO2, vaC1, vaC2, vfA1, vfA2, vbO1,  ;
                      vbO2, vnP1
                STORE 00 TO vnP2, vlE1, vlE2, vnC1, vnC2, vnD1, vnD2,  ;
                      vpU1, vpU2
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f3600nom)))<>0
                          DO muE_3600a IN PCC3600A
                          DO grA_3600a IN PCC3600A
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
      DO orD_3601b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_3601b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_3600b IN PCC3600B WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1,iCLN+11 Say vPAL Size 1,60 Pict "@S65" Font "&mLetRom",9 Style "BQ"
 DO toT_3600a IN PCC3600A
ENDPROC
*
PROCEDURE Cam_3601b
 DO muE_3600b IN PCC3600B WITH "v", "x"
 STORE vsW0 TO csW0
 STORE 00 TO cfIl
 DO CASE
      CASE vsW1=1
           SELECT peNd_cpras
      CASE vsW1=2
           SELECT coPia
 ENDCASE
 DO orD_3601b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_3600b IN PCC3600B WITH "i"
 DO pa1_3601b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF cfIl=0
      DO muE_3600b IN PCC3600B WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO muE_3600b IN PCC3600B WITH "x", "v"
      STORE cfIl TO vfIl
 ENDIF
 DO seE_3600b IN PCC3600B WITH "v"
 DO diS_3600b IN PCC3600B WITH "R"
ENDPROC
*
PROCEDURE Res_3601b
 SET READBORDER ON
 DO reS_3601a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_3600b IN PCC3600B WITH "R"
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
PROCEDURE Ord_3601b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW5=2 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600TOT", "A"
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600FVE", "A"
      CASE vsW0=5 .AND. vsW1=1
           DO orD_0000a WITH "3600", "C", "F3600FAC", "A"
      CASE vsW5=2
           DO orD_0000a WITH "TMP", "C", "F3600TOT", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "C", "F3600DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "C", "F3600NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "C", "F3600FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "C", "F3600FVE", "A"
      CASE vsW0=5
           DO orD_0000a WITH "TMP", "C", "F3600FAC", "A"
 ENDCASE
ENDPROC
*
PROCEDURE Imp_3601b
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
 DO reP_3601b
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
PROCEDURE Rep_3601b
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
 DO coLbln
 STORE 0 TO csL1, csL2, ctT1, ctT2, vlIn, vpAg
 DO WHILE  .NOT. EOF()
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
           DO caB_3600b IN PCC3600B WITH "PCC3601A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      DO im1_3600b IN PCC3600B WITH pcL1, "PCC3601A"
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
                     DO caB_3600b IN PCC3600B WITH "PCC3601A"
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
                          DO caB_3600b IN PCC3600B WITH "PCC3601A"
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
           DO orD_3601b
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
           DO caB_3600b IN PCC3600B WITH "PCC3601A"
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
           DO caB_3600b IN PCC3600B WITH "PCC3601A"
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
