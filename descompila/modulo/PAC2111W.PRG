 PARAMETER ppRg
 = INKEY(0.01)
 PUBLIC psW0, psW1, pcDg, ptPp, ppIc, psTo, plSt, psIg, plIs, pcLd, pcLu,  ;
        pcLs, pcLl
 PUBLIC ptMc, ptMd, ptMu, pnU1, pnU2, pnU3, pnU4, pvAl, pdE1, pdE2, pdE3,  ;
        pdE4, pdE5, pcAm, pfOt
 STORE 1 TO psW1
 STORE 0 TO pnU1, pnU2, pnU3, pnU4, pcAm
 STORE "" TO pdE1, pdE2, pdE3, pdE4, pdE5
 IF ppRg$"6789EF"
      DO CASE
           CASE ppRg$"7EF"
                STORE UPPER(ALLTRIM(vdCr)) TO ppAl
           OTHERWISE
                STORE UPPER(ALLTRIM(vdEs)) TO ppAl
      ENDCASE
      STORE AT(",", ppAl, 1) TO pnU1
      STORE AT(",", ppAl, 2) TO pnU2
      STORE AT(",", ppAl, 3) TO pnU3
      STORE AT(",", ppAl, 4) TO pnU4
      STORE "" TO pdE1, pdE2, pdE3, pdE4, pdE5
      IF pnU1<>0
           STORE SUBSTR(ppAl, 1, pnU1-1) TO pdE1
      ENDIF
      DO CASE
           CASE pnU2<>0
                STORE SUBSTR(ppAl, pnU1+1, pnU2-pnU1-1) TO pdE2
           CASE pnU1>0
                STORE SUBSTR(ppAl, pnU1+1) TO pdE2
      ENDCASE
      DO CASE
           CASE pnU3<>0
                STORE SUBSTR(ppAl, pnU2+1, pnU3-pnU2-1) TO pdE3
           CASE pnU2>0
                STORE SUBSTR(ppAl, pnU2+1) TO pdE3
      ENDCASE
      DO CASE
           CASE pnU4<>0
                STORE SUBSTR(ppAl, pnU3+1, pnU4-pnU3-1) TO pdE4
                STORE SUBSTR(ppAl, pnU4+1) TO pdE5
           CASE pnU3>0
                STORE SUBSTR(ppAl, pnU3+1) TO pdE4
      ENDCASE
      STORE UPPER(ALLTRIM(pdE1)) TO pdE1
      STORE UPPER(ALLTRIM(pdE2)) TO pdE2
      STORE UPPER(ALLTRIM(pdE3)) TO pdE3
      STORE UPPER(ALLTRIM(pdE4)) TO pdE4
      STORE UPPER(ALLTRIM(pdE5)) TO pdE5
 ENDIF
 DO CASE
      CASE ppRg="E" .AND. wsTo<>"1"
           STORE 2 TO psTo
      OTHERWISE
           STORE 1 TO psTo
 ENDCASE
 DO CASE
      CASE mdEc=0
           STORE "9999,999,999" TO ppIc
      CASE mdEc=1
           STORE "99,999,999.9" TO ppIc
      CASE mdEc=2
           STORE "9,999,999.99" TO ppIc
      CASE mdEc=3
           STORE "9999,999.999" TO ppIc
      CASE mdEc=4
           STORE "999,999.9999" TO ppIc
 ENDCASE
 DO CASE
      CASE ppRg$"EF" .AND. mtMc>15
           STORE 25.9 TO ptMc
      CASE ppRg$"EF"
           STORE 19.9 TO ptMc
      CASE mtMc>15
           STORE 26.1 TO ptMc
      OTHERWISE
           STORE 20.1 TO ptMc
 ENDCASE
 DO CASE
      CASE ppRg$"EF" .AND. psTo=1 .AND. mtMc>15
           STORE 91.9 TO ptMd
      CASE ppRg$"EF" .AND. psTo=1
           STORE 97.9 TO ptMd
      CASE ppRg$"EF"
           STORE 108.5 TO ptMd
      CASE mtMc>15
           STORE 109.3 TO ptMd
      OTHERWISE
           STORE 115.3 TO ptMd
 ENDCASE
 DO CASE
      CASE ppRg$"EF" .AND. psTo=1
           STORE 09.5 TO ptMu
      CASE ppRg$"EF"
           STORE 16.7 TO ptMu
      OTHERWISE
           STORE 10.2 TO ptMu
 ENDCASE
 IF ppRg$"EF"
      DO CASE
           CASE vmOn=1
                STORE "S/." TO psIg
           CASE vmOn=2
                STORE "U$" TO psIg
      ENDCASE
 ENDIF
 IF ppRg$"6789EF"
      SELECT tmP_prod
      ZAP
      REINDEX
 ENDIF
 SELECT viRtual_prod
 SET FILTER TO
 DO CASE
      CASE ppRg$"23456789ABCDEF" .AND. vsWr=1
           SET FILTER TO f2111est="1" .AND. LEN(ALLTRIM(f2111des))<>0
      CASE ppRg="1" .AND. vsWr=2
           SET FILTER TO AT(UPPER(ALLTRIM(vcOd)), UPPER(ALLTRIM(f2111des)))<>0
      CASE ppRg$"23" .AND. vsWr>1
           DO CASE
                CASE vsWr=2 .AND. ppRg="2"
                     SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vcOd)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE vsWr=2 .AND. ppRg="3"
                     SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vcD1)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE vsWr=3 .AND. ppRg="2"
                     SET FILTER TO f2111est="1" .AND. LEN(ALLTRIM(f2111des))<>0
                     REPLACE f2111cjn WITH " " ALL
                     GOTO TOP
                     DO WHILE  .NOT. EOF()
                          STORE f2111cod TO pcDg
                          SELECT prOductos
                          SEEK ALLTRIM(pcDg)+"*"
                          STORE f2111tip TO ptPp
                          SELECT tiP_prod
                          SEEK ptPp
                          IF  .NOT. EOF() .AND. f9211tpo=10
                               SELECT viRtual_prod
                               REPLACE f2111cjn WITH "@"
                          ENDIF
                          SELECT viRtual_prod
                          SKIP
                     ENDDO
                     SELECT viRtual_prod
                     SET FILTER TO f2111est="1" .AND. f2111cjn="@"
           ENDCASE
      CASE ppRg="5" .AND. vsWr=2
           SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(ccOd)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
      CASE ppRg$"6789EF" .AND. vsWr=2
           DO CASE
                CASE ppRg$"689" .AND. pnU1=0
                     SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vdEs)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE ppRg$"7EF" .AND. pnU1=0
                     SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vdCr)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE pnU1>0 .AND. pnU2>0 .AND. pnU3>0 .AND. pnU4>0
                     SET FILTER TO f2111est="1" .AND. AT(pdE1, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE2, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE3, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE4, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE5, UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE pnU1>0 .AND. pnU2>0 .AND. pnU3>0
                     SET FILTER TO f2111est="1" .AND. AT(pdE1, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE2, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE3, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE4, UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE pnU1>0 .AND. pnU2>0
                     SET FILTER TO f2111est="1" .AND. AT(pdE1, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE2, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE3, UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE pnU1>0
                     SET FILTER TO f2111est="1" .AND. AT(pdE1, UPPER(ALLTRIM(f2111des)))<>0 .AND. AT(pdE2, UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
           ENDCASE
      CASE ppRg$"AB" .AND. vsWr=2
           DO CASE
                CASE ppRg="A"
                     SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vaNt)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
                CASE ppRg="B"
                     SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vnUe)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
           ENDCASE
      CASE ppRg$"4CD" .AND. vsWr=2
           SET FILTER TO f2111est="1" .AND. AT(UPPER(ALLTRIM(vcOd)), UPPER(ALLTRIM(f2111des)))<>0 .AND. LEN(ALLTRIM(f2111des))<>0
 ENDCASE
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE 99 TO mkEy
      STORE " " TO vcDg
      STORE "No hay Productos..." TO mmSj
      DO poNmsj
      = INKEY(0.1)
      RETURN
 ENDIF
 SELECT viRtual_prod
 DO orD_2111w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF vsWr=1
      SET NEAR ON
      DO CASE
           CASE ppRg="3"
                SEEK ALLTRIM(UPPER(vcD1))
           CASE ppRg="5"
                SEEK ALLTRIM(UPPER(ccOd))
           CASE ppRg$"689"
                SEEK ALLTRIM(UPPER(vdEs))
           CASE ppRg$"7EF"
                SEEK ALLTRIM(UPPER(vdCr))
           CASE ppRg="A"
                SEEK ALLTRIM(UPPER(vaNt))
           CASE ppRg="B"
                SEEK ALLTRIM(UPPER(vnUe))
           CASE ppRg$"124CD"
                SEEK ALLTRIM(UPPER(vcOd))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
 ENDIF
 DO p00_2111w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFr TO vfFr, ufFr
 DO muE_2111w WITH "F", "v"
 DO muE_2111w WITH "F", "u"
 DO paN_2111w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE ifFr TO vfFr
 DO muE_2111w WITH "i", "v"
 DO seE_2111w WITH "v"
 DO diS_2111w WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 999 TO mkEy
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO CASE
           CASE SUBSTR(DTOC(DATE()), 1, 2)="01"
                IF SUBSTR(TIME(), 1, 2)="14" .OR. SUBSTR(TIME(), 1, 2)="18"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="03"
                IF SUBSTR(TIME(), 1, 2)="13" .OR. SUBSTR(TIME(), 1, 2)="17"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="04"
                IF SUBSTR(TIME(), 1, 2)="12" .OR. SUBSTR(TIME(), 1, 2)="16"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="05"
                IF SUBSTR(TIME(), 1, 2)="11" .OR. SUBSTR(TIME(), 1, 2)="15"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="07"
                IF SUBSTR(TIME(), 1, 2)="10" .OR. SUBSTR(TIME(), 1, 2)="14"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="09"
                IF SUBSTR(TIME(), 1, 2)="15" .OR. SUBSTR(TIME(), 1, 2)="08"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="14"
                IF SUBSTR(TIME(), 1, 2)="09" .OR. SUBSTR(TIME(), 1, 2)="12"
                     DO liMpia
                ENDIF
           CASE SUBSTR(DTOC(DATE()), 1, 2)="16"
                IF SUBSTR(TIME(), 1, 2)="08" .OR. SUBSTR(TIME(), 1, 2)="11"
                     DO liMpia
                ENDIF
      ENDCASE
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2111w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2111w
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_2111w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. ppRg="9"
                SELECT tmP_prod
                ZAP
                REINDEX
                DO coLbln
                SELECT viRtual_prod
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     STORE f2111cod TO pcDg
                     @iFFR+2,pICL+51 Say pCDG Font "&mLetAri",10 Style "NQ" Size 1,mTMA
                     SELECT prOductos
                     SEEK ALLTRIM(pcDg)+"*"
                     IF f2111sto>0 .AND. INT(f2111sto)<>f2111sto
                          STORE f2111tip TO ctPo
                          STORE f2111sto-INT(f2111sto) TO csTo
                          SELECT tiP_prod
                          SEEK ctPo
                          STORE 1 TO ctPo
                          IF  .NOT. EOF()
                               STORE f9211tpo TO ctPo
                          ENDIF
                          SELECT tmP_prod
                          SEEK ALLTRIM(pcDg)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH pcDg
                               REPLACE ftM2can WITH csTo
                          ENDIF
                     ENDIF
                     SELECT viRtual_prod
                     SKIP
                ENDDO
                SELECT tmP_prod
                GOTO TOP
                IF  .NOT. BOF()
                     SELECT prOductos
                     STORE k_Tab TO mkEy
                     EXIT
                ENDIF
                SELECT viRtual_prod
                DO seE_2111w WITH "i"
                DO paN_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ifFr TO vfFr
                DO muE_2111w WITH "i", "v"
                DO seE_2111w WITH "v"
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F4 .AND. ppRg$"EF" .AND. mlIs=0 .AND. ulIs=0
                STORE "No se puede cambiar a otra Lista de Precios..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. ppRg$"EF" .AND. mlIs=0 .AND. ulIs=0
                STORE "No se puede cambiar a otra Lista de Precios..." TO mmSj
           CASE mkEy=k_Ctrl_right .AND. ppRg$"EF" .AND. mlIs=0 .AND. ulIs=0
                STORE "No se puede cambiar a otra Lista de Precios..." TO mmSj
           CASE mkEy=k_F4 .AND. ppRg$"EF" .AND. ulIs<>0 .AND. ulI2=0  ;
                .AND. ulI3=0 .AND. vsW0=1
                STORE "No se puede cambiar a otra Lista de Precios..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. ppRg$"EF" .AND. ulIs<>0 .AND. ulI2= ;
                0 .AND. ulI3=0 .AND. vsW0=1
                STORE "No se puede cambiar a otra Lista de Precios..." TO mmSj
           CASE mkEy=k_Ctrl_right .AND. ppRg$"EF" .AND. ulIs<>0 .AND.  ;
                ulI2=0 .AND. ulI3=0 .AND. vsW0=1
                STORE "No se puede cambiar a otra Lista de Precios..." TO mmSj
           CASE (mkEy=k_F4 .OR. mkEy=k_Ctrl_left .OR. mkEy=k_Ctrl_right)  ;
                .AND. ppRg$"EF" .AND. (mlIs<>0 .OR. vlIs<>0)
                STORE vlIs TO plIs
                DO CASE
                     CASE mkEy=k_F4
                          ACTIVATE POPUP vpOp BAR vlIs AT ifFr, piCl+162
                     CASE mkEy=k_Ctrl_left .AND. vlIs=1
                          STORE 10 TO vlIs
                     CASE mkEy=k_Ctrl_left .AND. ulIs<>0 .AND. vsW0=1
                          DO CASE
                               CASE vlIs=ulIs .AND. ulI3<>0
                                    STORE ulI3 TO vlIs
                               CASE vlIs=ulIs .AND. ulI2<>0
                                    STORE ulI2 TO vlIs
                               CASE vlIs=ulI2
                                    STORE ulIs TO vlIs
                               CASE vlIs=ulI3 .AND. ulI2<>0
                                    STORE ulI2 TO vlIs
                               CASE vlIs=ulI3 .AND. ulIs<>0
                                    STORE ulIs TO vlIs
                          ENDCASE
                     CASE mkEy=k_Ctrl_left
                          STORE vlIs-1 TO vlIs
                     CASE mkEy=k_Ctrl_right .AND. vlIs=10
                          STORE 1 TO vlIs
                     CASE mkEy=k_Ctrl_right .AND. ulIs<>0 .AND. vsW0=1
                          DO CASE
                               CASE vlIs=ulIs .AND. ulI2<>0
                                    STORE ulI2 TO vlIs
                               CASE vlIs=ulIs .AND. ulI3<>0
                                    STORE ulI3 TO vlIs
                               CASE vlIs=ulI2 .AND. ulI3<>0
                                    STORE ulI3 TO vlIs
                               CASE vlIs=ulI3
                                    STORE ulIs TO vlIs
                          ENDCASE
                     CASE mkEy=k_Ctrl_right
                          STORE vlIs+1 TO vlIs
                ENDCASE
                DO CASE
                     CASE ulIs<>0 .AND. (vlIs=ulIs .OR. vlIs=ulI2 .OR.  ;
                          vlIs=ulI3)
                     CASE ulIs<>0 .AND. vsW0=1
                          STORE "No se puede cambiar a Lista de Precios "+ ;
                                STR(vlIs, 3, 0)+"..." TO mmSj
                          STORE plIs TO vlIs
                ENDCASE
                IF vlIs<>plIs
                     DO coLsc4
                     @iFFR-1.5,pCLL Say "Prec-"+Str(vLIS,2,0)+" "+pSIG Font "&mLetAri",9 Style "BQ" Size 1,10.5
                     DO coLsc3
                     SELECT viRtual_prod
                     DO seE_2111w WITH "i"
                     STORE 00 TO cfFr, psW0
                     STORE ifFr TO vfFr
                     DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                          IF UPPER(ALLTRIM(f2111cod))+"*"= ;
                             UPPER(ALLTRIM(vcDg))+"*"
                               STORE vfFr TO cfFr
                          ENDIF
                          DO diS_2111w WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_2111w WITH "F", "u"
                          STORE vfFr TO ufFr
                          STORE vfFr+1 TO vfFr
                          SKIP
                     ENDDO
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 01 TO psW0
                     IF ufFr+1<=ffFr
                          DO coLsc3
                          @ ufFr+1, piCl+0.4 CLEAR TO ffFr+1, piCl+165.6
                          DO liN_2111w WITH ufFr+1, ffFr+1
                     ENDIF
                     IF cfFr=0
                          DO muE_2111w WITH "i", "v"
                          STORE ifFr TO cfFr
                     ENDIF
                     DO coLbln
                     STORE cfFr TO vfFr
                     DO seE_2111w WITH "v"
                     DO diS_2111w WITH "R"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
                ENDIF
           CASE mkEy=k_F6 .AND. ppRg="8"
                SELECT tmP_prod
                ZAP
                REINDEX
                DO coLbln
                SELECT viRtual_prod
                GOTO TOP
                SET ESCAPE ON
                ON ESCAPE STORE 9000 TO MKEY
                DO WHILE  .NOT. EOF()
                     IF mkEy=k_Esc .OR. mkEy=9000
                          STORE 999 TO mkEy
                          EXIT
                     ENDIF
                     STORE f2111cod TO pcDg
                     @iFFR+2,pICL+51 Say pCDG Font "&mLetAri",10 Style "NQ" Size 1,mTMA
                     SELECT prOductos
                     SEEK ALLTRIM(pcDg)+"*"
                     IF f2111sto=0 .AND. f2111tpo=1
                          STORE f2111tip TO ctPo
                          STORE f2111sto TO csTo
                          SELECT tiP_prod
                          SEEK ctPo
                          STORE 1 TO ctPo
                          IF  .NOT. EOF()
                               STORE f9211tpo TO ctPo
                          ENDIF
                          SELECT tmP_prod
                          SEEK ALLTRIM(pcDg)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH pcDg
                               REPLACE ftM2can WITH csTo
                          ENDIF
                     ENDIF
                     SELECT viRtual_prod
                     SKIP
                ENDDO
                WAIT CLEAR
                ON ESCAPE
                SET ESCAPE OFF
                SELECT tmP_prod
                GOTO TOP
                IF  .NOT. BOF()
                     SELECT prOductos
                     STORE k_Tab TO mkEy
                     EXIT
                ENDIF
                SELECT viRtual_prod
                DO seE_2111w WITH "i"
                DO paN_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ifFr TO vfFr
                DO muE_2111w WITH "i", "v"
                DO seE_2111w WITH "v"
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. ppRg="8"
                SELECT tmP_prod
                ZAP
                REINDEX
                DO coLbln
                SELECT viRtual_prod
                GOTO TOP
                SET ESCAPE ON
                ON ESCAPE STORE 9000 TO MKEY
                DO WHILE  .NOT. EOF()
                     IF mkEy=k_Esc .OR. mkEy=9000
                          STORE 999 TO mkEy
                          EXIT
                     ENDIF
                     STORE f2111cod TO pcDg
                     @iFFR+2,pICL+51 Say pCDG Font "&mLetAri",10 Style "NQ" Size 1,mTMA
                     SELECT prOductos
                     SEEK ALLTRIM(pcDg)+"*"
                     IF f2111sto>0 .AND. f2111tpo=1
                          STORE f2111tip TO ctPo
                          STORE f2111sto TO csTo
                          SELECT tiP_prod
                          SEEK ctPo
                          STORE 1 TO ctPo
                          IF  .NOT. EOF()
                               STORE f9211tpo TO ctPo
                          ENDIF
                          SELECT tmP_prod
                          SEEK ALLTRIM(pcDg)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH pcDg
                               REPLACE ftM2can WITH csTo
                          ENDIF
                     ENDIF
                     SELECT viRtual_prod
                     SKIP
                ENDDO
                WAIT CLEAR
                ON ESCAPE
                SET ESCAPE OFF
                SELECT tmP_prod
                GOTO TOP
                IF  .NOT. BOF()
                     SELECT prOductos
                     STORE k_Tab TO mkEy
                     EXIT
                ENDIF
                SELECT viRtual_prod
                DO seE_2111w WITH "i"
                DO paN_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ifFr TO vfFr
                DO muE_2111w WITH "i", "v"
                DO seE_2111w WITH "v"
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. ppRg$"6789EF"
                SELECT tmP_prod
                ZAP
                REINDEX
                DO coLbln
                SELECT viRtual_prod
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     STORE f2111cod TO pcDg
                     @iFFR+2,pICL+51 Say pCDG Font "&mLetAri",10 Style "NQ" Size 1,mTMA
                     SELECT prOductos
                     SEEK ALLTRIM(pcDg)+"*"
                     IF f2111sto<0
                          STORE f2111tip TO ctPo
                          STORE f2111sto*-1 TO csTo
                          SELECT tiP_prod
                          SEEK ctPo
                          STORE 1 TO ctPo
                          IF  .NOT. EOF()
                               STORE f9211tpo TO ctPo
                          ENDIF
                          SELECT tmP_prod
                          SEEK ALLTRIM(pcDg)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH pcDg
                               REPLACE ftM2can WITH csTo
                          ENDIF
                     ENDIF
                     SELECT viRtual_prod
                     SKIP
                ENDDO
                SELECT tmP_prod
                GOTO TOP
                IF  .NOT. BOF()
                     SELECT prOductos
                     STORE k_Tab TO mkEy
                     EXIT
                ENDIF
                SELECT viRtual_prod
                DO seE_2111w WITH "i"
                DO paN_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ifFr TO vfFr
                DO muE_2111w WITH "i", "v"
                DO seE_2111w WITH "v"
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9 .AND. ppRg$"6789EF"
                SELECT teMporal
                SET ORDER TO FTM1COD
                SEEK ALLTRIM(pcDg)+"*"
                SET ORDER TO
                DO CASE
                     CASE  .NOT. EOF()
                          STORE "Código ya registrado..." TO mmSj
                     OTHERWISE
                          SELECT prOductos
                          DO CASE
                               CASE ppRg="7" .AND. mfEl="1" .AND.  ;
                                    LEN(ALLTRIM(f2111cub))=0 .AND. vfEm>= ;
                                    CTOD("01/03/2019")
                                    STORE  ;
                                     "No se puede escoger Producto SIN CUBSO..."  ;
                                     TO mmSj
                               CASE ppRg="7" .AND. f2111sto<=0 .AND.  ;
                                    f2111cst=1 .AND. vcSs=1
                                    STORE "Producto no tiene stock..." TO mmSj
                               CASE ppRg="9" .AND. f2111sto<=0 .AND. f2111cst=1
                                    STORE "Producto no tiene stock..." TO mmSj
                               CASE ppRg="F" .AND. f2111sto<=0 .AND.  ;
                                    f2111cst=1 .AND. wnIv$"12" .AND. mcSt=1
                                    STORE "Producto no tiene stock..." TO mmSj
                               CASE ppRg="E" .AND. f2111sto<=0 .AND. f2111cst=1
                                    STORE "Producto no tiene stock..." TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=1 .AND. f2111vv1=0 .AND.  ;
                                    f2111uti=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-1..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=2 .AND. f2111vv3=0 .AND.  ;
                                    f2111ut2=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-2..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=3 .AND. f2111vv5=0 .AND.  ;
                                    f2111ut3=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-3..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=4 .AND. f2111vv7=0 .AND.  ;
                                    f2111ut4=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-4..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=5 .AND. f2111vv9=0 .AND.  ;
                                    f2111ut5=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-5..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=6 .AND. f2111vva=0 .AND.  ;
                                    f2111ut6=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-6..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=7 .AND. f2111vvc=0 .AND.  ;
                                    f2111ut7=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-7..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=8 .AND. f2111vve=0 .AND.  ;
                                    f2111ut8=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-8..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=9 .AND. f2111vvg=0 .AND.  ;
                                    f2111ut9=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-9..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1  ;
                                    .AND. vlIs=10 .AND. f2111vvi=0 .AND.  ;
                                    f2111ut0=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-10..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=1 .AND. f2111vv2=0 .AND.  ;
                                    f2111uti=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-1..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=2 .AND. f2111vv4=0 .AND.  ;
                                    f2111ut2=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-2..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=3 .AND. f2111vv6=0 .AND.  ;
                                    f2111ut3=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-3..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=4 .AND. f2111vv8=0 .AND.  ;
                                    f2111ut4=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-4..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=5 .AND. f2111vv0=0 .AND.  ;
                                    f2111ut5=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-5..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=6 .AND. f2111vvb=0 .AND.  ;
                                    f2111ut6=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-6..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=7 .AND. f2111vvd=0 .AND.  ;
                                    f2111ut7=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-7..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=8 .AND. f2111vvf=0 .AND.  ;
                                    f2111ut8=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-8..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=9 .AND. f2111vvh=0 .AND.  ;
                                    f2111ut9=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-9..."  ;
                                     TO mmSj
                               CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2  ;
                                    .AND. vlIs=10 .AND. f2111vvj=0 .AND.  ;
                                    f2111ut0=0
                                    STORE  ;
                                     "Código no tiene Precio de Lista-10..."  ;
                                     TO mmSj
                               OTHERWISE
                                    STORE f2111tip TO ctPo
                                    STORE 1 TO psTo
                                    IF f2111sto<0
                                         STORE f2111sto*-1 TO psTo
                                    ENDIF
                                    SELECT tiP_prod
                                    SEEK ctPo
                                    STORE 1 TO ctPo
                                    IF  .NOT. EOF()
                                         STORE f9211tpo TO ctPo
                                    ENDIF
                                    IF ppRg="7" .AND. ctPo=10 .AND. (vmTt= ;
                                       3 .OR. vmTt=4 .OR. vmTt=5 .OR.  ;
                                       vmTt=7 .OR. vmTt=8 .OR. vmTt=9  ;
                                       .OR. vmTt=11)
                                         STORE  ;
                                          "Código de Conjunto no se puede escoger en este tipo de Guía..."  ;
                                          TO mmSj
                                    ELSE
                                         SELECT tmP_prod
                                         SEEK ALLTRIM(pcDg)+"*"
                                         IF EOF()
                                              APPEND BLANK
                                              REPLACE ftM2cod WITH pcDg
                                              REPLACE ftM2can WITH psTo
                                         ELSE
                                              DELETE
                                              PACK
                                         ENDIF
                                    ENDIF
                          ENDCASE
                ENDCASE
                SELECT viRtual_prod
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .AND. ppRg$"6789EF"
                SELECT teMporal
                SET ORDER TO FTM1COD
                SEEK ALLTRIM(pcDg)+"*"
                SET ORDER TO
                IF  .NOT. EOF()
                     STORE "Código ya se encuentra registrado..." TO mmSj
                ELSE
                     SELECT prOductos
                     DO CASE
                          CASE mfEl="1" .AND. LEN(ALLTRIM(f2111cub))=0  ;
                               .AND. ppRg="7" .AND. vfEm>=CTOD("01/01/2020")
                               STORE "No se puede escoger Producto SIN CUBSO..."  ;
                                     TO mmSj
                          CASE mfEl<>"2" .AND. f2111md3=2
                               STORE "No se puede escoger Producto Invisible en Facturación Electrónica..."  ;
                                     TO mmSj
                          CASE ppRg="7" .AND. f2111sto<=0 .AND. f2111cst= ;
                               1 .AND. vcSs=1
                               STORE "Producto no tiene stock..." TO mmSj
                          CASE ppRg="9" .AND. f2111sto<=0 .AND. f2111cst=1
                               STORE "Producto no tiene stock..." TO mmSj
                          CASE ppRg="F" .AND. wnIv$"12" .AND. f2111sto<=0  ;
                               .AND. f2111cst=1 .AND. mcSt=1
                               STORE "Producto no tiene stock..." TO mmSj
                          CASE ppRg="E" .AND. f2111sto<=0 .AND. f2111cst=1
                               STORE "Producto no tiene stock..." TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=1 .AND. f2111vv1=0 .AND. f2111uti=0
                               STORE "Código no tiene Precio de Lista-1..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=2 .AND. f2111vv3=0 .AND. f2111ut2=0
                               STORE "Código no tiene Precio de Lista-2..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=3 .AND. f2111vv5=0 .AND. f2111ut3=0
                               STORE "Código no tiene Precio de Lista-3..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=4 .AND. f2111vv7=0 .AND. f2111ut4=0
                               STORE "Código no tiene Precio de Lista-4..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=5 .AND. f2111vv9=0 .AND. f2111ut5=0
                               STORE "Código no tiene Precio de Lista-5..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=6 .AND. f2111vva=0 .AND. f2111ut6=0
                               STORE "Código no tiene Precio de Lista-6..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=7 .AND. f2111vvc=0 .AND. f2111ut7=0
                               STORE "Código no tiene Precio de Lista-7..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=8 .AND. f2111vve=0 .AND. f2111ut8=0
                               STORE "Código no tiene Precio de Lista-8..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=9 .AND. f2111vvg=0 .AND. f2111ut9=0
                               STORE "Código no tiene Precio de Lista-9..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=1 .AND.  ;
                               vlIs=10 .AND. f2111vvi=0 .AND. f2111ut0=0
                               STORE "Código no tiene Precio de Lista-10..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=1 .AND. f2111vv2=0 .AND. f2111uti=0
                               STORE "Código no tiene Precio de Lista-1..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=2 .AND. f2111vv4=0 .AND. f2111ut2=0
                               STORE "Código no tiene Precio de Lista-2..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=3 .AND. f2111vv6=0 .AND. f2111ut3=0
                               STORE "Código no tiene Precio de Lista-3..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=4 .AND. f2111vv8=0 .AND. f2111ut4=0
                               STORE "Código no tiene Precio de Lista-4..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=5 .AND. f2111vv0=0 .AND. f2111ut5=0
                               STORE "Código no tiene Precio de Lista-5..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=6 .AND. f2111vvb=0 .AND. f2111ut6=0
                               STORE "Código no tiene Precio de Lista-6..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=7 .AND. f2111vvd=0 .AND. f2111ut7=0
                               STORE "Código no tiene Precio de Lista-7..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=8 .AND. f2111vvf=0 .AND. f2111ut8=0
                               STORE "Código no tiene Precio de Lista-8..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=9 .AND. f2111vvh=0 .AND. f2111ut9=0
                               STORE "Código no tiene Precio de Lista-9..."  ;
                                     TO mmSj
                          CASE ppRg$"EF" .AND. mlI1=2 .AND. vmOn=2 .AND.  ;
                               vlIs=10 .AND. f2111vvj=0 .AND. f2111ut0=0
                               STORE "Código no tiene Precio de Lista-10..."  ;
                                     TO mmSj
                          OTHERWISE
                               STORE f2111tip TO ctPo
                               STORE 1 TO psTo
                               IF f2111sto<0
                                    STORE f2111sto*-1 TO psTo
                               ENDIF
                               SELECT tiP_prod
                               SEEK ctPo
                               STORE 1 TO ctPo
                               IF  .NOT. EOF()
                                    STORE f9211tpo TO ctPo
                               ENDIF
                               IF ppRg="7" .AND. ctPo=10 .AND. (vmTt=3  ;
                                  .OR. vmTt=4 .OR. vmTt=5 .OR. vmTt=7  ;
                                  .OR. vmTt=8 .OR. vmTt=9 .OR. vmTt=11)
                                    STORE  ;
                                     "Código de Conjunto no se puede escoger en este tipo de Guía..."  ;
                                     TO mmSj
                               ELSE
                                    SELECT prOductos
                                    EXIT
                               ENDIF
                     ENDCASE
                ENDIF
                SELECT viRtual_prod
           CASE mkEy=k_Enter
                SELECT prOductos
                EXIT
           CASE mkEy=k_Tab .AND. ppRg$"6789EF"
                SELECT tmP_prod
                GOTO TOP
                IF BOF()
                     STORE "No hay Productos marcados..." TO mmSj
                ELSE
                     SELECT prOductos
                     EXIT
                ENDIF
                SELECT prOductos
           CASE mkEy=k_Left .OR. mkEy=k_Right
                DO diS_2111w WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsWw=1
                          STORE 2 TO vsWw
                     CASE vsWw=2
                          STORE 1 TO vsWw
                ENDCASE
                DO orD_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO boT_2111w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLsc3
                STORE 00 TO cfFr
                STORE ifFr TO vfFr
                DO seE_2111w WITH "i"
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     IF UPPER(ALLTRIM(f2111cod))+"*"=UPPER(ALLTRIM(pcDg))+"*"
                          STORE vfFr TO cfFr
                     ENDIF
                     DO diS_2111w WITH "N"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO muE_2111w WITH "F", "u"
                     STORE vfFr TO ufFr
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF ufFr+1<=ffFr
                     DO coLsc3
                     @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
                     DO liN_2111w WITH ufFr+1, ffFr+1
                ENDIF
                IF cfFr=0
                     STORE ifFr TO cfFr
                     DO muE_2111w WITH "i", "v"
                ENDIF
                STORE cfFr TO vfFr
                DO seE_2111w WITH "v"
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(icDg))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(icDg))+"*"
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcDg))+"*"= ;
                                    UPPER(ALLTRIM(icDg))+"*"
                                    DO paN_2111w
                               OTHERWISE
                                    DO seE_2111w WITH "v"
                                    DO diS_2111w WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2111w WITH "i", "v"
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE UPPER(ALLTRIM(f2111cod))+"*"= ;
                          UPPER(ALLTRIM(ucDg))+"*" .AND.  ;
                          UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(ucDg))+"*"
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE UPPER(ALLTRIM(vcDg))+"*"= ;
                                    UPPER(ALLTRIM(ucDg))+"*"
                                    SKIP -INT(ffFr-ifFr)
                                    DO paN_2111w
                               OTHERWISE
                                    DO seE_2111w WITH "v"
                                    DO diS_2111w WITH "N"
                          ENDCASE
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ufFr TO vfFr
                          DO muE_2111w WITH "u", "v"
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "R"
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
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP
                          IF UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(ucDg))+"*"
                               DO coLsc3
                               DO suBe WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2111w WITH ffFr, ffFr+1
                               STORE ufFr TO vfFr
                               DO muE_2111w WITH "F", "v"
                               DO muE_2111w WITH "F", "u"
                               SKIP -INT(ffFr-ifFr)
                               DO muE_2111w WITH "F", "i"
                               SKIP INT(ffFr-ifFr)
                          ELSE
                               STORE vfFr+1 TO vfFr
                               DO muE_2111w WITH "F", "v"
                          ENDIF
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "R"
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
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "N"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SKIP -1
                          IF UPPER(ALLTRIM(vcDg))+"*"=UPPER(ALLTRIM(icDg))+"*"
                               DO coLsc3
                               DO baJa WITH ifFr, piCl, ffFr, puCl, 1
                               DO liN_2111w WITH ifFr, ifFr+1
                               STORE ifFr TO vfFr
                               DO muE_2111w WITH "F", "i"
                               DO muE_2111w WITH "F", "v"
                               IF ufFr<ffFr
                                    STORE ufFr+1 TO ufFr
                               ELSE
                                    SKIP INT(ffFr-ifFr)
                                    DO muE_2111w WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_2111w WITH "F", "v"
                               STORE vfFr-1 TO vfFr
                          ENDIF
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_2111w WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_2111w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2111w WITH "i", "v"
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_2111w WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFr-ifFr)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_2111w
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          STORE ifFr TO vfFr
                          DO muE_2111w WITH "i", "v"
                          DO seE_2111w WITH "v"
                          DO diS_2111w WITH "R"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                ENDCASE
           CASE (mkEy>64 .AND. mkEy<91) .OR. (mkEy>96 .AND. mkEy<123)  ;
                .OR. (mkEy>47 .AND. mkEy<58)
                DO diS_2111w WITH "N"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 0 TO csWw
                DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                     DO CASE
                          CASE vsWw=1 .AND. UPPER(CHR(mkEy))= ;
                               SUBSTR(UPPER(f2111cod), 1, 1)
                               STORE 1 TO csWw
                               EXIT
                          CASE vsWw=2 .AND. UPPER(CHR(mkEy))= ;
                               SUBSTR(UPPER(f2111des), 1, 1)
                               STORE 1 TO csWw
                               EXIT
                     ENDCASE
                     STORE vfFr+1 TO vfFr
                     SKIP
                ENDDO
                IF csWw=0
                     DO seE_2111w WITH "i"
                     STORE ifFr TO vfFr
                     DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
                          DO CASE
                               CASE vsWw=1 .AND. UPPER(CHR(mkEy))= ;
                                    SUBSTR(UPPER(f2111cod), 1, 1)
                                    STORE 1 TO csWw
                                    EXIT
                               CASE vsWw=2 .AND. UPPER(CHR(mkEy))= ;
                                    SUBSTR(UPPER(f2111des), 1, 1)
                                    STORE 1 TO csWw
                                    EXIT
                          ENDCASE
                          STORE vfFr+1 TO vfFr
                          SKIP
                     ENDDO
                ENDIF
                IF csWw=0
                     SET NEAR ON
                     SEEK UPPER(CHR(mkEy))
                     SET NEAR OFF
                     IF EOF()
                          GOTO BOTTOM
                     ENDIF
                     DO paN_2111w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE ifFr TO vfFr
                     DO muE_2111w WITH "i", "v"
                ELSE
                     DO muE_2111w WITH "F", "v"
                ENDIF
                DO seE_2111w WITH "v"
                DO diS_2111w WITH "R"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_2111w WITH "v"
           DO poNmsj
           STORE 999 TO mkEy
      ENDIF
 ENDDO
 RELEASE pcDg, ptPp, ppIc, psTo, plSt, psIg, plIs, pcLd, pcLu, pcLs, pcLl, ptMc
 RELEASE ptMd, ptMu, pnU1, pnU2, pnU3, pnU4, pvAl, pdE1, pdE2, pdE3, pdE4,  ;
         pdE5, pcAm, pfOt
