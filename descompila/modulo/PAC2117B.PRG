 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_2111b IN PAC2111B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(mtMa) TO icOd
 ENDIF
 IF LEN(ALLTRIM(icOd))=0 .OR. (vsW0=1 .AND. (UPPER(ALLTRIM(icOd))+"*"> ;
    UPPER(ALLTRIM(vcOd))+"*" .OR. UPPER(ALLTRIM(ucOd))+"*"< ;
    UPPER(ALLTRIM(vcOd))+"*")) .OR. (vsW0=2 .AND. (UPPER(ALLTRIM(idEs))+ ;
    "*">UPPER(ALLTRIM(vdEs))+"*" .OR. UPPER(ALLTRIM(udEs))+"*"< ;
    UPPER(ALLTRIM(vdEs))+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK ALLTRIM(UPPER(vcOd))
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vdEs))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_2117b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      DO seE_2112b IN PAC2112B WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK ALLTRIM(UPPER(vcOd))
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vdEs))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_2112b IN PAC2112B WITH "F", "v"
      ENDIF
      DO seE_2112b IN PAC2112B WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_2112b IN PAC2112B WITH "i", "v"
      ENDIF
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_2112b IN PAC2112B WITH "i"
      SET NEAR OFF
      DO paN_2117b
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
      DO seE_2112b IN PAC2112B WITH "v"
 ENDIF
 DO diS_2117b WITH "R"
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
           DO rs1_2117b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2117b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2117b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2117b WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_2117b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2117b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO coD_2113a IN PAC2113A
                SET READBORDER ON
                DO geT_2111a IN PAC2111A
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_2117b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                DO xlS_2117b
                STORE 99 TO mkEy
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_2111a IN PAC2111A WITH "PAC2117A", "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                IF vsW1=2
                     SAVE SCREEN TO mpAn_11
                     SELECT teMporal
                     GOTO TOP
                     DO coLbln
                     STORE 0 TO ysT1, ysT2, ysT3, ysT4, ysT5
                     DO WHILE  .NOT. EOF()
                          STORE f2111cod TO xcOd
                          @ ifIl+2, icL1 SAY xcOd SIZE 1, 20
                          STORE ysT1+(f2111sto*f2111vcs) TO ysT1
                          IF vaL2=1
                               SELECT tiEnda2
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT2+(f2118sto*f2118vcs) TO ysT2
                               ENDIF
                          ENDIF
                          IF vaL3=1
                               SELECT tiEnda3
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT3+(f2118sto*f2118vcs) TO ysT3
                               ENDIF
                          ENDIF
                          IF vaL4=1
                               SELECT tiEnda4
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT4+(f2118sto*f2118vcs) TO ysT4
                               ENDIF
                          ENDIF
                          IF vaL5=1
                               SELECT tiEnda5
                               SEEK ALLTRIM(xcOd)+"*"
                               IF  .NOT. EOF()
                                    STORE ysT5+(f2118sto*f2118vcs) TO ysT5
                               ENDIF
                          ENDIF
                          SELECT teMporal
                          SKIP
                     ENDDO
                     RESTORE SCREEN FROM mpAn_11
                ENDIF
                IF wnV1="1"
                     DO toT_2117a IN PAC2117A
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT prOductos
                     CASE vsW1=2
                          SELECT teMporal
                ENDCASE
                DO seE_2112b IN PAC2112B WITH "v"
                DO diS_2117b WITH "R"
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. vaLt>2
                DO CASE
                     CASE mkEy=k_Ctrl_right .AND. vsW2=2
                          STORE 1 TO vsW2
                     CASE mkEy=k_Ctrl_right
                          STORE vsW2+1 TO vsW2
                     CASE mkEy=k_Ctrl_left .AND. vsW2=1
                          STORE 2 TO vsW2
                     CASE mkEy=k_Ctrl_left
                          STORE vsW2-1 TO vsW2
                ENDCASE
                DO tiT_2117a
                DO caM_2117b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(icOd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcOd))+"*"= ;
                                    UPPER(ALLTRIM(icOd))+"*"
                                    DO paN_2117b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2117b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(ucOd))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcOd))+"*"= ;
                                    UPPER(ALLTRIM(ucOd))+"*"
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_2117b
                               OTHERWISE
                                    DO seE_2112b IN PAC2112B WITH "v"
                                    DO diS_2117b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "u", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "N"
                          SKIP
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(ucOd))+"*"
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2117a WITH ffIl, ffIl+1
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               DO muE_2112b IN PAC2112B WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_2112b IN PAC2112B WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "N"
                          SKIP -1
                          IF UPPER(ALLTRIM(vcOd))+"*"=UPPER(ALLTRIM(icOd))+"*"
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_2117a WITH ifIl, ifIl+1
                               DO muE_2112b IN PAC2112B WITH "F", "i"
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_2112b IN PAC2112B WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2112b IN PAC2112B WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112b IN PAC2112B WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2117b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112b IN PAC2112B WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2117b
                          STORE ifIl TO vfIl
                          DO muE_2112b IN PAC2112B WITH "i", "v"
                          DO seE_2112b IN PAC2112B WITH "v"
                          DO diS_2117b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112b IN PAC2112B WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2117b
 DO pn1_2117b WITH "1"
