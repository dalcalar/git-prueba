 SELECT caB_sal_bancos
 STORE 0 TO mvIs
 DO ipR_0001a WITH "PE"
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE 1 TO voPc
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PCC3540Z
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
 DO CASE
      CASE voPc=1
           DO reP_3540z
      CASE voPc=2
           DO CASE
                CASE AT("CREDITO", UPPER(xnBa))<>0
                     DO chE_3540z WITH "C"
                CASE AT("CONTINENTAL", UPPER(xnBa))<>0
                     DO chE_3540z WITH "K"
                CASE AT("SCOTIA", UPPER(xnBa))<>0
                     DO chE_3540z WITH "S"
                OTHERWISE
                     DO chE_3540z WITH "X"
           ENDCASE
      CASE voPc=3
           SET DEVICE TO SCREEN
           STORE "S" TO moPc
           IF mvIs=0
                DO prE_docum WITH "¿Desea imprimir Voucher?"
           ENDIF
           IF moPc$"Ss"
                IF mvIs=0
                     SET DEVICE TO PRINTER
                ENDIF
                DO reP_3540z
                SET DEVICE TO SCREEN
           ENDIF
           IF mvIs=0
                DO prE_docum WITH "¿Desea imprimir Cheque?"
           ELSE
                WAIT WINDOW "Presione una tecla para ver Cheque"
           ENDIF
           WAIT CLEAR
           IF moPc$"Ss"
                IF mvIs=0
                     SET DEVICE TO PRINTER
                ELSE
                     DO coLbln
                     CLEAR
                     @ 0, 0 SAY ""
                ENDIF
                DO CASE
                     CASE AT("CREDITO", UPPER(xnBa))<>0
                          DO chE_3540z WITH "C"
                     CASE AT("CONTINENTAL", UPPER(xnBa))<>0
                          DO chE_3540z WITH "K"
                     CASE AT("SCOTIA", UPPER(xnBa))<>0
                          DO chE_3540z WITH "S"
                     OTHERWISE
                          DO chE_3540z WITH "X"
                ENDCASE
           ENDIF
 ENDCASE
 DO fpR_0001a
 SELECT caB_sal_bancos
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Cab_3540z
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
 SELECT caB_sal_bancos
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "Voucher de Salida de Bancos No."+vANO+"-"+vMES+"-"+vNUM Font "&mLetRom",14 Style "BQ"
      IF f3540est="9"
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
PROCEDURE Rep_3540z
 PRIVATE pfEm, ptPo, ptCa, pmOn, psIg, ptO1, ptO2, psW0
 SELECT caB_sal_bancos
 STORE 0 TO psW0
 STORE f3540tca TO ptCa
 STORE f3540mon TO pmOn
 STORE f3540dia+"/"+f3540mes+"/"+f3540ano TO pfEm
 STORE f3540nti TO ptPo
 DO CASE
      CASE pmOn=1
           STORE "S/." TO psIg
      CASE pmOn=2
           STORE "US$" TO psIg
 ENDCASE
 IF f3540tpo=1
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
 STORE 0 TO vpAg, vlIn, ptO1, ptO2
 DO caB_3540z
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
      @vLIN,mCLN+72 Say F3540GLO      Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Recibo" Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say F3540RCB Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "@S13"
      @vLIN,mCLN+30 Say "Hora"   Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+37 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+39 Say F3540TIM Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "@S13"
      @vLIN,mCLN+60 Say "Tipo"   Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+72 Say pTPO     Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "Banco"  Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say F3540NBA Font "&mLetRom",12 Style "NQ" Size 1,10 Pict "@S13"
      @vLIN,mCLN+60 Say "Cta"    Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+72 Say F3540NCT Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN    Say "#Ch/Op" Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+10 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+12 Say F3540CHE Font "&mLetRom",12 Style "NQ" Size 1,30 Pict "@S33"
      @vLIN,mCLN+60 Say "C.C."   Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+70 Say ":"      Font "&mLetRom",12 Style "BQ"
      @vLIN,mCLN+72 Say F3540NCC Font "&mLetRom",12 Style "NQ" Size 1,37 Pict "@S40"
 ENDIF
 SELECT deT_sal_bancos
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
                     @vLIN,mCLN+020.0 Say "Proveedor" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+055.3 Say "Emisión"   Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+084.5 Say "Monto"     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+093.0 Say "F.Pago"    Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+134.3 Say "Pago"      Font "&mLetAri",9 Style "BT"
                CASE mpRt="1"
                     @vLIN,mCLN+020.0 Say "Proveedor" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+055.3 Say "Emisión"   Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+084.5 Say "Monto"     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+093.0 Say "F.Pago"    Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+128.4 Say "Pago"      Font "&mLetAri",9 Style "BT"
                CASE mpRt="2"
                     @vLIN,mCLN+020.0 Say "Proveedor" Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+055.3 Say "Emisión"   Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+084.5 Say "Monto"     Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+093.0 Say "F.Pago"    Font "&mLetAri",9 Style "BT"
                     @vLIN,mCLN+128.4 Say "Pago"      Font "&mLetAri",9 Style "BT"
           ENDCASE
      ENDIF
      STORE vlIn+0.3 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.8 TO vlIn
      DO WHILE  .NOT. EOF() .AND. f3541ano+f3541mes+f3541ser+f3541num= ;
         vaNo+vmEs+vsEr+vnUm
           IF mkEy=k_F10 .AND. mvIs=1
                DO reTorna
           ENDIF
           IF vpAg>muPg
                EXIT
           ENDIF
           IF vlIn>mpAg-3
                DO caB_3540z
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           SELECT deT_sal_bancos
           STORE f3541tdo TO ctDo
           STORE f3541sr1 TO csR1
           STORE f3541doc TO cdOc
           SELECT peNd_cpras
           SEEK ctDo+csR1+cdOc
           IF EOF()
                STORE 0 TO ctOt
                STORE 1 TO cmOn
                STORE SPACE(70) TO cnOm, cnFp, ctDo, csR1, cdOc
                STORE CTOD("  /  /    ") TO cfEm, cfVe
           ELSE
                STORE LOWER(f3600nom) TO cnOm
                STORE f3600fem TO cfEm
                STORE f3600fve TO cfVe
                STORE f3600mon TO cmOn
                STORE f3600tot TO ctOt
                STORE f3600nfp TO cnFp
                STORE f3600td1 TO ctDo
                STORE f3600sr1 TO csR1
                STORE f3600do1 TO cdOc
           ENDIF
           SELECT deT_sal_bancos
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say F3541TDO+":"+F3541SR1+"-"+F3541DOC Font "&mLetAri",9 Style "NT"
                DO CASE
                     CASE mvIs=1
                          @vLIN,mCLN+20.0 Say cNOM         Font "&mLetAri",9 Style "NQ" Size 1,33.3 Pict "@S36"
                          @vLIN,mCLN+55.3 Say cFEM         Font "&mLetAri",9 Style "NQ" Size 1,12.4
                          IF cmOn=1
                               @vLIN,mCLN+68.7 Say "S/."     Font "&mLetAri",9 Style "NQ" Size 1,5
                          ELSE
                               @vLIN,mCLN+68.7 Say "US$"     Font "&mLetAri",9 Style "NQ" Size 1,5
                          ENDIF
                          @vLIN,mCLN+073.8 Say cTOT        Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                          @vLIN,mCLN+093.0 Say cNFP        Font "&mLetAri",9 Style "NQ" Size 1,28.0 Pict "@S31"
                          @vLIN,mCLN+122.1 Say F3541PAG    Font "&mLetAri",9 Style "NQ" Size 1,18.1 Pict "99,999,999.99"
                     CASE mpRt="1"
                          @vLIN,mCLN+20.0 Say cNOM         Font "&mLetAri",9 Style "NT" Size 1,35.3 Pict "@S36"
                          @vLIN,mCLN+55.3 Say cFEM         Font "&mLetAri",9 Style "NT" Size 1,12.4
                          IF cmOn=1
                               @vLIN,mCLN+69 Say "S/."       Font "&mLetAri",9 Style "NT" Size 1,4.8
                          ELSE
                               @vLIN,mCLN+69 Say "US$"       Font "&mLetAri",9 Style "NT" Size 1,4.8
                          ENDIF
                          @vLIN,mCLN+088.8 Say cTOT        Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
                          @vLIN,mCLN+093.0 Say cNFP        Font "&mLetAri",9 Style "NT" Size 1,20 Pict "@S22"
                          @vLIN,mCLN+131.0 Say F3541PAG    Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
                     CASE mpRt="2"
                          @vLIN,mCLN+20 Say cNOM           Font "&mLetAri",9 Style "NQ" Size 1,35.3 Pict "@S36"
                          @vLIN,mCLN+57 Say cFEM           Font "&mLetAri",9 Style "NQ" Size 1,12.4
                          IF cmOn=1
                               @vLIN,mCLN+71 Say "S/."       Font "&mLetAri",9 Style "NQ" Size 1,4.8
                          ELSE
                               @vLIN,mCLN+71 Say "US$"       Font "&mLetAri",9 Style "NQ" Size 1,4.8
                          ENDIF
                          @vLIN,mCLN+077.5 Say cTOT        Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "99,999,999.99"
                          @vLIN,mCLN+093.0 Say cNFP        Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S22"
                          @vLIN,mCLN+118.0 Say F3541PAG    Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "99,999,999.99"
                ENDCASE
           ENDIF
           STORE vlIn+1.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                @vLIN,mCLN Say cTDO+":"+cSR1+"-"+cDOC Font "&mLetAri",9 Style "NT"
           ENDIF
           STORE vlIn+1.4 TO vlIn
           DO CASE
                CASE cmOn=1
                     STORE ptO1+ctOt TO ptO1
                CASE cmOn=2
                     STORE ptO2+ctOt TO ptO2
           ENDCASE
           SKIP
      ENDDO
      STORE vlIn-0.8 TO vlIn
 ELSE
      STORE vlIn+0.5 TO vlIn
 ENDIF
 SELECT caB_sal_bancos
 IF vlIn>mpAg-3
      DO caB_3540z
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
                @vLIN,mCLN+121.7 Say F3540TOT Font "&mLetAri",9 Style "BQ" Size 1,15.5 Pict "99,999,999.99"
           CASE mpRt="1"
                @vLIN,mCLN+112   Say pSIG     Font "&mLetAri",9 Style "BQ" Size 1,4.2
                @vLIN,mCLN+131   Say F3540TOT Font "&mLetAri",9 Style "NT" Size 1,18.1 Pict "99,999,999.99"
           CASE mpRt="2"
                @vLIN,mCLN+116   Say pSIG     Font "&mLetAri",9 Style "BQ" Size 1,4.2
                @vLIN,mCLN+118   Say F3540TOT Font "&mLetAri",9 Style "NT" Size 1,16   Pict "99,999,999.99"
      ENDCASE
 ENDIF
 STORE vlIn+2.6 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3540z
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+000 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+030 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+060 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
           CASE mpRt="1"
                @vLIN,mCLN+000 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+030 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+060 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
           CASE mpRt="2"
                @vLIN,mCLN+000 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+030 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+060 Say "____________________" Font "&mLetAri",9 Style "NQ" Size 1,20
      ENDCASE
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vlIn>mpAg-3
      DO caB_3540z
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+002 Say "    Emitido por     " Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+032 Say "       Vo.Bo.       " Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+062 Say "   Recibido por     " Font "&mLetAri",9 Style "NQ" Size 1,20
           CASE mpRt="1"
                @vLIN,mCLN+005 Say "    Emitido por     " Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+035 Say "       Vo.Bo.       " Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+065 Say "   Recibido por     " Font "&mLetAri",9 Style "NQ" Size 1,20
           CASE mpRt="2"
                @vLIN,mCLN+005 Say "    Emitido por     " Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+035 Say "       Vo.Bo.       " Font "&mLetAri",9 Style "NQ" Size 1,20
                @vLIN,mCLN+065 Say "   Recibido por     " Font "&mLetAri",9 Style "NQ" Size 1,20
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE Che_3540z
 PARAMETER pbAn
 PRIVATE pnOm, pcLn
 DO CASE
      CASE mcIa="NV" .OR. mcIa="NM" .OR. mcIa="NP"
           STORE "Roberto Tomita" TO pnOm
      CASE mcIa="NS"
           STORE "Katty Tomita" TO pnOm
      CASE mcIa="MO"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="PU"
           STORE "Luis Monroy" TO pnOm
      CASE mcIa="SR"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="LI"
           STORE "Ausoberto Alva" TO pnOm
      CASE mcIa="MA"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="AL" .OR. mcIa="A1"
           STORE "Carlos Alejo" TO pnOm
      CASE mcIa="MB"
           STORE "Edgar Aliaga" TO pnOm
      CASE mcIa="DI"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="VV"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="RO"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="MV"
           STORE "Victor Fernandez" TO pnOm
      CASE mcIa="PE"
           STORE "Marisol Rojas Armas" TO pnOm
      CASE mcIa="LR"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="LE"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="UN"
           STORE "XXXXXXXXXXXX" TO pnOm
      CASE mcIa="RU"
           STORE "XXXXXXXXXXXX" TO pnOm
      OTHERWISE
           STORE "XXXXXXXXXXXX" TO pnOm
 ENDCASE
 SELECT caB_sal_bancos
 DO CASE
      CASE mvIs=0
           STORE 88 TO ptAm
           STORE 14 TO mcLn
      CASE mvIs=1
           STORE 42 TO mcLn
           STORE 88 TO ptAm
 ENDCASE
 STORE 0 TO vlIn
 STORE 1 TO vpAg
 STORE "" TO vfRa
 STORE f3540tot TO ttOt
 DO leE_3540z
 DO coLbln
 SELECT deT_sal_bancos
 SEEK vaNo+vmEs+vsEr+vnUm
 STORE f3541tdo TO ctDo
 STORE f3541sr1 TO csR1
 STORE f3541doc TO cdOc
 SELECT peNd_cpras
 SEEK ctDo+csR1+cdOc
 IF EOF()
      STORE SPACE(70) TO cnOm
 ELSE
      STORE f3600nom TO cnOm
 ENDIF
 SELECT caB_sal_bancos
 DO CASE
      CASE mvIs=1
           STORE vlIn+6 TO vlIn
           SET COLOR TO RGB(0,0,0,223,223,255)
           @ vlIn+06, mcLn CLEAR TO vlIn+23, mcLn+110
           @ vlIn+06, mcLn TO vlIn+23, mcLn+110
           DO coLplp
           @ vlIn+08.6, mcLn+040 TO vlIn+09.7, mcLn+040
           @ vlIn+08.6, mcLn+055 TO vlIn+09.7, mcLn+055
           @ vlIn+08.6, mcLn+061 TO vlIn+09.7, mcLn+061
           @ vlIn+08.6, mcLn+067 TO vlIn+09.7, mcLn+067
           @ vlIn+08.6, mcLn+075 TO vlIn+09.7, mcLn+075
           @ vlIn+08.6, mcLn+078 TO vlIn+09.7, mcLn+078
           @ vlIn+08.6, mcLn+107 TO vlIn+09.7, mcLn+107
           @ vlIn+09.7, mcLn+040 TO vlIn+09.7, mcLn+075
           @ vlIn+09.7, mcLn+078 TO vlIn+09.7, mcLn+107
           @ vlIn+12.8, mcLn+002 TO vlIn+13.9, mcLn+002
           @ vlIn+12.8, mcLn+107 TO vlIn+13.9, mcLn+107
           @ vlIn+13.9, mcLn+002 TO vlIn+13.9, mcLn+107
           @ vlIn+15.1, mcLn+002 TO vlIn+16.2, mcLn+002
           @ vlIn+15.1, mcLn+107 TO vlIn+16.2, mcLn+107
           @ vlIn+16.2, mcLn+002 TO vlIn+16.2, mcLn+107
           @ vlIn+19.4, mcLn+049 TO vlIn+20.3, mcLn+049
           @ vlIn+19.4, mcLn+107 TO vlIn+20.3, mcLn+107
           @ vlIn+20.3, mcLn+049 TO vlIn+20.3, mcLn+107
           DO CASE
                CASE AT("Crédito", f3540nba)<>0 .OR. AT("Credito", f3540nba)<>0
                     DO prEsiona WITH "4", "BCOCRED", vlIn+7, mcLn+1
                CASE AT("Continental", f3540nba)<>0
                     DO prEsiona WITH "4", "BCOCONT", vlIn+7, mcLn+1
           ENDCASE
           DO coLbln
           DO CASE
                CASE f3540mon=1
                     @vLIN+08.6,mCLN+80 Say "S/."                   Font "&mLetRom",12 Style "BT"
                     @vLIN+15.2,mCLN+93 Say "Nuevos Soles"          Font "&mLetAri",8  Style "NT"
                CASE f3540mon=2
                     @vLIN+08.6,mCLN+80 Say "US$"                   Font "&mLetRom",12 Style "BT"
                     @vLIN+15.2,mCLN+87 Say "Dólares Americanos"    Font "&mLetAri",8  Style "NT"
           ENDCASE
           @vLIN+09.8,mCLN+40.8 Say "Lugar"                       Font "&mLetAri",8  Style "NT"
           @vLIN+09.8,mCLN+57.2 Say "día"                         Font "&mLetAri",8  Style "NT"
           @vLIN+09.8,mCLN+63.0 Say "mes"                         Font "&mLetAri",8  Style "NT"
           @vLIN+09.8,mCLN+69.2 Say "año"                         Font "&mLetAri",8  Style "NT"
           @vLIN+12.9,mCLN+03.0 Say "Pague a la orden de"         Font "&mLetAri",8  Style "NT"
           @vLIN+16.5,mCLN+03.0 Say mRAZ                          Font "&mLetAri",8  Style "NT"
           @vLIN+17.8,mCLN+03.0 Say "DOI: "+mRUC                  Font "&mLetAri",8  Style "NT"
           @vLIN+19.4,mCLN+50.0 Say "Firma"                       Font "&mLetAri",8  Style "NT"
           @vLIN+20.4,mCLN+50.0 Say "Nombre(s)"                   Font "&mLetAri",9  Style "BT"
           @vLIN+20.4,mCLN+63.0 Say pNOM                          Font "&mLetRom",10 Style "NT" Size 1,44 Pict "@S46"
           DO coLblz
           @vLIN+08.6,mCLN+56.5 Say F3540DIA                      Font "&mLetRom",11 Style "NT"
           @vLIN+08.6,mCLN+62.2 Say F3540MES                      Font "&mLetRom",11 Style "NT"
           @vLIN+08.6,mCLN+68.2 Say F3540ANO                      Font "&mLetRom",11 Style "NT"
           @vLIN+12.8,mCLN+24.0 Say cNOM                          Font "&mLetRom",11 Style "NT" Size 1,60 Pict "@S62"
           @vLIN+15.1,mCLN+03.0 Say vFRA                          Font "&mLetRom",11 Style "NT" Size 1,60 Pict "@S62"
           SET COLOR TO RGB(0,0,128,205,205,255)
           @vLIN+8.6,mCLN+87 Say F3540TOT                         Font "&mLetRom",11 Style "NT" Pict "9999,999.99" Size 1,15
      CASE mpRt="1"
           @vLIN,mCLN+01 Say Space(01) Font "&mLetRom",12 Style "NT"
           DO CASE
                CASE pbAn="C"
                     STORE vlIn+2.6 TO vlIn
                     STORE -10 TO pcLn
                     STORE 2 TO pcL1
                CASE pbAn="K"
                     STORE vlIn+1.6 TO vlIn
                     STORE -10 TO pcLn
                     STORE 2 TO pcL1
                CASE pbAn="S"
                     STORE vlIn+1.6 TO vlIn
                     STORE -10 TO pcLn
                     STORE 2 TO pcL1
                OTHERWISE
                     STORE vlIn+0.6 TO vlIn
                     STORE 0 TO pcLn
                     STORE 0 TO pcL1
           ENDCASE
           @vLIN,mCLN+pCLN+52 Say F3540DIA+"  "+F3540MES+"  "+F3540ANO Font "&mLetRom",11 Style "NT"
           @vLIN,mCLN+pCL1+87 Say F3540TOT                             Font "&mLetRom",12 Style "BT" Size 1,16 Pict "9999,999.99"
           STORE vlIn+4.2 TO vlIn
           @vLIN,mCLN+07 Say cNOM Font "&mLetRom",11 Style "NT" Size 1,60 Pict "@S62"
           STORE vlIn+2.3 TO vlIn
           @vLIN,mCLN-03 Say vFRA Font "&mLetRom",11 Style "NT" Size 1,60 Pict "@S62"
           STORE vlIn+5.3 TO vlIn
           @vLIN,mCLN+52 Say pNOM Font "&mLetRom",10 Style "NT" Size 1,60 Pict "@S62"
      CASE mpRt="2"
           @vLIN,mCLN+01 Say Space(01) Font "&mLetRom",12 Style "NQ"
           DO CASE
                CASE pbAn="C"
                     STORE vlIn+2.6 TO vlIn
                     STORE -10 TO pcLn
                     STORE 2 TO pcL1
                CASE pbAn="K"
                     STORE vlIn+1.6 TO vlIn
                     STORE -10 TO pcLn
                     STORE 2 TO pcL1
                CASE pbAn="S"
                     STORE vlIn+1.6 TO vlIn
                     STORE -10 TO pcLn
                     STORE 2 TO pcL1
                OTHERWISE
                     STORE vlIn+0.6 TO vlIn
                     STORE 0 TO pcLn
                     STORE 0 TO pcL1
           ENDCASE
           @vLIN,mCLN+pCLN+52 Say F3540DIA+"  "+F3540MES+"  "+F3540ANO Font "&mLetRom",11 Style "NQ"
           @vLIN,mCLN+pCL1+87 Say F3540TOT                             Font "&mLetRom",12 Style "BQ" Size 1,16 Pict "9999,999.99"
           STORE vlIn+4.2 TO vlIn
           @vLIN,mCLN+07 Say cNOM Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S62"
           STORE vlIn+2.3 TO vlIn
           @vLIN,mCLN-03 Say vFRA Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S62"
           STORE vlIn+5.3 TO vlIn
           @vLIN,mCLN+52 Say pNOM Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S62"
 ENDCASE
