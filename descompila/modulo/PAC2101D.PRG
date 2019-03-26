 = INKEY(0.01)
 SELECT deT_lista
 SET NEAR ON
 SEEK vcOd+"ZZ"
 SET NEAR OFF
 DO CASE
      CASE EOF()
           GOTO BOTTOM
      CASE f2106prv<>vcOd
           SKIP -1
 ENDCASE
 STORE 0 TO cfFr
 STORE 1 TO vsW4, vsW5, vsW6
 STORE f2106fem TO vfEm
 STORE SUBSTR(DTOC(f2106fem), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(f2106fem), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(f2106fem), 7, 4) TO vaNo
 GOTO TOP
 SEEK vcOd+vaNo+vmEs+vdIa
 DO p00_2101d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paN_2101d
 STORE ifFr TO vfFr
 DO muE_2101d WITH "i", "v"
 DO seE_2101d WITH "v"
 DO diS_2101d WITH "R"
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2101d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2101d
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2
                = INKEY(0.01)
                STORE vcOd TO vpRv
                SELECT caB_lista
                GOTO TOP
                SEEK vpRv
                DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SAVE SCREEN TO vpAn_12
                STORE ifFr TO ifF1
                STORE ufFr TO ufF1
                STORE ffFr TO ffF1
                STORE vfFr TO vfF1
                STORE vaNo TO caNo
                STORE vmEs TO cmEs
                STORE vdIa TO cdIa
                DO paC2106w WITH "PAC2101D"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ifF1 TO ifFr
                STORE ufF1 TO ufFr
                STORE ffF1 TO ffFr
                STORE vfF1 TO vfFr
                STORE caNo TO vaNo
                STORE cmEs TO vmEs
                STORE cdIa TO vdIa
                RESTORE SCREEN FROM vpAn_12
                SELECT caB_lista
                DO CASE
                     CASE mkEy=k_Enter
                          DO coL_fondo
                          STORE f2105fem TO vfEm
                          STORE SUBSTR(DTOC(f2105fem), 1, 2) TO vdIa
                          STORE SUBSTR(DTOC(f2105fem), 4, 2) TO vmEs
                          STORE SUBSTR(DTOC(f2105fem), 7, 4) TO vaNo
                          DO CASE
                               CASE mrEs="3"
                                    @iFFR-4.4,iCL1+177.6 Say vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.8
                               CASE mrEs="4"
                                    @iFFR-4.4,iCL1+217.6 Say vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.8
                               OTHERWISE
                                    @iFFR-4.4,iCL1+247.6 Say vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.8
                          ENDCASE
                          SELECT deT_lista
                          GOTO TOP
                          SEEK vcOd+vaNo+vmEs+vdIa
                          BROWSE
                          DO paN_2101d
                          STORE ifFr TO vfFr
                          DO muE_2101d WITH "i", "v"
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                     OTHERWISE
                          STORE 99 TO mkEy
                ENDCASE
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT deT_lista
      ENDCASE
      DO CASE
           CASE mkEy=k_Esc .OR. mkEy=k_Clic
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2101d
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2101d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_12
                vxLs = PUTFILE("Archivo Excel:",  ;
                       "XLS\PROVEEDOR_PRODUCTO.XLS", "XLS")
                RESTORE SCREEN FROM vpAn_12
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          CASE wtPo="1" .AND. vtPo=1
                               Export to &vXLS Fiel F2106COD,F2106DES,F2106CUC,F2106NUC,F2106CDG,F2106CUX,F2106NUX,F2106SIG,F2106TCA,F2106FOB,F2106CFR,F2106PD1,F2106PD2,F2106FAC,F2106CM3          Type XLS for F2106PRV = vCOD .and. F2106FEM = vFEM
                          CASE wtPo="1" .AND. vtPo=2
                               Export to &vXLS Fiel F2106COD,F2106DES,F2106CUC,F2106NUC,F2106CDG,F2106CUX,F2106NUX,F2106SIG,F2106TCA,F2106FOB,F2106CFR,F2106CIF,F2106PD1,F2106PD2,F2106FAC,F2106CM3 Type XLS for F2106PRV = vCOD .and. F2106FEM = vFEM
                          CASE wtPo="2"
                               Export to &vXLS Fiel F2106COD,F2106DES,F2106CUC,F2106NUC,F2106CDG,F2106CUX,F2106NUX Type XLS for F2106PRV = vCOD .and. F2106FEM = vFEM
                     ENDCASE
                     DO xlS_0000a
                     SELECT deT_lista
                     DO seE_2101d WITH "v"
                ENDIF
           CASE (mkEy=k_Left .OR. mkEy=k_Right) .AND. wtPo="1"
                DO CASE
                     CASE vsW4=1
                          STORE 2 TO vsW4
                     CASE vsW4=2
                          STORE 1 TO vsW4
                ENDCASE
                STORE vfFr TO cfFr
                DO seE_2101d WITH "i"
                DO p01_2101d
                DO paN_2101d
                STORE cfFr TO vfFr
                STORE 0 TO cfFr
                DO seE_2101d WITH "v"
                DO diS_2101d WITH "R"
           CASE (mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right) .AND. wtPo="1"  ;
                .AND. mrEs="3"
                DO CASE
                     CASE mkEy=k_Ctrl_right .AND. vsW5=2
                          STORE 1 TO vsW5
                     CASE mkEy=k_Ctrl_right
                          STORE vsW5+1 TO vsW5
                     CASE mkEy=k_Ctrl_left .AND. vsW5=1
                          STORE 2 TO vsW5
                     CASE mkEy=k_Ctrl_left
                          STORE vsW5-1 TO vsW5
                ENDCASE
                STORE vfFr TO cfFr
                DO seE_2101d WITH "i"
                DO p01_2101d
                DO paN_2101d
                STORE cfFr TO vfFr
                STORE 0 TO cfFr
                DO seE_2101d WITH "v"
                DO diS_2101d WITH "R"
           CASE mkEy=k_F6 .AND. wtPo="1"
                DO CASE
                     CASE vtPo=1 .AND. vsW6=2
                          STORE 1 TO vsW6
                     CASE vtPo=2 .AND. vsW6=3
                          STORE 1 TO vsW6
                     OTHERWISE
                          STORE vsW6+1 TO vsW6
                ENDCASE
                STORE vfFr TO cfFr
                DO seE_2101d WITH "i"
                DO p02_2101d
                DO paN_2101d
                STORE cfFr TO vfFr
                STORE 0 TO cfFr
                DO seE_2101d WITH "v"
                DO diS_2101d WITH "R"
           CASE mkEy=k_Ctrl_p
                DO q1_0000a
                DO imP_2101d
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO p1_0000a
                = INKEY(0.01)
                STORE 99 TO mkEy
                SELECT deT_lista
                DO seE_2101d WITH "v"
                DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                SEEK vcOd+vaNo+vmEs+vdIa
                DO CASE
                     CASE f2106ite=irEc .AND. vrEc=irEc .AND.  ;
                          ALLTRIM(f2106cod)+"*"=ALLTRIM(icDg)+"*" .AND.  ;
                          ALLTRIM(vcDg)+"*"=ALLTRIM(icDg)+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcDg)+"*"=ALLTRIM(icDg)+"*"  ;
                                    .AND. vrEc=irEc
                                    DO paN_2101d
                               OTHERWISE
                                    DO seE_2101d WITH "v"
                                    DO diS_2101d WITH "N"
                          ENDCASE
                          STORE ifFr TO vfFr
                          DO muE_2101d WITH "i", "v"
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                ENDCASE
           CASE mkEy=k_End
                SET NEAR ON
                SEEK vcOd+vaNo+vmEs+vdIa+"ZZ"
                SET NEAR OFF
                IF EOF() .OR. f2106prv<>vcOd .OR. f2106fem<>vfEm
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f2106ite=urEc .AND. vrEc=urEc .AND.  ;
                          ALLTRIM(f2106cod)+"*"=ALLTRIM(ucDg)+"*" .AND.  ;
                          ALLTRIM(vcDg)+"*"=ALLTRIM(ucDg)+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE ALLTRIM(vcDg)+"*"=ALLTRIM(ucDg)+"*"  ;
                                    .AND. vrEc=urEc
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2101d
                               OTHERWISE
                                    DO seE_2101d WITH "v"
                                    DO diS_2101d WITH "N"
                          ENDCASE
                          STORE ufFr TO vfFr
                          DO muE_2101d WITH "u", "v"
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f2106prv<>vcOd .OR. f2106fem<>vfEm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "N"
                          SKIP
                          IF ALLTRIM(vcDg)+"*"=ALLTRIM(ucDg)+"*" .AND.  ;
                             vrEc=urEc
                               DO coL_fondo
                               DO suBe WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_2101d WITH ifFr, ffFr+1.1
                               STORE ufFr TO vfFr
                               DO muE_2101d WITH "F", "v"
                               DO muE_2101d WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2101d WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2101d WITH "F", "v"
                          ENDIF
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2106prv<>vcOd .OR. f2106fem<>vfEm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "N"
                          SKIP -1
                          IF ALLTRIM(vcDg)+"*"=ALLTRIM(icDg)+"*" .AND.  ;
                             vrEc=irEc
                               DO coL_fondo
                               DO baJa WITH ifFr, icL1, ffFr, ucL1, 1
                               DO liN_2101d WITH ifFr, ffFr+1.1
                               STORE ifFr TO vfFr
                               DO muE_2101d WITH "F", "i"
                               DO muE_2101d WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2101d WITH "F", "u"
                               ENDIF
                          ELSE
                               STORE vfFr-1 TO vfFr
                               DO muE_2101d WITH "F", "v"
                          ENDIF
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2101d WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f2106prv<>vcOd .OR. f2106fem<>vfEm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2101d
                          STORE ifFr TO vfFr
                          DO muE_2101d WITH "i", "v"
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2101d WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f2106prv<>vcOd .OR. f2106fem<>vfEm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF() .OR. f2106prv<>vcOd .OR. f2106fem<>vfEm
                               GOTO TOP
                               SEEK vcOd+vaNo+vmEs+vdIa
                          ENDIF
                          DO paN_2101d
                          STORE ifFr TO vfFr
                          DO muE_2101d WITH "i", "v"
                          DO seE_2101d WITH "v"
                          DO diS_2101d WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2101d WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE 99 TO mkEy
      mkEy = INKEY(0, "HM")
 ENDDO