ENDPROC
*
PROCEDURE Pa1_2117b
 DO pn1_2117b WITH "2"
ENDPROC
*
PROCEDURE Pn1_2117b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_2112b IN PAC2112B WITH "F", "i"
 DO muE_2112b IN PAC2112B WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. UPPER(ALLTRIM(f2111cod))+"*"= ;
                UPPER(ALLTRIM(xcOd))+"*"
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_2117b WITH "N"
      ENDCASE
      DO muE_2112b IN PAC2112B WITH "F", "u"
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
      DO liN_2117a WITH ufIl+1, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2117b
 PARAMETER ptIp
 PRIVATE psT1, psT2, psT3, psT4, psT5, psTo, pcOd
 STORE 0 TO psT2, psT3, psT4, psT5, psTo
 STORE f2111cod TO pcOd
 STORE f2111sto TO psT1
 IF vaL2=1
      SELECT tiEnda2
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF()
           STORE f2118sto TO psT2
      ENDIF
 ENDIF
 IF vaL3=1
      SELECT tiEnda3
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF()
           STORE f2118sto TO psT3
      ENDIF
 ENDIF
 IF vaL4=1
      SELECT tiEnda4
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF()
           STORE f2118sto TO psT4
      ENDIF
 ENDIF
 IF vaL5=1
      SELECT tiEnda5
      SEEK ALLTRIM(pcOd)+"*"
      IF  .NOT. EOF()
           STORE f2118sto TO psT5
      ENDIF
 ENDIF
 STORE psT1+psT2+psT3+psT4+psT5 TO psTo
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO CASE
      CASE ptIp="N" .AND. f2111cst=1
           DO coLscz
      CASE ptIp="R" .AND. f2111cst=1
           DO coLblz
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,iCLN Say F2111COD Font "&mLetAri",9 Style "NQ" Size 1,30.1 Pict "!!!!!!!!!!!!!!!!!!!!"
 DO CASE
      CASE ptIp="N" .AND. f2111md1=1
           DO coLscr
      CASE ptIp="R" .AND. f2111md1=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3"
           @vFIL,iCLN+31.1 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,027.1 Pict "@S30"
      OTHERWISE
           @vFIL,iCLN+31.1 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,094.2 Pict "@S97"
 ENDCASE
 IF f2111md3=2
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      @vFIL,iCLN+31.1 Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO cl1_2117b WITH ptIp, "0"
 @vFIL,iCL1-010.6 Say F2111NUC Font "&mLetAri",9 Style "NQ" Size 1,10.1 Pict "@S12"
 DO cl1_2117b WITH ptIp, "1"
 @vFIL,iCL1+000.5 Say pST1     Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 DO cl1_2117b WITH ptIp, "2"
 @vFIL,iCL1+022.5 Say pST2     Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 DO cl1_2117b WITH ptIp, "3"
 @vFIL,iCL1+044.5 Say pST3     Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 DO cl1_2117b WITH ptIp, "4"
 @vFIL,iCL1+066.5 Say pST4     Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 DO cl1_2117b WITH ptIp, "5"
 @vFIL,iCL1+088.5 Say pST5     Font "&mLetAri",9 Style "NQ" Size 1,20.9 Pict "99,999,999.9999"
 DO cl1_2117b WITH ptIp, "6"
 @vFIL,iCL1+110.5 Say pSTO     Font "&mLetAri",9 Style "NQ" Size 1,21.2 Pict "99,999,999.9999"
 IF ptIp="R"
      DO coLsc1
      DO CASE
           CASE mrEs="3"
                @fFIL+1.4,mCO0 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,69  Pict "@S72"
           OTHERWISE
                @fFIL+1.4,mCO0 Say F2111DES Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S120"
      ENDCASE
 ENDIF
 RELEASE pcOd, psT1, psT2, psT3, psT4, psT5, psTo
