 SELECT caB_ing_bancos
 STORE 0 TO mvIs
 DO ipR_0001a WITH "PE"
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
 DO ipR_0001a WITH "PE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO reP_3530z
 IF voPc=2 .AND. mvIs=0
      DO reP_3530z
 ENDIF
 DO fpR_0001a
 SELECT caB_ing_bancos
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Cab_3530z
 PRIVATE pcLn
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vpAg+1 TO vpAg
 STORE 0 TO vlIn
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl=2
           DO coLblr
      CASE mcOl=3
           DO coLblz
 ENDCASE
 IF vpAg>=miPg .AND. vpAg<=muPg
      IF LEN(ALLTRIM(mrZ1))<>0
           @vLIN,mCLN Say AllTrim(mRZ1)+" "+mTIP Font "&mLetRom",14 Style "BQI"
      ELSE
           @vLIN,mCLN Say AllTrim(mRAZ)+" "+mTIP Font "&mLetRom",14 Style "BQI"
      ENDIF
 ENDIF
 STORE vlIn+1 TO vlIn
 IF mvIs=1
      SET COLOR TO RGB(222,222,222,255,255,255)
      STORE 76 TO pcLn
      @0.5,pCLN+2 Say "VISTA PRELIMINAR"                       Font "&mLetRom",14 Style "BT"
      @2.5,pCLN   Say "Pulsar tecla o hacer clic con el Mouse" Font "&mLetRom",10 Style "BTI"
 ENDIF
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl=2
           DO coLblr
      CASE mcOl=3
           DO coLblz
 ENDCASE
 SELECT caB_ing_bancos
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Voucher de Ingreso a Bancos No."+vANO+"-"+vMES+"-"+vNUM Font "&mLetRom",14 Style "BQ"
      IF f3530est="9"
           @vLIN,mCLN+128 Say "A N U L A D O"          Font "&mLetRom",12 Style "BQ"
      ELSE
           @vLIN,mCLN+128 Say "Página: "+Str(vPAG,3,0) Font "&mLetRom",12 Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl>1
           DO coLblz
 ENDCASE
