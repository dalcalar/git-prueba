 = INKEY(0.01)
 STORE SPACE(07) TO vdOc
 STORE 99 TO mkEy
 STORE 01 TO vsW5
 STORE 00 TO tcAn, tcAj, vsIn, vrEp
 DO orD_2112c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seRies
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2112cod)+"*"=ALLTRIM(vcOd)+"*"
      @iFFS+1,vCO2+40 Say F2112PED+":"+F2112SEC Font "&mLetAri",9 Style "NQ" Size 1,20
      DO CASE
           CASE f2112est="S"
                STORE tcAj+1 TO tcAj
                STORE tcAn+f2112pla TO tcAn
           CASE LEN(ALLTRIM(vdOc))=0
                STORE f2112td2 TO vtDo
                STORE f2112sr2 TO vsEr
                STORE f2112do2 TO vdOc
      ENDCASE
      IF f2112do3="Sin Doc"
           STORE vsIn+1 TO vsIn
      ENDIF
      IF f2112rep="R"
           STORE vrEp+1 TO vrEp
      ENDIF
      SKIP
 ENDDO
 IF vsIn>0
      STORE "Hay "+ALLTRIM(STR(vsIn, 3, 0))+" Rot/Falt sin arreglar..." TO vsIn
 ELSE
      STORE " " TO vsIn
 ENDIF
 IF vrEp>0
      STORE "Hay "+ALLTRIM(STR(vrEp, 3, 0))+" Series Repetidas..." TO vrEp
 ELSE
      STORE " " TO vrEp
 ENDIF
 DO p00_2112c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 DO paN_2112c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFs TO vfFs
 DO muE_2112c WITH "i", "v"
 DO seE_2112c WITH "v"
 DO diS_2112c WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
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
           DO rs1_2112c
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2112c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_2112c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_2112c WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                EXIT
           CASE mkEy=k_F1
                DO hl1_2112c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2112c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                SELECT tmP_series
                ZAP
                REINDEX
                SELECT kaRdex_series
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2991cod)+"*"+ ;
                   ALLTRIM(f2991ped)+f2991sec=ALLTRIM(vcOd)+"*"+ ;
                   ALLTRIM(vpEd)+vsEc
                     STORE f2991tdo TO vtDo
                     STORE f2991ser TO vsEr
                     STORE f2991doc TO vdOc
                     STORE f2991tpo TO vtPo
                     STORE f2991ano TO vaNo
                     STORE f2991mes TO vmEs
                     STORE f2991dia TO vdIa
                     SELECT tmP_series
                     APPEND BLANK
                     REPLACE f2112tip WITH vtPo
                     REPLACE f2112ano WITH vaNo
                     REPLACE f2112mes WITH vmEs
                     REPLACE f2112dia WITH vdIa
                     REPLACE f2112ped WITH vpEd
                     REPLACE f2112sec WITH vsEc
                     REPLACE f2112tdo WITH vtDo
                     REPLACE f2112ser WITH vsEr
                     REPLACE f2112doc WITH vdOc
                     SELECT kaRdex_series
                     SKIP
                ENDDO
                SELECT tmP_series
                GOTO TOP
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB3 REST
                SET CONFIRM OFF
                DO p1_0000a
                SELECT seRies
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO diS_2112c WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE mkEy=k_Right .AND. vsW5=4
                          STORE 1 TO vsW5
                     CASE mkEy=k_Right
                          STORE vsW5+1 TO vsW5
                     CASE mkEy=k_Left .AND. vsW5=1
                          STORE 4 TO vsW5
                     CASE mkEy=k_Left
                          STORE vsW5-1 TO vsW5
                ENDCASE
                DO orD_2112c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_2112c
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112c WITH "i"
                STORE 00 TO cfFs
                STORE ifFs TO vfFs
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(UPPER(f2112cod))+"*"= ;
                   ALLTRIM(vcOd)+"*" .AND. vfFs<ffFs+1
                     IF ALLTRIM(f2112ped)+f2112sec=ALLTRIM(vpEd)+vsEc
                          STORE vfFs TO cfFs
                     ENDIF
                     DO diS_2112c WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO muE_2112c WITH "F", "u"
                     STORE vfFs TO ufFs
                     STORE vfFs+1 TO vfFs
                     SKIP
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF ufFs+1<=ffFs
                     DO coL_beige
                     @ ufFs+1, vcO2 CLEAR TO ffFs+1, vcO2+ucO2
                     DO liN_2112c WITH ufFs+1, ffFs+1
                ENDIF
                IF cfFs=0
                     STORE ifFs TO cfFs
                     DO muE_2112c WITH "i", "v"
                ENDIF
                STORE cfFs TO vfFs
                DO seE_2112c WITH "v"
                DO diS_2112c WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F3
                DO diS_2112c WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<> ;
                          ALLTRIM(vcOd)+"*"
                          STORE "No hay Series disponibles más adelante..."  ;
                                TO mmSj
                     OTHERWISE
                          STORE 0 TO vsW3, vsW4
                          STORE vfFs+1 TO cfFs
                          DO WHILE  .NOT. EOF() .AND.  ;
                             ALLTRIM(UPPER(f2112cod))+"*"=ALLTRIM(vcOd)+"*"
                               IF cfFs>ffFs
                                    STORE ifFs TO cfFs
                                    STORE 1 TO vsW3
                               ENDIF
                               IF f2112est$"S0"
                                    DO muE_2112c WITH "F", "v"
                                    STORE cfFs TO vfFs
                                    STORE 1 TO vsW4
                                    EXIT
                               ENDIF
                               STORE cfFs+1 TO cfFs
                               SKIP
                          ENDDO
                          IF vsW3=1
                               DO seE_2112c WITH "v"
                               DO paN_2112c
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO muE_2112c WITH "i", "v"
                               STORE ifFs TO vfFs
                          ENDIF
                          IF vsW4=0
                               STORE "No hay Series disponibles más adelante..."  ;
                                     TO mmSj
                          ENDIF
                ENDCASE
                DO seE_2112c WITH "v"
                DO diS_2112c WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F5 .AND. wtPo="3"
                DO CASE
                     CASE f2112plo<>f2112pla .AND. f2112do3<>"Sin Doc"
                          STORE "Pedido ya se encuentra procesado..." TO mmSj
                          DO poNmsj
                     CASE f2112plo=f2112pla
                          STORE "Pedido no tiene sobrantes/faltantes ni roturas.."  ;
                                TO mmSj
                          DO poNmsj
                     OTHERWISE
                          SELECT seR_fact
                          SEEK vtD2+vsR2+vdO2+ALLTRIM(vcOd)+"*"+ ;
                               ALLTRIM(vpEd)+vsEc
                          IF  .NOT. EOF()
                               SELECT seRies
                               DO diS_2112c WITH "N"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               SAVE SCREEN TO vpAn_12
                               DO coL_fondo
                               DO cuAdro WITH ifFs-2.2, vcO2, ifFs+2, vcO2+ucO2
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 1 TO cmOt
                               @iFFS-2.0,vCO2+45 Say "Cambiar Motivo:" Font "&mLetRom",12 Style "BQ"
                               DO WHILE .T.
                                    STORE 99 TO mkEy
                                    @iFFS-0.2,vCO2+45 Get cMOT Font "&mLetAri",9 Style "NQ" Default cMOT Function "*RHT &vTBZ[1];&vTBZ[2];&vTBZ[3]"
                                    SET CONFIRM ON
                                    SET CURSOR ON
                                    READ
                                    SET CURSOR OFF
                                    SET CONFIRM OFF
                                    DO CASE
                                         CASE mkEy=k_F10
                                              DO reTorna
                                         CASE mkEy=k_Esc
                                              RESTORE SCREEN FROM vpAn_12
                                              STORE 99 TO mkEy
                                              EXIT
                                         CASE mkEy=k_Enter
                                              RESTORE SCREEN FROM vpAn_12
                                              SELECT seR_fact
                                              SEEK vtD2+vsR2+vdO2+ ;
                                               ALLTRIM(vcOd)+"*"+ ;
                                               ALLTRIM(vpEd)+vsEc
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH vtD2+ ;
                                                    vsR2+vdO2+ ;
                                                    ALLTRIM(vcOd)+"*"+ ;
                                                    ALLTRIM(vpEd)+vsEc
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        UNLOCK ALL
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                              DO CASE
                                                   CASE cmOt=1
                                                        REPLACE f1303mot  ;
                                                         WITH "       "
                                                   CASE cmOt=2
                                                        REPLACE f1303mot  ;
                                                         WITH "Fabrica"
                                                   CASE cmOt=3
                                                        REPLACE f1303mot  ;
                                                         WITH "Rotura "
                                              ENDCASE
                                              UNLOCK
                                              SELECT seRies
                                              DO seE_2112c WITH "!"
                                              IF  .NOT. RLOCK()
                                                   DO reG_lock WITH vtD2+ ;
                                                    vsR2+vdO2+ ;
                                                    ALLTRIM(vcOd)+"*"+ ;
                                                    ALLTRIM(vpEd)+vsEc
                                                   DO CASE
                                                        CASE vsW5=1
                                                             DO reG_lock  ;
                                                              WITH  ;
                                                              ALLTRIM(vcOd)+ ;
                                                              "*"+ ;
                                                              ALLTRIM(vpEd)+ ;
                                                              vsEc
                                                        CASE vsW5=2
                                                             DO reG_lock  ;
                                                              WITH  ;
                                                              ALLTRIM(vcOd)+ ;
                                                              "*"+vtD1+ ;
                                                              vsR1+vdO1+ ;
                                                              ALLTRIM(vpEd)+ ;
                                                              vsEc
                                                        CASE vsW5=3
                                                             DO reG_lock  ;
                                                              WITH  ;
                                                              ALLTRIM(vcOd)+ ;
                                                              "*"+vtD2+ ;
                                                              vsR2+vdO2+ ;
                                                              ALLTRIM(vpEd)+ ;
                                                              vsEc
                                                        CASE vsW5=4
                                                             DO reG_lock  ;
                                                              WITH  ;
                                                              ALLTRIM(vcOd)+ ;
                                                              "*"+vtD3+ ;
                                                              vsR3+vdO3+ ;
                                                              ALLTRIM(vpEd)+ ;
                                                              vsEc
                                                   ENDCASE
                                                   IF mkEy=k_Esc
                                                        WAIT CLEAR
                                                        UNLOCK ALL
                                                        RETURN
                                                   ENDIF
                                              ELSE
                                                   RLOCK()
                                              ENDIF
                                              DO CASE
                                                   CASE cmOt=1
                                                        REPLACE f2112mot  ;
                                                         WITH "       "
                                                   CASE cmOt=2
                                                        REPLACE f2112mot  ;
                                                         WITH "Fabrica"
                                                   CASE cmOt=3
                                                        REPLACE f2112mot  ;
                                                         WITH "Rotura "
                                              ENDCASE
                                              UNLOCK
                                              FLUSH
                                              EXIT
                                    ENDCASE
                               ENDDO
                               SELECT seRies
                               DO diS_2112c WITH "R"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                ENDCASE
                SELECT seRies
           CASE mkEy=k_F6
                DO diS_2112c WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                DO cuAdro WITH ifFs-2.2, vcO2, ifFs+2, vcO2+ucO2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @iFFS-2.0,vCO2+45 Say "Búsqueda de Cantidades:" Font "&mLetRom",12 Style "BQ"
                STORE 0 TO vcAn
                DO WHILE .T.
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS,vCO2+43 Get vCAN Pict "999999.9999" Font "&mLetRom",12 Style "BQ" Size 1,14 Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. vcAn=0
                               STORE "Cantidad no puede ser 0..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               STORE vfFs TO cfFs
                               STORE 00 TO vsW3
                               DO WHILE  .NOT. EOF() .AND.  ;
                                  ALLTRIM(UPPER(f2112cod))+"*"= ;
                                  ALLTRIM(vcOd)+"*" .AND. cfFs<ffFs+1
                                    IF f2112pla=vcAn
                                         DO muE_2112c WITH "F", "v"
                                         STORE cfFs TO vfFs
                                         STORE 01 TO vsW3
                                         EXIT
                                    ENDIF
                                    STORE cfFs+1 TO cfFs
                                    SKIP
                               ENDDO
                               IF vsW3=0
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"
                                    DO WHILE  .NOT. EOF() .AND.  ;
                                       ALLTRIM(UPPER(f2112cod))+"*"= ;
                                       ALLTRIM(vcOd)+"*"
                                         IF f2112pla=vcAn
                                              DO muE_2112c WITH "F", "v"
                                              STORE 02 TO vsW3
                                              STORE ifFs TO cfFs
                                              EXIT
                                         ENDIF
                                         SKIP
                                    ENDDO
                               ENDIF
                               DO CASE
                                    CASE vsW3=0
                                         STORE  ;
                                          "Cantidad no encontrada..." TO mmSj
                                         DO poNmsj
                                    CASE vsW3=1
                                         RESTORE SCREEN FROM vpAn_12
                                         STORE cfFs TO vfFs
                                         EXIT
                                    CASE vsW3=2
                                         RESTORE SCREEN FROM vpAn_12
                                         DO paN_2112c
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO muE_2112c WITH "i", "v"
                                         STORE ifFs TO vfFs
                                         EXIT
                               ENDCASE
                     ENDCASE
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112c WITH "v"
                DO diS_2112c WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7
                DO diS_2112c WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                DO cuAdro WITH ifFs-2.2, vcO2, ifFs+2, vcO2+ucO2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @iFFS-2.0,vCO2+35.0 Say "Búsqueda de Documentos:" Font "&mLetRom",12 Style "BQ"
                @iFFS-0.2,vCO2+49.8 Say "-"                       Font "&mLetRom",15 Style "BQ"
                @iFFS-0.2,vCO2+59.5 Say "-"                       Font "&mLetRom",15 Style "BQ"
                DO WHILE .T.
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS,vCO2+43 Get vTDO Pict "!!"      Font "&mLetRom",12 Style "BQ" Size 1,3.2 Color ,&mColBlN
                     @iFFS,vCO2+53 Get vSER Pict "999"     Font "&mLetRom",12 Style "BQ" Size 1,3.4 Color ,&mColBlN
                     @iFFS,vCO2+63 Get vDOC Pict "9999999" Font "&mLetRom",12 Style "BQ" Size 1,8.0 Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vtDo))=0
                               STORE "Tipo de Documento no puedes estar vacío..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vtDo))<>0  ;
                               .AND. AT(" ", vtDo)<>0
                               STORE "Tipo de Documento no puede tener espacios vacíos..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vsEr))<>0  ;
                               .AND. AT(" ", vsEr)<>0
                               STORE "Serie de Documento debe estar vacío o totalmente lleno..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vsEr))=0  ;
                               .AND. LEN(ALLTRIM(vdOc))<>0
                               STORE "Serie de Documento debe estar vacío o totalmente lleno..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               STORE 00 TO vsW3
                               DO orD_0000a WITH "2112", "A", "F2112DO1", "A"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               DO CASE
                                    CASE LEN(ALLTRIM(vsEr))<>0
                                         SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+ ;
                                          ALLTRIM(vdOc)
                                    CASE LEN(ALLTRIM(vsEr))=0
                                         SEEK ALLTRIM(vcOd)+"*"+vtDo
                               ENDCASE
                               IF  .NOT. EOF()
                                    STORE 01 TO vsW3
                               ELSE
                                    DO orD_0000a WITH "2112", "A",  ;
                                       "F2112DO2", "A"
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    DO CASE
                                         CASE LEN(ALLTRIM(vsEr))<>0
                                              SEEK ALLTRIM(vcOd)+"*"+vtDo+ ;
                                               vsEr+ALLTRIM(vdOc)
                                         CASE LEN(ALLTRIM(vsEr))=0
                                              SEEK ALLTRIM(vcOd)+"*"+vtDo
                                    ENDCASE
                                    IF  .NOT. EOF()
                                         STORE 01 TO vsW3
                                    ELSE
                                         DO orD_0000a WITH "2112", "A",  ;
                                          "F2112DO3", "A"
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO CASE
                                              CASE LEN(ALLTRIM(vsEr))<>0
                                                   SEEK ALLTRIM(vcOd)+"*"+ ;
                                                    vtDo+vsEr+ALLTRIM(vdOc)
                                              CASE LEN(ALLTRIM(vsEr))=0
                                                   SEEK ALLTRIM(vcOd)+"*"+vtDo
                                         ENDCASE
                                         IF  .NOT. EOF()
                                              STORE 01 TO vsW3
                                         ENDIF
                                    ENDIF
                               ENDIF
                               IF vsW3=0
                                    STORE  ;
                                     "No se encuentran estos datos..." TO mmSj
                                    DO poNmsj
                               ELSE
                                    RESTORE SCREEN FROM vpAn_12
                                    DO muE_2112c WITH "F", "c"
                                    DO orD_2112c
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 00 TO vsW3
                                    IF (vsW5=1 .AND. ALLTRIM(cpEd)+csEc>= ;
                                       ALLTRIM(ipEd)+isEc .AND.  ;
                                       ALLTRIM(cpEd)+csEc<=ALLTRIM(upEd)+ ;
                                       usEc) .OR. (vsW5=2 .AND. ctD1+csR1+ ;
                                       cdO1+ALLTRIM(cpEd)+csEc>=itD1+isR1+ ;
                                       idO1+ALLTRIM(ipEd)+isEc .AND. ctD1+ ;
                                       csR1+cdO1+ALLTRIM(cpEd)+csEc<=utD1+ ;
                                       usR1+udO1+ALLTRIM(upEd)+usEc) .OR.  ;
                                       (vsW5=3 .AND. ctD2+csR2+cdO2+ ;
                                       ALLTRIM(cpEd)+csEc>=itD2+isR2+idO2+ ;
                                       ALLTRIM(ipEd)+isEc .AND. ctD2+csR2+ ;
                                       cdO2+ALLTRIM(cpEd)+csEc<=utD2+usR2+ ;
                                       udO2+ALLTRIM(upEd)+usEc) .OR.  ;
                                       (vsW5=4 .AND. ctD3+csR3+cdO3+ ;
                                       ALLTRIM(cpEd)+csEc>=itD3+isR3+idO3+ ;
                                       ALLTRIM(ipEd)+isEc .AND. ctD3+csR3+ ;
                                       cdO3+ALLTRIM(cpEd)+csEc<=utD3+usR3+ ;
                                       udO3+ALLTRIM(upEd)+usEc)
                                         DO seE_2112c WITH "i"
                                         STORE ifFs TO cfFs
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          ALLTRIM(UPPER(f2112cod))+"*"= ;
                                          ALLTRIM(vcOd)+"*" .AND. cfFs<ffFs+1
                                              IF ALLTRIM(f2112ped)+ ;
                                               f2112sec=ALLTRIM(cpEd)+csEc
                                                   DO muE_2112c WITH "F", "v"
                                                   STORE cfFs TO vfFs
                                                   STORE 01 TO vsW3
                                                   EXIT
                                              ENDIF
                                              STORE cfFs+1 TO cfFs
                                              SKIP
                                         ENDDO
                                    ENDIF
                                    IF vsW3=0
                                         DO seE_2112c WITH "c"
                                         DO paN_2112c
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO muE_2112c WITH "i", "v"
                                         STORE ifFs TO vfFs
                                    ENDIF
                                    EXIT
                               ENDIF
                     ENDCASE
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112c WITH "v"
                DO diS_2112c WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                WAIT WINDOW NOWAIT "Iniciando Lectura..."
                STORE 17 TO viT2
                STORE " al "+SUBSTR(DTOC(DATE()), 1, 2)+"-"+ ;
                      SUBSTR(DTOC(DATE()), 4, 2)+"-"+SUBSTR(DTOC(DATE()),  ;
                      7, 4) TO vnEs
                DO xl0_0000a WITH "Series "+vnEs, "Detalle", viT2
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     LOOP
                ENDIF
                WAIT WINDOW NOWAIT "Formato..."
                pxLs.ceLls(3, 01).vaLue = "Pedido"
                pxLs.ceLls(3, 02).vaLue = "Secuencia"
                pxLs.ceLls(3, 03).vaLue = "Original"
                pxLs.ceLls(3, 04).vaLue = "Contada"
                pxLs.ceLls(3, 05).vaLue = "Observac"
                pxLs.ceLls(3, 06).vaLue = "Estado"
                pxLs.ceLls(3, 07).vaLue = "de Compra"
                pxLs.ceLls(3, 10).vaLue = "de Compra"
                pxLs.ceLls(3, 11).vaLue = "de Venta"
                pxLs.ceLls(3, 14).vaLue = "Fecha"
                pxLs.ceLls(3, 15).vaLue = "de Regulariz"
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(4,viT2)).inSert
                pxLs.raNge(pxLs.ceLls(3,1), pxLs.ceLls(3,14)).meRge
                pxLs.ceLls(3, 01).vaLue = ALLTRIM(vcOd)+" : "+vdEs
                pxLs.ceLls(3, 01).hoRizontalalignment = 2
                pxLs.ceLls(3, 01).foNt.naMe = "Times New Roman"
                pxLs.ceLls(3, 01).foNt.siZe = 12
                pxLs.ceLls(3, 01).foNt.boLd = .T.
                pxLs.ceLls(4, 03).vaLue = "Cantidad"
                pxLs.ceLls(4, 04).vaLue = "Cantidad"
                pxLs.ceLls(4, 07).vaLue = "Documento"
                pxLs.ceLls(4, 10).vaLue = "Fecha"
                pxLs.ceLls(4, 11).vaLue = "Documento"
                pxLs.ceLls(4, 15).vaLue = "Documento"
                pxLs.raNge(pxLs.ceLls(4,01), pxLs.ceLls(5,01)).meRge
                pxLs.raNge(pxLs.ceLls(4,02), pxLs.ceLls(5,02)).meRge
                pxLs.raNge(pxLs.ceLls(4,06), pxLs.ceLls(5,06)).meRge
                pxLs.raNge(pxLs.ceLls(4,07), pxLs.ceLls(4,09)).meRge
                pxLs.raNge(pxLs.ceLls(5,07), pxLs.ceLls(5,09)).meRge
                pxLs.raNge(pxLs.ceLls(4,11), pxLs.ceLls(4,13)).meRge
                pxLs.raNge(pxLs.ceLls(5,11), pxLs.ceLls(5,13)).meRge
                pxLs.raNge(pxLs.ceLls(4,14), pxLs.ceLls(5,14)).meRge
                pxLs.raNge(pxLs.ceLls(4,15), pxLs.ceLls(4,17)).meRge
                pxLs.raNge(pxLs.ceLls(5,15), pxLs.ceLls(5,17)).meRge
                WITH pxLs.raNge(pxLs.ceLls(4,1),pxLs.ceLls(5,viT2))
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
                     .hoRizontalalignment = 3
                     .veRticalalignment = 2
                ENDWITH
                SELECT seRies
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                STORE 6 TO viT1
                STORE 1 TO meN1
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2112cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
                     pxLs.raNge(pxLs.ceLls(viT1,1), pxLs.ceLls(viT1, ;
                               viT2)).seLect
                     DO CASE
                          CASE f2112est="0"
                               STORE "Cuadre" TO vnEs
                          CASE f2112est="V"
                               STORE "Vendido" TO vnEs
                          CASE f2112est="D"
                               STORE "Dv.al Prv" TO vnEs
                          CASE f2112est="M"
                               STORE "Rot/Vacío" TO vnEs
                          CASE f2112est="O"
                               STORE "Salio" TO vnEs
                          OTHERWISE
                               STORE "En Stock" TO vnEs
                     ENDCASE
                     pxLs.ceLls(viT1, 01).vaLue = f2112ped
                     pxLs.ceLls(viT1, 02).vaLue = f2112sec
                     pxLs.ceLls(viT1, 03).vaLue = f2112plo
                     pxLs.ceLls(viT1, 04).vaLue = f2112pla
                     pxLs.ceLls(viT1, 05).vaLue = f2112mot
                     pxLs.ceLls(viT1, 06).vaLue = vnEs
                     pxLs.ceLls(viT1, 07).vaLue = f2112td1
                     pxLs.ceLls(viT1, 08).vaLue = f2112sr1
                     pxLs.ceLls(viT1, 09).vaLue = f2112do1
                     pxLs.ceLls(viT1, 10).vaLue = DTOC(f2112fe1)
                     pxLs.ceLls(viT1, 11).vaLue = f2112td2
                     pxLs.ceLls(viT1, 12).vaLue = f2112sr2
                     pxLs.ceLls(viT1, 13).vaLue = f2112do2
                     pxLs.ceLls(viT1, 14).vaLue = DTOC(f2112fe2)
                     pxLs.ceLls(viT1, 15).vaLue = f2112td3
                     pxLs.ceLls(viT1, 16).vaLue = f2112sr3
                     pxLs.ceLls(viT1, 17).vaLue = f2112do3
                     STORE viT1+1 TO viT1
                     IF meN1>=meNn
                          EXIT
                     ENDIF
                     STORE meN1+1 TO meN1
                     SELECT seRies
                     SKIP
                ENDDO
                pxLs.coLumns(01).hoRizontalalignment = 2
                pxLs.coLumns(02).hoRizontalalignment = 2
                pxLs.coLumns(03).hoRizontalalignment = 1
                pxLs.coLumns(04).hoRizontalalignment = 1
                pxLs.raNge(pxLs.coLumns(05),  ;
                          pxLs.coLumns(17)).hoRizontalalignment = 2
                pxLs.coLumns(01).nuMberformat = "0000000"
                pxLs.coLumns(02).nuMberformat = "0000"
                pxLs.coLumns(03).nuMberformat = "###,##0"
                pxLs.coLumns(04).nuMberformat = "###,##0"
                pxLs.raNge(pxLs.coLumns(05),  ;
                          pxLs.coLumns(17)).nuMberformat = "#,###,##0.0000"
                DO xl1_0000a WITH 1
                WAIT CLEAR
                SELECT seRies
                DO seE_2112c WITH "v"
           CASE mkEy=k_F9
                STORE vpEd TO cpEd
                STORE vsEc TO csEc
                DO diS_2112c WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_12
                DO coL_fondo
                DO cuAdro WITH ifFs-2.2, vcO2, ifFs+2, vcO2+ucO2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @iFFS-2,vCO2+35 Say "Búsqueda de Pedidos y Series:" Font "&mLetRom",12 Style "BQ"
                @iFFS+0,vCO2+35 Say "Pedido:"                       Font "&mLetRom",12 Style "BQ"
                @iFFS+0,vCO2+65 Say "Serie:"                        Font "&mLetRom",12 Style "BQ"
                DO WHILE .T.
                     SET READBORDER ON
                     STORE k_Enter TO mkEy
                     @iFFS,vCO2+47 Get cPED Pict "!999999" Font "&mLetRom",12 Style "BQ" Size 1,9.4 Color ,&mColBlN
                     @iFFS,vCO2+75 Get cSEC Pict "9999"    Font "&mLetRom",12 Style "BQ" Size 1,4.5 Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                     SET READBORDER OFF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_Esc
                               RESTORE SCREEN FROM vpAn_12
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(cpEd))=0
                               STORE "Pedido no puede estar vacío..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(csEc))=0
                               STORE "Serie no puede estar vacío..." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_Enter
                               DO orD_0000a WITH "2112", "A", "F2112COD", "A"
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)+csEc
                               IF EOF()
                                    STORE  ;
                                     "Pedido y Serie no encontrados..." TO mmSj
                                    DO poNmsj
                               ELSE
                                    RESTORE SCREEN FROM vpAn_12
                                    DO muE_2112c WITH "F", "c"
                                    DO orD_2112c
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 00 TO vsW3
                                    IF (vsW5=1 .AND. ALLTRIM(cpEd)+csEc>= ;
                                       ALLTRIM(ipEd)+isEc .AND.  ;
                                       ALLTRIM(cpEd)+csEc<=ALLTRIM(upEd)+ ;
                                       usEc) .OR. (vsW5=2 .AND. ctD1+csR1+ ;
                                       cdO1+ALLTRIM(cpEd)+csEc>=itD1+isR1+ ;
                                       idO1+ALLTRIM(ipEd)+isEc .AND. ctD1+ ;
                                       csR1+cdO1+ALLTRIM(cpEd)+csEc<=utD1+ ;
                                       usR1+udO1+ALLTRIM(upEd)+usEc) .OR.  ;
                                       (vsW5=3 .AND. ctD2+csR2+cdO2+ ;
                                       ALLTRIM(cpEd)+csEc>=itD2+isR2+idO2+ ;
                                       ALLTRIM(ipEd)+isEc .AND. ctD2+csR2+ ;
                                       cdO2+ALLTRIM(cpEd)+csEc<=utD2+usR2+ ;
                                       udO2+ALLTRIM(upEd)+usEc) .OR.  ;
                                       (vsW5=4 .AND. ctD3+csR3+cdO3+ ;
                                       ALLTRIM(cpEd)+csEc>=itD3+isR3+idO3+ ;
                                       ALLTRIM(ipEd)+isEc .AND. ctD3+csR3+ ;
                                       cdO3+ALLTRIM(cpEd)+csEc<=utD3+usR3+ ;
                                       udO3+ALLTRIM(upEd)+usEc)
                                         DO seE_2112c WITH "i"
                                         STORE ifFs TO cfFs
                                         DO WHILE  .NOT. EOF() .AND.  ;
                                          ALLTRIM(UPPER(f2112cod))+"*"= ;
                                          ALLTRIM(vcOd)+"*" .AND. cfFs<ffFs+1
                                              IF ALLTRIM(f2112ped)+ ;
                                               f2112sec=ALLTRIM(cpEd)+csEc
                                                   DO muE_2112c WITH "F", "v"
                                                   STORE cfFs TO vfFs
                                                   STORE 01 TO vsW3
                                                   EXIT
                                              ENDIF
                                              STORE cfFs+1 TO cfFs
                                              SKIP
                                         ENDDO
                                    ENDIF
                                    IF vsW3=0
                                         DO seE_2112c WITH "c"
                                         DO paN_2112c
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO muE_2112c WITH "i", "v"
                                         STORE ifFs TO vfFs
                                    ENDIF
                                    EXIT
                               ENDIF
                     ENDCASE
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO seE_2112c WITH "v"
                DO diS_2112c WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                DO CASE
                     CASE ALLTRIM(f2112ped)+f2112sec=ALLTRIM(ipEd)+isEc  ;
                          .AND. ALLTRIM(vpEd)+vsEc=ALLTRIM(ipEd)+isEc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpEd)+vsEc=ALLTRIM(ipEd)+isEc
                                    DO paN_2112c
                               OTHERWISE
                                    DO seE_2112c WITH "v"
                                    DO diS_2112c WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFs TO vfFs
                          DO muE_2112c WITH "i", "v"
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*ZZZZ"
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE ALLTRIM(f2112ped)+f2112sec=ALLTRIM(upEd)+usEc  ;
                          .AND. ALLTRIM(vpEd)+vsEc=ALLTRIM(upEd)+usEc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vpEd)+vsEc=ALLTRIM(upEd)+usEc
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_2112c
                               OTHERWISE
                                    DO seE_2112c WITH "v"
                                    DO diS_2112c WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufFs TO vfFs
                          DO muE_2112c WITH "u", "v"
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<> ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF ALLTRIM(vpEd)+vsEc=ALLTRIM(upEd)+usEc
                               DO coL_beige
                               DO suBe WITH ifFs, vcO2, ffFs, vcO2+ucO2, 1
                               DO liN_2112c WITH ffFs, ffFs+1
                               DO muE_2112c WITH "F", "u"
                               DO muE_2112c WITH "F", "v"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_2112c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_2112c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<> ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF ALLTRIM(vpEd)+vsEc=ALLTRIM(ipEd)+isEc
                               DO coL_beige
                               DO baJa WITH ifFs, vcO2, ffFs, vcO2+ucO2, 1
                               DO liN_2112c WITH ifFs, ifFs+1
                               DO muE_2112c WITH "F", "i"
                               DO muE_2112c WITH "F", "v"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_2112c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2112c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2112c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<> ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2112c
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFs TO vfFs
                          DO muE_2112c WITH "i", "v"
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2112c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<> ;
                          ALLTRIM(vcOd)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. ALLTRIM(UPPER(f2112cod))+"*"<> ;
                             ALLTRIM(vcOd)+"*"
                               GOTO TOP
                               SEEK ALLTRIM(vcOd)+"*"
                          ENDIF
                          DO paN_2112c
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFs TO vfFs
                          DO muE_2112c WITH "i", "v"
                          DO seE_2112c WITH "v"
                          DO diS_2112c WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2112c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_2112c
 STORE ifFs TO vfFs, ufFs
 DO muE_2112c WITH "F", "i"
 DO muE_2112c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(UPPER(f2112cod))+"*"=ALLTRIM(vcOd)+ ;
    "*" .AND. vfFs<ffFs+1
      DO diS_2112c WITH "N"
      IF mkEy=k_Esc
           EXIT
      ENDIF
      DO muE_2112c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, vcO2 CLEAR TO ffFs+1.1, vcO2+ucO2
      DO liN_2112c WITH ufFs+1, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2112c
 PARAMETER ptIp
 DO CASE
      CASE AT("Sin Doc", f2112do3)<>0 .AND. ptIp="N"
           DO coL_beifu
      CASE AT("Sin Doc", f2112do3)<>0 .AND. ptIp="R"
           DO coLblf
      CASE f2112plo>f2112pla .AND. ptIp="N"
           DO coL_beiaz
      CASE f2112plo>f2112pla .AND. ptIp="R"
           DO coLblz
      CASE f2112est$"0V" .AND. ptIp="N"
           DO coL_beige
      CASE f2112est$"0V" .AND. ptIp="R"
           DO coLbln
      CASE f2112est$"DMO" .AND. ptIp="N"
           DO coL_beive
      CASE f2112est$"DMO" .AND. ptIp="R"
           DO coLblv
      CASE ptIp="N"
           DO coL_beiro
      CASE ptIp="R"
           DO coLblr
 ENDCASE
 DO CASE
      CASE f2112est="0"
           STORE "Cuadre" TO vnEs
      CASE f2112est="V"
           STORE "Vendido" TO vnEs
      CASE f2112est="D"
           STORE "Dv.al Prv" TO vnEs
      CASE f2112est="M"
           STORE "Rot/Vacío" TO vnEs
      CASE f2112est="O"
           STORE "Salio" TO vnEs
      OTHERWISE
           STORE "En Stock" TO vnEs
 ENDCASE
 IF (f2112fe2<f2112fe1 .AND. f2112fe2<>CTOD("  /  /    ")) .OR. AT( ;
    "Sin Doc", f2112do3)<>0
      @vFFS,vCO2+00.0 Say F2112PED Font "&mLetAri",9 Style "BQ" Size 1,8.7
      @vFFS,vCO2+10.4 Say F2112SEC Font "&mLetAri",9 Style "BQ" Size 1,5.3 Pict "9999"
 ELSE
      @vFFS,vCO2+00.0 Say F2112PED Font "&mLetAri",9 Style "NQ" Size 1,9.8
      @vFFS,vCO2+10.4 Say F2112SEC Font "&mLetAri",9 Style "NQ" Size 1,5.8 Pict "9999"
 ENDIF
 IF f2112plo<>f2112pla
      @vFFS,vCO2+16.8 Say F2112PLO Font "&mLetAri",9 Style "BQ" Size 1,11.6 Pict "9,999.9999"
      @vFFS,vCO2+31.4 Say F2112PLA Font "&mLetAri",9 Style "BQ" Size 1,11.6 Pict "9,999.9999"
 ELSE
      @vFFS,vCO2+16.8 Say F2112PLO Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9,999.9999"
      @vFFS,vCO2+31.4 Say F2112PLA Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "9,999.9999"
 ENDIF
 @vFFS,vCO2+046.0 Say F2112MOT Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S12"
 @vFFS,vCO2+056.6 Say vNES     Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S12"
 @vFFS,vCO2+067.2 Say F2112TD1 Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFFS,vCO2+071.5 Say F2112SR1 Font "&mLetAri",9 Style "NQ" Size 1,04.3
 @vFFS,vCO2+076.5 Say F2112DO1 Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFFS,vCO2+086.8 Say F2112FE1 Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,vCO2+100.0 Say F2112TD2 Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFFS,vCO2+104.2 Say F2112SR2 Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,vCO2+109.0 Say F2112DO2 Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFFS,vCO2+119.4 Say F2112FE2 Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,vCO2+132.6 Say F2112TD3 Font "&mLetAri",9 Style "NQ" Size 1,03.5
 @vFFS,vCO2+136.8 Say F2112SR3 Font "&mLetAri",9 Style "NQ" Size 1,04.2
 @vFFS,vCO2+141.6 Say F2112DO3 Font "&mLetAri",9 Style "NQ" Size 1,09.8
 IF f2112rep="R"
      DO prEsiona WITH "1", "ABRED", vfFs, vcO2+56.5
 ENDIF
