*
PROCEDURE Fac_1300z
 PARAMETER pcIi
 PUBLIC puNi, pdIr, prEa, pdOc
 STORE 0 TO prEa
 DO diR_1300z IN FAC0000A
 DO deT_1300z IN FAC0000A WITH "1"
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 @0,0 Say " " Font "&mLetSwi",10 Style "NQ"
 DO CASE
      CASE pcIi="1"
           DO fa1_1300z
      CASE pcIi="2" .AND. vsEr="002"
           DO fa2_1300z_2
      CASE (pcIi$"25" .AND. vsEr="001")
           DO fa5_1300z_1
 ENDCASE
 RELEASE puNi, pdIr, prEa, pdOc
ENDPROC
*
PROCEDURE Fa1_1300z
 @vLIN,mCLN+019.0 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136.0 Say pDOC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.7 TO vlIn
 @vLIN,mCLN+022.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+022.0 Say pDIR Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+022.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+082.0 Say vCM1 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.0 Say vVEN Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+08 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+07 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+20    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      @vLIN,mCLN+32 Say F1301DCR   Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118.8 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+139.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+32.0 Say mFR1        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+32.0 Say mFR2        Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+32.0 Say "@"         Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+32.0 Say "@"         Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 STORE tvAl*(1+(f1300pig/100)) TO prEa
 @vLIN,mCLN+015 Say vFRA+" S.E.u.O."             Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+012 Say "IGV:"+Str(F1300PIG,2,0)+"%" Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+040 Say tVAL                         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+070 Say F1300NET-tVAL                Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+100 Say F1300IGV                     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say F1300TOT                     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+131 Say vSIG                         Font "&mLetRom",11 Style "NQ"
ENDPROC
*
PROCEDURE Fa2_1300z_2
 @vLIN,mCLN+09.5 Say vFEM Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1 Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say pDIR Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+79.0 Say pDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.5 Say vCM2 Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+84.0 Say vCM6 Font "&mLetRom",10 Style "BQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.8 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+3.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+2.9 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      @vLIN,mCLN+25 Say F1301DCR    Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+125.4 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+142.9 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+25.0 Say mFR1          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+25.0 Say mFR2          Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+25.0 Say "@"           Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+25.0 Say "@"           Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 STORE tvAl*(1+(f1300pig/100)) TO prEa
 @vLIN,mCLN+012 Say pREA              Font "&mLetAri",8  Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+053 Say tVAL              Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+116 Say F1300IGV          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+132 Say vSIG              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+141 Say F1300TOT          Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+1.9 TO vlIn
 @vLIN,mCLN+53.2 Say vFRA+" S.E.u.O." Font "&mLetAri",10 Style "NQ" Size 1,100 Pict "@S100"
ENDPROC
*
PROCEDURE Fa5_1300z_1
 @vLIN,mCLN+019.0 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136.0 Say pDOC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+022.0 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+022.0 Say pDIR Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.1 TO vlIn
 @vLIN,mCLN+022.0 Say vRUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+082.0 Say vCM1 Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+135.0 Say vVEN Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.8 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to1=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+08 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+07 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+20    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      @vLIN,mCLN+32 Say F1301DCR   Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118.8 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+139.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 IF mdTr=1
      DO deT_1300z IN FAC0000A WITH "2"
      @vLIN,mCLN+32.0 Say mFR1                     Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+32.0 Say mFR2                     Font "&mLetRom",11 Style "NQ" Size 1,75 Pict "@S75"
 ELSE
      @vLIN,mCLN+32.0 Say " "                      Font "&mLetRom",11 Style "NQ"
      STORE vlIn+01.2 TO vlIn
      @vLIN,mCLN+32.0 Say " "                      Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+2.8 TO vlIn
 STORE tvAl*(1+(f1300pig/100)) TO prEa
 @vLIN,mCLN+015 Say vFRA+" S.E.u.O."             Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 STORE vlIn+2.0 TO vlIn
 @vLIN,mCLN+012 Say "IGV:"+Str(F1300PIG,2,0)+"%" Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.7 TO vlIn
 @vLIN,mCLN+040 Say tVAL                         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+070 Say F1300NET-tVAL                Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+100 Say F1300IGV                     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say F1300TOT                     Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+131 Say vSIG                         Font "&mLetRom",11 Style "NQ"