ENDPROC
*
PROCEDURE Rep_3530z
 PRIVATE pfEm, ptPo, ptCa, pmOn, psIg, paC1, paC2, ptO1, ptO2, psW0
 SELECT caB_ing_bancos
 STORE 0 TO psW0
 STORE f3530tca TO ptCa
 STORE f3530mon TO pmOn
 STORE f3530dia+"/"+f3530mes+"/"+f3530ano TO pfEm
 STORE f3530nti TO ptPo
 DO CASE
      CASE pmOn=1
           STORE "S/." TO psIg
      CASE pmOn=2
           STORE "US$" TO psIg
 ENDCASE
 IF f3530tpo=1
      STORE ptPo+"*** Por Rendir ***" TO ptPo
 ENDIF
 DO CASE
      CASE mvIs=0
           STORE 88 TO ptAm
           STORE 14 TO mcLn
      CASE mvIs=1
           STORE 26 TO mcLn
           STORE 88 TO ptAm
 ENDCASE
 STORE 0 TO vpAg, vlIn, paC1, paC2, ptO1, ptO2
 DO caB_3530z
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Fecha"       Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"           Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say pFEM          Font "&mLetRom",12 Style "NQ" Size 1,12
      @vLIN,mCLN+30 Say "T/C"         Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+37 Say ":"           Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+39 Say Str(pTCA,6,3) Font "&mLetRom",12 Style "NQ" Size 1,08
      @vLIN,mCLN+60 Say "Glosa"       Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say ":"           Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+72 Say F3530GLO      Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Recibo" Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say F3530RCB Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "@S13"
      @vLIN,mCLN+30 Say "Hora"   Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+37 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+39 Say F3530TIM Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "@S13"
      @vLIN,mCLN+60 Say "Tipo"   Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+72 Say pTPO     Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Banco"  Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say F3530NBA Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "@S13"
      @vLIN,mCLN+60 Say "Cta"    Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+72 Say F3530NCT Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "#Ch/Op" Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say F3530CHE Font "&mLetRom",12 Style "NQ" Size 1,30 Pict "@S33"
 ENDIF
 SELECT deT_ing_bancos
 SEEK vaNo+vmEs+vsEr+vnUm
 IF  .NOT. EOF()
      STORE 1 TO psW0
      STORE vlIn+1 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.6 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN Say "Documento" Font "&mLetAri",9 Style "BT"
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+019.0 Say "Cliente" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+055.3 Say "Emisión" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+084.5 Say "Monto"   Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+093.0 Say "Titular" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+134.3 Say "Pago"    Font "&mLetAri",9 Style "BT"
                CASE mpRt="1"
                     @vLIN,mCLN+020.0 Say "Cliente" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+055.3 Say "Emisión" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+084.5 Say "Monto"   Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+093.0 Say "Titular" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+128.4 Say "Pago"    Font "&mLetAri",9 Style "BT"
                CASE mpRt="2"
                     @vLIN,mCLN+020.0 Say "Cliente" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+055.3 Say "Emisión" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+084.5 Say "Monto"   Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+093.0 Say "Titular" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+128.4 Say "Pago"    Font "&mLetAri",9 Style "BT"
           ENDCASE
      ENDIF
      STORE vlIn+0.3 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.8 TO vlIn
      DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+f3531ser+f3531num= ;
         vaNo+vmEs+vsEr+vnUm
           IF mkEy=k_F10 .AND. mvIs=1
                DO reTorna
           ENDIF
           IF vpAg>muPg
                EXIT
           ENDIF
           IF vlIn>mpAg-3
                DO caB_3530z
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           SELECT deT_ing_bancos
           STORE f3531tdo TO ctDo
           STORE f3531sr1 TO csR1
           STORE f3531doc TO cdOc
           SELECT peNd_vtas
           SEEK ctDo+csR1+cdOc
           IF EOF()
                STORE 0 TO ctOt, csLd
                STORE 1 TO cmOn
                STORE SPACE(70) TO cnOm, cnTi
                STORE CTOD("  /  /    ") TO cfEm, cfVe
           ELSE
                STORE LOWER(f3500nom) TO cnOm
                STORE f3500fem TO cfEm
                STORE f3500fve TO cfVe
                STORE f3500mon TO cmOn
                STORE f3500tot TO ctOt
                STORE f3500nti TO cnTi
                STORE f3500tot-f3500acu TO csLd
           ENDIF
           SELECT deT_ing_bancos
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say F3531TDO+":"+F3531SR1+"-"+F3531DOC Font "&mLetAri",9 Style "NT"
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+19.0 Say cNOM         Font "&mLetAri",9 Style "NQ" Size 1,35.3 Pict "@S36"
                          @vLIN,mCLN+55.3 Say cFEM         Font "&mLetAri",9 Style "NQ" Size 1,12.4
                          IF cmOn=1
                               @vLIN,mCLN+68.7 Say "S/."     Font "&mLetAri",9 Style "NQ" Size 1,5
                          ELSE
                               @vLIN,mCLN+68.7 Say "US$"     Font "&mLetAri",9 Style "NQ" Size 1,5
                          ENDIF
                          @vLIN,mCLN+073.8 Say cTOT        Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          @vLIN,mCLN+093.0 Say cNTI        Font "&mLetAri",9 Style "NQ" Size 1,28.0 Pict "@S31"
                          @vLIN,mCLN+122.1 Say F3531PAG    Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     CASE mpRt="1"
                          @vLIN,mCLN+20.0 Say cNOM         Font "&mLetAri",9 Style "NT" Size 1,35.3 Pict "@S36"
                          @vLIN,mCLN+55.3 Say cFEM         Font "&mLetAri",9 Style "NT" Size 1,12.4
                          IF cmOn=1
                               @vLIN,mCLN+69 Say "S/."       Font "&mLetAri",9 Style "NT" Size 1,4.8
                          ELSE
                               @vLIN,mCLN+69 Say "US$"       Font "&mLetAri",9 Style "NT" Size 1,4.8
                          ENDIF
                          @vLIN,mCLN+088.8 Say cTOT        Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
                          @vLIN,mCLN+093.0 Say cNTI        Font "&mLetAri",9 Style "NT" Size 1,20 Pict "@S22"
                          @vLIN,mCLN+131.0 Say F3531PAG    Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+20 Say cNOM           Font "&mLetAri",9 Style "NQ" Size 1,35.3 Pict "@S36"
                          @vLIN,mCLN+57 Say cFEM           Font "&mLetAri",9 Style "NQ" Size 1,12.4
                          IF cmOn=1
                               @vLIN,mCLN+71 Say "S/."       Font "&mLetAri",9 Style "NQ" Size 1,4.8
                          ELSE
                               @vLIN,mCLN+71 Say "US$"       Font "&mLetAri",9 Style "NQ" Size 1,4.8
                          ENDIF
                          @vLIN,mCLN+077.5 Say cTOT        Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "99,999,999.99"
                          @vLIN,mCLN+093.0 Say cNTI        Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22"
                          @vLIN,mCLN+118.0 Say F3531PAG    Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "99,999,999.99"
                ENDCASE
           ENDIF
           DO CASE
                CASE cmOn=1
                     STORE ptO1+ctOt TO ptO1
                CASE cmOn=2
                     STORE ptO2+ctOt TO ptO2
           ENDCASE
           DO CASE
                CASE pmOn=cmOn .AND. cmOn=1
                     STORE paC1+f3531pag TO paC1
                     STORE csLd-paC1 TO csLd
                CASE pmOn=cmOn .AND. cmOn=2
                     STORE paC2+f3531pag TO paC2
                     STORE csLd-paC2 TO csLd
                CASE pmOn<>cmOn .AND. cmOn=1
                     STORE paC1+ROUND(f3531pag*ptCa, 2) TO paC1
                     STORE csLd-paC1 TO csLd
                CASE pmOn<>cmOn .AND. cmOn=2
                     STORE paC2+ROUND(f3531pag*ptCa, 2) TO paC2
                     STORE csLd-paC2 TO csLd
           ENDCASE
           STORE vlIn+1.4 TO vlIn
           SKIP
      ENDDO
      STORE vlIn-0.8 TO vlIn
 ELSE
      STORE vlIn+0.5 TO vlIn
 ENDIF
 SELECT caB_ing_bancos
 IF vlIn>mpAg-3
      DO caB_3530z
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      IF psW0=1
           @vLIN,mCLN+75 Say "TOTAL" Font "&mLetAri",9 Style "BQ"
      ELSE
           @vLIN,mCLN+99 Say "TOTAL" Font "&mLetAri",9 Style "BQ"
      ENDIF
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+116   Say pSIG     Font "&mLetAri",9 Style "BQ" Size 1,4.2
                @vLIN,mCLN+121.7 Say F3530TOT Font "&mLetAri",9 Style "BQ" Size 1,15.5 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+112   Say pSIG     Font "&mLetAri",9 Style "BQ" Size 1,4.2
                @vLIN,mCLN+131   Say F3530TOT Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+116   Say pSIG     Font "&mLetAri",9 Style "BQ" Size 1,4.2
                @vLIN,mCLN+118   Say F3530TOT Font "&mLetAri",9 Style "NT" Size 1,16   Pict "99,999,999.99"
      ENDCASE
 ENDIF
 IF psW0=1
      STORE vlIn+1.6 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+75 Say "SALDOS" Font "&mLetAri",9 Style "BQ"
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN+089.3 Say "S/."     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+116.0 Say "US$"     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+095.0 Say pTO1-pAC1 Font "&mLetAri",9 Style "BT" Size 1,15.5 Pict "99,999,999.99"
                     @vLIN,mCLN+121.7 Say pTO2-pAC2 Font "&mLetAri",9 Style "BT" Size 1,15.5 Pict "99,999,999.99"
                CASE mpRt="1"
                     @vLIN,mCLN+087.3 Say "S/."     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+112.0 Say "US$"     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+105.0 Say pTO1-pAC1 Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
                     @vLIN,mCLN+131.0 Say pTO2-pAC2 Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+089.3 Say "S/."     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+116.0 Say "US$"     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+095.0 Say pTO1-pAC1 Font "&mLetAri",9 Style "BT" Size 1,15.5 Pict "99,999,999.99"
                     @vLIN,mCLN+121.7 Say pTO2-pAC2 Font "&mLetAri",9 Style "BT" Size 1,15.5 Pict "99,999,999.99"
           ENDCASE
      ENDIF
 ENDIF
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
 STORE 01 TO miPg, pnUm, voPc
 IF mcIa="CH"
      STORE 2 TO voPc
 ENDIF
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
 @pFIL+09.7,pCOL+05 Say "Desde Página:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+11.4,pCOL+05 Say "Hasta Página:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+09.7,pCOL+39 Say "Impresión"             Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+15 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+5, pcOl+13 TO pfIl+8.7, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+09.8,pCOL+26.0 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.5,pCOL+26.0 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.2,pCOL+40.4 Get vOPC Font "&mLetAri",9 Style "NQ" Size 0.8,38,.2 Default vOPC Function "*RVT Simple;Doble"
      @pFIL+18.4,pCOL+06.0 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                DO CASE
                     CASE miPg>muPg
                          STORE "Página Inicial mayor a la Final..." TO mmSj
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
           CASE poPc=3
                STORE 1 TO mvIs
                EXIT
      ENDCASE
 ENDDO
 DO coLbln
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 RESTORE SCREEN FROM mpAn_prn
 RELEASE pfIl, ptAb, pcOl, plIs, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