ENDPROC
*
PROCEDURE Pan_2111w
 STORE ifFr TO vfFr, ufFr
 DO muE_2111w WITH "F", "i"
 DO muE_2111w WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfFr<ffFr+1
      DO diS_2111w WITH "N"
      IF mkEy=k_Esc
           EXIT
      ENDIF
      DO muE_2111w WITH "F", "u"
      STORE vfFr TO ufFr
      STORE vfFr+1 TO vfFr
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF ufFr+1<=ffFr
      DO coLsc3
      @ ufFr+1, piCl CLEAR TO ffFr+1, puCl
      DO liN_2111w WITH ufFr+1, ffFr+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_2111w
 PARAMETER ptIp
 PRIVATE peSt
 STORE f2111cod TO pcDg
 STORE "" TO peSt
 SELECT prOductos
 SEEK ALLTRIM(pcDg)+"*"
 STORE f2111fot TO pfOt
 IF f2111est="9" .AND. ppRg="1"
      STORE "Anu-" TO peSt
 ENDIF
 IF ppRg$"EF"
      DO liS_2111w
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. f2111cst=1
           SET COLOR TO RGB(0,0,128,154,162,170)
      CASE ptIp="R" .AND. f2111cst=1
           DO coLblz
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF f2111cst=1
      @vFFR,pICL+0.4 Say Substr(pCDG,1,Int(pTMC)+3) Font "&mLetAri",9 Style "BQ" Size 1,pTMC-3.8
 ELSE
      @vFFR,pICL+0.4 Say Substr(pCDG,1,Int(pTMC)+3) Font "&mLetAri",9 Style "NQ" Size 1,pTMC
 ENDIF
 DO CASE
      CASE ptIp="N" .AND. f2111md1=1
           SET COLOR TO RGB(155,0,0,154,162,170)
      CASE ptIp="R" .AND. f2111md1=1
           DO coLblr
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFR,pCLD Say Substr(F2111DES,1,Int(pTMD)+3) Font "&mLetAri",9 Style "NQ" Size 1,pTMD
 IF f2111md3=2
      DO CASE
           CASE ptIp="N" .AND. f2111md3=2
                SET COLOR TO RGB(0,128,255,154,162,170)
           CASE ptIp="R" .AND. f2111md3=2
                SET COLOR TO RGB(0,128,255,255,255,255)
           CASE ptIp="N"
                DO coLsc3
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      @vFFR,pCLD Say Substr(F2111DES,1,3) Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coLsc3
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE ppRg$"EF"
           @vFFR,pCLU Say      Substr(F2111NUV,1,Int(pTMU)+3) Font "&mLetAri",9 Style "NQ" Size 1,pTMU
      OTHERWISE
           @vFFR,pCLU Say pEST+Substr(F2111NUC,1,Int(pTMU)+3) Font "&mLetAri",9 Style "NQ" Size 1,pTMU
 ENDCASE
 IF pcLs<>0
      @vFFR,pCLS Say F2111STO Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "&pPIC"
 ENDIF
 IF pcLl<>0
      DO CASE
           CASE ptIp="N" .AND. f2111md2=1
                SET COLOR TO RGB(155,0,0,154,162,170)
           CASE ptIp="R" .AND. f2111md2=1
                DO coLblr
           CASE ptIp="N"
                DO coLsc3
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      @vFFR,pCLL Say pLST Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
 ENDIF
 DO coLsc4
 @fFFR+1.5,pICL+26 Say F2111DES                     Font "&mLetAri",9 Style "NQ" Size 1,99.5 Pict "@S80"
 @fFFR+2.8,pICL+26 Say AllTrim(pCDG)+"   "+F2111DCR Font "&mLetAri",9 Style "NQ" Size 1,99.5 Pict "@S80"
 @fFFR+2.8,pICL+26 Say AllTrim(pCDG)+" : "          Font "&mLetAri",9 Style "BQ"
 IF f2111est="9" .AND. ppRg="1"
      DO CASE
           CASE ptIp="N"
                DO coLsc6
           CASE ptIp="R"
                DO coLblr
      ENDCASE
      @vFFR,pCLU Say pEST Font "&mLetAri",9 Style "BQ"
 ENDIF
 IF ppRg$"6789EF"
      DO CASE
           CASE ptIp="N"
                DO coLsc3
           CASE ptIp="R"
                DO coLblz
      ENDCASE
      SELECT tmP_prod
      SEEK ALLTRIM(pcDg)+"*"
      @vFFR,pICL+19 Say Space(01) Font "&mLetAri",9 Style "NQ" Size 1,1.1
      IF  .NOT. EOF()
           DO prEsiona WITH "1", "CONSU5", vfFr+0.3, piCl+19
      ENDIF
 ENDIF
 SELECT viRtual_prod
 IF pcAm=1 .AND. ptIp="R"
      DO foT_2111w
 ENDIF
 RELEASE peSt