ENDPROC
*
PROCEDURE Pan_2101d
 STORE ifFr TO vfFr, ufFr
 DO muE_2101d WITH "F", "i"
 DO muE_2101d WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f2106prv=vcOd .AND. f2106fem=vfEm .AND. vfFr< ;
    ffFr+1
      IF vfFr<>cfFr
           DO diS_2101d WITH "N"
      ENDIF
      DO muE_2101d WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF ufFr+1<=ffFr
      DO coL_fondo
      @ vfFr, icL1 CLEAR TO ffFr+1.1, ucL1
      DO liN_2101d WITH vfFr, ffFr+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2101d
 PARAMETER ptIp
 PRIVATE ppRe
 DO CASE
      CASE vsW6=1
           STORE f2106fob TO ppRe
      CASE vsW6=2
           STORE f2106cfr TO ppRe
      CASE vsW6=3
           STORE f2106cif TO ppRe
      OTHERWISE
           STORE 0 TO ppRe
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE mrEs="3" .AND. wtPo="1"
           DO CASE
                CASE vsW4=1
                     @vFFR,iCL1+00.1 Say F2106COD Font "&mLetAri",9 Style "NQ" Size 1,21.8 Pict "@S20"
                     @vFFR,iCL1+22.5 Say F2106DES Font "&mLetAri",9 Style "NQ" Size 1,90.4 Pict "@S93"
                CASE vsW4=2
                     @vFFR,iCL1+00.1 Say F2106CDG Font "&mLetAri",9 Style "NQ" Size 1,21.8 Pict "@S20"
                     @vFFR,iCL1+22.5 Say F2106DCR Font "&mLetAri",9 Style "NQ" Size 1,90.4 Pict "@S93"
           ENDCASE
           DO CASE
                CASE vsW5=1
                     @vFFR,iCL1+119.2 Say F2106PD1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                     @vFFR,iCL1+129.6 Say F2106PD2 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                     @vFFR,iCL1+140.0 Say F2106PD3 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                     @vFFR,iCL1+150.4 Say F2106PD4 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                CASE vsW5=2
                     @vFFR,iCL1+119.2 Say F2106PD5 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                     @vFFR,iCL1+129.6 Say F2106PD6 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                     @vFFR,iCL1+140.0 Say F2106PD7 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
                     @vFFR,iCL1+150.4 Say F2106PD8 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           ENDCASE
           @vFFR,iCL1+113.6 Say F2106NUC Font "&mLetAri",9 Style "NQ" Size 1,05.0 Pict "@S08"
           @vFFR,iCL1+160.8 Say F2106FAC Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999.999999"
           @vFFR,iCL1+175.4 Say F2106SIG Font "&mLetAri",9 Style "NQ" Size 1,05.2 Pict "@S07"
           @vFFR,iCL1+181.1 Say pPRE     Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.999999"
      CASE mrEs="4" .AND. wtPo="1"
           DO CASE
                CASE vsW4=1
                     @vFFR,iCL1+00.1 Say F2106COD Font "&mLetAri",9 Style "NQ" Size 1,021.8 Pict "@S20"
                     @vFFR,iCL1+22.5 Say F2106DES Font "&mLetAri",9 Style "NQ" Size 1,100.4 Pict "@S103"
                CASE vsW4=2
                     @vFFR,iCL1+00.1 Say F2106CDG Font "&mLetAri",9 Style "NQ" Size 1,021.8 Pict "@S20"
                     @vFFR,iCL1+22.5 Say F2106DCR Font "&mLetAri",9 Style "NQ" Size 1,100.4 Pict "@S103"
           ENDCASE
           @vFFR,iCL1+123.6 Say F2106NUC Font "&mLetAri",9 Style "NQ" Size 1,05.0 Pict "@S08"
           @vFFR,iCL1+129.2 Say F2106PD1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+139.6 Say F2106PD2 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+150.0 Say F2106PD3 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+160.4 Say F2106PD4 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+170.8 Say F2106PD5 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+181.2 Say F2106PD6 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+191.6 Say F2106PD7 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+202.0 Say F2106PD8 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+212.4 Say F2106FAC Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999.999999"
           @vFFR,iCL1+227.0 Say F2106SIG Font "&mLetAri",9 Style "NQ" Size 1,05.2 Pict "@S07"
           @vFFR,iCL1+232.7 Say pPRE     Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.999999"
      CASE mrEs>"4" .AND. wtPo="1"
           DO CASE
                CASE vsW4=1
                     @vFFR,iCL1+00.1 Say F2106COD Font "&mLetAri",9 Style "NQ" Size 1,021.8 Pict "@S20"
                     @vFFR,iCL1+22.5 Say F2106DES Font "&mLetAri",9 Style "NQ" Size 1,110.5 Pict "@S113"
                CASE vsW4=2
                     @vFFR,iCL1+00.1 Say F2106CDG Font "&mLetAri",9 Style "NQ" Size 1,021.8 Pict "@S20"
                     @vFFR,iCL1+22.5 Say F2106DCR Font "&mLetAri",9 Style "NQ" Size 1,110.5 Pict "@S113"
           ENDCASE
           @vFFR,iCL1+133.7 Say F2106NUC Font "&mLetAri",9 Style "NQ" Size 1,12.4 Pict "@S15"
           @vFFR,iCL1+146.7 Say F2106PD1 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+157.1 Say F2106PD2 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+167.5 Say F2106PD3 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+177.9 Say F2106PD4 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+188.3 Say F2106PD5 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+198.7 Say F2106PD6 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+209.1 Say F2106PD7 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+219.5 Say F2106PD8 Font "&mLetAri",9 Style "NQ" Size 1,09.8 Pict "999.999"
           @vFFR,iCL1+229.9 Say F2106FAC Font "&mLetAri",9 Style "NQ" Size 1,13.9 Pict "999.999999"
           @vFFR,iCL1+244.5 Say F2106SIG Font "&mLetAri",9 Style "NQ" Size 1,05.2 Pict "@S07"
           @vFFR,iCL1+250.3 Say pPRE     Font "&mLetAri",9 Style "NQ" Size 1,19.5 Pict "999,999.999999"
 ENDCASE
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. wtPo="1"
           @fFFR+1.6,iCL1+12.8 Say F2106COD+": "+F2106DES Font "&mLetAri",9 Style "NQ" Size 1,171 Pict "@S174"
           @fFFR+3.1,iCL1+19.8 Say F2106CM3               Font "&mLetAri",9 Style "NQ" Size 1,164 Pict "@S167"
      CASE mrEs="4" .AND. wtPo="1"
           @fFFR+1.6,iCL1+12.8 Say F2106COD+": "+F2106DES Font "&mLetAri",9 Style "NQ" Size 1,181 Pict "@S184"
           @fFFR+3.1,iCL1+19.8 Say F2106CM3               Font "&mLetAri",9 Style "NQ" Size 1,174 Pict "@S177"
      CASE mrEs>"4" .AND. wtPo="1"
           @fFFR+1.6,iCL1+12.8 Say F2106COD+": "+F2106DES Font "&mLetAri",9 Style "NQ" Size 1,191 Pict "@S194"
           @fFFR+3.1,iCL1+19.8 Say F2106CM3               Font "&mLetAri",9 Style "NQ" Size 1,184 Pict "@S187"
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2101d
 PARAMETER piNi, pfIn
 DO coL_fondo
 IF wtPo="1"
      @ piNi, icL1+22.1 TO pfIn, icL1+22.1
 ENDIF
 DO CASE
      CASE mrEs="3" .AND. wtPo="1"
           @ piNi, icL1+113.2 TO pfIn, icL1+113.2
           @ piNi, icL1+118.8 TO pfIn, icL1+118.8
           @ piNi, icL1+129.2 TO pfIn, icL1+129.2
           @ piNi, icL1+139.6 TO pfIn, icL1+139.6
           @ piNi, icL1+150.0 TO pfIn, icL1+150.0
           @ piNi, icL1+160.4 TO pfIn, icL1+160.4
           @ piNi, icL1+175.0 TO pfIn, icL1+175.0
           @ piNi, icL1+180.7 TO pfIn, icL1+180.7
      CASE mrEs="4" .AND. wtPo="1"
           @ piNi, icL1+123.2 TO pfIn, icL1+123.2
           @ piNi, icL1+128.8 TO pfIn, icL1+128.8
           @ piNi, icL1+139.2 TO pfIn, icL1+139.2
           @ piNi, icL1+149.6 TO pfIn, icL1+149.6
           @ piNi, icL1+160.0 TO pfIn, icL1+160.0
           @ piNi, icL1+170.4 TO pfIn, icL1+170.4
           @ piNi, icL1+180.8 TO pfIn, icL1+180.8
           @ piNi, icL1+191.2 TO pfIn, icL1+191.2
           @ piNi, icL1+201.6 TO pfIn, icL1+201.6
           @ piNi, icL1+212.0 TO pfIn, icL1+212.0
           @ piNi, icL1+226.6 TO pfIn, icL1+226.6
           @ piNi, icL1+232.3 TO pfIn, icL1+232.3
      CASE mrEs>"4" .AND. wtPo="1"
           @ piNi, icL1+133.3 TO pfIn, icL1+133.3
           @ piNi, icL1+146.3 TO pfIn, icL1+146.3
           @ piNi, icL1+156.7 TO pfIn, icL1+156.7
           @ piNi, icL1+167.1 TO pfIn, icL1+167.1
           @ piNi, icL1+177.5 TO pfIn, icL1+177.5
           @ piNi, icL1+187.9 TO pfIn, icL1+187.9
           @ piNi, icL1+198.3 TO pfIn, icL1+198.3
           @ piNi, icL1+208.7 TO pfIn, icL1+208.7
           @ piNi, icL1+219.1 TO pfIn, icL1+219.1
           @ piNi, icL1+229.5 TO pfIn, icL1+229.5
           @ piNi, icL1+244.1 TO pfIn, icL1+244.1
           @ piNi, icL1+249.9 TO pfIn, icL1+249.9
 ENDCASE