ENDPROC
*
PROCEDURE Bol_1300z
 PARAMETER pcIi
 PUBLIC puNi, pdIr, pdOc
 DO diR_1300z IN FAC0000A
 STORE "["+vsEr+"-"+vdOc+"]" TO pdOc
 @0,0 Say " " Font "&mLetSwi",10 Style "NQ"
 DO CASE
      CASE pcIi="1"
           DO bo1_1300z
      CASE pcIi="2" .AND. vsEr="002"
           DO bo2_1300z_2
      CASE pcIi$"25" .AND. vsEr="001"
           DO bo5_1300z_1 WITH pcIi
 ENDCASE
 RELEASE puNi, pdIr, pdOc
ENDPROC
*
PROCEDURE Bo1_1300z
 @vLIN,mCLN+020 Say vFEM Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+136 Say pDOC Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2.8 TO vlIn
 @vLIN,mCLN+024 Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.3 TO vlIn
 @vLIN,mCLN+024 Say pDIR Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.2 TO vlIn
 @vLIN,mCLN+024 Say vDNI Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.5 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+08 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+07 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+20    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+118.8 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+140.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+021 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+121 Say "Dct/Red"                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+139 Say F1300TOT-tVAL            Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.4 TO vlIn
 @vLIN,mCLN+139 Say F1300TOT                 Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+135 Say vSIG                     Font "&mLetRom",11 Style "NQ"
ENDPROC
*
PROCEDURE Bo2_1300z_2
 @vLIN,mCLN+013 Say vFEM        Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+040 Say vCM1        Font "&mLetRom",11 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+075 Say pDOC        Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+099 Say vVEN        Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+013 Say vNOM        Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+013 Say pDIR        Font "&mLetRom",10 Style "NQ" Size 1,80 Pict "@S83"
 @vLIN,mCLN+092 Say vNFP        Font "&mLetRom",11 Style "NQ" Size 1,10 Pict "@S10"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+073 Say "DNI:"+vDNI Font "&mLetRom",10 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+3.5 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+4 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+3 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+21   Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "@S10"
      ENDIF
      @vLIN,mCLN+33 Say F1301DCR  Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+130.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+146.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+052.3 Say vTCA             Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+075.5 Say tVAL             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+113.0 Say F1300TOT-tVAL    Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+140.0 Say vSIG             Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+146.5 Say F1300TOT         Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+052.0 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
ENDPROC
*
PROCEDURE Bo5_1300z_1
 PARAMETER pcIi
 IF pcIi="2"
      @vLIN,mCLN+113 Say vFEM Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+140    Say pDOC Font "&mLetRom",11 Style "NQ"
 IF pcIi="2"
      STORE vlIn+1.7 TO vlIn
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+23.5   Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 IF pcIi="5"
      @vLIN,mCLN+137 Say vFEM Font "&mLetRom",11 Style "NQ"
 ENDIF
 STORE vlIn+3.2 TO vlIn
 @vLIN,mCLN+023    Say pDIR Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+145    Say vDNI Font "&mLetRom",11 Style "NQ"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.5 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      IF f1301can=1 .AND. f1301to2=0
      ELSE
           IF INT(vcAn)<>vcAn
                @vLIN,mCLN+09 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+08 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8  Pict "999,999"
           ENDIF
           @vLIN,mCLN+22    Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,7  Pict "@S7"
      ENDIF
      @vLIN,mCLN+34 Say F1301DCR   Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S83"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+127.8 Say vPRE Font "&mLetRom",11 Style "NQ" Size 1,14 Pict "999,999.9999"
           @vLIN,mCLN+145.0 Say vTOT Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.5 TO vlIn
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+023 Say "Son: "+vFRA+" S.E.u.O." Font "&mLetRom",10 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,mCLN+127 Say "Dct/Red"                Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+145 Say F1300TOT-tVAL            Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+2.6 TO vlIn
 @vLIN,mCLN+145 Say F1300TOT                 Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
ENDPROC
*
PROCEDURE Cot_1300z
 DO coT_1300z IN FAC0000A WITH "Lima"
ENDPROC
*
PROCEDURE Npe_1300z
 DO dsP_1300z IN FAC0000A WITH "N"