ENDPROC
*
PROCEDURE Fot_2111w
 PRIVATE plL1, pcL1
 STORE ifFr TO plL1
 IF mrEs="3"
      STORE puCl-27 TO pcL1
 ELSE
      STORE puCl+03 TO pcL1
 ENDIF
 DO coLbln
 @ plL1+0.0, pcL1 TO plL1+16.6, pcL1+64.1 PATTERN 1 PEN 2
 @ plL1+1.6, pcL1 TO plL1+01.6, pcL1+64.1
 IF LEN(ALLTRIM(pfOt))<>0
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+"DIB\"+ALLTRIM(pfOt)+".BMP" TO pfTt
      ELSE
           STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(pfOt)+".BMP" TO pfTt
      ENDIF
      If .not.File("&pFTT")
           IF LEN(ALLTRIM(muNi))=0
                STORE mpTh+"DIB\"+ALLTRIM(pfOt)+".JPG" TO pfTt
           ELSE
                STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(pfOt)+".JPG" TO pfTt
           ENDIF
      ENDIF
      If File("&pFTT")
           @pLL1+0.3,pCL1+10.0 Say "Nombre de la Foto:" Font "&mLetAri",9 Style "BT" Color 1
           @pLL1+0.3,pCL1+33.0 Say pFOT                 Font "&mLetAri",9 Style "BT" Color 1
           @pLL1+1.7,pCL1+00.5 Say "&pFTT" BitMap Style "Q" Size 15.1,63.1 Stretch
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           @pLL1+7.3,pCL1+21 Say "SIN FOTO" Font "&mLetRom",16 Style "BT" Color 0
      ENDIF
 ELSE
      @pLL1+7.3,pCL1+21 Say "SIN FOTO" Font "&mLetRom",16 Style "BT" Color 0
 ENDIF
 RELEASE plL1, pcL1