ENDPROC
*
PROCEDURE P00_2101d
 PRIVATE pfRa
 STORE SPACE(10) TO pfRa
 RESTORE SCREEN FROM vpAn_99
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
 IF mkEy=k_Esc
      EXIT
 ENDIF
 DO prEsiona WITH "4", "R_CONS06", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 SET READBORDER ON
 DO cuAdro WITH ifFr-4.7, icL1, ffFr+4.4, ucL1
 @iFFR-4.4,iCL1+0.8 Say "Proveedor:" Font "&mLetRom",11 Style "BQ"
 @ ifFr-1.7, icL1-0.4 TO ifFr-0.3, ucL1+0.2 PATTERN 1 COLOR SCHEME 3
 @ ffFr+1.4, icL1-0.4 TO ffFr+4.5, ucL1+0.2 PATTERN 1 COLOR SCHEME 3
 DO CASE
      CASE mrEs="3"
           @iFFR-4.4,iCL1+167.3 Say "Fecha:"  Font "&mLetRom",11 Style "BQ"
           @iFFR-4.4,iCL1+015.5 Say vNOM      Font "&mLetRom",11 Style "NQ" Size 1,80   Pict "@S80"
           @iFFR-4.4,iCL1+177.6 Get vFEM      Font "&mLetRom",11 Style "NQ" Size 1,10.8 Color ,&mCol_Fondo
      CASE mrEs="4"
           @iFFR-4.4,iCL1+207.3 Say "Fecha:"  Font "&mLetRom",11 Style "BQ"
           @iFFR-4.4,iCL1+015.5 Say vNOM      Font "&mLetRom",11 Style "NQ" Size 1,90   Pict "@S90"
           @iFFR-4.4,iCL1+217.6 Get vFEM      Font "&mLetRom",11 Style "NQ" Size 1,10.8 Color ,&mCol_Fondo
      CASE mrEs>"4"
           @iFFR-4.4,iCL1+237.3 Say "Fecha:"  Font "&mLetRom",11 Style "BQ"
           @iFFR-4.4,iCL1+015.5 Say vNOM      Font "&mLetRom",11 Style "NQ" Size 1,100  Pict "@S100"
           @iFFR-4.4,iCL1+247.6 Get vFEM      Font "&mLetRom",11 Style "NQ" Size 1,10.8 Color ,&mCol_Fondo
 ENDCASE
 DO coLsc3
 @fFFR+1.6,iCL1+0.8 Say "Producto:"         Font "&mLetAri",9 Style "BQ"
 @fFFR+3.1,iCL1+0.8 Say "Observaciones:"    Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE mrEs="3" .AND. wtPo="1"
           @iFFR-1.5,iCL1+113.5 Say "Unid"    Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+164.5 Say "Factor"  Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+175.7 Say "Mon"     Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+184.0 Say "Precio"  Font "&mLetAri",9 Style "NQ"
           @fFFR+1.6,iCL1+012.8 Edit pFRA     Font "&mLetAri",9 Style "NQ" Size 1,171
           @fFFR+3.1,iCL1+019.8 Edit pFRA     Font "&mLetAri",9 Style "NQ" Size 1,164
      CASE mrEs="4" .AND. wtPo="1"
           @iFFR-1.5,iCL1+123.5 Say "Unid"    Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+129.3 Say "%Dcto-1" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+139.7 Say "%Dcto-2" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+150.1 Say "%Dcto-3" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+160.5 Say "%Dcto-4" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+170.9 Say "%Dcto-5" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+181.3 Say "%Dcto-6" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+191.7 Say "%Dcto-7" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+202.1 Say "%Dcto-8" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+216.0 Say "Factor"  Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+227.2 Say "Mon"     Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+235.5 Say "Precio"  Font "&mLetAri",9 Style "NQ"
           @fFFR+1.6,iCL1+012.8 Edit pFRA     Font "&mLetAri",9 Style "NQ" Size 1,181
           @fFFR+3.1,iCL1+019.8 Edit pFRA     Font "&mLetAri",9 Style "NQ" Size 1,174
      CASE mrEs>"4" .AND. wtPo="1"
           @iFFR-1.5,iCL1+136.0 Say "Unidad"  Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+146.8 Say "%Dcto-1" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+157.2 Say "%Dcto-2" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+167.6 Say "%Dcto-3" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+178.0 Say "%Dcto-4" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+188.4 Say "%Dcto-5" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+198.8 Say "%Dcto-6" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+209.2 Say "%Dcto-7" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+219.6 Say "%Dcto-8" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+233.0 Say "Factor"  Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+244.7 Say "Mon"     Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+252.5 Say "Precio"  Font "&mLetAri",9 Style "NQ"
           @fFFR+1.6,iCL1+012.8 Edit pFRA     Font "&mLetAri",9 Style "NQ" Size 1,191
           @fFFR+3.1,iCL1+019.8 Edit pFRA     Font "&mLetAri",9 Style "NQ" Size 1,184
 ENDCASE
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p01_2101d
 DO p02_2101d
 DO liN_2101d WITH ifFr-1.6, ffFr+1.4