ENDPROC
*
PROCEDURE Cam_2117b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_2112b IN PAC2112B WITH "v", "x"
 DO orD_2111b IN PAC2111B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_2112b IN PAC2112B WITH "i"
 DO pa1_2117b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "x", "v"
 ENDIF
 DO seE_2112b IN PAC2112B WITH "v"
 DO diS_2117b WITH "R"
ENDPROC
*
PROCEDURE Rs1_2117b
 SET READBORDER ON
 DO rs1_2117a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_2117b WITH "R"
 DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
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
PROCEDURE Xls_2117b
 WAIT WINDOW NOWAIT "Iniciando Lectura..."
 SELECT tmP_excel
 ZAP
 REINDEX
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2111cod TO xcOd
      STORE f2111des TO xdEs
      STORE f2111nuc TO xnUc
      STORE f2111sto TO vsT1
      STORE 0 TO vsT2, vsT3, vsT4, vsT5
      IF vaL2=1
           SELECT tiEnda2
           SEEK ALLTRIM(xcOd)+"*"
           IF  .NOT. EOF()
                STORE f2118sto TO vsT2
           ENDIF
      ENDIF
      IF vaL3=1
           SELECT tiEnda3
           SEEK ALLTRIM(xcOd)+"*"
           IF  .NOT. EOF()
                STORE f2118sto TO vsT3
           ENDIF
      ENDIF
      IF vaL4=1
           SELECT tiEnda4
           SEEK ALLTRIM(xcOd)+"*"
           IF  .NOT. EOF()
                STORE f2118sto TO vsT4
           ENDIF
      ENDIF
      IF vaL5=1
           SELECT tiEnda5
           SEEK ALLTRIM(xcOd)+"*"
           IF  .NOT. EOF()
                STORE f2118sto TO vsT5
           ENDIF
      ENDIF
      STORE vsT1+vsT2+vsT3+vsT4+vsT5 TO vsTo
      SELECT tmP_excel
      APPEND BLANK
      REPLACE coDigo WITH xcOd
      REPLACE deScripc WITH xdEs
      REPLACE unId_inv WITH xnUc
      REPLACE stOck WITH vsT1
      REPLACE st_loc_1 WITH vsT2
      REPLACE st_loc_2 WITH vsT3
      REPLACE st_loc_3 WITH vsT4
      REPLACE st_loc_4 WITH vsT5
      REPLACE st_total WITH vsTo
      DO CASE
           CASE vsW1=1
                SELECT prOductos
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      SKIP
 ENDDO
 DO xl0_0000a WITH "Stock x Almacen", "Listado", 9
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 WAIT WINDOW NOWAIT "Formato..."
 pxLs.ceLls(3, 1).vaLue = "Codigo"
 pxLs.ceLls(3, 2).vaLue = "Descripcion"
 pxLs.ceLls(3, 3).vaLue = "Unidad Inventario"
 pxLs.ceLls(3, 4).vaLue = "Stock "+vnO1
 pxLs.ceLls(3, 5).vaLue = "Stock "+vnO2
 pxLs.ceLls(3, 6).vaLue = "Stock "+vnO3
 pxLs.ceLls(3, 7).vaLue = "Stock "+vnO4
 pxLs.ceLls(3, 8).vaLue = "Stock "+vnO5
 pxLs.ceLls(3, 9).vaLue = "Total Stock"
 pxLs.raNge(pxLs.coLumns(1), pxLs.coLumns(3)).nuMberformat = "@"
 pxLs.raNge(pxLs.coLumns(4), pxLs.coLumns(9)).nuMberformat = "###,###,##0.00"
 SELECT tmP_excel
 GOTO TOP
 STORE 4 TO viT1
 STORE 1 TO meN1
 DO WHILE  .NOT. EOF()
      pxLs.ceLls(viT1, 1).seLect
      pxLs.ceLls(viT1, 1).vaLue = coDigo
      pxLs.ceLls(viT1, 2).vaLue = deScripc
      pxLs.ceLls(viT1, 3).vaLue = unId_inv
      pxLs.ceLls(viT1, 4).vaLue = stOck
      pxLs.ceLls(viT1, 5).vaLue = st_loc_1
      pxLs.ceLls(viT1, 6).vaLue = st_loc_2
      pxLs.ceLls(viT1, 7).vaLue = st_loc_3
      pxLs.ceLls(viT1, 8).vaLue = st_loc_4
      pxLs.ceLls(viT1, 9).vaLue = st_total
      STORE viT1+1 TO viT1
      SELECT tmP_excel
      IF meN1>=meNn
           EXIT
      ENDIF
      STORE meN1+1 TO meN1
      SKIP
 ENDDO
 DO xl1_0000a WITH 1
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT prOductos
      CASE vsW1=2
           SELECT teMporal
 ENDCASE
 DO seE_2112b IN PAC2112B WITH "v"