ENDPROC
*
PROCEDURE Lis_2111w
 DO CASE
      CASE vmOn=1 .AND. vlIs=1
           STORE f2111vv1 TO plSt
      CASE vmOn=1 .AND. vlIs=2
           STORE f2111vv3 TO plSt
      CASE vmOn=1 .AND. vlIs=3
           STORE f2111vv5 TO plSt
      CASE vmOn=1 .AND. vlIs=4
           STORE f2111vv7 TO plSt
      CASE vmOn=1 .AND. vlIs=5
           STORE f2111vv9 TO plSt
      CASE vmOn=1 .AND. vlIs=6
           STORE f2111vva TO plSt
      CASE vmOn=1 .AND. vlIs=7
           STORE f2111vvc TO plSt
      CASE vmOn=1 .AND. vlIs=8
           STORE f2111vve TO plSt
      CASE vmOn=1 .AND. vlIs=9
           STORE f2111vvg TO plSt
      CASE vmOn=1 .AND. vlIs=10
           STORE f2111vvi TO plSt
      CASE vmOn=2 .AND. vlIs=1
           STORE f2111vv2 TO plSt
      CASE vmOn=2 .AND. vlIs=2
           STORE f2111vv4 TO plSt
      CASE vmOn=2 .AND. vlIs=3
           STORE f2111vv6 TO plSt
      CASE vmOn=2 .AND. vlIs=4
           STORE f2111vv8 TO plSt
      CASE vmOn=2 .AND. vlIs=5
           STORE f2111vv0 TO plSt
      CASE vmOn=2 .AND. vlIs=6
           STORE f2111vvb TO plSt
      CASE vmOn=2 .AND. vlIs=7
           STORE f2111vvd TO plSt
      CASE vmOn=2 .AND. vlIs=8
           STORE f2111vve TO plSt
      CASE vmOn=2 .AND. vlIs=9
           STORE f2111vvh TO plSt
      CASE vmOn=2 .AND. vlIs=10
           STORE f2111vvj TO plSt
 ENDCASE