ENDPROC
*
PROCEDURE Lin_2112c
 PARAMETER piNi, pfIn
 DO coL_beige
 @ piNi, vcO2+010.0 TO pfIn, vcO2+010.0
 @ piNi, vcO2+016.4 TO pfIn, vcO2+016.4
 @ piNi, vcO2+031.0 TO pfIn, vcO2+031.0
 @ piNi, vcO2+045.6 TO pfIn, vcO2+045.6
 @ piNi, vcO2+056.2 TO pfIn, vcO2+056.2
 @ piNi, vcO2+066.9 TO pfIn, vcO2+066.9
 @ piNi, vcO2+071.0 TO pfIn, vcO2+071.0
 @ piNi, vcO2+076.0 TO pfIn, vcO2+076.0
 @ piNi, vcO2+086.4 TO pfIn, vcO2+086.4
 @ piNi, vcO2+099.6 TO pfIn, vcO2+099.6
 @ piNi, vcO2+103.8 TO pfIn, vcO2+103.8
 @ piNi, vcO2+108.6 TO pfIn, vcO2+108.6
 @ piNi, vcO2+119.0 TO pfIn, vcO2+119.0
 @ piNi, vcO2+132.2 TO pfIn, vcO2+132.2
 @ piNi, vcO2+136.5 TO pfIn, vcO2+136.5
 @ piNi, vcO2+141.3 TO pfIn, vcO2+141.3