ENDPROC
*
PROCEDURE P01_2101d
 DO coLsc3
 DO CASE
      CASE vsW4=1
           @iFFR-1.5,iCL1+00.3 Say "Código Sistema"            Font "&mLetAri",9 Style "NQ" Size 1,18.5
           @iFFR-1.5,iCL1+22.5 Say "Descripción del Sistema"   Font "&mLetAri",9 Style "NQ" Size 1,29
      CASE vsW4=2
           @iFFR-1.5,iCL1+00.3 Say "Código Proveedor"          Font "&mLetAri",9 Style "NQ" Size 1,18.5
           @iFFR-1.5,iCL1+22.5 Say "Descripción del Proveedor" Font "&mLetAri",9 Style "NQ" Size 1,29
 ENDCASE
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifFr-3.2, icL1
 @iFFR-3.0,iCL1+1.8 Say StrTran(Str(vSW4,1,0)," ","0")+"/2" Font "&mLetRom",9 Style "BT"
 IF mrEs="3"
      DO prEsiona WITH "1", "BOTON", ifFr-3.2, icL1+119.3
      @iFFR-3.0,iCL1+121.1 Say StrTran(Str(vSW5,1,0)," ","0")+"/2" Font "&mLetRom",9 Style "BT"
 ENDIF
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. vsW5=1
           @iFFR-1.5,iCL1+119.3 Say "%Dcto-1" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+129.7 Say "%Dcto-2" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+140.1 Say "%Dcto-3" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+150.5 Say "%Dcto-4" Font "&mLetAri",9 Style "NQ"
      CASE mrEs="3" .AND. vsW5=2
           @iFFR-1.5,iCL1+119.3 Say "%Dcto-5" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+129.7 Say "%Dcto-6" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+140.1 Say "%Dcto-7" Font "&mLetAri",9 Style "NQ"
           @iFFR-1.5,iCL1+150.5 Say "%Dcto-8" Font "&mLetAri",9 Style "NQ"
 ENDCASE