ENDPROC
*
PROCEDURE Lin_2111w
 PARAMETER piNi, pfIn
 DO coLbln
 IF mtMc>15
      @ piNi, piCl+26.8 TO pfIn, piCl+26.8
 ELSE
      @ piNi, piCl+20.8 TO pfIn, piCl+20.8
 ENDIF
 DO CASE
      CASE ppRg$"EF" .AND. psTo=1
           @ piNi, piCl+119.7 TO pfIn, piCl+119.7
           @ piNi, piCl+130.3 TO pfIn, piCl+130.3
           @ piNi, piCl+148.2 TO pfIn, piCl+148.2
      CASE ppRg$"EF"
           @ piNi, piCl+130.3 TO pfIn, piCl+130.3
           @ piNi, piCl+148.2 TO pfIn, piCl+148.2
      OTHERWISE
           @ piNi, piCl+137.0 TO pfIn, piCl+137.0
           @ piNi, piCl+148.2 TO pfIn, piCl+148.2
 ENDCASE
ENDPROC
*
PROCEDURE P00_2111w
 STORE 0 TO pcLs, pcLl
 STORE vcL0-9 TO piCl
 IF ppRg$"EF"
      IF mrEs="3"
           STORE piCl-09.5 TO piCl
      ELSE
           STORE piCl-15.5 TO piCl
      ENDIF
 ENDIF
 IF ppRg$"6789"
      STORE piCl+6 TO piCl
      IF ppRg="6"
           STORE piCl+4 TO piCl
      ENDIF
 ENDIF
 STORE piCl+165.7 TO puCl
 IF mtMc>15
      STORE piCl+27.4 TO pcLd
 ELSE
      STORE piCl+21.4 TO pcLd
 ENDIF
 DO CASE
      CASE ppRg$"EF" .AND. psTo=1
           STORE piCl+120.4 TO pcLu
      CASE ppRg$"EF"
           STORE piCl+130.9 TO pcLu
      OTHERWISE
           STORE piCl+137.5 TO pcLu
 ENDCASE
 DO CASE
      CASE ppRg$"EF" .AND. psTo=1
           STORE piCl+130.9 TO pcLs
           STORE piCl+148.8 TO pcLl
      CASE ppRg$"EF"
           STORE piCl+148.8 TO pcLl
      OTHERWISE
           STORE piCl+148.7 TO pcLs
 ENDCASE
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc4
 @ ifFr-2.0, piCl TO ffFr+5.7, puCl+1.1 PATTERN 1
 @ ifFr-0.3, piCl TO ifFr-0.3, puCl+1.1
 @ ffFr+1.2, piCl TO ffFr+1.2, puCl+1.1
 @ ffFr+4.0, piCl TO ffFr+4.0, puCl+1.1
 DO coLsc3
 @ ifFr-0.3, piCl TO ffFr+1.3, puCl+1.1 PATTERN 1
 DO coLsc7
 @ ffFr+4.0, piCl TO ffFr+5.7, puCl+1.1 PATTERN 1
 @fFFR+4.2,pICL+65.4 Say "CONSULTA DE PRODUCTOS"          Font "&mLetRom",12 Style "BQ"
 DO coLsc4
 @iFFR-1.5,pICL+06.4 Say "Código"                         Font "&mLetAri",9 Style "BQ"
 @iFFR-1.5,pCLD+00.4 Say "Descripción"                    Font "&mLetAri",9 Style "BQ"
 IF ppRg$"EF"
      @iFFR-1.5,pCLU+0.2 Say "Unid.Vta"                     Font "&mLetAri",9 Style "BQ"
 ELSE
      @iFFR-1.5,pCLU+0.4 Say "Unid.Cpr"                     Font "&mLetAri",9 Style "BQ"
 ENDIF
 IF pcLs<>0
      @iFFR-1.5,pCLS+5.4 Say "Stock"                        Font "&mLetAri",9 Style "BQ"
 ENDIF
 IF pcLl<>0
      @iFFR-1.5,pCLL+0.0 Say "Prec-"+Str(vLIS,2,0)+" "+pSIG Font "&mLetAri",9 Style "BQ" Size 1,10.5
 ENDIF
 @fFFR+1.5,pICL+.4 Say "Descripción Normal"  Font "&mLetAri",9 Style "BQ"
 @fFFR+2.8,pICL+.4 Say "Descripción Impresa" Font "&mLetAri",9 Style "BQ"
 DO liN_2111w WITH ifFr-1.8, ffFr+1.2
 IF ppRg$"EF"
      DO prEsiona WITH "1", "CONSUL", ifFr-1.4, puCl-3.6
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO boT_2111w
ENDPROC
*
PROCEDURE Bot_2111w
 IF pcAm=0
      DO prEsiona WITH "3", "CAMARA", ifFr-1.8, pcLu-10
 ELSE
      DO prEsiona WITH "1", "CAMARA", ifFr-1.8, pcLu-10
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.9, piCl+0.4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSU3", ifFr-1.9, pcLd
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsWw=1
           DO prEsiona WITH "1", "CONSU3", ifFr-1.9, piCl+0.4
      CASE vsWw=2
           DO prEsiona WITH "1", "CONSU3", ifFr-1.9, pcLd
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Res_2111w
 STORE vfFr TO cfFr
 DO muE_2111w WITH "v", "c"
 DO CASE
      CASE ppRg="1"
           DO p00_2111a WITH "1"
      CASE ppRg="2"
           DO p00_2920a WITH "1"
      CASE ppRg="3"
           DO reS_2920b
      CASE ppRg="4"
           DO reS_2105b
      CASE ppRg="5"
           DO rs1_2800c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO rs2_2800c
      CASE ppRg="6"
           DO reS_2400b
      CASE ppRg="7"
           DO reS_2600b
      CASE ppRg="8"
           DO reS_2700b
      CASE ppRg="9"
           DO reS_2800b
      CASE ppRg$"AB"
           DO p00_9996a WITH "1"
      CASE ppRg="C"
           DO p00_9997a WITH "1"
      CASE ppRg="D"
           DO p00_9995a WITH "1"
      CASE ppRg="E"
           DO reS_1200b
      CASE ppRg="F"
           DO reS_1300b
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 DO p00_2111w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT prOductos
 DO seE_2111w WITH "i"
 DO paN_2111w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cfFr TO vfFr
 DO muE_2111w WITH "c", "v"
 DO seE_2111w WITH "v"
 DO diS_2111w WITH "R"
