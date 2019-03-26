 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 STORE 0 TO mvIs
 DO ipR_0001a WITH "PE"
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "PE"
 DO coLbln
 SELECT caBecera
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 00 TO vpAg, vlIn, ttOt
 DO CASE
      CASE miMp=1 .AND. mcIa="MO"
           DO rp1_2910z
      CASE miMp=1 .AND. (mcIa="NP" .OR. mcIa="NV" .OR. mcIa="NM")
           DO rp4_2910z
      CASE miMp=1
           DO rp2_2910z
      OTHERWISE
           DO rp3_2910z
 ENDCASE
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rp1_2910z
 PRIVATE ptAm, pnUv
 DO CASE
      CASE mvIs=0
           STORE 97 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=1
           STORE 97 TO ptAm
           STORE 20 TO mcLn
 ENDCASE
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           SELECT caBecera
           DO cb1_2910z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT deTalle
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN       Say F2911COD Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+019.0 Say F2911CDG Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+038.0 Say F2911DCR Font "&mLetRom",10 Style "NQ" Size 1,51 Pict "@S53"
                     @vLIN,mCLN+090.0 Say F2911NUC Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "@S18"
                     @vLIN,mCLN+107.6 Say F2911CAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9,999,999.99"
                     @vLIN,mCLN+123.8 Say F2911PRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     @vLIN,mCLN+140.0 Say F2911TOT Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                CASE mpRt="1"
                     @vLIN,mCLN     Say F2911COD Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13  Say F2911CDG Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+35  Say F2911DCR Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     @vLIN,mCLN+77  Say F2911NUC Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN Font "&mLetRom",10 Style "NQ" Pict "9,999,999.99" Size 1,13.8
                     @vLIN,mCLN+112 Say F2911PRE Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,13.8
                     @vLIN,mCLN+129 Say F2911TOT Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,13.8
                CASE mpRt="2"
                     @vLIN,mCLN     Say F2911COD Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13  Say F2911CDG Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+35  Say F2911DCR Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     @vLIN,mCLN+77  Say F2911NUC Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN Font "&mLetRom",10 Style "NQ" Pict "9,999,999.99" Size 1,13.8
                     @vLIN,mCLN+112 Say F2911PRE Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,13.8
                     @vLIN,mCLN+129 Say F2911TOT Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,13.8
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE ttOt+f2911tot TO ttOt
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caBecera
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+100 Say "TOTAL AMOUNT" Font "&mLetRom",10 Style "BQ" Size 1,18
                @vLIN,mCLN+127 Say F2910SIG       Font "&mLetRom",10 Style "BQ" Size 1,5
                @vLIN,mCLN+134 Say tTOT           Font "&mLetRom",10 Style "BQ" Pict "9,999,999.9999" Size 1,17.4
           CASE mpRt="1"
                @vLIN,mCLN+085 Say "TOTAL AMOUNT" Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG       Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT           Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
           CASE mpRt="2"
                @vLIN,mCLN+085 Say "TOTAL AMOUNT" Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG       Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT           Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cb1_2910z
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mvIs=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     RETURN
                CASE mkEy=k_F10
                     DO reTorna
           ENDCASE
      ENDIF
 ENDIF
 DO caB_0002a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "ORDER "+Substr(vDOC,1,4)+"-"+Substr(vDOC,5,3) Font "&mLetRom",14 Style "BQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Supplier"                           Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"                                  Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say AllTrim(F2910NOM)+"  ("+F2910PRV+")" Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Supplier"                           Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"                                  Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say AllTrim(F2910NOM)+"  ("+F2910PRV+")" Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Supplier"                           Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"                                  Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say AllTrim(F2910NOM)+"  ("+F2910PRV+")" Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Term"          Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Term"          Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Term"          Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Shipment Date" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FEM        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Shipment Date" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FEM        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Shipment Date" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FEM        Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Incoterm"      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE f2910tpo=1
                          @vLIN,mCLN+25 Say "FOB"   Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=2
                          @vLIN,mCLN+25 Say "CFR"   Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=3
                          @vLIN,mCLN+25 Say "CIF"   Font "&mLetRom",12 Style "NQ"
                ENDCASE
           CASE mpRt="1"
                @vLIN,mCLN    Say "Incoterm"      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE f2910tpo=1
                          @vLIN,mCLN+25 Say "FOB"   Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=2
                          @vLIN,mCLN+25 Say "CFR"   Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=3
                          @vLIN,mCLN+25 Say "CIF"   Font "&mLetRom",12 Style "NQ"
                ENDCASE
           CASE mpRt="2"
                @vLIN,mCLN    Say "Incoterm"      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE f2910tpo=1
                          @vLIN,mCLN+25 Say "FOB"   Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=2
                          @vLIN,mCLN+25 Say "CFR"   Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=3
                          @vLIN,mCLN+25 Say "CIF"   Font "&mLetRom",12 Style "NQ"
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say "Moblandino" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+020.0 Say "Supplier"   Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+132.0 Say "Unit"       Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+147.5 Say "Total"      Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Moblandino"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+16  Say "Supplier"     Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+109 Say "Unit"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+127 Say "Total"        Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Moblandino"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+16  Say "Supplier"     Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+109 Say "Unit"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+127 Say "Total"        Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN     Say "Code"         Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+20  Say "Code"         Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+38  Say "Description"  Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+92  Say "Unit"         Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+117 Say "Qty"          Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+131 Say "Price"        Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+148 Say "Price"        Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Code"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+16  Say "Code"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+35  Say "Description"  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+77  Say "Unit"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+92  Say "Qty"          Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+109 Say "Price"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+127 Say "Price"        Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Code"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+16  Say "Code"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+35  Say "Description"  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+77  Say "Unit"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+92  Say "Qty"          Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+109 Say "Price"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+127 Say "Price"        Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Rp2_2910z
 DO CASE
      CASE mvIs=0
           STORE 97 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=1
           STORE 97 TO ptAm
           STORE 20 TO mcLn
 ENDCASE
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           SELECT caBecera
           DO cb2_2910z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT deTalle
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN       Say F2911COD Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+019.0 Say F2911CDG Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+038.0 Say F2911DCR Font "&mLetRom",10 Style "NQ" Size 1,51 Pict "@S53"
                     @vLIN,mCLN+090.0 Say F2911NUC Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "@S18"
                     @vLIN,mCLN+107.6 Say F2911CAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9,999,999.99"
                     @vLIN,mCLN+123.8 Say F2911PRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     @vLIN,mCLN+140.0 Say F2911TOT Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                CASE mpRt="1"
                     @vLIN,mCLN     Say F2911COD Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13  Say F2911CDG Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+38  Say F2911DCR Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     @vLIN,mCLN+85  Say F2911NUC Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+113 Say F2911PRE Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+130 Say F2911TOT Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                CASE mpRt="2"
                     @vLIN,mCLN     Say F2911COD Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13  Say F2911CDG Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+38  Say F2911DCR Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     @vLIN,mCLN+85  Say F2911NUC Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+113 Say F2911PRE Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+130 Say F2911TOT Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
           ENDCASE
      ENDIF
      STORE ttOt+f2911tot TO ttOt
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caBecera
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+100 Say "TOTAL AMOUNT" Font "&mLetRom",10 Style "BQ" Size 1,18
                @vLIN,mCLN+127 Say F2910SIG       Font "&mLetRom",10 Style "BQ" Size 1,5
                @vLIN,mCLN+134 Say tTOT           Font "&mLetRom",10 Style "BQ" Pict "9,999,999.9999" Size 1,17.4
           CASE mpRt="1"
                @vLIN,mCLN+085 Say "TOTAL AMOUNT" Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG       Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT           Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
           CASE mpRt="2"
                @vLIN,mCLN+085 Say "TOTAL AMOUNT" Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG       Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT           Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cb2_2910z
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mvIs=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     RETURN
                CASE mkEy=k_F10
                     DO reTorna
           ENDCASE
      ENDIF
 ENDIF
 DO caB_0002a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "ORDER "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Supplier" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"        Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910NOM   Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Supplier" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"        Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910NOM   Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Supplier" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"        Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910NOM   Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Term"   Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FPA Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Term"   Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FPA Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Term"   Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"      Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FPA Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Shipment Date" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FEM        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Shipment Date" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FEM        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Shipment Date" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+25 Say F2910FEM        Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Incoterm"     Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"            Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE f2910tpo=1
                          @vLIN,mCLN+25 Say "FOB"  Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=2
                          @vLIN,mCLN+25 Say "CFR"  Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=3
                          @vLIN,mCLN+25 Say "CIF"  Font "&mLetRom",12 Style "NQ"
                ENDCASE
           CASE mpRt="1"
                @vLIN,mCLN    Say "Incoterm"     Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"            Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE f2910tpo=1
                          @vLIN,mCLN+25 Say "FOB"  Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=2
                          @vLIN,mCLN+25 Say "CFR"  Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=3
                          @vLIN,mCLN+25 Say "CIF"  Font "&mLetRom",12 Style "NQ"
                ENDCASE
           CASE mpRt="2"
                @vLIN,mCLN    Say "Incoterm"     Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+23 Say ":"            Font "&mLetRom",12 Style "BQ"
                DO CASE
                     CASE f2910tpo=1
                          @vLIN,mCLN+25 Say "FOB"  Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=2
                          @vLIN,mCLN+25 Say "CFR"  Font "&mLetRom",12 Style "NQ"
                     CASE f2910tpo=3
                          @vLIN,mCLN+25 Say "CIF"  Font "&mLetRom",12 Style "NQ"
                ENDCASE
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+19  Say "Supplier"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+148 Say "Total"       Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN+13  Say "Supplier"    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+134 Say "Total"       Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN+13  Say "Supplier"    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+134 Say "Total"       Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN     Say "Code"        Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+19  Say "Code"        Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+38  Say "Description" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+90  Say "Unit"        Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+117 Say "Qty"         Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+131 Say "Price"       Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+148 Say "Price"       Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Code"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Code"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+38  Say "Description" Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+85  Say "Unit"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+97  Say "Qty"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+115 Say "Price"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+135 Say "Price"       Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Code"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Code"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+38  Say "Description" Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+85  Say "Unit"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+97  Say "Qty"         Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+115 Say "Price"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+135 Say "Price"       Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Rp3_2910z
 DO CASE
      CASE mvIs=0
           STORE 97 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=1
           STORE 97 TO ptAm
           STORE 20 TO mcLn
 ENDCASE
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           SELECT caBecera
           DO cb3_2910z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT deTalle
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN    Say F2911COD Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+19 Say F2911CDG Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     DO CASE
                          CASE vsW3=1
                               @vLIN,mCLN+38 Say F2911DES Font "&mLetRom",10 Style "NQ" Size 1,51 Pict "@S53"
                          CASE vsW3=2
                               @vLIN,mCLN+38 Say F2911DCR Font "&mLetRom",10 Style "NQ" Size 1,51 Pict "@S53"
                     ENDCASE
                     @vLIN,mCLN+090.0 Say F2911NUC Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "@S18"
                     @vLIN,mCLN+107.6 Say F2911CAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9,999,999.99"
                     @vLIN,mCLN+123.8 Say F2911PRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     @vLIN,mCLN+140.0 Say F2911TOT Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                CASE mpRt="1"
                     @vLIN,mCLN    Say F2911COD Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13 Say F2911CDG Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     DO CASE
                          CASE vsW3=1
                               @vLIN,mCLN+38 Say F2911DES Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                          CASE vsW3=2
                               @vLIN,mCLN+38 Say F2911DCR Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     ENDCASE
                     @vLIN,mCLN+85  Say F2911NUC Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+113 Say F2911PRE Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+130 Say F2911TOT Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                CASE mpRt="2"
                     @vLIN,mCLN    Say F2911COD Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13 Say F2911CDG Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     DO CASE
                          CASE vsW3=1
                               @vLIN,mCLN+38 Say F2911DES Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                          CASE vsW3=2
                               @vLIN,mCLN+38 Say F2911DCR Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     ENDCASE
                     @vLIN,mCLN+85  Say F2911NUC Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+113 Say F2911PRE Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+130 Say F2911TOT Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
           ENDCASE
      ENDIF
      STORE ttOt+f2911tot TO ttOt
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caBecera
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+112 Say "TOTAL"  Font "&mLetRom",10 Style "BQ" Size 1,8
                @vLIN,mCLN+127 Say F2910SIG Font "&mLetRom",10 Style "BQ" Size 1,5
                @vLIN,mCLN+134 Say tTOT     Font "&mLetRom",10 Style "BQ" Pict "9,999,999.9999" Size 1,17.4
           CASE mpRt="1"
                @vLIN,mCLN+085 Say "TOTAL"  Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT     Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
           CASE mpRt="2"
                @vLIN,mCLN+085 Say "TOTAL"  Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT     Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cb3_2910z
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mvIs=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     RETURN
                CASE mkEy=k_F10
                     DO reTorna
           ENDCASE
      ENDIF
 ENDIF
 DO caB_0002a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "ORDEN DE COMPRA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Proveedor" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"         Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910NOM    Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Proveedor" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"         Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910NOM    Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Proveedor" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"         Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910NOM    Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Fecha de Entrega" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"                Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FEM           Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Fecha de Entrega" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"                Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FEM           Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Fecha de Entrega" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"                Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FEM           Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say "Código"      Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+019.0 Say "Código"      Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+038.0 Say "Descripción" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+129.0 Say "Precio"      Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+146.5 Say "Precio"      Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Código"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Código"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+38  Say "Descripción"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+117 Say "Precio"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+134 Say "Precio"        Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Código"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Código"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+38  Say "Descripción"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+117 Say "Precio"        Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+134 Say "Precio"        Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN     Say "Interno"   Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+19  Say "Proveedor" Font "&mLetRom",11 Style "BQ"
                DO CASE
                     CASE vsW3=1
                          @vLIN,mCLN+38 Say "Interna"   Font "&mLetRom",11 Style "BQ"
                     CASE vsW3=2
                          @vLIN,mCLN+38 Say "Proveedor" Font "&mLetRom",11 Style "BQ"
                ENDCASE
                @vLIN,mCLN+90  Say "Unidad"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+111 Say "Cantidad"  Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+127 Say "Unitario"  Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+148 Say "Total"     Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Interno"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Proveedor" Font "&mLetRom",11 Style "NQ"
                DO CASE
                     CASE vsW3=1
                          @vLIN,mCLN+38 Say "Interna"   Font "&mLetRom",11 Style "NQ"
                     CASE vsW3=2
                          @vLIN,mCLN+38 Say "Proveedor" Font "&mLetRom",11 Style "NQ"
                ENDCASE
                @vLIN,mCLN+85  Say "Und"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+94  Say "Cantidad"  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+115 Say "Unitario"  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+135 Say "Total"     Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Interno"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Proveedor" Font "&mLetRom",11 Style "NQ"
                DO CASE
                     CASE vsW3=1
                          @vLIN,mCLN+38 Say "Interna"   Font "&mLetRom",11 Style "NQ"
                     CASE vsW3=2
                          @vLIN,mCLN+38 Say "Proveedor" Font "&mLetRom",11 Style "NQ"
                ENDCASE
                @vLIN,mCLN+85  Say "Und"       Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+94  Say "Cantidad"  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+115 Say "Unitario"  Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+135 Say "Total"     Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE Rp4_2910z
 DO CASE
      CASE mvIs=0
           STORE 97 TO ptAm
           STORE 12 TO mcLn
      CASE mvIs=1
           STORE 97 TO ptAm
           STORE 20 TO mcLn
 ENDCASE
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      IF mkEy=k_F10 .AND. mvIs=1
           DO reTorna
      ENDIF
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           SELECT caBecera
           DO cb4_2910z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT deTalle
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           STORE f2911cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           STORE f2111nuc TO vnUc
           SELECT deTalle
           DO CASE
                CASE mvIs=1
                     @vLIN,mCLN       Say F2911COD Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+019.0 Say F2911CDG Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "@S15"
                     @vLIN,mCLN+038.0 Say F2911DES Font "&mLetRom",10 Style "NQ" Size 1,51 Pict "@S53"
                     @vLIN,mCLN+090.0 Say vNUC     Font "&mLetRom",10 Style "NQ" Size 1,16 Pict "@S18"
                     @vLIN,mCLN+107.6 Say F2911CAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "9,999,999.99"
                     @vLIN,mCLN+123.8 Say F2911PRE Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     @vLIN,mCLN+140.0 Say F2911TOT Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                CASE mpRt="1"
                     @vLIN,mCLN     Say F2911COD      Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13  Say F2911CDG      Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+38  Say F2911DES      Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     @vLIN,mCLN+85  Say vNUC          Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+113 Say F2911PRE      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+130 Say F2911TOT      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                CASE mpRt="2"
                     @vLIN,mCLN     Say F2911COD      Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+13  Say F2911CDG      Font "&mLetRom",10 Style "NQ" Pict "@S15" Size 1,15
                     @vLIN,mCLN+38  Say F2911DES      Font "&mLetRom",10 Style "NQ" Pict "@S80" Size 1,80
                     @vLIN,mCLN+85  Say vNUC          Font "&mLetRom",10 Style "NQ"
                     @vLIN,mCLN+95  Say F2911CAN      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+113 Say F2911PRE      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
                     @vLIN,mCLN+130 Say F2911TOT      Font "&mLetRom",10 Style "NQ" Pict "999,999.9999" Size 1,12.8
           ENDCASE
      ENDIF
      STORE ttOt+f2911tot TO ttOt
      STORE vlIn+1.3 TO vlIn
      SKIP
 ENDDO
 SELECT caBecera
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.6 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN+112 Say "TOTAL"  Font "&mLetRom",10 Style "BQ" Size 1,8
                @vLIN,mCLN+127 Say F2910SIG Font "&mLetRom",10 Style "BQ" Size 1,5
                @vLIN,mCLN+134 Say tTOT     Font "&mLetRom",10 Style "BQ" Pict "9,999,999.9999" Size 1,17.4
           CASE mpRt="1"
                @vLIN,mCLN+085 Say "TOTAL"  Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT     Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
           CASE mpRt="2"
                @vLIN,mCLN+085 Say "TOTAL"  Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+110 Say F2910SIG Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+128 Say tTOT     Font "&mLetRom",10 Style "NQ" Pict "9,999,999.9999" Size 1,13.8
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cb4_2910z
 IF vpAg<>0
      DO paG_0000a WITH ptAm
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mvIs=1 .AND. vpAg>=miPg .AND. vpAg<=muPg
           mkEy = INKEY(0, "HM")
           DO CASE
                CASE mkEy=k_Esc
                     RETURN
                CASE mkEy=k_F10
                     DO reTorna
           ENDCASE
      ENDIF
 ENDIF
 DO caB_0002a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      @vLIN,mCLN Say "ORDEN DE COMPRA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Proveedor" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"         Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910NOM    Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Proveedor" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"         Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910NOM    Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Proveedor" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"         Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910NOM    Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"             Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FPA        Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN    Say "Fecha de Entrega" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"                Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FEM           Font "&mLetRom",12 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN    Say "Fecha de Entrega" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"                Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FEM           Font "&mLetRom",12 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Fecha de Entrega" Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+24 Say ":"                Font "&mLetRom",12 Style "BQ"
                @vLIN,mCLN+26 Say F2910FEM           Font "&mLetRom",12 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN       Say "Código"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+019.0 Say "Código"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+129.0 Say "Precio"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+146.5 Say "Precio"    Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Código"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Código"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+117 Say "Precio"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+134 Say "Precio"      Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Código"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Código"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+117 Say "Precio"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+134 Say "Precio"      Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+1.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mvIs=1
                @vLIN,mCLN     Say "Interno"     Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+19  Say "Proveedor"   Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+38  Say "Descripción" Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+90  Say "Unidad"      Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+111 Say "Cantidad"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+127 Say "Unitario"    Font "&mLetRom",11 Style "BQ"
                @vLIN,mCLN+148 Say "Total"       Font "&mLetRom",11 Style "BQ"
           CASE mpRt="1"
                @vLIN,mCLN     Say "Interno"     Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Proveedor"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+38  Say "Descripción" Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+85  Say "Unidad"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+94  Say "Cantidad"    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+115 Say "Unitario"    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+135 Say "Total"       Font "&mLetRom",11 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN     Say "Interno"     Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+13  Say "Proveedor"   Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+38  Say "Descripción" Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+85  Say "Unidad"      Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+94  Say "Cantidad"    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+115 Say "Unitario"    Font "&mLetRom",11 Style "NQ"
                @vLIN,mCLN+135 Say "Total"       Font "&mLetRom",11 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH ptAm, vlIn
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