ENDPROC
*
PROCEDURE P02_2101d
 DO coLblr
 DO CASE
      CASE mrEs="3"
           DO prEsiona WITH "1", "BOTON", ifFr-3.2, icL1+181.1
           @iFFR-3.0,iCL1+183.1 Say StrTran(Str(vSW6,1,0)," ","0")+"/2" Font "&mLetRom",9 Style "BT"
      CASE mrEs="4"
           DO prEsiona WITH "1", "BOTON", ifFr-3.2, icL1+232.7
           @iFFR-3.0,iCL1+234.7 Say StrTran(Str(vSW6,1,0)," ","0")+"/2" Font "&mLetRom",9 Style "BT"
      CASE mrEs>"4"
           DO prEsiona WITH "1", "BOTON", ifFr-3.2, icL1+250.3
           @iFFR-3.0,iCL1+252.3 Say StrTran(Str(vSW6,1,0)," ","0")+"/2" Font "&mLetRom",9 Style "BT"
 ENDCASE
 DO coLsc3
 DO CASE
      CASE mrEs="3" .AND. wtPo="1" .AND. vtPo=1 .AND. vsW6=1
           @iFFR-1.5,iCL1+191.8 Say "s/IGV" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="3" .AND. wtPo="1" .AND. vtPo=1 .AND. vsW6=2
           @iFFR-1.5,iCL1+191.8 Say "c/IGV" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="3" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=1
           @iFFR-1.5,iCL1+191.8 Say "FOB"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="3" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=2
           @iFFR-1.5,iCL1+191.8 Say "CFR"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="3" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=3
           @iFFR-1.5,iCL1+191.8 Say "CIF"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="4" .AND. wtPo="1" .AND. vtPo=1 .AND. vsW6=1
           @iFFR-1.5,iCL1+243.8 Say "s/IGV" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="4" .AND. wtPo="1" .AND. vtPo=1 .AND. vsW6=2
           @iFFR-1.5,iCL1+243.8 Say "c/IGV" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="4" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=1
           @iFFR-1.5,iCL1+243.8 Say "FOB"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="4" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=2
           @iFFR-1.5,iCL1+243.8 Say "CFR"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs="4" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=3
           @iFFR-1.5,iCL1+243.8 Say "CIF"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs>"4" .AND. wtPo="1" .AND. vtPo=1 .AND. vsW6=1
           @iFFR-1.5,iCL1+260.5 Say "s/IGV" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs>"4" .AND. wtPo="1" .AND. vtPo=1 .AND. vsW6=2
           @iFFR-1.5,iCL1+260.5 Say "c/IGV" Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs>"4" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=1
           @iFFR-1.5,iCL1+260.5 Say "FOB"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs>"4" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=2
           @iFFR-1.5,iCL1+260.5 Say "CFR"   Font "&mLetAri",9 Style "NQ" Size 1,6
      CASE mrEs>"4" .AND. wtPo="1" .AND. vtPo=2 .AND. vsW6=3
           @iFFR-1.5,iCL1+260.5 Say "CIF"   Font "&mLetAri",9 Style "NQ" Size 1,6
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2101d
 DO muE_2101d WITH "i", "c"
 DO muE_2101d WITH "v", "x"
 DO rs1_2101b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2101d
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_lista
 DO seE_2101d WITH "c"
 DO paN_2101d
 DO seE_2101d WITH "c"
 STORE ifFr TO vfFr
 STORE 0 TO vrEc
 DO WHILE  .NOT. EOF() .AND. f2106prv=vcOd .AND. f2106fem=vfEm .AND. vfFr< ;
    ffFr+1
      IF f2106cod=xcDg .AND. f2106ite=xrEc
           DO muE_2101d WITH "F", "v"
           EXIT
      ENDIF
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF vrEc=0
      STORE ifFr TO vfFr
      DO muE_2101d WITH "i", "v"
 ENDIF
 DO seE_2101d WITH "v"
 DO diS_2101d WITH "R"
