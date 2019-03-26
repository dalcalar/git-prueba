 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 STORE 0 TO mvIs
 DO ipR_0001a WITH "GS"
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0001a WITH "GS"
 DO reP_2800z
 DO fpR_0001a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rep_2800z
 PRIVATE ptAm, pnUv
 STORE 107 TO ptAm
 STORE 12 TO mcLn
 STORE 00 TO vpAg, vlIn
 SELECT deT_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+vsEr+vdOc
      IF vpAg>muPg
           EXIT
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-5
           SELECT caB_sali
           DO caB_2800z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT deT_sali
      ENDIF
      DO prD_2800z
      DO meD_2800z
      SELECT deT_sali
      DO CASE
           CASE vcTd<>0
                STORE vcTd TO vcAn
                STORE "Piezas" TO pnUv
           CASE vtPo=2
                STORE f2801pie TO vcAn
                STORE f2801nuv TO pnUv
           OTHERWISE
                STORE f2801can TO vcAn
                STORE f2801nuv TO pnUv
      ENDCASE
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN-1.5 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN-0.8 Say vCAN Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV     Font "&mLetAri",9 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+27 Say F2801COD Font "&mLetAri",9 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2801DES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
                     IF vtPo=4 .OR. vtPo=5
                          @vLIN,mCLN+103.5 Say F2801CAN Font "&mLetAri",9 Style "NQ" Size 1,19.7 Pict "99,999,999.9999"
                          @vLIN,mCLN+128.0 Say F2801NUV Font "&mLetAri",9 Style "NQ" Size 1,9    Pict "@S10"
                     ENDIF
                CASE mpRt="2"
                     IF INT(vcAn)<>vcAn
                          @vLIN,mCLN+1 Say vCAN       Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                     ELSE
                          @vLIN,mCLN+2 Say vCAN       Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                     ENDIF
                     @vLIN,mCLN+17 Say pNUV         Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
                     @vLIN,mCLN+27 Say F2801COD     Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
                     @vLIN,mCLN+44 Say F2801DES     Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S80"
                     IF vtPo=4 .OR. vtPo=5
                          @vLIN,mCLN+115 Say F2801CAN Font "&mLetRom",10 Style "NQ" Size 1,18 Pict "99,999,999.9999"
                          @vLIN,mCLN+132 Say F2801NUV Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
                     ENDIF
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_sali
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE vlIn+0.2 TO vlIn
           DO it1_2800z
           STORE vlIn+2.0 TO vlIn
      ELSE
           SELECT seR_sali
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF()
                STORE vlIn+0.2 TO vlIn
                DO it2_2800z
                STORE vlIn+2.0 TO vlIn
           ENDIF
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT deT_sali
      SKIP
 ENDDO
 STORE vlIn-1 TO vlIn
 SELECT caB_sali
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF vlIn>mpAg-5
      DO caB_2700z
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                IF INT(tcAn)<>tcAn
                     @vLIN,mCLN-1.5 Say tCAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN-0.8 Say tCAN Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "999,999"
                ENDIF
           CASE mpRt="2"
                IF INT(tcAn)<>tcAn
                     @vLIN,mCLN+1 Say tCAN   Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,mCLN+2 Say tCAN   Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
      ENDCASE
 ENDIF
 DO paG_0000a WITH ptAm
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cab_2800z
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
      @vLIN,mCLN Say "GUÍA DE SALIDA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 ENDIF
 STORE vlIn+2 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.6 TO vlIn
 IF vpAg=1
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     DO CASE
                          CASE LEN(ALLTRIM(f2800cm1))<>0
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+21  Say F2800NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+86  Say F2800PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+100 Say "Fecha:" Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+110 Say F2800FEM Font "&mLetRom",11 Style "NQ"
                          OTHERWISE
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+11  Say F2800NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+86  Say F2800PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+100 Say "Fecha:" Font "&mLetRom",11 Style "BQ"
                               @vLIN,mCLN+110 Say F2800FEM Font "&mLetRom",11 Style "NQ"
                     ENDCASE
                CASE mpRt="2"
                     DO CASE
                          CASE LEN(ALLTRIM(f2800cm1))<>0
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+21  Say F2800NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+86  Say F2800PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+113 Say "Fecha:" Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+123 Say F2800FEM Font "&mLetRom",11 Style "NQ"
                          OTHERWISE
                               @vLIN,mCLN     Say "Tipo:"  Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+11  Say F2800NTI Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+75  Say "Pedido:"Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+86  Say F2800PED Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+113 Say "Fecha:" Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+123 Say F2800FEM Font "&mLetRom",11 Style "NQ"
                     ENDCASE
           ENDCASE
      ENDIF
      IF LEN(ALLTRIM(f2800cm1))<>0
           STORE vlIn+1.4 TO vlIn
           IF vpAg>=miPg .AND. vpAg<=muPg
                DO CASE
                     CASE mpRt="1"
                          @vLIN,mCLN    Say "Observaciones:" Font "&mLetRom",11 Style "BQ"
                          @vLIN,mCLN+21 Say F2800CM1         Font "&mLetRom",11 Style "NQ"
                     CASE mpRt="2"
                          @vLIN,mCLN    Say "Observaciones:" Font "&mLetRom",11 Style "NQ"
                          @vLIN,mCLN+21 Say F2800CM1         Font "&mLetRom",11 Style "NQ"
                ENDCASE
           ENDIF
      ENDIF
      STORE vlIn+0.8 TO vlIn
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO liN_0000a WITH ptAm, vlIn
      ENDIF
      STORE vlIn+1.4 TO vlIn
 ENDIF
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN    Say "Cantidad"    Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+17 Say "Unidad"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+27 Say "Código"      Font "&mLetAri",9 Style "BQ"
                @vLIN,mCLN+44 Say "Descripción" Font "&mLetAri",9 Style "BQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say "Cantidad"    Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+17 Say "Unidad"      Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+27 Say "Código"      Font "&mLetRom",10 Style "NQ"
                @vLIN,mCLN+44 Say "Descripción" Font "&mLetRom",10 Style "NQ"
      ENDCASE
 ENDIF
 STORE vlIn+0.4 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO liN_0000a WITH ptAm, vlIn
 ENDIF
 STORE vlIn+1.8 TO vlIn