ENDPROC
*
PROCEDURE P00_2112c
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 DO cuAdro WITH ifFs-1.5, vcO2, ffFs+2.6, vcO2+ucO2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc3
 @ ifFs-1.6, vcO2-0.2 CLEAR TO ifFs-0.2, vcO2+ucO2
 @ ffFs+1.3, vcO2-0.2 CLEAR TO ffFs+2.8, vcO2+ucO2
 @ ifFs-0.2, vcO2 TO ifFs-0.2, vcO2+ucO2
 @ ffFs+1.3, vcO2 TO ffFs+1.3, vcO2+ucO2
 @ ffFs+1.4, vcO2+29 TO ffFs+2.9, vcO2+29
 @ ffFs+1.4, vcO2+64 TO ffFs+2.9, vcO2+64
 @ ffFs+1.4, vcO2+94.7 TO ffFs+2.9, vcO2+94.7
 @iFFS-1.3,vCO2+001.0 Say "Pedido"             Font "&mLetAri",9  Style "BT"
 @iFFS-1.3,vCO2+011.5 Say "Sec"                Font "&mLetAri",9  Style "BT"
 @iFFS-1.8,vCO2+019.2 Say "Cantidad"           Font "&mLetAri",9  Style "NT"
 @iFFS-1.1,vCO2+019.8 Say "Original"           Font "&mLetAri",9  Style "NT"
 @iFFS-1.8,vCO2+033.4 Say "Cantidad"           Font "&mLetAri",9  Style "NT"
 @iFFS-1.1,vCO2+033.8 Say "Contada"            Font "&mLetAri",9  Style "NT"
 @iFFS-1.3,vCO2+045.8 Say "Observac"           Font "&mLetAri",9  Style "NT"
 @iFFS-1.3,vCO2+058.0 Say "Estado"             Font "&mLetAri",9  Style "NT"
 @iFFS-1.3,vCO2+071.1 Say "Compra"             Font "&mLetAri",9  Style "NT"
 @iFFS-1.3,vCO2+086.9 Say "Fecha Cpr."         Font "&mLetAri",9  Style "NT"
 @iFFS-1.3,vCO2+102.3 Say "Docum.Venta"        Font "&mLetAri",9  Style "NQ"
 @iFFS-1.3,vCO2+121.8 Say "Fecha"              Font "&mLetAri",9  Style "NQ"
 @iFFS-1.3,vCO2+132.8 Say "Doc.Regularizac"    Font "&mLetAri",9  Style "NQ"
 @fFFS+1.5,vCO2+000.2 Say "Cajas Disponibles:" Font "&mLetRom",11 Style "NQ"
 @fFFS+1.5,vCO2+029.4 Say "Stock Disponible:"  Font "&mLetRom",11 Style "NQ"
 @fFFS+1.5,vCO2+021.7 Say tCAJ                 Font "&mLetRom",11 Style "NQ" Size 1,05.8 Pict "9,999"
 @fFFS+1.5,vCO2+049.7 Say tCAN                 Font "&mLetRom",11 Style "NQ" Size 1,11.6 Pict "9,999.9999"
 DO coLscz
 @fFFS+1.5,vCO2+064.4 Say vSIN                 Font "&mLetRom",11 Style "NT" Size 1,25
 @fFFS+1.5,vCO2+095.1 Say vREP                 Font "&mLetRom",11 Style "NT" Size 1,25   Pict "@S27"
 DO coL_beige
 @ ifFs-1.6, vcO2+010.0 TO ifFs, vcO2+010.0
 @ ifFs-1.6, vcO2+016.4 TO ifFs, vcO2+016.4
 @ ifFs-1.6, vcO2+031.0 TO ifFs, vcO2+031.0
 @ ifFs-1.6, vcO2+045.6 TO ifFs, vcO2+045.6
 @ ifFs-1.6, vcO2+056.2 TO ifFs, vcO2+056.2
 @ ifFs-1.6, vcO2+066.9 TO ifFs, vcO2+066.9
 @ ifFs-1.6, vcO2+086.4 TO ifFs, vcO2+086.4
 @ ifFs-1.6, vcO2+099.6 TO ifFs, vcO2+099.6
 @ ifFs-1.6, vcO2+119.0 TO ifFs, vcO2+119.0
 @ ifFs-1.6, vcO2+132.2 TO ifFs, vcO2+132.2
 DO liN_2112c WITH ifFs-0.2, ffFs+1.3
 DO boT_2112c
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bot_2112c
 DO prEsiona WITH "3", "CONSU3", ifFs-1.7, vcO2+000.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFs-1.7, vcO2+067.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFs-1.7, vcO2+100.3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFs-1.7, vcO2+132.9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW5=1
           DO prEsiona WITH "1", "CONSU3", ifFs-1.7, vcO2+000.4
      CASE vsW5=2
           DO prEsiona WITH "1", "CONSU3", ifFs-1.7, vcO2+067.5
      CASE vsW5=3
           DO prEsiona WITH "1", "CONSU3", ifFs-1.7, vcO2+100.3
      CASE vsW5=4
           DO prEsiona WITH "1", "CONSU3", ifFs-1.7, vcO2+132.9
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rs1_2112c
 DO muE_2112c WITH "v", "c"
 DO rs1_2112b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2112c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 SELECT seRies
 GOTO TOP
 DO seE_2112c WITH "i"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(UPPER(f2112cod))+"*"=ALLTRIM(vcOd)+ ;
    "*" .AND. vfFs<ffFs+1
      IF ALLTRIM(f2112ped)+f2112sec=ALLTRIM(vpEd)+vsEc
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_2112c WITH "v", "i"
      DO muE_2112c WITH "v", "c"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_2112c WITH "i"
 DO paN_2112c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cfFs TO vfFs
 DO muE_2112c WITH "c", "v"
 DO seE_2112c WITH "v"
 DO diS_2112c WITH "R"