ENDPROC
*
PROCEDURE Des_1300z
 DO dsP_1300z IN FAC0000A WITH "D"
 DO dsP_1300z IN FAC0000A WITH "D"
ENDPROC
*
PROCEDURE Let_3110z
ENDPROC
*
PROCEDURE Cre_3610z
ENDPROC
*
PROCEDURE Deb_3610z
ENDPROC
*
PROCEDURE Rem_2600z
 PARAMETER pcIi
 PUBLIC prUc, plUg, ppEs, ptPp, puNi, ppAr, ppLa, pdIr, pfAc, pdOc
 DO ruC_2600z IN FAC0000A
 DO luG_2600z IN FAC0000A
 DO paR_2600z IN FAC0000A
 STORE ALLTRIM(f2600mr1)+" / "+ALLTRIM(f2600pla) TO ppLa
 STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ALLTRIM(f2600dep) TO pdIr
 STORE f2600td1+":"+f2600sr1+"-"+f2600do1 TO pfAc
 STORE "["+f2600ser+"-"+f2600doc+"]" TO pdOc
 @0,0 Say Space(01) Font "&mLetSwi",10 Style "BQ"
 DO CASE
      CASE pcIi="1"
           DO rm1_2600z
      CASE pcIi="2" .AND. vsEr="002"
           DO rm2_2600z_2
      CASE pcIi$"25" .AND. vsEr="001"
           DO rm5_2600z_1
 ENDCASE
 RELEASE prUc, plUg, ppEs, ptPp, puNi, ppAr, ppLa, pdIr, pfAc, pdOc
ENDPROC
*
PROCEDURE Rm1_2600z
 @vLIN,mCLN+32 Say pPAR                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN+32 Say pLUG                  Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN+10  Say F2600NOM             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+30  Say F2600FEM             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+69  Say "RUC/DNI: "+F2600RUC Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+137 Say F2600FEM             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.3 TO vlIn
 @vLIN,mCLN+115 Say pPLA                 Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+010 Say F2600TNO             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+115 Say F2600CIM             Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.7 TO vlIn
 @vLIN,mCLN+024 Say F2600TRU             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+115 Say F2600LC1             Font "&mLetRom",11 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.2 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      @vLIN,mCLN+008.0 Say F2601DCR         Font "&mLetRom",11 Style "NQ" Size 1,75   Pict "@S75"
      @vLIN,mCLN+118.5 Say Substr(pUNI,1,4) Font "&mLetRom",11 Style "NQ" Size 1,7    Pict "@S5"
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+130.5 Say vCAN          Font "&mLetRom",11 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+129.3 Say vCAN          Font "&mLetRom",11 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      STORE vlIn+2 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+71 Say pFAC Font "&mLetRom",11 Style "NQ"
ENDPROC
*
PROCEDURE Rm2_2600z_2
 @vLIN,mCLN+13.5 Say F2600FEM         Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+78.0 Say pDOC             Font "&mLetRom",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13.5 Say F2600NOM         Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+13.5 Say pDIR             Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 IF LEN(ALLTRIM(f2600ele))<>0 .AND. f2600td1="FA"
      @vLIN,mCLN+13 Say "DNI:"+F2600ELE Font "&mLetRom",10 Style "NQ"
 ELSE
      @vLIN,mCLN+13 Say F2600RUC        Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+3.8 TO vlIn
 @vLIN,mCLN+088.0 Say pFAC            Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+137.5 Say F2600FEM        Font "&mLetRom",10 Style "NQ"
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.5 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+2.5 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+2.3 Say vCAN   Font "&mLetRom",11 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+18.5 Say pUNI     Font "&mLetRom",11 Style "NQ" Size 1,10   Pict "@S10"
      @vLIN,mCLN+32.0 Say F2601DCR Font "&mLetRom",11 Style "NQ" Size 1,75   Pict "@S75"
      STORE vlIn+1.6 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+18 Say "Punto de Partida: "+pPAR Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+18 Say "Punto de Llegada: "+pLUG Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.0 TO vlIn
 @vLIN,mCLN+010 Say F2600TNO                 Font "&mLetRom",9  Style "NQ"
 IF f2600mot=1
      @vLIN,mCLN+72.5 Say "x"                  Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+010 Say F2600TRU                 Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+017 Say pPLA                     Font "&mLetRom",9  Style "NQ"
 IF f2600mot=2 .OR. f2600mot=3
      @vLIN,mCLN+118 Say "x"                   Font "&mLetRom",10 Style "NQ"
 ENDIF
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+017 Say F2600LC1                 Font "&mLetRom",9  Style "NQ"
 STORE vlIn+1.2 TO vlIn
 @vLIN,mCLN+017 Say F2600CHO                 Font "&mLetRom",9  Style "NQ"