ENDPROC
*
PROCEDURE Lee_3540z
 PRIVATE pcTd, pdCm, pdC1
 SELECT nuMeros
 STORE ttOt TO pcTd
 STORE pcTd-INT(pcTd) TO pdCm
 STORE INT(pcTd) TO pcTd
 STORE 00 TO pdC1
 STORE "" TO vfRa
 DO WHILE .T.
      SEEK pcTd
      IF  .NOT. EOF()
           STORE vfRa+ALLTRIM(f9998des)+" " TO vfRa
           EXIT
      ENDIF
      DO CASE
           CASE pcTd>99999
                STORE INT(pcTd/100000)*100 TO pcT1
           CASE pcTd>999
                STORE INT(pcTd/1000) TO pcT1
                IF pcT1>30
                     STORE INT(pcT1/10)*10 TO pcT1
                ENDIF
           CASE pcTd>99
                STORE INT(pcTd/100)*100 TO pcT1
           CASE pcTd>9 .AND. pcTd>30
                STORE INT(pcTd/10)*10 TO pcT1
           CASE pcTd>0
                STORE INT(pcTd) TO pcT1
           OTHERWISE
                EXIT
      ENDCASE
      SEEK pcT1
      IF  .NOT. EOF()
           STORE vfRa+ALLTRIM(f9998des)+" " TO vfRa
      ENDIF
      DO CASE
           CASE pcTd>999
                STORE pcT1*1000 TO pcT1
                STORE pcTd-pcT1 TO pcTd
                DO CASE
                     CASE pcTd<1000
                          IF UPPER(SUBSTR(vfRa, LEN(vfRa)-3, 4))="UNO "
                               STORE SUBSTR(vfRa, 1, LEN(vfRa)-04)+ ;
                                     "Un Mil " TO vfRa
                          ELSE
                               STORE vfRa+"mil " TO vfRa
                          ENDIF
                     CASE pcT1/1000=100
                          STORE SUBSTR(vfRa, 1, LEN(vfRa)-01)+"to " TO vfRa
                     CASE pcT1/1000>30 .AND. pcT1/1000<100 .AND. pcTd>999.99
                          STORE vfRa+"y " TO vfRa
                ENDCASE
           CASE pcTd>99
                STORE pcTd-pcT1 TO pcTd
                IF pcT1=100 .AND. pcTd>=1
                     STORE SUBSTR(vfRa, 1, LEN(vfRa)-01)+"to " TO vfRa
                ENDIF
           CASE pcTd>0
                STORE pcTd-pcT1 TO pcTd
                IF pcTd>=1
                     STORE vfRa+"y " TO vfRa
                ELSE
                     EXIT
                ENDIF
      ENDCASE
 ENDDO
 IF pdCm=0
      STORE vfRa+"con 00/100" TO vfRa
 ELSE
      STORE STR(pdCm*100, 2, 0) TO pdCm
      IF SUBSTR(pdCm, 1, 1)=SPACE(01)
           STORE "0"+SUBSTR(pdCm, 2, 1) TO pdCm
      ENDIF
      STORE vfRa+"con "+pdCm+"/100" TO vfRa
 ENDIF
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl
 PRIVATE pcOl, plIs, ptAb, poPc, pnUm, piN1, piN2, piN9
 STORE 99 TO mkEy
 DIMENSION plIs(2, 2)
 IF APRINTERS(plIs)=0
      STORE "No hay Impresoras instaladas..." TO mmSj
      STORE k_Esc TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DIMENSION ptAb[3]
 STORE "Letras \<Negras" TO ptAb[1]
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE 00 TO poPc, piN9
 STORE 01 TO mcOl, miPg, pnUm
 STORE 99999 TO muPg
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 SAVE SCREEN TO mpAn_prn
 DO prEsiona WITH "1", "CONFIG", pfIl, pcOl
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO nlI_0000a WITH piN1, piN2
 DO dlI_0000a WITH piN1, piN2
 @pFIL+03.2,pCOL+16 Say "Color de las Letras"   Font "&mLetRom",11 Style "BQ"
 @pFIL+10.0,pCOL+10 Say "Imprimir:"             Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           STORE PRTINFO(9) TO piN9
           IF piN9=2
                STORE "Combinación de \<Colores" TO ptAb[2]
                STORE "Letras \<Azules" TO ptAb[3]
           ELSE
                STORE "\\Combinación de Colores" TO ptAb[2]
                STORE "\\Letras Azules" TO ptAb[3]
                STORE 01 TO mcOl
           ENDIF
           @ pfIl+6, pcOl+13 TO pfIl+8.2, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+14 Get mCOL Font "&mLetAri",9  Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3]" Color RGB(0,0,0,192,192,192)
      ELSE
           @pFIL+5,pCOL+14 Get mCOL Font "&mLetAri",9  Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+08.8,pCOL+25 Get vOPC Font "&mLetRom",11 Style "BQ" Default vOPC Function "*RVT Voucher;Cheque;Cheque-Voucher" Color ,,,,,,,,,RGB(100,100,100,192,192,192) Size 1,12,.1
      @pFIL+18.5,pCOL+06 Get pOPC Font "&mLetAri",8  Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Tab .OR. poPc=1
                DO CASE
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
ENDPROC
*