ENDPROC
*
PROCEDURE Ord_2112c
 DO CASE
      CASE vsW5=1
           DO orD_0000a WITH "2112", "A", "F2112COD", "A"
      CASE vsW5=2
           DO orD_0000a WITH "2112", "A", "F2112DO1", "A"
      CASE vsW5=3
           DO orD_0000a WITH "2112", "A", "F2112DO2", "A"
      CASE vsW5=4
           DO orD_0000a WITH "2112", "A", "F2112DO3", "A"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE See_2112c
 PARAMETER psEe
 DO CASE
      CASE psEe$"v!"
           DO CASE
                CASE vsW5=1
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                CASE vsW5=2
                     SEEK ALLTRIM(vcOd)+"*"+vtD1+vsR1+vdO1+ALLTRIM(vpEd)+vsEc
                CASE vsW5=3
                     SEEK ALLTRIM(vcOd)+"*"+vtD2+vsR2+vdO2+ALLTRIM(vpEd)+vsEc
                CASE vsW5=4
                     SEEK ALLTRIM(vcOd)+"*"+vtD3+vsR3+vdO3+ALLTRIM(vpEd)+vsEc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW5=1
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ipEd)+isEc
                CASE vsW5=2
                     SEEK ALLTRIM(vcOd)+"*"+itD1+isR1+idO1+ALLTRIM(ipEd)+isEc
                CASE vsW5=3
                     SEEK ALLTRIM(vcOd)+"*"+itD2+isR2+idO2+ALLTRIM(ipEd)+isEc
                CASE vsW5=4
                     SEEK ALLTRIM(vcOd)+"*"+itD3+isR3+idO3+ALLTRIM(ipEd)+isEc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW5=1
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(upEd)+usEc
                CASE vsW5=2
                     SEEK ALLTRIM(vcOd)+"*"+utD1+usR1+udO1+ALLTRIM(upEd)+usEc
                CASE vsW5=3
                     SEEK ALLTRIM(vcOd)+"*"+utD2+usR2+udO2+ALLTRIM(upEd)+usEc
                CASE vsW5=4
                     SEEK ALLTRIM(vcOd)+"*"+utD3+usR3+udO3+ALLTRIM(upEd)+usEc
           ENDCASE
      CASE psEe="c"
           DO CASE
                CASE vsW5=1
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)+csEc
                CASE vsW5=2
                     SEEK ALLTRIM(vcOd)+"*"+ctD1+csR1+cdO1+ALLTRIM(cpEd)+csEc
                CASE vsW5=3
                     SEEK ALLTRIM(vcOd)+"*"+ctD2+csR2+cdO2+ALLTRIM(cpEd)+csEc
                CASE vsW5=4
                     SEEK ALLTRIM(vcOd)+"*"+ctD3+csR3+cdO3+ALLTRIM(cpEd)+csEc
           ENDCASE
 ENDCASE
 IF psEe<>"!"
      DO veR_lock
 ENDIF