ENDPROC
*
PROCEDURE Rm5_2600z_1
 @vLIN,mCLN+32.0 Say F2600FEM    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+70.0 Say pDOC        Font "&mLetRom",9  Style "NQ"
 STORE vlIn+02.5 TO vlIn
 @vLIN,mCLN+15.5 Say F2600NOM    Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+98.5 Say pPAR        Font "&mLetRom",10 Style "NQ"
 STORE vlIn+02.5 TO vlIn
 IF LEN(ALLTRIM(f2600ruc))<>0
      @vLIN,mCLN+09.0 Say F2600RUC Font "&mLetRom",11 Style "NQ"
 ENDIF
 IF LEN(ALLTRIM(f2600ele))<>0
      @vLIN,mCLN+61.0 Say F2600ELE Font "&mLetRom",11 Style "NQ"
 ENDIF
 @vLIN,mCLN+98.5 Say pLUG        Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE f2600mot=1
           @vLIN,mCLN+027.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=7
           @vLIN,mCLN+079.4 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=10
           @vLIN,mCLN+149.4 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.2 TO vlIn
 DO CASE
      CASE f2600mot=6
           @vLIN,mCLN+027.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=2 .OR. f2600mot=3
           @vLIN,mCLN+079.4 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=9
           @vLIN,mCLN+149.4 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.1 TO vlIn
 DO CASE
      CASE f2600mot=11
           @vLIN,mCLN+027.6 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=4
           @vLIN,mCLN+079.4 Say "x" Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=12
           @vLIN,mCLN+149.4 Say "x" Font "&mLetRom",10 Style "NQ"
 ENDCASE
 STORE vlIn+1.2 TO vlIn
 DO CASE
      CASE f2600mot=14
           @vLIN,mCLN+27.6 Say "x"      Font "&mLetRom",10 Style "NQ"
      CASE f2600mot=13
           @vLIN,mCLN+89.6 Say F2600CM1 Font "&mLetRom",10 Style "NQ"
 ENDCASE
 SELECT deT_remi
 SEEK vtDo+vsEr+vdOc
 STORE vlIn+4.4 TO vlIn
 DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+vsEr+vdOc
      DO prD_2600z IN FAC0000A
      SELECT deT_remi
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO meD_2600z IN FAC0000A
      DO unI_2600z IN FAC0000A
      @vLIN,mCLN+04 Say F2601DCR  Font "&mLetRom",11 Style "NQ" Size 1,75   Pict "@S75"
      IF INT(vcAn)<>vcAn
           @vLIN,mCLN+80.5 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,14.3 Pict "999,999.9999"
      ELSE
           @vLIN,mCLN+80.3 Say vCAN Font "&mLetRom",11 Style "NQ" Size 1,8.4  Pict "999,999"
      ENDIF
      @vLIN,mCLN+110.5   Say pUNI Font "&mLetRom",11 Style "NQ" Size 1,10   Pict "@S10"
      STORE vlIn+1.6 TO vlIn
      SKIP
 ENDDO
 SELECT caB_remi
 DO fiN_1300z IN FAC0000A WITH "RE"
 @vLIN,mCLN+010 Say F2600TRU              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+036 Say F2600TNO              Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+082 Say pPLA                  Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+122 Say F2600LC1              Font "&mLetRom",11 Style "NQ"
 STORE vlIn+3.3 TO vlIn
 @vLIN,mCLN+051 Say F2600TD1              Font "&mLetRom",11 Style "NQ"
 STORE vlIn+1.5 TO vlIn
 @vLIN,mCLN+046 Say F2600SR1+"-"+F2600DO1 Font "&mLetRom",11 Style "NQ"
ENDPROC
*
PROCEDURE BPa_4240z
ENDPROC
*
