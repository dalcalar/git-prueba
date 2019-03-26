 PARAMETER ptPo
 PRIVATE ptAm
 = INKEY(0.01)
 SELECT caB_ped
 STORE 99 TO mkEy
 STORE 00 TO mvIs
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina IN PVI1200Z
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO coLbln
 SELECT caB_ped
 SEEK vtDo+vsEr+vdOc
 STORE f1200mon TO vmOn
 STORE f1200tot TO ttOt
 STORE 00 TO tvAl, tpSo, vlIn, vpAg
 STORE 107 TO ptAm
 STORE 10 TO mcLn
 DO siG_1300z IN FAC0000A WITH vmOn
 DO reP_1200z
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Cab_1200z
 DO coL_prt
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BQI"
                     OTHERWISE
                          @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "NQI"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BQI"
                     OTHERWISE
                          @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "NQI"
                ENDCASE
      ENDCASE
 ENDIF
 DO coL_prt
 STORE vlIn+4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN Say "PEDIDO No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
                     OTHERWISE
                          @vLIN,mCLN Say "PEDIDO No."+vSER+"-"+vDOC Font "&mLetAri",14 Style "NQ"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN Say "PEDIDO No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
                     OTHERWISE
                          @vLIN,mCLN Say "PEDIDO No."+vSER+"-"+vDOC Font "&mLetSwi",14 Style "NQ"
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
ENDPROC
*
PROCEDURE Rep_1200z
 PRIVATE ptMn, ptM1, ptM2, plEt, pcL1, pcL2
 DO CASE
      CASE vgRa=1
           STORE 10 TO ptMn
           STORE 9 TO ptM1
           STORE 9 TO ptM2
           STORE 13 TO pcL1
           STORE 18 TO pcL2
           STORE mlEtswi TO plEt
      CASE vgRa=2
           STORE 12 TO ptMn
           STORE 12 TO ptM1
           STORE 10 TO ptM2
           STORE 15 TO pcL1
           STORE 22 TO pcL2
           STORE mlEtrom TO plEt
 ENDCASE
 DO caB_1200z
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN     Say "Nombre"    Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+021 Say ":"         Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+023 Say F1200NOM    Font "&mLetAri",pTMN Style "NQ" Pict "@S40" Size 1,40
                          @vLIN,mCLN+107 Say "Fecha"     Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+117 Say ":"         Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+119 Say F1200FEM    Font "&mLetAri",pTMN Style "NQ"
                     OTHERWISE
                          @vLIN,mCLN     Say "Nombre"    Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+021 Say ":"         Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+023 Say F1200NOM    Font "&mLetAri",pTMN Style "NQ" Pict "@S40" Size 1,40
                          @vLIN,mCLN+107 Say "Fecha"     Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"         Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+119 Say F1200FEM    Font "&mLetAri",pTMN Style "NQ"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN        Say "Nombre" Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+pCL1   Say ":"      Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+pCL1+2 Say F1200NOM Font "&mLetAri",pTMN Style "NQ" Pict "@S40" Size 1,40
                          @vLIN,mCLN+112    Say "Fecha"  Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+122    Say ":"      Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+124    Say F1200FEM Font "&mLetAri",pTMN Style "NQ"
                     OTHERWISE
                          @vLIN,mCLN        Say "Nombre" Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+pCL1   Say ":"      Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+pCL1+2 Say F1200NOM Font "&mLetAri",pTMN Style "NQ" Pict "@S40" Size 1,40
                          @vLIN,mCLN+112    Say "Fecha"  Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122    Say ":"      Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+124    Say F1200FEM Font "&mLetAri",pTMN Style "NQ"
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE mpRt="1"
           DO CASE
                CASE vbOr=1 .OR. vbOr=3
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+21 Say ":" Font "&mLetAri",pTMN Style "BQ"
                     ENDIF
                     DO CASE
                          CASE LEN(ALLTRIM(f1200lug))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)+", "+AllTrim(F1200DEP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          CASE LEN(ALLTRIM(f1200dir))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          OTHERWISE
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)                        Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                               STORE vlIn+1.4 TO vlIn
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+21 Say ":"                                                             Font "&mLetAri",pTMN Style "BQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                     ENDCASE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+107 Say "R.U.C." Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"      Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+119 Say F1200RUC Font "&mLetRom",12   Style "NQ"
                     ENDIF
                OTHERWISE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+21 Say ":" Font "&mLetAri",pTMN Style "NQ"
                     ENDIF
                     DO CASE
                          CASE LEN(ALLTRIM(f1200lug))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)+", "+AllTrim(F1200DEP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          CASE LEN(ALLTRIM(f1200dir))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          OTHERWISE
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)                        Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                               STORE vlIn+1.4 TO vlIn
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN    Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+21 Say ":"                                                             Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+23 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                     ENDCASE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+107 Say "R.U.C." Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"      Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+119 Say F1200RUC Font "&mLetRom",12   Style "NQ"
                     ENDIF
           ENDCASE
      CASE mpRt="2"
           DO CASE
                CASE vbOr=1 .OR. vbOr=3
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+pCL1 Say ":" Font "&mLetAri",pTMN Style "BQ"
                     ENDIF
                     DO CASE
                          CASE LEN(ALLTRIM(f1200lug))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)+", "+AllTrim(F1200DEP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          CASE LEN(ALLTRIM(f1200dir))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          OTHERWISE
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)                        Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                               STORE vlIn+1.4 TO vlIn
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1   Say ":"                                                             Font "&mLetAri",pTMN Style "BQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                     ENDCASE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+112 Say "R.U.C." Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122 Say ":"      Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+124 Say F1200RUC Font "&mLetRom",12   Style "NQ"
                     ENDIF
                OTHERWISE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+pCL1+2 Say ":" Font "&mLetAri",pTMN Style "NQ"
                     ENDIF
                     DO CASE
                          CASE LEN(ALLTRIM(f1200lug))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)+", "+AllTrim(F1200DEP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          CASE LEN(ALLTRIM(f1200dir))=0
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                          OTHERWISE
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "Dirección"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200DIR)+", "+AllTrim(F1200DIS)                        Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                               STORE vlIn+1.4 TO vlIn
                               IF vpAg>=miPg .AND. vpAg<=muPg
                                    @vLIN,mCLN        Say "L.Entrega"                                                     Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1   Say ":"                                                             Font "&mLetAri",pTMN Style "NQ"
                                    @vLIN,mCLN+pCL1+2 Say AllTrim(F1200LUG)+", "+AllTrim(F1200LUD)+", "+AllTrim(F1200LUP) Font "&mLetRom",12   Style "NQ" Pict "@S100" Size 1,100
                               ENDIF
                     ENDCASE
                     IF vpAg>=miPg .AND. vpAg<=muPg
                          @vLIN,mCLN+112 Say "R.U.C." Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122 Say ":"      Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+124 Say F1200RUC Font "&mLetRom",12   Style "NQ"
                     ENDIF
           ENDCASE
 ENDCASE
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+21  Say ":"             Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+23  Say F1200CM1        Font "&mLetRom",12   Style "NQ"
                          @vLIN,mCLN+107 Say "Vend"          Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"             Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+119 Say F1200NVE        Font "&mLetRom",12   Style "NQ" Size 1,16 Pict "@S18"
                     OTHERWISE
                          @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+21  Say ":"             Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+23  Say F1200CM1        Font "&mLetRom",12   Style "NQ"
                          @vLIN,mCLN+107 Say "Vend"          Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"             Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+119 Say F1200NVE        Font "&mLetRom",12   Style "NQ" Size 1,16 Pict "@S18"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN        Say "Observaciones" Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+pCL2   Say ":"             Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+pCL2+2 Say F1200CM1        Font "&mLetRom",12   Style "NQ"
                          @vLIN,mCLN+112    Say "Vend"          Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122    Say ":"             Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+124    Say F1200NVE        Font "&mLetRom",12   Style "NQ" Size 1,16 Pict "@S18"
                     OTHERWISE
                          @vLIN,mCLN        Say "Observaciones" Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+pCL2   Say ":"             Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+pCL2+2 Say F1200CM1        Font "&mLetRom",12   Style "NQ"
                          @vLIN,mCLN+112    Say "Vend"          Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122    Say ":"             Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+124    Say F1200NVE        Font "&mLetRom",12   Style "NQ" Size 1,16 Pict "@S18"
                ENDCASE
      ENDCASE
 ENDIF
 IF LEN(ALLTRIM(f1200cm2))<>0
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+23     Say F1200CM2 Font "&mLetRom",12 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN+pCL2+2 Say F1200CM2 Font "&mLetRom",12 Style "NQ"
           ENDCASE
      ENDIF
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF f1200tit<>SPACE(04) .AND. f1200tit<>"0000"
      STORE f1200tit TO xtIt
      SELECT clIentes
      SEEK xtIt
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     DO CASE
                          CASE vbOr=1 .OR. vbOr=3
                               @vLIN,mCLN    Say "Titular"          Font "&mLetAri",pTMN Style "NQ"
                               @vLIN,mCLN+21 Say ":"                Font "&mLetAri",pTMN Style "BQ"
                               @vLIN,mCLN+23 Say xTIT+": "+F1101NOM Font "&mLetRom",12   Style "NQ"
                          OTHERWISE
                               @vLIN,mCLN    Say "Titular"          Font "&mLetAri",pTMN Style "NQ"
                               @vLIN,mCLN+21 Say ":"                Font "&mLetAri",pTMN Style "NQ"
                               @vLIN,mCLN+23 Say xTIT+": "+F1101NOM Font "&mLetRom",12   Style "NQ"
                     ENDCASE
                CASE mpRt="2"
                     DO CASE
                          CASE vbOr=1 .OR. vbOr=3
                               @vLIN,mCLN        Say "Titular"          Font "&mLetAri",pTMN Style "NQ"
                               @vLIN,mCLN+pCL2   Say ":"                Font "&mLetAri",pTMN Style "BQ"
                               @vLIN,mCLN+pCL2+2 Say xTIT+": "+F1101NOM Font "&mLetRom",12   Style "NQ"
                          OTHERWISE
                               @vLIN,mCLN        Say "Titular"          Font "&mLetAri",pTMN Style "NQ"
                               @vLIN,mCLN+pCL2   Say ":"                Font "&mLetAri",pTMN Style "NQ"
                               @vLIN,mCLN+pCL2+2 Say xTIT+": "+F1101NOM Font "&mLetRom",12   Style "NQ"
                     ENDCASE
           ENDCASE
      ENDIF
      SELECT caB_ped
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN+107 Say "F.Pag"     Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"         Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+119 Say F1200NFP    Font "&mLetRom",12   Style "NQ"
                     OTHERWISE
                          @vLIN,mCLN+107 Say "F.Pag"     Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+117 Say ":"         Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+119 Say F1200NFP    Font "&mLetRom",12   Style "NQ"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN+112 Say "F.Pag"     Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122 Say ":"         Font "&mLetAri",pTMN Style "BQ"
                          @vLIN,mCLN+124 Say F1200NFP    Font "&mLetRom",12   Style "NQ"
                     OTHERWISE
                          @vLIN,mCLN+112 Say "F.Pag"     Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+122 Say ":"         Font "&mLetAri",pTMN Style "NQ"
                          @vLIN,mCLN+124 Say F1200NFP    Font "&mLetRom",12   Style "NQ"
                ENDCASE
      ENDCASE
 ENDIF
 IF vgRa=2
      STORE vlIn+0.3 TO vlIn
 ENDIF
 IF vbOr<3 .AND. (voPp=2 .OR. voPp=4)
      STORE vlIn+1.5 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     DO CASE
                          CASE vbOr=1
                               @vLIN,mCLN Say "Pedido (cálculos sólo Boleta)" Font "&mLetAri",pTM1 Style "NT"
                          OTHERWISE
                               @vLIN,mCLN Say "Pedido (cálculos sólo Boleta)" Font "&mLetAri",pTM1 Style "NT"
                     ENDCASE
                CASE mpRt="2"
                     DO CASE
                          CASE vbOr=1
                               @vLIN,mCLN Say "Pedido (cálculos sólo Boleta)" Font "&mLetAri",pTM1 Style "NT"
                          OTHERWISE
                               @vLIN,mCLN Say "Pedido (cálculos sólo Boleta)" Font "&mLetAri",pTM1 Style "NT"
                     ENDCASE
           ENDCASE
      ENDIF
 ENDIF
 DO cvI_1200z
 SELECT deT_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3
           DO caB_1200z
      ENDIF
      DO prD_1200z
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+10.0 Say F1201CAN                   Font "&mLetAri",pTM1 Style "NQ" Pict "999,999.9999" Size 1,17
                     @vLIN,mCLN+16.5 Say F1201NUV                   Font "&mLetAri",pTM1 Style "NQ"
                     @vLIN,mCLN+27.0 Say F1201COD                   Font "&mLetAri",pTM1 Style "NQ" Size 1,15 Pict "@S20"
                     @vLIN,mCLN+44.0 Say AllTrim(F1201DCR)+" "+cLAR Font "&mLetAri",pTM1 Style "NQ" Size 1,80 Pict "@S80"
                     DO CASE
                          CASE voPp=2
                               IF f1201pre<>0
                                    @vLIN,mCLN+126.6 Say F1201PRE       Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.9999" Size 1,19
                               ENDIF
                               IF f1201to2<>0
                                    @vLIN,mCLN+143.5 Say F1201TO2       Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99"   Size 1,16
                               ENDIF
                          CASE voPp=3
                               @vLIN,mCLN+126.6    Say vPES*F1201CAN  Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99"   Size 1,16
                          CASE voPp=4
                               @vLIN,mCLN+109.7    Say vPES*F1201CAN  Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99"   Size 1,16
                               IF f1201pre<>0
                                    @vLIN,mCLN+126.6 Say F1201PRE       Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.9999" Size 1,19
                               ENDIF
                               IF f1201to2<>0
                                    @vLIN,mCLN+143.5 Say F1201TO2       Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99"   Size 1,16
                               ENDIF
                     ENDCASE
                CASE mpRt="2"
                     DO CASE
                          CASE vgRa=1
                               @vLIN,mCLN+2 Say F1201CAN Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                          CASE vgRa=2
                               @vLIN,mCLN   Say F1201CAN Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                     ENDCASE
                     @vLIN,mCLN+16 Say F1201NUV                   Font "&pLET",pTM1 Style "NQ"
                     @vLIN,mCLN+27 Say F1201COD                   Font "&pLET",pTM1 Style "NQ" Size 1,15 Pict "@S20"
                     @vLIN,mCLN+44 Say AllTrim(F1201DCR)+" "+cLAR Font "&pLET",pTM1 Style "NQ" Size 1,80 Pict "@S80"
                     DO CASE
                          CASE voPp=2
                               IF f1201pre<>0
                                    DO CASE
                                         CASE vgRa=1
                                              @vLIN,mCLN+115 Say F1201PRE Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                                         CASE vgRa=2
                                              @vLIN,mCLN+113 Say F1201PRE Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                                    ENDCASE
                               ENDIF
                               IF f1201to2<>0
                                    @vLIN,mCLN+131 Say F1201TO2 Font "&pLET",pTM1 Style "NQ" Pict "999,999.99"   Size 1,13
                               ENDIF
                          CASE voPp=3
                               @vLIN,mCLN+115 Say vPES*F1201CAN Font "&pLET",pTM1 Style "NQ" Pict "999,999.99"   Size 1,13
                          CASE voPp=4
                               @vLIN,mCLN+99  Say vPES*F1201CAN Font "&pLET",pTM1 Style "NQ" Pict "999,999.99"   Size 1,13
                               IF f1201pre<>0
                                    DO CASE
                                         CASE vgRa=1
                                              @vLIN,mCLN+115 Say F1201PRE Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                                         CASE vgRa=2
                                              @vLIN,mCLN+113 Say F1201PRE Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                                    ENDCASE
                               ENDIF
                               IF f1201to2<>0
                                    @vLIN,mCLN+131 Say F1201TO2 Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                               ENDIF
                     ENDCASE
           ENDCASE
      ENDIF
      STORE tvAl+f1201to2 TO tvAl
      STORE tpSo+(vpEs*f1201can) TO tpSo
      SELECT itE_ped
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_ped
           SKIP
           IF  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
                STORE vlIn+1.3 TO vlIn
                IF vgRa=2
                     STORE vlIn+0.2 TO vlIn
                ENDIF
           ENDIF
           LOOP
      ENDIF
      SELECT itE_ped
      GOTO TOP
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE vlIn+1.3 TO vlIn
           DO itE_1200z
      ENDIF
      SELECT deT_ped
      SKIP
 ENDDO
 SELECT caB_ped
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 DO CASE
      CASE voPp=3
           STORE vlIn+1.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          DO CASE
                               CASE vbOr=1 .OR. vbOr=3
                                    @vLIN,mCLN+123.6 Say tPSO Font "&mLetAri",pTM1 Style "BQ" Pict "9999,999.99" Size 1,16
                               OTHERWISE
                                    @vLIN,mCLN+126.6 Say tPSO Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          ENDCASE
                     CASE mpRt="2"
                          DO CASE
                               CASE vbOr=1 .OR. vbOr=3
                                    @vLIN,mCLN+112.8 Say tPSO Font "&pLET",pTM1 Style "BQ" Pict "999,999.99"  Size 1,13
                               OTHERWISE
                                    @vLIN,mCLN+115.8 Say tPSO Font "&pLET",pTM1 Style "NQ" Pict "999,999.99"  Size 1,13
                          ENDCASE
                ENDCASE
           ENDIF
      CASE voPp=2 .OR. voPp=4
           STORE vlIn+1.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          DO CASE
                               CASE vbOr=1 .OR. vbOr=3
                                    IF voPp=4
                                         @vLIN,mCLN+44 Say "Peso:"       Font "&mLetAri",pTM1 Style "BQ"
                                         @vLIN,mCLN+51 Say tPSO          Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    ENDIF
                                    @vLIN,mCLN+069.0 Say "Sub-Total:"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+092.0 Say tVAL          Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    @vLIN,mCLN+101.5 Say "Dcto.:"      Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+119.5 Say tVAL-F1200TOT Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    @vLIN,mCLN+128.0 Say vSIG          Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+143.5 Say F1200TOT      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                               OTHERWISE
                                    IF voPp=4
                                         @vLIN,mCLN+44 Say "Peso:"       Font "&mLetAri",pTM1 Style "NQ"
                                         @vLIN,mCLN+51 Say tPSO          Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    ENDIF
                                    @vLIN,mCLN+069.0 Say "Sub-Total:"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+092.0 Say tVAL          Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    @vLIN,mCLN+101.5 Say "Dcto.:"      Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+119.5 Say tVAL-F1200TOT Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    @vLIN,mCLN+128.0 Say vSIG          Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+143.5 Say F1200TOT      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          ENDCASE
                     CASE mpRt="2"
                          DO CASE
                               CASE vbOr=1 .OR. vbOr=3
                                    IF voPp=4
                                         @vLIN,mCLN+41 Say "Peso:"       Font "&pLET",pTM1 Style "NQ"
                                         @vLIN,mCLN+48 Say tPSO          Font "&pLET",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    ENDIF
                                    @vLIN,mCLN+066 Say "Sub-Total:"    Font "&pLET",pTM1 Style "NQ"
                                    @vLIN,mCLN+082 Say tVAL            Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                                    @vLIN,mCLN+098 Say "Dcto.:"        Font "&pLET",pTM1 Style "NQ"
                                    @vLIN,mCLN+108 Say tVAL-F1200TOT   Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                                    @vLIN,mCLN+124 Say vSIG            Font "&pLET",pTM1 Style "BQ"
                                    @vLIN,mCLN+131 Say F1200TOT        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                               OTHERWISE
                                    IF voPp=4
                                         @vLIN,mCLN+41 Say "Peso:"       Font "&pLET",pTM1 Style "NQ"
                                         @vLIN,mCLN+48 Say tPSO          Font "&pLET",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                                    ENDIF
                                    @vLIN,mCLN+066 Say "Sub-Total:"    Font "&pLET",pTM1 Style "NQ"
                                    @vLIN,mCLN+082 Say tVAL            Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                                    @vLIN,mCLN+098 Say "Dcto.:"        Font "&pLET",pTM1 Style "NQ"
                                    @vLIN,mCLN+108 Say tVAL-F1200TOT   Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                                    @vLIN,mCLN+124 Say vSIG            Font "&pLET",pTM1 Style "NQ"
                                    @vLIN,mCLN+131 Say F1200TOT        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          ENDCASE
                ENDCASE
           ENDIF
 ENDCASE
 IF vbOr>2 .OR. (voPp<>2 .AND. voPp<>4)
      RETURN
 ENDIF
 STORE vlIn+2.2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN Say "Descripción Factura/Boleta (Cálculos sólo Factura)" Font "&mLetAri",pTM1 Style "NT"
                     OTHERWISE
                          @vLIN,mCLN Say "Descripción Factura/Boleta (Cálculos sólo Factura)" Font "&mLetAri",pTM1 Style "NT"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN Say "Descripción Factura/Boleta (Cálculos sólo Factura)" Font "&mLetAri",pTM1 Style "NT"
                     OTHERWISE
                          @vLIN,mCLN Say "Descripción Factura/Boleta (Cálculos sólo Factura)" Font "&mLetAri",pTM1 Style "NT"
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN+004.0 Say "Cantidad"     Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+016.5 Say "Unidad"       Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+027.0 Say "Descripción"  Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+122.0 Say "V.V.Unit"     Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+137.0 Say "V.V.Total"    Font "&mLetAri",pTM1 Style "BQ"
                     OTHERWISE
                          @vLIN,mCLN+004.0 Say "Cantidad"     Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+016.5 Say "Unidad"       Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+027.0 Say "Descripción"  Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+122.0 Say "V.V.Unit"     Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+137.0 Say "V.V.Total"    Font "&mLetAri",pTM1 Style "NQ"
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          DO CASE
                               CASE vgRa=1
                                    @vLIN,mCLN+4 Say "Cantidad" Font "&mLetAri",pTM2 Style "BQ"
                               CASE vgRa=2
                                    @vLIN,mCLN+3 Say "Cantidad" Font "&mLetAri",pTM2 Style "BQ"
                          ENDCASE
                          @vLIN,mCLN+016.5 Say "Unidad"       Font "&mLetAri",pTM2 Style "BQ"
                          @vLIN,mCLN+027.0 Say "Descripción"  Font "&mLetAri",pTM2 Style "BQ"
                          @vLIN,mCLN+116.5 Say "V.V.Unit"     Font "&mLetAri",pTM2 Style "BQ"
                          @vLIN,mCLN+131.0 Say "V.V.Total"    Font "&mLetAri",pTM2 Style "BQ"
                     OTHERWISE
                          DO CASE
                               CASE vgRa=1
                                    @vLIN,mCLN+4 Say "Cantidad" Font "&mLetAri",pTM2 Style "BQ"
                               CASE vgRa=2
                                    @vLIN,mCLN+3 Say "Cantidad" Font "&mLetAri",pTM2 Style "BQ"
                          ENDCASE
                          @vLIN,mCLN+016.5 Say "Unidad"       Font "&mLetAri",pTM2 Style "NQ"
                          @vLIN,mCLN+027.0 Say "Descripción"  Font "&mLetAri",pTM2 Style "NQ"
                          @vLIN,mCLN+116.5 Say "V.V.Unit"     Font "&mLetAri",pTM2 Style "NQ"
                          @vLIN,mCLN+131.0 Say "V.V.Total"    Font "&mLetAri",pTM2 Style "NQ"
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
 SELECT deT_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 00 TO tvAl
 DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vlIn>mpAg-3
           DO caB_1200z
      ENDIF
      DO prD_1200z
      DO CASE
           CASE vtPo=2
                STORE f1201pie TO vcAn
           OTHERWISE
                STORE f1201can TO vcAn
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     IF vcAn=1 .AND. f1201to1=0
                     ELSE
                          IF INT(vcAn)<>vcAn
                               @vLIN,mCLN+10 Say vCAN                 Font "&mLetAri",pTM1 Style "NQ" Pict "999,999.9999" Size 1,17
                          ELSE
                               @vLIN,mCLN+06 Say vCAN                 Font "&mLetAri",pTM1 Style "NQ" Pict "999,999"      Size 1,12
                          ENDIF
                          @vLIN,mCLN+16.5 Say F1201NUV              Font "&mLetAri",pTM1 Style "NQ" Pict "@S10"         Size 1,9
                     ENDIF
                     @vLIN,mCLN+27 Say AllTrim(F1201DCR)+" "+cLAR Font "&mLetAri",pTM1 Style "NQ" Pict "@S60" Size 1,60
                     IF f1201pr1<>0
                          @vLIN,mCLN+126.6 Say F1201PR1             Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.9999" Size 1,19
                     ENDIF
                     IF f1201to1<>0
                          @vLIN,mCLN+143.5 Say F1201TO1             Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99"   Size 1,16
                     ENDIF
                CASE mpRt="2"
                     IF vcAn=1 .AND. f1201to1=0
                     ELSE
                          DO CASE
                               CASE vgRa=1
                                    IF INT(vcAn)<>vcAn
                                         @vLIN,mCLN+2 Say vCAN Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                                    ELSE
                                         @vLIN,mCLN+1 Say vCAN Font "&pLET",pTM1 Style "NQ" Pict "999,999"      Size 1,9
                                    ENDIF
                               CASE vgRa=2
                                    IF INT(vcAn)<>vcAn
                                         @vLIN,mCLN   Say vCAN Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                                    ELSE
                                         @vLIN,mCLN-1 Say vCAN Font "&pLET",pTM1 Style "NQ" Pict "999,999"      Size 1,9
                                    ENDIF
                          ENDCASE
                          @vLIN,mCLN+16 Say F1201NUV Font "&pLET",pTM1 Style "NQ" Pict "@S10"         Size 1,9
                     ENDIF
                     @vLIN,mCLN+27 Say AllTrim(F1201DCR)+" "+cLAR Font "&pLET",pTM1 Style "NQ" Pict "@S60" Size 1,60
                     IF f1201pr1<>0
                          DO CASE
                               CASE vgRa=1
                                    @vLIN,mCLN+115 Say F1201PR1 Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                               CASE vgRa=2
                                    @vLIN,mCLN+113 Say F1201PR1 Font "&pLET",pTM1 Style "NQ" Pict "999,999.9999" Size 1,15
                          ENDCASE
                     ENDIF
                     IF f1201to1<>0
                          @vLIN,mCLN+131 Say F1201TO1 Font "&pLET",pTM1 Style "NQ" Pict "9999,999.99"   Size 1,13
                     ENDIF
           ENDCASE
      ENDIF
      STORE tvAl+f1201to1 TO tvAl
      SKIP
      IF  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+vsEr+vdOc
           STORE vlIn+1.2 TO vlIn
           IF vgRa=2
                STORE vlIn+0.2 TO vlIn
           ENDIF
      ENDIF
 ENDDO
 DO leE_1300z IN FAC0000A
 IF vmOn=1
      STORE vfRa+" Soles" TO vfRa
 ELSE
      STORE vfRa+" Dolares Americanos" TO vfRa
 ENDIF
 SELECT caB_ped
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN+024.5 Say "V.V.:"       Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+040.5 Say tVAL          Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+049.5 Say "Dcto:"       Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+066.5 Say tVAL-F1200NET Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+075.0 Say "Neto:"       Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+092.0 Say F1200NET      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+101.5 Say "I.G.V.:"     Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+119.5 Say F1200IGV      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+128.0 Say vSIG          Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+143.5 Say F1200TOT      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                     OTHERWISE
                          @vLIN,mCLN+024.5 Say "V.V.:"       Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+040.5 Say tVAL          Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+049.5 Say "Dcto:"       Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+066.5 Say tVAL-F1200NET Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+075.0 Say "Neto:"       Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+092.0 Say F1200NET      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+101.5 Say "I.G.V.:"     Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+119.5 Say F1200IGV      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                          @vLIN,mCLN+128.0 Say vSIG          Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+143.5 Say F1200TOT      Font "&mLetAri",pTM1 Style "NQ" Pict "9999,999.99" Size 1,16
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN+032 Say "V.V.:"         Font "&pLET",pTM1 Style "NQ"
                          @vLIN,mCLN+040 Say tVAL            Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+060 Say "Dcto:"         Font "&pLET",pTM1 Style "NQ"
                          @vLIN,mCLN+069 Say tVAL-F1200NET   Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+086 Say vSIG            Font "&pLET",pTM1 Style "BQ"
                          @vLIN,mCLN+095 Say F1200NET        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+113 Say F1200IGV        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+131 Say F1200TOT        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                     OTHERWISE
                          @vLIN,mCLN+032 Say "V.V.:"         Font "&pLET",pTM1 Style "NQ"
                          @vLIN,mCLN+040 Say tVAL            Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+060 Say "Dcto:"         Font "&pLET",pTM1 Style "NQ"
                          @vLIN,mCLN+069 Say tVAL-F1200NET   Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+086 Say vSIG            Font "&pLET",pTM1 Style "NQ"
                          @vLIN,mCLN+095 Say F1200NET        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+113 Say F1200IGV        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                          @vLIN,mCLN+131 Say F1200TOT        Font "&pLET",pTM1 Style "NQ" Pict "999,999.99" Size 1,13
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say "Son: "+vFRA Font "&mLetAri",8 Style "NQ" Pict "@S100" Size 1,100
           CASE mpRt="2"
                @vLIN,mCLN Say "Son: "+vFRA Font "&mLetAri",8 Style "NQ" Pict "@S100" Size 1,100
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE Cvi_1200z
 PRIVATE ptMn, ptM1, plEt
 DO CASE
      CASE vgRa=1
           STORE 10 TO ptMn
           STORE 9 TO ptM1
           STORE mlEtswi TO plEt
      CASE vgRa=2
           STORE 12 TO ptMn
           STORE 10 TO ptM1
           STORE mlEtrom TO plEt
 ENDCASE
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          @vLIN,mCLN+04.0 Say "Cantidad"    Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+16.5 Say "Unidad"      Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+27.0 Say "Código"      Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+44.0 Say "Descripción" Font "&mLetAri",pTM1 Style "BQ"
                          DO CASE
                               CASE voPp=2
                                    @vLIN,mCLN+121.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+135.5 Say "Prec.Total" Font "&mLetAri",pTM1 Style "BQ"
                               CASE voPp=3
                                    @vLIN,mCLN+119.0 Say "Peso Item"  Font "&mLetAri",pTM1 Style "BQ"
                               CASE voPp=4
                                    @vLIN,mCLN+107.5 Say "Peso Item"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+121.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+135.5 Say "Prec.Total" Font "&mLetAri",pTM1 Style "BQ"
                          ENDCASE
                     OTHERWISE
                          @vLIN,mCLN+04.0 Say "Cantidad"    Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+16.5 Say "Unidad"      Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+27.0 Say "Código"      Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+44.0 Say "Descripción" Font "&mLetAri",pTM1 Style "NQ"
                          DO CASE
                               CASE voPp=2
                                    @vLIN,mCLN+121.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+135.5 Say "Prec.Total" Font "&mLetAri",pTM1 Style "NQ"
                               CASE voPp=3
                                    @vLIN,mCLN+119.0 Say "Peso Item"  Font "&mLetAri",pTM1 Style "NQ"
                               CASE voPp=4
                                    @vLIN,mCLN+107.5 Say "Peso Item"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+121.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+135.5 Say "Prec.Total" Font "&mLetAri",pTM1 Style "NQ"
                          ENDCASE
                ENDCASE
           CASE mpRt="2"
                DO CASE
                     CASE vbOr=1 .OR. vbOr=3
                          DO CASE
                               CASE vgRa=1
                                    @vLIN,mCLN+4 Say "Cantidad" Font "&mLetAri",pTM1 Style "BQ"
                               CASE vgRa=2
                                    @vLIN,mCLN+3 Say "Cantidad" Font "&mLetAri",pTM1 Style "BQ"
                          ENDCASE
                          @vLIN,mCLN+16.5 Say "Unidad"        Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+27.0 Say "Código"        Font "&mLetAri",pTM1 Style "BQ"
                          @vLIN,mCLN+44.0 Say "Descripción"   Font "&mLetAri",pTM1 Style "BQ"
                          DO CASE
                               CASE voPp=2
                                    @vLIN,mCLN+115.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+130.0 Say "Prec.Total" Font "&mLetAri",pTM1 Style "BQ"
                               CASE voPp=3
                                    @vLIN,mCLN+113.7 Say "Peso Item"  Font "&mLetAri",pTM1 Style "BQ"
                               CASE voPp=4
                                    @vLIN,mCLN+098.0 Say "Peso Item"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+115.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "BQ"
                                    @vLIN,mCLN+130.0 Say "Prec.Total" Font "&mLetAri",pTM1 Style "BQ"
                          ENDCASE
                     OTHERWISE
                          DO CASE
                               CASE vgRa=1
                                    @vLIN,mCLN+4 Say "Cantidad" Font "&mLetAri",pTM1 Style "BQ"
                               CASE vgRa=2
                                    @vLIN,mCLN+3 Say "Cantidad" Font "&mLetAri",pTM1 Style "BQ"
                          ENDCASE
                          @vLIN,mCLN+16.5 Say "Unidad"        Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+27.0 Say "Código"        Font "&mLetAri",pTM1 Style "NQ"
                          @vLIN,mCLN+44.0 Say "Descripción"   Font "&mLetAri",pTM1 Style "NQ"
                          DO CASE
                               CASE voPp=2
                                    @vLIN,mCLN+115.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+130.0 Say "Prec.Total" Font "&mLetAri",pTM1 Style "NQ"
                               CASE voPp=3
                                    @vLIN,mCLN+113.7 Say "Peso Item"  Font "&mLetAri",pTM1 Style "NQ"
                               CASE voPp=4
                                    @vLIN,mCLN+098.0 Say "Peso Item"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+115.0 Say "Prec.Unit"  Font "&mLetAri",pTM1 Style "NQ"
                                    @vLIN,mCLN+130.0 Say "Prec.Total" Font "&mLetAri",pTM1 Style "NQ"
                          ENDCASE
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Prd_1200z
 SELECT deT_ped
 STORE f1201cod TO vcOd
 DO pr1_1300z IN FAC0000A
 SELECT deT_ped
 DO CASE
      CASE f1201lar=0 .AND. f1201la1=0 .AND. f1201la2=0 .AND. f1201la3=0  ;
           .AND. f1201la4=0 .AND. f1201la5=0 .AND. f1201la6=0 .AND.  ;
           f1201la7=0 .AND. f1201la8=0 .AND. f1201la9=0 .AND. f1201anc=0  ;
           .AND. f1201an1=0 .AND. f1201an2=0 .AND. f1201an3=0 .AND.  ;
           f1201an4=0 .AND. f1201an5=0 .AND. f1201an6=0 .AND. f1201an7=0  ;
           .AND. f1201an8=0 .AND. f1201an9=0 .AND. f1201alt=0 .AND.  ;
           f1201al1=0 .AND. f1201al2=0 .AND. f1201al3=0 .AND. f1201al4=0  ;
           .AND. f1201al5=0 .AND. f1201al6=0 .AND. f1201al7=0 .AND.  ;
           f1201al8=0 .AND. f1201al9=0 .AND. f1201an1=0 .AND. vtPo=10
      CASE (f1201la1=0 .OR. f1201an1=0) .AND. (vtPo=2 .AND. f1201med=1)
      CASE (f1201la2=0 .OR. f1201an2=0) .AND. (vtPo=2 .AND. f1201med=2)
      CASE vtPo=2 .AND. f1201med=1
           STORE ALLTRIM(STR(f1201la1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f1201an1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. f1201med=2
           STORE ALLTRIM(STR(f1201la2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f1201an2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=10
           STORE "" TO caNc, clAr
           SELECT prOductos
           IF f2111ser=1
                SELECT deT_ped
                IF f1201lar<>0
                     STORE ALLTRIM(STR(f1201lar, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la1<>0
                     STORE ALLTRIM(STR(f1201la1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la2<>0
                     STORE ALLTRIM(STR(f1201la2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la3<>0
                     STORE ALLTRIM(STR(f1201la3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la4<>0
                     STORE ALLTRIM(STR(f1201la4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la5<>0
                     STORE ALLTRIM(STR(f1201la5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la6<>0
                     STORE ALLTRIM(STR(f1201la6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la7<>0
                     STORE ALLTRIM(STR(f1201la7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la8<>0
                     STORE ALLTRIM(STR(f1201la8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201la9<>0
                     STORE ALLTRIM(STR(f1201la9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201anc<>0
                     STORE ALLTRIM(STR(f1201anc, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an1<>0
                     STORE ALLTRIM(STR(f1201an1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an2<>0
                     STORE ALLTRIM(STR(f1201an2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an3<>0
                     STORE ALLTRIM(STR(f1201an3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an4<>0
                     STORE ALLTRIM(STR(f1201an4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an5<>0
                     STORE ALLTRIM(STR(f1201an5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an6<>0
                     STORE ALLTRIM(STR(f1201an6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an7<>0
                     STORE ALLTRIM(STR(f1201an7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an8<>0
                     STORE ALLTRIM(STR(f1201an8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201an9<>0
                     STORE ALLTRIM(STR(f1201an9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201alt<>0
                     STORE ALLTRIM(STR(f1201alt, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al1<>0
                     STORE ALLTRIM(STR(f1201al1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al2<>0
                     STORE ALLTRIM(STR(f1201al2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al3<>0
                     STORE ALLTRIM(STR(f1201al3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al4<>0
                     STORE ALLTRIM(STR(f1201al4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al5<>0
                     STORE ALLTRIM(STR(f1201al5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al6<>0
                     STORE ALLTRIM(STR(f1201al6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al7<>0
                     STORE ALLTRIM(STR(f1201al7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al8<>0
                     STORE ALLTRIM(STR(f1201al8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1201al9<>0
                     STORE ALLTRIM(STR(f1201al9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE caNc TO clAr
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Med_1200z
 STORE 00 TO vcTd
 SELECT itE_ped
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1202tdo+ ;
    f1202ser+f1202doc+ALLTRIM(f1202cod)+"*"
      IF f1202opc="S"
           SKIP
           LOOP
      ENDIF
      IF (vtPo>=4 .AND. vtPo<=9 .AND. vtPo<>6)
           STORE vcTd+f1202ctd TO vcTd
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Ite_1200z
 PRIVATE plL1, plL2, plL3
 STORE 00 TO vcTd
 STORE 18 TO vcLn
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1202tdo+ ;
    f1202ser+f1202doc+ALLTRIM(f1202cod)+"*"
      IF f1202opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 18 TO vcLn
           IF vlIn>mpAg-3
                DO caB_1200z
           ENDIF
      ENDIF
      DO CASE
           CASE vtPo=5
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE f1202un1="M"
                               @vLIN,mCLN+vCLN+3.0 Say F1202MLA       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f1202un1="P"
                               @vLIN,mCLN+vCLN+0.0 Say F1202P11       Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                               @vLIN,mCLN+vCLN+5.4 Say '"'            Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f1202p12)<>"/"
                                    @vLIN,mCLN+vCLN+6.6 Say F1202P12    Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+14.6 Say "x"                   Font "&mLetRom",11 Style "NQ" Size 1,1
                     DO CASE
                          CASE f1202un2="M"
                               @vLIN,mCLN+vCLN+18.5 Say F1202MAN      Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f1202un2="P"
                               @vLIN,mCLN+vCLN+16.7 Say F1202P21      Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                               @vLIN,mCLN+vCLN+22.7 Say '"'           Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f1202p22)<>"/"
                                    @vLIN,mCLN+vCLN+23.7 Say F1202P22   Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F1202CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcTd+f1202ctd TO vcTd
                STORE vcLn+50 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F1202MLA                     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "= ["+Str(F1202CTD,4,0)+"]"  Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcTd+f1202ctd TO vcTd
                STORE vcLn+21 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F1202MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "NQ" Size 1,1
                     @vLIN,mCLN+vCLN+18.5 Say F1202MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F1202CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcTd+f1202ctd TO vcTd
                STORE vcLn+45 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F1202CA1                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+06.0 Say F1202MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "BQ" Size 1,1
                     @vLIN,mCLN+vCLN+18.5 Say F1202CA2                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+21.5 Say F1202MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+30.1 Say "= ["+Str(F1202CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcTd+f1202ctd TO vcTd
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      SKIP
 ENDDO
 IF (plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3)
      STORE vlIn+1.4 TO vlIn
      STORE 01 TO plL1, plL2, plL3
      STORE 18 TO vcLn
      IF vlIn>mpAg-3
           DO caB_1200z
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           @vLIN,mCLN+vCLN Say "Total cortes= "+AllTrim(Str(vCTD,6,0)) Font "&mLetRom",11 Style "NQ"
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
 STORE 01 TO miPg, pnUm, vbOr, vgRa
 IF ptPo="2"
      STORE 01 TO voPp
 ELSE
      STORE 02 TO voPp
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
 @ pfIl+08.4, pcOl+03 TO pfIl+8.4, pcOl+54.4
 @pFIL+03.1,pCOL+28 Say "Desde Pág:"  Font "&mLetRom",11 Style "BQ"
 @pFIL+04.7,pCOL+28 Say "Hasta Pág.:" Font "&mLetRom",11 Style "BQ"
 @pFIL+06.2,pCOL+28 Say "Letra:"      Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"  Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG          Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+9.0 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.1,pCOL+4.5 Say "COLOR DE LETRAS"       Font "&mLetAri",8  Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_2
           @ pfIl+4.1, pcOl+4.5 TO pfIl+8.4, pcOl+26 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+4.2,pCOL+5 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+4.2,pCOL+5 Get mCOL Font "&mLetAri",8 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+03.1,pCOL+44 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+04.7,pCOL+44 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+06.2,pCOL+38 Get vGRA Font "&mLetAri",9 Style "NQ" Default vGRA Function "*RVT Normal;Grande"                                                 Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,0,192,192,192)
      @pFIL+08.8,pCOL+05 Get vBOR Font "&mLetAri",9 Style "NQ" Default vBOR Function "*RVT Original (F/B);Borrador (F/B);Original Simple;Borrador Simple" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(130,0,0,192,192,192)
      IF ptPo="2"
           @pFIL+8.8,pCOL+32 Get vOPP Font "&mLetAri",9 Style "NQ" Default vOPP Function "*RVT Solo Cantidades;\\Cantid.y Precios;Cantid.y Pesos;\\Cant/Pesos/Prec" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,130,0,192,192,192)
      ELSE
           @pFIL+8.8,pCOL+32 Get vOPP Font "&mLetAri",9 Style "NQ" Default vOPP Function "*RVT Solo Cantidades;Cantid.y Precios;Cantid.y Pesos;Cant/Pesos/Prec"     Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,130,0,192,192,192)
      ENDIF
      @pFIL+18.4,pCOL+06 Get pOPC Font "&mLetAri",8 Style "NQ" Function "*TH Aceptar;Cancelar;Vista Preliminar" Size 1.55,14,1.4
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