ENDPROC
*
PROCEDURE Mue_2112c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="i"
           STORE vpEd TO ipEd
           STORE vsEc TO isEc
           STORE vtD1 TO itD1
           STORE vsR1 TO isR1
           STORE vdO1 TO idO1
           STORE vtD2 TO itD2
           STORE vsR2 TO isR2
           STORE vdO2 TO idO2
           STORE vtD3 TO itD3
           STORE vsR3 TO isR3
           STORE vdO3 TO idO3
      CASE pmU1="v" .AND. pmU2="c"
           STORE vpEd TO cpEd
           STORE vsEc TO csEc
           STORE vtD1 TO ctD1
           STORE vsR1 TO csR1
           STORE vdO1 TO cdO1
           STORE vtD2 TO ctD2
           STORE vsR2 TO csR2
           STORE vdO2 TO cdO2
           STORE vtD3 TO ctD3
           STORE vsR3 TO csR3
           STORE vdO3 TO cdO3
      CASE pmU1="i" .AND. pmU2="v"
           STORE ipEd TO vpEd
           STORE isEc TO vsEc
           STORE itD1 TO vtD1
           STORE isR1 TO vsR1
           STORE idO1 TO vdO1
           STORE itD2 TO vtD2
           STORE isR2 TO vsR2
           STORE idO2 TO vdO2
           STORE itD3 TO vtD3
           STORE isR3 TO vsR3
           STORE idO3 TO vdO3
      CASE pmU1="u" .AND. pmU2="v"
           STORE upEd TO vpEd
           STORE usEc TO vsEc
           STORE utD1 TO vtD1
           STORE usR1 TO vsR1
           STORE udO1 TO vdO1
           STORE utD2 TO vtD2
           STORE usR2 TO vsR2
           STORE udO2 TO vdO2
           STORE utD3 TO vtD3
           STORE usR3 TO vsR3
           STORE udO3 TO vdO3
      CASE pmU1="c" .AND. pmU2="v"
           STORE cpEd TO vpEd
           STORE csEc TO vsEc
           STORE ctD1 TO vtD1
           STORE csR1 TO vsR1
           STORE cdO1 TO vdO1
           STORE ctD2 TO vtD2
           STORE csR2 TO vsR2
           STORE cdO2 TO vdO2
           STORE ctD3 TO vtD3
           STORE csR3 TO vsR3
           STORE cdO3 TO vdO3
      CASE pmU1="F" .AND. pmU2="c"
           STORE f2112ped TO cpEd
           STORE f2112sec TO csEc
           STORE f2112td1 TO ctD1
           STORE f2112sr1 TO csR1
           STORE f2112do1 TO cdO1
           STORE f2112td2 TO ctD2
           STORE f2112sr2 TO csR2
           STORE f2112do2 TO cdO2
           STORE f2112td3 TO ctD3
           STORE f2112sr3 TO csR3
           STORE f2112do3 TO cdO3
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2112ped TO vpEd
           STORE f2112sec TO vsEc
           STORE f2112td1 TO vtD1
           STORE f2112sr1 TO vsR1
           STORE f2112do1 TO vdO1
           STORE f2112td2 TO vtD2
           STORE f2112sr2 TO vsR2
           STORE f2112do2 TO vdO2
           STORE f2112td3 TO vtD3
           STORE f2112sr3 TO vsR3
           STORE f2112do3 TO vdO3
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2112ped TO upEd
           STORE f2112sec TO usEc
           STORE f2112td1 TO utD1
           STORE f2112sr1 TO usR1
           STORE f2112do1 TO udO1
           STORE f2112td2 TO utD2
           STORE f2112sr2 TO usR2
           STORE f2112do2 TO udO2
           STORE f2112td3 TO utD3
           STORE f2112sr3 TO usR3
           STORE f2112do3 TO udO3
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2112ped TO ipEd
           STORE f2112sec TO isEc
           STORE f2112td1 TO itD1
           STORE f2112sr1 TO isR1
           STORE f2112do1 TO idO1
           STORE f2112td2 TO itD2
           STORE f2112sr2 TO isR2
           STORE f2112do2 TO idO2
           STORE f2112td3 TO itD3
           STORE f2112sr3 TO isR3
           STORE f2112do3 TO idO3
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2112c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
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
      CASE mfIl>=vfFs-0.007 .AND. mfIl<=vfFs+0.992 .AND. mcCc>=vcO2 .AND.  ;
           mcCc<=vcO2+ucO2
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=vcO2 .AND.  ;
           mcCc<=vcO2+ucO2
           DO diS_2112c WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_2112c WITH "i"
           SKIP INT(mfIl-ifFs)
           STORE 99 TO mkEy
           DO muE_2112c WITH "F", "v"
           DO diS_2112c WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2112c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En esta parte de la consulta, se muestran todos los Números de Serie con"
 @ pfIl+1, 01 SAY  ;
   "el estado en que se encuentran, además de sus respectivos documentos"
 @ pfIl+2, 01 SAY  ;
   "de compra, ingreso, venta, salida y/o regularizacion. Cuando hay diferen-"
 @ pfIl+3, 01 SAY  ;
   "cias entre la cantidad vendida y la comprada el sistema las resalta."
 STORE pfIl+5 TO pfIl
 @ pfIl+0, 01 SAY "Los ítems pueden tener varios colores:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 01 SAY "Morado:" STYLE "BT"
 @ pfIl+2, 01 SAY "Azul:" STYLE "BT"
 @ pfIl+4, 01 SAY "Verde:" STYLE "BT"
 @ pfIl+5, 01 SAY "Rojo:" STYLE "BT"
 @ pfIl+6, 01 SAY "Negro:" STYLE "BT"
 @ pfIl+0, 11 SAY  ;
   "Son las que tienen rotura/faltante o sobrante y no han sido regu-"
 @ pfIl+1, 11 SAY "larizadas."
 @ pfIl+2, 11 SAY  ;
   "Son las que tienen rotura/faltante o sobrante y YA han sido regu-"
 @ pfIl+3, 11 SAY "larizadas."
 @ pfIl+4, 11 SAY "Son las que han salido pero no x ventas."
 @ pfIl+5, 11 SAY "Son las que están disponibles (en stock)."
 @ pfIl+6, 11 SAY  ;
   "Son las que han sido vendidas, que no tienen rotura, sobrante"
 @ pfIl+7, 11 SAY "o Faltante"
 STORE pfIl+9 TO pfIl
 @ pfIl+0, 01 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 01 SAY "ESC" STYLE "BT"
 @ pfIl+1, 01 SAY "F10" STYLE "BT"
 @ pfIl+2, 01 SAY "F1" STYLE "BT"
 @ pfIl+3, 01 SAY "F3" STYLE "BT"
 @ pfIl+0, 38 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+1, 38 SAY "PAGE UP" STYLE "BT"
 @ pfIl+2, 38 SAY "HOME" STYLE "BT"
 @ pfIl+3, 38 SAY "END" STYLE "BT"
 @ pfIl+4, 38 SAY "ENTER" STYLE "BT"
 @ pfIl+5, 38 SAY "Flecha Abajo" STYLE "BT"
 @ pfIl+6, 38 SAY "Flecha Arriba" STYLE "BT"
 @ pfIl+0, 06 SAY ":" STYLE "BT"
 @ pfIl+1, 06 SAY ":" STYLE "BT"
 @ pfIl+2, 06 SAY ":" STYLE "BT"
 @ pfIl+3, 06 SAY ":" STYLE "BT"
 @ pfIl+0, 53 SAY ":" STYLE "BT"
 @ pfIl+1, 53 SAY ":" STYLE "BT"
 @ pfIl+2, 53 SAY ":" STYLE "BT"
 @ pfIl+3, 53 SAY ":" STYLE "BT"
 @ pfIl+4, 53 SAY ":" STYLE "BT"
 @ pfIl+5, 53 SAY ":" STYLE "BT"
 @ pfIl+6, 53 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "Regresar a pantalla anterior"
 @ pfIl+1, 08 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 08 SAY "Ayuda del Programa"
 @ pfIl+3, 08 SAY "Ir a Serie Disponible siguiente"
 @ pfIl+0, 55 SAY "Página siguiente"
 @ pfIl+1, 55 SAY "Página anterior"
 @ pfIl+2, 55 SAY "Primera línea"
 @ pfIl+3, 55 SAY "Última línea"
 @ pfIl+4, 55 SAY "Detalle de Series"
 @ pfIl+5, 55 SAY "Línea inferior"
 @ pfIl+6, 55 SAY "Línea superior"
 STORE pfIl+4 TO pfIl
 IF wtPo="3"
      @ pfIl, 01 SAY "F5" STYLE "BT"
      @ pfIl, 06 SAY ":" STYLE "BT"
      @ pfIl, 08 SAY "Cambiar Obs/Motivo de Vta"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 01 SAY "F6" STYLE "BT"
 @ pfIl+1, 01 SAY "F7" STYLE "BT"
 @ pfIl+2, 01 SAY "F8" STYLE "BT"
 @ pfIl+3, 01 SAY "F9" STYLE "BT"
 @ pfIl+4, 01 SAY "-> <-" STYLE "BT"
 @ pfIl+0, 06 SAY ":" STYLE "BT"
 @ pfIl+1, 06 SAY ":" STYLE "BT"
 @ pfIl+2, 06 SAY ":" STYLE "BT"
 @ pfIl+3, 06 SAY ":" STYLE "BT"
 @ pfIl+4, 06 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "Buscar Cantidad"
 @ pfIl+1, 08 SAY "Buscar Documento"
 @ pfIl+2, 08 SAY "Pasar Series a Excel"
 @ pfIl+3, 08 SAY "Buscar Pedido y Serie"
 @ pfIl+4, 08 SAY "Cambiar de Orden"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