ENDPROC
*
PROCEDURE It1_2800z
 PRIVATE plL1, plL2, plL3, puL1, puL2, puL3
 STORE 05 TO puL2
 STORE 14 TO vcLn
 STORE 03 TO puL1, puL3
 STORE 01 TO plL1, plL2, plL3
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2802tdo+ ;
    f2802ser+f2802doc+ALLTRIM(f2802cod)+"*"
      IF f2802opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>puL1 .OR. plL2>puL2 .OR. plL3>puL3
           STORE vlIn+1.2 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 14 TO vcLn
           IF vlIn>mpAg-5
                SELECT caB_sali
                DO caB_2800z
                SELECT itE_sali
           ENDIF
      ENDIF
      DO CASE
           CASE vtPo=5
                IF vpAg>=miPg .AND. vpAg<=muPg
                     DO CASE
                          CASE f2802un1="M"
                               @vLIN,mCLN+vCLN+3.0 Say F2802MLA       Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f2802un1="P"
                               @vLIN,mCLN+vCLN+0.0 Say F2802P11       Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                               @vLIN,mCLN+vCLN+5.4 Say '"'            Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f2802p12)<>"/"
                                    @vLIN,mCLN+vCLN+6.6 Say F2802P12    Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+14.6 Say "x"                   Font "&mLetRom",11 Style "NQ" Size 1,1
                     DO CASE
                          CASE f2802un2="M"
                               @vLIN,mCLN+vCLN+18.5 Say F2802MAN      Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f2802un2="P"
                               @vLIN,mCLN+vCLN+16.7 Say F2802P21      Font "&mLetRom",11 Style "NQ" Size 1,5 Pict "999"
                               @vLIN,mCLN+vCLN+22.7 Say '"'           Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f2802p22)<>"/"
                                    @vLIN,mCLN+vCLN+23.7 Say F2802P22   Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+31 Say "= ["+Str(F2802CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F2802MLA                     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "= ["+Str(F2802CTD,4,0)+"]"  Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+21 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F2802MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "NQ" Size 1,1
                     @vLIN,mCLN+vCLN+18.5 Say F2802MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+31.0 Say "= ["+Str(F2802CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+45 TO vcLn
                STORE plL3+1 TO plL3
           CASE vtPo=11
                IF vpAg>=miPg .AND. vpAg<=muPg
                     @vLIN,mCLN+vCLN+03.0 Say F2802CA1                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+06.0 Say F2802MLA                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+14.6 Say "x"                         Font "&mLetRom",11 Style "BQ" Size 1,1
                     @vLIN,mCLN+vCLN+18.5 Say F2802CA2                    Font "&mLetRom",11 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+21.5 Say F2802MAN                    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+30.1 Say "= ["+Str(F2802CTD,4,0)+"]" Font "&mLetRom",11 Style "NQ"
                ENDIF
                STORE vcLn+45 TO vcLn
                STORE plL1+1 TO plL1
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE It2_2800z
 STORE 01 TO vnUm
 STORE 17 TO vcLn
 DO WHILE  .NOT. EOF() .AND. f2803tdo+f2803ser+f2803doc+ALLTRIM(f2803cod)+ ;
    "*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF vlIn>mpAg-5
           SELECT caB_sali
           DO caB_2800z
           SELECT seR_sali
      ENDIF
      IF vnUm=5
           STORE 01 TO vnUm
           STORE 17 TO vcLn
           STORE vlIn+1.2 TO vlIn
      ENDIF
      IF vpAg>=miPg .AND. vpAg<=muPg
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+vCLN      Say F2803PED Font "&mLetAri",9 Style "NQ" Size 1,7.5
                     @vLIN,mCLN+vCLN+07.8 Say "-"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+09.3 Say F2803SEC Font "&mLetAri",9 Style "NQ" Size 1,4.5
                     @vLIN,mCLN+vCLN+14.1 Say ":"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+15.3 Say F2803PLA Font "&mLetAri",9 Style "NQ" Size 1,7 Pict "9999"
                     STORE vcLn+25 TO vcLn
                CASE mpRt="2"
                     @vLIN,mCLN+vCLN      Say F2803PED Font "&mLetAri",9 Style "NQ" Size 1,6
                     @vLIN,mCLN+vCLN+08.0 Say "-"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+10.0 Say F2803SEC Font "&mLetAri",9 Style "NQ" Size 1,4
                     @vLIN,mCLN+vCLN+14.0 Say ":"      Font "&mLetAri",9 Style "BQ"
                     @vLIN,mCLN+vCLN+16.0 Say F2803PLA Font "&mLetAri",9 Style "NQ" Size 1,7 Pict "9999"
                     STORE vcLn+33 TO vcLn
           ENDCASE
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vnUm+1 TO vnUm
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Prd_2800z
 SELECT deT_sali
 STORE f2801cod TO vcOd
 DO pr1_2700z IN PAI2700Z
 SELECT deT_sali
 DO CASE
      CASE f2801la1=0 .AND. f2801la2=0 .AND. f2801an1=0 .AND. f2801an2=0  ;
           .AND. vtPo=10
      CASE (f2801la1=0 .OR. f2801an1=0) .AND. (vtPo=2 .AND. f2801med=1)
      CASE (f2801la2=0 .OR. f2801an2=0) .AND. (vtPo=2 .AND. f2801med=2)
      CASE vtPo=2 .AND. f2801med=1
           STORE ALLTRIM(STR(f2801la1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2801an1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. f2801med=2
           STORE ALLTRIM(STR(f2801la2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2801an2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
 ENDCASE
ENDPROC
*
PROCEDURE Med_2800z
 STORE 00 TO vcTd
 SELECT itE_sali
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2802tdo+ ;
    f2802ser+f2802doc+ALLTRIM(f2802cod)+"*"
      IF f2802opc="S"
           SKIP
           LOOP
      ENDIF
      IF (vtPo>=4 .AND. vtPo<=9 .AND. vtPo<>6)
           STORE vcTd+f2802ctd TO vcTd
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