ENDPROC
*
PROCEDURE Cl1_2117b
 PARAMETER ptIp, pwWw
 DO CASE
      CASE ptIp="N" .AND. ((pwWw="1" .AND. vwW1=1) .OR. (pwWw="2" .AND.  ;
           vwW2=1) .OR. (pwWw="3" .AND. vwW3=1) .OR. (pwWw="4" .AND. vwW4= ;
           1) .OR. (pwWw="5" .AND. vwW5=1) .OR. (pwWw="6" .AND. vwW1+vwW2+ ;
           vwW3+vwW4+vwW5<>0))
           DO coL_beige
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2117b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
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
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
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
      CASE mfIl>=ifIl-3.514 .AND. mfIl<=ifIl-1.942 .AND. wnV1="1" .AND.  ;
           mcCc>=muCo-28.2 .AND. mcCc<=muCo-14 .AND. vsW2<>2
           STORE 2 TO vsW2
           DO bt1_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-3.514 .AND. mfIl<=ifIl-1.942 .AND. wnV1="1" .AND.  ;
           mcCc>=muCo-12 .AND. mcCc<=muCo-2.2 .AND. vsW2<>1
           STORE 1 TO vsW2
           DO bt1_2117a IN PAC2117A
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND. wnV1="1" .AND.  ;
           mcCc>=icL1+009.0 .AND. mcCc<=icL1+011.6 .AND. vaLt>0
           IF vwW1=1
                STORE 0 TO vwW1
           ELSE
                STORE 1 TO vwW1
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO di1_2117b IN PAC2117B
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO2))<>0 .AND. mcCc>=icL1+031.6 .AND. mcCc<=icL1+ ;
           034.2 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW2=1
                STORE 0 TO vwW2
           ELSE
                STORE 1 TO vwW2
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO di1_2117b IN PAC2117B
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO3))<>0 .AND. mcCc>=icL1+054.4 .AND. mcCc<=icL1+ ;
           057.0 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW3=1
                STORE 0 TO vwW3
           ELSE
                STORE 1 TO vwW3
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO di1_2117b IN PAC2117B
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO4))<>0 .AND. mcCc>=icL1+076.2 .AND. mcCc<=icL1+ ;
           078.8 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW4=1
                STORE 0 TO vwW4
           ELSE
                STORE 1 TO vwW4
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO di1_2117b IN PAC2117B
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=ifIl-2.728 .AND. mfIl<=ifIl-1.799 .AND.  ;
           LEN(ALLTRIM(vnO5))<>0 .AND. mcCc>=icL1+096.2 .AND. mcCc<=icL1+ ;
           098.8 .AND. vaLt>0 .AND. wnV1="1"
           IF vwW5=1
                STORE 0 TO vwW5
           ELSE
                STORE 1 TO vwW5
           ENDIF
           DO tiT_2117a IN PAC2117A
           DO boT_2117a IN PAC2117A
           DO di1_2117b IN PAC2117B
           DO toT_2117a IN PAC2117A
           STORE 99 TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=icLn .AND.  ;
           mcCc<=ucLn
           DO diS_2117b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_2112b IN PAC2112B WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_2112b IN PAC2112B WITH "F", "v"
           DO diS_2117b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Di1_2117b
 STORE vfIl TO cfIl
 DO muE_2112b IN PAC2112B WITH "v", "c"
 DO seE_2112b IN PAC2112B WITH "i"
 DO paN_2117b
 STORE cfIl TO vfIl
 DO muE_2112b IN PAC2112B WITH "c", "v"
 DO seE_2112b IN PAC2112B WITH "v"
 DO diS_2117b WITH "R"