ENDPROC
*
PROCEDURE Imp_2101d
 STORE 0 TO mvIs
 IF wtPo="1"
      DO ipR_0001a WITH "VE"
 ELSE
      DO ipR_0001a WITH "HO"
 ENDIF
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
 IF wtPo="1"
      DO ipR_0001a WITH "VE"
 ELSE
      DO ipR_0001a WITH "HO"
 ENDIF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO rp1_2101d
 DO fpR_0000a
 SELECT deT_lista
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rp1_2101d
 PRIVATE ptAm, pdEs, ppRe, puNi
 DO CASE
      CASE mvIs=0
           STORE 10 TO mcLn
           DO CASE
                CASE wtPo="1"
                     STORE 129 TO ptAm
                CASE wtPo="2"
                     STORE 80 TO ptAm
           ENDCASE
      CASE mvIs=1 .AND. wtPo="1"
           STORE 125 TO ptAm
           STORE 02 TO mcLn
      CASE mvIs=1 .AND. wtPo="2"
           STORE 77 TO ptAm
           STORE 40 TO mcLn
 ENDCASE
 GOTO TOP
 SEEK vcOd
 SEEK vcOd+vaNo+vmEs+vdIa
 STORE 00 TO vlIn, vpAg
 DO WHILE  .NOT. EOF() .AND. f2106prv=vcOd .AND. f2106fem=vfEm
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      STORE f2106cod TO ccDg
      SELECT prOductos
      SEEK ALLTRIM(ccDg)+"*"
      IF  .NOT. EOF()
           STORE f2111pro TO vpRo
           STORE f2111la1 TO vlA1
           STORE f2111la2 TO vlA2
           STORE f2111la3 TO vlA3
           STORE f2111an1 TO vaN1
           STORE f2111an2 TO vaN2
           STORE f2111an3 TO vaN3
           STORE f2111esp TO veSp
      ELSE
           STORE SPACE(10) TO vpRo
           STORE 0 TO vlA1, vlA2, vlA3, vaN1, vaN2, vaN3, veSp
      ENDIF
      SELECT deT_lista
      IF wtPo="1"
           DO CASE
                CASE f2106pd1=0 .AND. f2106pd2=0
                     STORE 0 TO vdCt
                CASE vsW6=1
                     STORE f2106fob*f2106pd1/100 TO vdCt
                     STORE vdCt+((f2106fob-vdCt)*f2106pd2/100) TO vdCt
                CASE vsW6=2
                     STORE f2106cfr*f2106pd1/100 TO vdCt
                     STORE vdCt+((f2106cfr-vdCt)*f2106pd2/100) TO vdCt
                CASE vsW6=3
                     STORE f2106cif*f2106pd1/100 TO vdCt
                     STORE vdCt+((f2106cif-vdCt)*f2106pd2/100) TO vdCt
           ENDCASE
           DO CASE
                CASE vsW6=1
                     STORE f2106fob TO vpR1
                     STORE f2106fob-vdCt TO vpR2
                     STORE f2106fob*f2106fac TO vpR3
                     STORE f2106fo1 TO vpR4
                CASE vsW6=2
                     STORE f2106cfr TO vpR1
                     STORE f2106cfr-vdCt TO vpR2
                     STORE f2106cfr*f2106fac TO vpR3
                     STORE f2106cf1 TO vpR4
                CASE vsW6=3
                     STORE f2106cif TO vpR1
                     STORE f2106cif-vdCt TO vpR2
                     STORE f2106cif*f2106fac TO vpR3
                     STORE f2106ci1 TO vpR4
           ENDCASE
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-3
           DO caB_2101d WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE vsW4=1
                     STORE f2106des TO pdEs
                     STORE f2106nuc TO puNi
                CASE vsW4=2
                     STORE f2106dcr TO pdEs
                     STORE f2106nux TO puNi
           ENDCASE
           DO CASE
                CASE vsW6=1
                     STORE f2106fob TO ppRe
                CASE vsW6=2
                     STORE f2106cfr TO ppRe
                CASE vsW6=3
                     STORE f2106cif TO ppRe
           ENDCASE
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN Say F2106COD Font "&mLetRom",10 Style "NQ" Size 1,17   Pict "@S15"
                     IF wtPo="1"
                          @vLIN,mCLN+019.0 Say pDES     Font "&mLetRom",10 Style "NQ" Size 1,55   Pict "@S57"
                          @vLIN,mCLN+076.0 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                          @vLIN,mCLN+086.6 Say vPRO     Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                          @vLIN,mCLN+097.4 Say F2106SIG Font "&mLetRom",10 Style "NQ" Size 1,05.4 Pict "@S5"
                          @vLIN,mCLN+105.0 Say F2106FAC Font "&mLetRom",10 Style "NQ" Size 1,11.9 Pict "999.999999"
                          @vLIN,mCLN+119.0 Say pPRE     Font "&mLetRom",10 Style "NQ" Size 1,16.9 Pict "999,999.999999"
                          @vLIN,mCLN+137.8 Say F2106PD1 Font "&mLetRom",10 Style "NQ" Size 1,08.9 Pict "999.999"
                          @vLIN,mCLN+148.8 Say F2106PD2 Font "&mLetRom",10 Style "NQ" Size 1,08.9 Pict "999.999"
                          @vLIN,mCLN+159.2 Say vPR2     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                          @vLIN,mCLN+173.2 Say vPR3     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                          @vLIN,mCLN+187.2 Say vPR4     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                     ELSE
                          @vLIN,mCLN+019 Say pDES       Font "&mLetRom",10 Style "NQ" Size 1,85   Pict "@S88"
                          @vLIN,mCLN+110 Say pUNI       Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                     ENDIF
                CASE mpRt="1"
                     @vLIN,mCLN Say F2106COD          Font "&mLetRom",10 Style "NQ" Size 1,17   Pict "@S15"
                     IF wtPo="1"
                          @vLIN,mCLN+019.0 Say pDES     Font "&mLetRom",10 Style "NQ" Size 1,55   Pict "@S57"
                          @vLIN,mCLN+076.0 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                          @vLIN,mCLN+086.6 Say vPRO     Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                          @vLIN,mCLN+097.4 Say F2106SIG Font "&mLetRom",10 Style "NQ" Size 1,05.4 Pict "@S5"
                          @vLIN,mCLN+105.0 Say F2106FAC Font "&mLetRom",10 Style "NQ" Size 1,11.9 Pict "999.999999"
                          @vLIN,mCLN+119.0 Say pPRE     Font "&mLetRom",10 Style "NQ" Size 1,16.9 Pict "999,999.999999"
                          @vLIN,mCLN+137.8 Say F2106PD1 Font "&mLetRom",10 Style "NQ" Size 1,08.9 Pict "999.999"
                          @vLIN,mCLN+148.8 Say F2106PD2 Font "&mLetRom",10 Style "NQ" Size 1,08.9 Pict "999.999"
                          @vLIN,mCLN+159.2 Say vPR2     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                          @vLIN,mCLN+173.2 Say vPR3     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                          @vLIN,mCLN+187.2 Say vPR4     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                     ELSE
                          @vLIN,mCLN+019 Say pDES       Font "&mLetRom",10 Style "NQ" Size 1,85   Pict "@S88"
                          @vLIN,mCLN+110 Say pUNI       Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                     ENDIF
                CASE mpRt="2"
                     @vLIN,mCLN Say F2106COD          Font "&mLetRom",10 Style "NQ" Size 1,17   Pict "@S15"
                     IF wtPo="1"
                          @vLIN,mCLN+019.0 Say pDES     Font "&mLetRom",10 Style "NQ" Size 1,55   Pict "@S58"
                          @vLIN,mCLN+076.0 Say pUNI     Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                          @vLIN,mCLN+086.6 Say vPRO     Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                          @vLIN,mCLN+097.4 Say F2106SIG Font "&mLetRom",10 Style "NQ" Size 1,05.4 Pict "@S5"
                          @vLIN,mCLN+105.0 Say F2106FAC Font "&mLetRom",10 Style "NQ" Size 1,11.9 Pict "999.999999"
                          @vLIN,mCLN+119.0 Say pPRE     Font "&mLetRom",10 Style "NQ" Size 1,16.9 Pict "999,999.999999"
                          @vLIN,mCLN+137.8 Say F2106PD1 Font "&mLetRom",10 Style "NQ" Size 1,08.9 Pict "999.999"
                          @vLIN,mCLN+148.8 Say F2106PD2 Font "&mLetRom",10 Style "NQ" Size 1,08.9 Pict "999.999"
                          @vLIN,mCLN+159.2 Say vPR2     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                          @vLIN,mCLN+173.2 Say vPR3     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                          @vLIN,mCLN+187.2 Say vPR4     Font "&mLetRom",10 Style "NQ" Size 1,12.8 Pict "999,999.99"
                     ELSE
                          @vLIN,mCLN+019 Say pDES       Font "&mLetRom",10 Style "NQ" Size 1,85   Pict "@S88"
                          @vLIN,mCLN+110 Say pUNI       Font "&mLetRom",10 Style "NQ" Size 1,09   Pict "@S11"
                     ENDIF
           ENDCASE
      ENDIF
      IF wtPo="1"
           IF LEN(ALLTRIM(f2106cm3))<>0
                STORE vlIn+1.2 TO vlIn
                IF vlIn>mpAg-3
                     DO caB_2101d WITH ptAm
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+107.4 Say F2106CM3 Font "&mLetSwi",8 Style "NT" Size 1,70 Pict "@S70"
                ENDIF
           ENDIF
           STORE vlIn+0.3 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO liN_0000a WITH ptAm, vlIn
           ENDIF
           STORE vlIn+1.5 TO vlIn
      ELSE
           STORE vlIn+1.2 TO vlIn
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
 ENDDO
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2101d
 PARAMETER ptAm
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO caB_0000a WITH ptAm
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Lista de Precios de "+vNOM Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Fecha: "+Dtoc(vFEM)        Font "&mLetAri",13 Style "NQ"
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                IF wtPo="1"
                     @vLIN,mCLN+76  Say "Unidad" Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+110 Say "Factor" Font "&mLetRom",10 Style "NT"
                     DO CASE
                          CASE vsW6=1 .AND. vtPo=1
                               @vLIN,mCLN+125 Say "Prec.s/IGV" Font "&mLetRom",10 Style "NT"
                          CASE vsW6=2 .AND. vtPo=1
                               @vLIN,mCLN+125 Say "Prec.c/IGV" Font "&mLetRom",10 Style "NT"
                          CASE vsW6=1 .AND. vtPo=2
                               @vLIN,mCLN+130 Say "FOB"        Font "&mLetRom",10 Style "NT"
                          CASE vsW6=2 .AND. vtPo=2
                               @vLIN,mCLN+130 Say "CFR"        Font "&mLetRom",10 Style "NT"
                          CASE vsW6=3 .AND. vtPo=2
                               @vLIN,mCLN+130 Say "CIF"        Font "&mLetRom",10 Style "NT"
                     ENDCASE
                     @vLIN,mCLN+142.8 Say "%"                Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+153.8 Say "%"                Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+159.2 Say "Prec.incluido"    Font "&mLetRom",10 Style "NT"
                ELSE
                     @vLIN,mCLN+110 Say "Unidad"             Font "&mLetRom",10 Style "NT"
                ENDIF
           CASE mpRt="1"
                IF wtPo="1"
                     @vLIN,mCLN+76  Say "Unidad" Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+110 Say "Factor" Font "&mLetRom",10 Style "NT"
                     DO CASE
                          CASE vsW6=1 .AND. vtPo=1
                               @vLIN,mCLN+125 Say "Prec.s/IGV" Font "&mLetRom",10 Style "NT"
                          CASE vsW6=2 .AND. vtPo=1
                               @vLIN,mCLN+125 Say "Prec.c/IGV" Font "&mLetRom",10 Style "NT"
                          CASE vsW6=1 .AND. vtPo=2
                               @vLIN,mCLN+130 Say "FOB"        Font "&mLetRom",10 Style "NT"
                          CASE vsW6=2 .AND. vtPo=2
                               @vLIN,mCLN+130 Say "CFR"        Font "&mLetRom",10 Style "NT"
                          CASE vsW6=3 .AND. vtPo=2
                               @vLIN,mCLN+130 Say "CIF"        Font "&mLetRom",10 Style "NT"
                     ENDCASE
                     @vLIN,mCLN+142.8 Say "%"                Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+153.8 Say "%"                Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+159.2 Say "Prec.incluido"    Font "&mLetRom",10 Style "NT"
                ELSE
                     @vLIN,mCLN+110 Say "Unidad"             Font "&mLetRom",10 Style "NT"
                ENDIF
           CASE mpRt="2"
                IF wtPo="1"
                     @vLIN,mCLN+076 Say "Unidad"             Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+105 Say "Factor"             Font "&mLetRom",10 Style "NT"
                     DO CASE
                          CASE vsW6=1 .AND. vtPo=1
                               @vLIN,mCLN+125 Say "Prec.s/IGV" Font "&mLetRom",10 Style "NT"
                          CASE vsW6=2 .AND. vtPo=1
                               @vLIN,mCLN+125 Say "Prec.c/IGV" Font "&mLetRom",10 Style "NT"
                          CASE vsW6=1 .AND. vtPo=2
                               @vLIN,mCLN+129 Say "FOB"        Font "&mLetRom",10 Style "NT"
                          CASE vsW6=2 .AND. vtPo=2
                               @vLIN,mCLN+129 Say "CFR"        Font "&mLetRom",10 Style "NT"
                          CASE vsW6=3 .AND. vtPo=2
                               @vLIN,mCLN+129 Say "CIF"        Font "&mLetRom",10 Style "NT"
                     ENDCASE
                     @vLIN,mCLN+139.8 Say "%"                Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+150.8 Say "%"                Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+159.2 Say "Prec.incluido"    Font "&mLetRom",10 Style "NT"
                ELSE
                     @vLIN,mCLN+110 Say "Unidad"             Font "&mLetRom",10 Style "NT"
                ENDIF
      ENDCASE
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Código"             Font "&mLetRom",10 Style "NT"
                @vLIN,mCLN+19 Say "Descripción"        Font "&mLetRom",10 Style "NT"
                IF wtPo="1"
                     @vLIN,mCLN+076.0 Say "Compra"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+086.6 Say "Proced"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+097.4 Say "Mon"          Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+110.0 Say "Gastos"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+127.0 Say "Unitario"     Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+141.8 Say "Dct1"         Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+152.8 Say "Dct2"         Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+160.3 Say "Descuento"    Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+178.2 Say "Gastos"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+193.0 Say "Costo"        Font "&mLetRom",10 Style "NT"
                ELSE
                     @vLIN,mCLN+110 Say "Compra"         Font "&mLetRom",10 Style "NT"
                ENDIF
           CASE mpRt="1"
                @vLIN,mCLN    Say "Código"             Font "&mLetRom",10 Style "NT"
                @vLIN,mCLN+19 Say "Descripción"        Font "&mLetRom",10 Style "NT"
                IF wtPo="1"
                     @vLIN,mCLN+076.0 Say "Compra"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+086.6 Say "Proced"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+097.4 Say "Mon"          Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+110.0 Say "Gastos"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+127.0 Say "Unitario"     Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+141.8 Say "Dct1"         Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+152.8 Say "Dct2"         Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+160.3 Say "Descuento"    Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+178.2 Say "Gastos"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+193.0 Say "Costo"        Font "&mLetRom",10 Style "NT"
                ELSE
                     @vLIN,mCLN+110 Say "Compra"         Font "&mLetRom",10 Style "NT"
                ENDIF
           CASE mpRt="2"
                @vLIN,mCLN    Say "Código"             Font "&mLetRom",10 Style "NT"
                @vLIN,mCLN+19 Say "Descripción"        Font "&mLetRom",10 Style "NT"
                IF wtPo="1"
                     @vLIN,mCLN+076.0 Say "Compra"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+086.6 Say "Proced"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+097.4 Say "Mon"          Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+110.0 Say "Gastos"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+127.0 Say "Unitario"     Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+141.8 Say "Dct1"         Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+152.8 Say "Dct2"         Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+160.3 Say "Descuento"    Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+178.2 Say "Gastos"       Font "&mLetRom",10 Style "NT"
                     @vLIN,mCLN+193.0 Say "Costo"        Font "&mLetRom",10 Style "NT"
                ELSE
                     @vLIN,mCLN+110 Say "Compra"         Font "&mLetRom",10 Style "NT"
                ENDIF
      ENDCASE
 ENDIF
 STORE vlIn+0.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
 DO coL_pr1