ENDPROC
*
PROCEDURE Ord_2111w
 STORE 999 TO mkEy
 DO CASE
      CASE vsWw=1
           SET ORDER TO F2111COD
      CASE vsWw=2
           SET ORDER TO F2111DES
 ENDCASE
ENDPROC
*
PROCEDURE See_2111w
 PARAMETER psEe
 DO CASE
      CASE psEe="v" .AND. vsWw=01
           SEEK UPPER(ALLTRIM(vcDg))+"*"
      CASE psEe="v" .AND. vsWw=02
           SEEK UPPER(ALLTRIM(vdCc))+UPPER(ALLTRIM(vcDg))+"*"
      CASE psEe="i" .AND. vsWw=01
           SEEK UPPER(ALLTRIM(icDg))+"*"
      CASE psEe="i" .AND. vsWw=02
           SEEK UPPER(ALLTRIM(idCc))+UPPER(ALLTRIM(icDg))+"*"
      CASE psEe="u" .AND. vsWw=01
           SEEK UPPER(ALLTRIM(ucDg))+"*"
      CASE psEe="u" .AND. vsWw=02
           SEEK UPPER(ALLTRIM(udCc))+UPPER(ALLTRIM(ucDg))+"*"
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2111w
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="c" .AND. pmU2="v"
           STORE ccDg TO vcDg
           STORE cdCc TO vdCc
      CASE pmU1="v" .AND. pmU2="c"
           STORE vcDg TO ccDg
           STORE vdCc TO cdCc
      CASE pmU1="i" .AND. pmU2="v"
           STORE icDg TO vcDg
           STORE idCc TO vdCc
      CASE pmU1="u" .AND. pmU2="v"
           STORE ucDg TO vcDg
           STORE udCc TO vdCc
      CASE pmU1="F" .AND. pmU2="v"
           STORE f2111cod TO vcDg
           STORE f2111des TO vdCc
      CASE pmU1="F" .AND. pmU2="u"
           STORE f2111cod TO ucDg
           STORE f2111des TO udCc
      CASE pmU1="F" .AND. pmU2="i"
           STORE f2111cod TO icDg
           STORE f2111des TO idCc
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2111w
 = INKEY(0.01)
 DO CASE
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
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. ppRg$"6789EF"  ;
           .AND. mcCc>=piCl .AND. mcCc<=puCl+0.4
           STORE k_F9 TO mkEy
      CASE mfIl>=ifFr-1.906 .AND. mfIl<=ifFr-0.549 .AND. mcCc>=pcLu-10  ;
           .AND. mcCc<=pcLu-3.800
           IF pcAm=0
                STORE 01 TO pcAm
                DO boT_2111w
           ELSE
                STORE 00 TO pcAm
                DO CASE
                     CASE ppRg="1"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="2"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="3"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="4"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="5"
                          RESTORE SCREEN FROM vpAn_13
                     CASE ppRg="6"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="7"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="8"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="9"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg$"AB"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="C"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="D"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="E"
                          RESTORE SCREEN FROM vpAn_11
                     CASE ppRg="F"
                          RESTORE SCREEN FROM vpAn_11
                ENDCASE
                STORE vfFr TO cfFr
                DO muE_2111w WITH "v", "c"
                DO p00_2111w
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT viRtual_prod
                DO seE_2111w WITH "i"
                DO paN_2111w
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE cfFr TO vfFr
                DO muE_2111w WITH "c", "v"
                DO seE_2111w WITH "v"
           ENDIF
           DO diS_2111w WITH "R"
           STORE 999 TO mkEy
      CASE mfIl>=ifFr-1.478 .AND. mfIl<=ifFr-0.264 .AND. mcCc>=puCl-3.8  ;
           .AND. mcCc<=puCl+0.2 .AND. ppRg$"EF"
           STORE k_F4 TO mkEy
           DO prEsiona WITH "1", "CONSUL", ifFr-1.4, puCl-3.6
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfFr-0.007 .AND. mfIl<=vfFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl+0.4
           STORE k_Enter TO mkEy
      CASE mfIl>=ifFr-0.007 .AND. mfIl<=ufFr+0.992 .AND. mcCc>=piCl .AND.  ;
           mcCc<=puCl+0.4
           DO diS_2111w WITH "N"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ifFr+INT(mfIl-ifFr) TO vfFr
           DO seE_2111w WITH "i"
           SKIP INT(mfIl-ifFr)
           STORE 999 TO mkEy
           DO muE_2111w WITH "F", "v"
           DO diS_2111w WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      OTHERWISE
           STORE 999 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2111w
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran los Productos con sus Stocks"
 @ pfIl+1, 02 SAY "respectivos."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 08 SAY "ESC" STYLE "BT"
 @ pfIl+6, 08 SAY "F10" STYLE "BT"
 @ pfIl+7, 08 SAY "F1" STYLE "BT"
 @ pfIl+5, 31 SAY "Regresar a Cabecera"
 @ pfIl+6, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 31 SAY "Ayuda del Programa"
 STORE pfIl+8 TO pfIl
 IF ppRg$"9EF"
      @ pfIl, 08 SAY "F4" STYLE "BT"
      @ pfIl, 29 SAY ":" STYLE "BT"
      DO CASE
           CASE ppRg="9"
                @ pfIl, 31 SAY "Selecciona los decimales de los stocks"
           OTHERWISE
                @ pfIl, 31 SAY "Escoger # Lista de Precios"
      ENDCASE
      STORE pfIl+1 TO pfIl
 ENDIF
 IF ppRg="8"
      @ pfIl+0, 08 SAY "F6" STYLE "BT"
      @ pfIl+1, 08 SAY "F7" STYLE "BT"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 31 SAY "Seleccionar todos los Productos stock 0"
      @ pfIl+1, 31 SAY "Seleccionar todos los Productos con stock"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF ppRg$"6789EF"
      @ pfIl+0, 08 SAY "F8" STYLE "BT"
      @ pfIl+2, 08 SAY "F9 o CLIC" STYLE "BT"
      @ pfIl+3, 08 SAY "TAB" STYLE "BT"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+2, 29 SAY ":" STYLE "BT"
      @ pfIl+3, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 31 SAY "Seleccionar todos los Productos con"
      @ pfIl+1, 31 SAY "stock negativo"
      @ pfIl+2, 31 SAY "Marcar/Desmarcar Producto"
      @ pfIl+3, 31 SAY "Seleccionar todos los Productos marcados"
      STORE pfIl+4 TO pfIl
 ENDIF
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+8, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 08 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 08 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 08 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 08 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+4, 08 SAY "PAGE UP" STYLE "BT"
 @ pfIl+5, 08 SAY "HOME" STYLE "BT"
 @ pfIl+6, 08 SAY "END" STYLE "BT"
 @ pfIl+7, 08 SAY "FLECHA -->" STYLE "BT"
 @ pfIl+8, 08 SAY "FLECHA <--" STYLE "BT"
 @ pfIl+0, 31 SAY "Seleccionar Producto"
 @ pfIl+1, 31 SAY "Línea inferior"
 @ pfIl+2, 31 SAY "Línea superior"
 @ pfIl+3, 31 SAY "Página siguiente"
 @ pfIl+4, 31 SAY "Página anterior"
 @ pfIl+5, 31 SAY "Primera línea"
 @ pfIl+6, 31 SAY "Última línea"
 @ pfIl+7, 31 SAY "Cambiar de Orden"
 @ pfIl+8, 31 SAY "Cambiar de Orden"
 STORE pfIl+9 TO pfIl
 IF ppRg$"6789EF"
      @ pfIl+0, 08 SAY "CTRL --> <--" STYLE "BT"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 31 SAY "Cambiar de Lista de Precios"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