ENDPROC
*
PROCEDURE Hl1_2117b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 2 SAY  ;
   "En esta parte de la consulta, se muestran todos los Productos con sus "
 @ pfIl+1, 2 SAY "stocks en el orden que se ha elegido."
 DO hl3_2111b IN PAC2111B
 @ pfIl+00, 02 SAY "Las teclas para movilizarse son:"
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
 @ pfIl+13, 21 SAY ":" STYLE "BT"
 @ pfIl+02, 03 SAY "ESC" STYLE "BT"
 @ pfIl+03, 03 SAY "F10" STYLE "BT"
 @ pfIl+04, 03 SAY "F1" STYLE "BT"
 @ pfIl+05, 03 SAY "F6" STYLE "BT"
 @ pfIl+06, 03 SAY "F8" STYLE "BT"
 @ pfIl+07, 03 SAY "F9" STYLE "BT"
 @ pfIl+08, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+09, 03 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 03 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+11, 03 SAY "PAGE UP" STYLE "BT"
 @ pfIl+12, 03 SAY "HOME" STYLE "BT"
 @ pfIl+13, 03 SAY "END" STYLE "BT"
 @ pfIl+02, 23 SAY "Regresar a Cabecera"
 @ pfIl+03, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+04, 23 SAY "Ayuda del Programa"
 @ pfIl+05, 23 SAY "Cambio de Orden de Consulta"
 @ pfIl+06, 23 SAY "Pasar datos a Excel"
 @ pfIl+07, 23 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+08, 23 SAY "Línea inferior"
 @ pfIl+09, 23 SAY "Línea superior"
 @ pfIl+10, 23 SAY "Página siguiente"
 @ pfIl+11, 23 SAY "Página anterior"
 @ pfIl+12, 23 SAY "Primera línea"
 @ pfIl+13, 23 SAY "Última línea"
 STORE pfIl+14 TO pfIl
 IF vaLt>2
      @ pfIl+0, 21 SAY ":" STYLE "BT"
      @ pfIl+1, 21 SAY ":" STYLE "BT"
      @ pfIl+0, 03 SAY "CTRL -->" STYLE "BT"
      @ pfIl+1, 03 SAY "CTRL <--" STYLE "BT"
      @ pfIl+0, 23 SAY "Ver Otros datos"
      @ pfIl+1, 23 SAY "Ver Otros datos"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