ENDPROC
*
PROCEDURE See_2101d
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vcOd+vaNo+vmEs+vdIa+ALLTRIM(vcDg)+"*"+STR(vrEc, 4, 0)
      CASE psEe="i"
           SEEK vcOd+vaNo+vmEs+vdIa+ALLTRIM(icDg)+"*"+STR(irEc, 4, 0)
      CASE psEe="u"
           SEEK vcOd+vaNo+vmEs+vdIa+ALLTRIM(ucDg)+"*"+STR(urEc, 4, 0)
      CASE psEe="c"
           SEEK vcOd+vaNo+vmEs+vdIa+ALLTRIM(ccDg)+"*"+STR(crEc, 4, 0)
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2101d
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE icDg TO vcDg
           STORE irEc TO vrEc
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucDg TO vcDg
           STORE urEc TO vrEc
      CASE pmU1="i" .AND. pmU2="c"
           STORE icDg TO ccDg
           STORE irEc TO crEc
      CASE pmU1="v" .AND. pmU2="x"
           STORE vcDg TO xcDg
           STORE vrEc TO xrEc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2106cod TO vcDg
           STORE f2106ite TO vrEc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2106cod TO ucDg
           STORE f2106ite TO urEc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2106cod TO icDg
           STORE f2106ite TO irEc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2101d
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=ifFr-3.157 .AND. mfIl<=ifFr-1.799 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=icL1+7.60
           STORE k_Right TO mkEy
      CASE mfIl>=ifFr-3.157 .AND. mfIl<=ifFr-1.799 .AND. mcCc>=icL1+119.4  ;
           .AND. mcCc<=icL1+127.0
           STORE k_Ctrl_right TO mkEy
      CASE mfIl>=ifFr-3.157 .AND. mfIl<=ifFr-1.799 .AND. ((mcCc>=icL1+ ;
           181.0 .AND. mcCc<=icL1+188.6 .AND. mrEs="3") .OR. (mcCc>=icL1+ ;
           232.8 .AND. mcCc<=icL1+204.4 .AND. mrEs="4") .OR. (mcCc>=icL1+ ;
           250.3 .AND. mcCc<=icL1+257.9 .AND. mrEs>"4"))
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
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
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE k_F2 TO mkEy
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           STORE 99 TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           DO diS_2101d WITH "N"
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2101d WITH "v"
           SKIP INT(mfIl-ifFr)
           STORE 99 TO mkEy
           DO muE_2101d WITH "F", "v"
           DO diS_2101d WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2101d
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.4 TO pfIl
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran los productos que comerciali-"
 @ pfIl+01, 02 SAY  ;
   "za el Proveedor. Estos deben estar registrador en el Programa de Lista "
 @ pfIl+02, 02 SAY  ;
   "de Precios del Proveedor. Si los ítems fueran más de los que se pueden "
 @ pfIl+03, 02 SAY  ;
   "visualizar, puede verse por páginas.                                   "
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 29 SAY ":" STYLE "BT"
 @ pfIl+08, 29 SAY ":" STYLE "BT"
 @ pfIl+09, 29 SAY ":" STYLE "BT"
 @ pfIl+10, 29 SAY ":" STYLE "BT"
 @ pfIl+11, 29 SAY ":" STYLE "BT"
 @ pfIl+12, 29 SAY ":" STYLE "BT"
 @ pfIl+07, 11 SAY "ESC" STYLE "BT"
 @ pfIl+08, 11 SAY "F10" STYLE "BT"
 @ pfIl+09, 11 SAY "F1" STYLE "BT"
 @ pfIl+10, 11 SAY "F2" STYLE "BT"
 @ pfIl+11, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+12, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+07, 31 SAY "Regresar a Cabecera"
 @ pfIl+08, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 31 SAY "Ayuda del Programa"
 @ pfIl+10, 31 SAY "Consulta/Cambio de Listas x Fecha"
 @ pfIl+11, 31 SAY "Línea inferior"
 @ pfIl+12, 31 SAY "Línea superior"
 STORE pfIl+13 TO pfIl
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
 @ pfIl+4, 31 SAY "Imprime Listado"
 IF wtPo="1"
      STORE pfIl+5 TO pfIl
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "CTRL -->" STYLE "BT"
      @ pfIl+1, 11 SAY "CTRL <--" STYLE "BT"
      @ pfIl+0, 31 SAY "Ver Otros Tipos de Precios"
      @ pfIl+1, 31 SAY "Ver Otros Tipos de Precios"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
