*
PROCEDURE Per_1300z
 PARAMETER ptPe, pcL1
 DO CASE
      CASE ptPe="1"
           SELECT deT_fact
           SEEK vtDo+vsEr+vdOc
           STORE 0 TO ppEr
           DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+ ;
              vsEr+vdOc
                STORE f1301cod TO vcOd
                DO pr1_1300z IN FAC0000A
                SELECT deT_fact
                IF vpEr=1
                     STORE 1 TO ppEr
                     EXIT
                ENDIF
                SKIP
           ENDDO
      CASE ptPe="2" .AND. ppEr=1
           @vLIN,pCL1 Say "Comprobante de Percepción - Venta Interna" Font "&mLetRom",11 Style "NQ"
      CASE ptPe="3"
           IF vpEr=1
                STORE ROUND(f1301to2*vpPe/100, 2) TO viPe
                IF viPe<>0
                     @vLIN,pCL1 Say vIPE Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
                ENDIF
           ELSE
                STORE 0 TO viPe
           ENDIF
      CASE ptPe="4"
           STORE " " TO mfR1, mfR2
           IF tpEr>0
                STORE "Operación sujeta a Percepción del IGV "+STR(vpPe,  ;
                      5, 2)+"%" TO mfR1
                STORE "Total a pagar con Percepción" TO mfR2
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Det_1300z
 PARAMETER pdTt
 STORE " " TO mfR1, mfR2
 DO CASE
      CASE pdTt="1"
           SELECT deT_fact
           STORE 0 TO mdTr
           SEEK vtDo+vsEr+vdOc
           DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+ ;
              vsEr+vdOc
                STORE f1301cod TO vcOd
                DO pr1_1300z IN FAC0000A
                SELECT deT_fact
                IF vdTr=1
                     STORE 1 TO mdTr
                     EXIT
                ENDIF
                SKIP
           ENDDO
           SELECT caB_fact
           IF mdTr=1 .AND. f1300tot<mmDt
                STORE 2 TO mdTr
           ENDIF
      CASE pdTt="2"
           STORE "Operación sujeta al SPOT D.Leg.940" TO mfR1
 ENDCASE
ENDPROC
*
PROCEDURE Dir_1300z
 STORE ALLTRIM(vdIr)+", "+ALLTRIM(vdIs)+", "+ALLTRIM(vdEp) TO pdIr
ENDPROC
*
PROCEDURE Uni_1300z
 SELECT deT_fact
 STORE f1301can TO vcAn
 STORE f1301nuv TO puNi
 IF AT("-", puNi)<>0
      STORE ALLTRIM(SUBSTR(puNi, AT("-", puNi)+1, 20)) TO puNi
 ENDIF
ENDPROC
*
PROCEDURE Ruc_1300z
 IF LEN(ALLTRIM(vrUc))=11
      STORE vrUc TO prUc
 ELSE
      STORE "D.N.I.:"+vdNi TO prUc
 ENDIF
ENDPROC
*
PROCEDURE Fec_1300z
 PARAMETER plIn, pcLn
 DO meS_1300z WITH SUBSTR(DTOC(vfEm), 4, 2)
 @pLIN,mCLN+pCLN Say Substr(Dtoc(vFEM),1,2)+" de "+AllTrim(pMES)+" de "+Substr(Dtoc(vFEM),7,4) Font "&mLetAri",9 Style "NQ"
ENDPROC
*
PROCEDURE Mes_1300z
 PARAMETER pmMm
 DO CASE
      CASE pmMm="01"
           STORE "   Enero" TO pmEs
      CASE pmMm="02"
           STORE " Febrero" TO pmEs
      CASE pmMm="03"
           STORE "   Marzo" TO pmEs
      CASE pmMm="04"
           STORE "   Abril" TO pmEs
      CASE pmMm="05"
           STORE "    Mayo" TO pmEs
      CASE pmMm="06"
           STORE "   Junio" TO pmEs
      CASE pmMm="07"
           STORE "   Julio" TO pmEs
      CASE pmMm="08"
           STORE "  Agosto" TO pmEs
      CASE pmMm="09"
           STORE "Setiembre" TO pmEs
      CASE pmMm="10"
           STORE " Octubre" TO pmEs
      CASE pmMm="11"
           STORE "Noviembre" TO pmEs
      CASE pmMm="12"
           STORE "Diciembre" TO pmEs
 ENDCASE
ENDPROC
*
PROCEDURE Prd_1300z
 SELECT deT_fact
 STORE f1301cod TO vcOd
 DO pr1_1300z IN FAC0000A
 SELECT deT_fact
 DO CASE
      CASE f1301lar=0 .AND. f1301la1=0 .AND. f1301la2=0 .AND. f1301la3=0  ;
           .AND. f1301la4=0 .AND. f1301la5=0 .AND. f1301la6=0 .AND.  ;
           f1301la7=0 .AND. f1301la8=0 .AND. f1301la9=0 .AND. f1301anc=0  ;
           .AND. f1301an1=0 .AND. f1301an2=0 .AND. f1301an3=0 .AND.  ;
           f1301an4=0 .AND. f1301an5=0 .AND. f1301an6=0 .AND. f1301an7=0  ;
           .AND. f1301an8=0 .AND. f1301an9=0 .AND. f1301alt=0 .AND.  ;
           f1301al1=0 .AND. f1301al2=0 .AND. f1301al3=0 .AND. f1301al4=0  ;
           .AND. f1301al5=0 .AND. f1301al6=0 .AND. f1301al7=0 .AND.  ;
           f1301al8=0 .AND. f1301al9=0 .AND. vtPo=10
      CASE (f1301la1=0 .OR. f1301an1=0) .AND. (vtPo=2 .AND. f1301med=1)
      CASE (f1301la2=0 .OR. f1301an2=0) .AND. (vtPo=2 .AND. f1301med=2)
      CASE vtPo=2 .AND. f1301med=1
           STORE ALLTRIM(STR(f1301la1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f1301an1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. f1301med=2
           STORE ALLTRIM(STR(f1301la2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f1301an2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=10
           STORE "" TO caNc, clAr
           SELECT prOductos
           IF f2111ser=1
                SELECT deT_fact
                IF f1301lar<>0
                     STORE ALLTRIM(STR(f1301lar, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la1<>0
                     STORE ALLTRIM(STR(f1301la1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la2<>0
                     STORE ALLTRIM(STR(f1301la2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la3<>0
                     STORE ALLTRIM(STR(f1301la3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la4<>0
                     STORE ALLTRIM(STR(f1301la4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la5<>0
                     STORE ALLTRIM(STR(f1301la5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la6<>0
                     STORE ALLTRIM(STR(f1301la6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la7<>0
                     STORE ALLTRIM(STR(f1301la7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la8<>0
                     STORE ALLTRIM(STR(f1301la8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301la9<>0
                     STORE ALLTRIM(STR(f1301la9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301anc<>0
                     STORE ALLTRIM(STR(f1301anc, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an1<>0
                     STORE ALLTRIM(STR(f1301an1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an2<>0
                     STORE ALLTRIM(STR(f1301an2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an3<>0
                     STORE ALLTRIM(STR(f1301an3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an4<>0
                     STORE ALLTRIM(STR(f1301an4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an5<>0
                     STORE ALLTRIM(STR(f1301an5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an6<>0
                     STORE ALLTRIM(STR(f1301an6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an7<>0
                     STORE ALLTRIM(STR(f1301an7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an8<>0
                     STORE ALLTRIM(STR(f1301an8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301an9<>0
                     STORE ALLTRIM(STR(f1301an9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301alt<>0
                     STORE ALLTRIM(STR(f1301alt, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al1<>0
                     STORE ALLTRIM(STR(f1301al1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al2<>0
                     STORE ALLTRIM(STR(f1301al2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al3<>0
                     STORE ALLTRIM(STR(f1301al3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al4<>0
                     STORE ALLTRIM(STR(f1301al4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al5<>0
                     STORE ALLTRIM(STR(f1301al5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al6<>0
                     STORE ALLTRIM(STR(f1301al6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al7<>0
                     STORE ALLTRIM(STR(f1301al7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al8<>0
                     STORE ALLTRIM(STR(f1301al8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f1301al9<>0
                     STORE ALLTRIM(STR(f1301al9, 7, 3)) TO clAr
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
PROCEDURE Pr1_1300z
 STORE SPACE(01) TO clAr
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE SPACE(02) TO vtIp, vfOt, vgRu
      STORE 2 TO vsRr
      STORE 0 TO vpEs, mmD3
 ELSE
      STORE f2111tip TO vtIp
      STORE f2111md3 TO vmD3
      STORE f2111fot TO vfOt
      STORE f2111ser TO vsRr
      STORE f2111pes TO vpEs
      STORE f2111gru TO vgRu
 ENDIF
 SELECT tiP_prod
 SEEK vtIp
 IF EOF()
      STORE 1 TO vtPo
      STORE 2 TO vpEr, vdTr
      STORE "N/R" TO vnTi
      STORE " " TO veNt
 ELSE
      STORE f9211tpo TO vtPo
      STORE f9211nti TO vnTi
      STORE f9211ent TO veNt
      STORE f9211per TO vpEr
      STORE f9211det TO vdTr
      IF vpEr=0
           STORE 2 TO vpEr
      ENDIF
      IF vdTr=0
           STORE 2 TO vdTr
      ENDIF
 ENDIF
 SELECT grUpos
 SEEK vgRu
 IF EOF()
      STORE SPACE(30) TO vnGr
 ELSE
      STORE f9216des TO vnGr
 ENDIF
ENDPROC
*
PROCEDURE Med_1300z
 STORE 00 TO vcTd
 SELECT itE_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF (vtPo>=4 .AND. vtPo<=9 .AND. vtPo<>6)
           STORE vcTd+f1302ctd TO vcTd
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Sig_1300z
 PARAMETER pmNd
 DO CASE
      CASE pmNd=1
           STORE "S/" TO vsIg
      CASE pmNd=2
           STORE "US$" TO vsIg
 ENDCASE
ENDPROC
*
PROCEDURE Lee_1300z
 PUBLIC pcTd, pdCm, pcT1, pcT2, pcT3, psW0
 SELECT nuMeros
 STORE ttOt TO pcTd
 STORE pcTd-INT(pcTd) TO pdCm
 STORE INT(pcTd) TO pcTd
 STORE 00 TO pcT1, pcT2, pcT3, psW0
 STORE "" TO vfRa
 DO WHILE .T.
      SEEK pcTd
      IF  .NOT. EOF()
           IF LEN(ALLTRIM(vfRa))<>0
                STORE vfRa+LOWER(ALLTRIM(f9998des))+" " TO vfRa
           ELSE
                STORE ALLTRIM(f9998des)+" " TO vfRa
           ENDIF
           EXIT
      ENDIF
      STORE 0 TO psW0
      DO CASE
           CASE pcTd<1
                STORE "0 " TO vfRa
                EXIT
           CASE pcTd<=30
                STORE 0 TO pcT1
           CASE pcTd>30 .AND. pcTd<100
                STORE INT(pcTd/10)*10 TO pcT1
           CASE pcTd>=100 .AND. pcTd<1000
                STORE INT(pcTd/100)*100 TO pcT1
           CASE pcTd>=1000 .AND. pcTd<10000
                STORE INT(pcTd/1000)*1000 TO pcT1
                STORE pcT1/1000 TO pcT1
                IF pcT1=1
                     STORE 1 TO psW0
                     STORE pcT1*1000 TO pcT1
                ENDIF
           CASE pcTd>=10000 .AND. pcTd<100000
                STORE INT(pcTd/1000)*1000 TO pcT1
                STORE pcT1/1000 TO pcT1
                STORE 0 TO pcT2
                DO CASE
                     CASE pcT1=21
                          STORE 21 TO pcT2
                     CASE pcT1>30 .AND. pcT1<100
                          STORE INT(pcT1/10)*10 TO pcT2
                          SEEK pcT2
                          IF pcT1<>pcT2
                               IF LEN(ALLTRIM(vfRa))<>0
                                    STORE vfRa+LOWER(ALLTRIM(f9998des))+ ;
                                     " y " TO vfRa
                               ELSE
                                    STORE ALLTRIM(f9998des)+" y " TO vfRa
                               ENDIF
                               STORE pcT1-pcT2 TO pcT2
                          ELSE
                               STORE 0 TO pcT2
                          ENDIF
                ENDCASE
                IF pcT2<>0
                     SEEK pcT2
                     DO CASE
                          CASE LOWER(ALLTRIM(f9998des))+"*"="uno"+"*"
                               STORE vfRa+"un " TO vfRa
                          CASE LOWER(ALLTRIM(f9998des))+"*"="veintiuno"+"*"
                               STORE vfRa+"Veintiun " TO vfRa
                          OTHERWISE
                               STORE vfRa+LOWER(ALLTRIM(f9998des))+" " TO vfRa
                     ENDCASE
                     STORE 2 TO psW0
                ENDIF
           CASE pcTd>=100000 .AND. pcTd<1000000
                STORE INT(pcTd/100000)*100000 TO pcT1
                STORE pcT1/1000 TO pcT1
           CASE pcTd>=1000000 .AND. pcTd<100000000
                STORE INT(pcTd/1000000)*1000000 TO pcT1
                STORE pcT1/1000000 TO pcT2
                DO CASE
                     CASE pcT2>1 .AND. pcT2<=30
                          SEEK pcT2
                          IF LEN(ALLTRIM(vfRa))<>0
                               STORE vfRa+LOWER(ALLTRIM(f9998des))+" " TO vfRa
                          ELSE
                               STORE ALLTRIM(f9998des)+" " TO vfRa
                          ENDIF
                          IF pcT2<>1
                               STORE vfRa+"millones " TO vfRa
                          ELSE
                               STORE vfRa+"millon " TO vfRa
                          ENDIF
                          STORE 3 TO psW0
                     CASE pcT2>30 .AND. pcT2<100
                          STORE INT(pcT2/10)*10 TO pcT3
                          SEEK pcT3
                          IF pcT2<>pcT3
                               IF LEN(ALLTRIM(vfRa))<>0
                                    STORE vfRa+LOWER(ALLTRIM(f9998des))+ ;
                                     " y " TO vfRa
                               ELSE
                                    STORE ALLTRIM(f9998des)+" y " TO vfRa
                               ENDIF
                               STORE pcT2-pcT3 TO pcT3
                          ELSE
                               STORE 0 TO pcT3
                          ENDIF
                          IF pcT3<>0
                               SEEK pcT3
                               DO CASE
                                    CASE LOWER(ALLTRIM(f9998des))+"*"="uno"+"*"
                                         STORE vfRa+"un " TO vfRa
                                    CASE LOWER(ALLTRIM(f9998des))+"*"= ;
                                     "veintiuno"+"*"
                                         STORE vfRa+"Veintiun " TO vfRa
                                    OTHERWISE
                                         STORE vfRa+ ;
                                          LOWER(ALLTRIM(f9998des))+" " TO vfRa
                               ENDCASE
                               STORE vfRa+"millones " TO vfRa
                               STORE 2 TO psW0
                          ENDIF
                ENDCASE
           OTHERWISE
                EXIT
      ENDCASE
      IF psW0<>2 .AND. psW0<>3
           SEEK pcT1
           IF  .NOT. EOF()
                IF LEN(ALLTRIM(vfRa))<>0
                     STORE vfRa+LOWER(ALLTRIM(f9998des))+" " TO vfRa
                ELSE
                     STORE ALLTRIM(f9998des)+" " TO vfRa
                ENDIF
           ENDIF
      ENDIF
      IF psW0=1
           STORE pcT1/1000 TO pcT1
      ENDIF
      DO CASE
           CASE pcTd>30 .AND. pcTd<100
                STORE pcTd-pcT1 TO pcTd
                IF pcTd>=1
                     STORE vfRa+"y " TO vfRa
                ELSE
                     EXIT
                ENDIF
           CASE pcTd>=100 .AND. pcTd<1000
                STORE pcTd-pcT1 TO pcTd
                IF pcT1=100 .AND. pcTd>=1
                     STORE SUBSTR(vfRa, 1, LEN(vfRa)-01)+"to " TO vfRa
                ENDIF
           CASE pcTd>=1000 .AND. pcTd<100000
                STORE pcT1*1000 TO pcT1
                STORE pcTd-pcT1 TO pcTd
                DO CASE
                     CASE pcT1=100
                          STORE SUBSTR(vfRa, 1, LEN(vfRa)-01)+"to " TO vfRa
                     CASE pcT1<>1000
                          STORE vfRa+"mil " TO vfRa
                ENDCASE
           CASE pcTd>=100000 .AND. pcTd<1000000
                DO CASE
                     CASE pcT1=100
                          STORE SUBSTR(vfRa, 1, LEN(vfRa)-01)+"to " TO vfRa
                     CASE pcT1<>1000 .AND. pcTd>999
                     CASE pcT1<>1000
                          STORE vfRa+"mil " TO vfRa
                ENDCASE
                STORE pcT1*1000 TO pcT1
                STORE pcTd-pcT1 TO pcTd
           CASE pcTd>=1000000
                STORE pcTd-pcT1 TO pcTd
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
 RELEASE pcTd, pdCm, pcT1, pcT2, pcT3, psW0
ENDPROC
*
PROCEDURE Pc1_1300z
 IF tvL1<>0
      STORE ROUND(f1301to1/tvL2, 6) TO vpOr
      STORE ROUND(tvL1*vpOr, 2) TO vpOr
      STORE f1301to1+vpOr TO vtOt
 ELSE
      STORE f1301to1 TO vtOt
 ENDIF
 STORE ROUND(vtOt/vcAn, 4) TO vpRe
ENDPROC
*
PROCEDURE Pc2_1300z
 IF tvL1<>0
      STORE ROUND(f1301to2/tvL2, 6) TO vpOr
      STORE ROUND(tvL1*vpOr, 2) TO vpOr
      STORE f1301to2+vpOr TO vtOt
 ELSE
      STORE f1301to2 TO vtOt
 ENDIF
 STORE ROUND(vtOt/vcAn, 4) TO vpRe
ENDPROC
*
PROCEDURE Ini_1300z
 PARAMETER ptDd
 @0,0 Say "" Font "&mLetRom",11 Style "NQ"
 DO CASE
      CASE ptDd="FA" .OR. ptDd="TF"
           STORE mpRf(01,3) TO vlIn
           STORE mpRf(01,5) TO mcLn
      CASE ptDd="BO" .OR. ptDd="TB"
           STORE mpRf(02,3) TO vlIn
           STORE mpRf(02,5) TO mcLn
      CASE ptDd="PE"
           STORE mpRf(03,3) TO vlIn
           STORE mpRf(03,5) TO mcLn
      CASE ptDd="RE"
           STORE mpRf(04,3) TO vlIn
           STORE mpRf(04,5) TO mcLn
      CASE ptDd="DE"
           STORE mpRf(05,3) TO vlIn
           STORE mpRf(05,5) TO mcLn
      CASE ptDd="D1"
           STORE mpRf(06,3) TO vlIn
           STORE mpRf(06,5) TO mcLn
      CASE ptDd="D2"
           STORE mpRf(07,3) TO vlIn
           STORE mpRf(07,5) TO mcLn
      CASE ptDd="D3"
           STORE mpRf(08,3) TO vlIn
           STORE mpRf(08,5) TO mcLn
      CASE ptDd="D4"
           STORE mpRf(09,3) TO vlIn
           STORE mpRf(09,5) TO mcLn
      CASE ptDd="D5"
           STORE mpRf(10,3) TO vlIn
           STORE mpRf(10,5) TO mcLn
      CASE ptDd="D6"
           STORE mpRf(11,3) TO vlIn
           STORE mpRf(11,5) TO mcLn
      CASE ptDd="D7"
           STORE mpRf(12,3) TO vlIn
           STORE mpRf(12,5) TO mcLn
      CASE ptDd="D8"
           STORE mpRf(13,3) TO vlIn
           STORE mpRf(13,5) TO mcLn
      CASE ptDd="D9"
           STORE mpRf(14,3) TO vlIn
           STORE mpRf(14,5) TO mcLn
      CASE ptDd="VE"
           STORE mpRf(15,3) TO vlIn
           STORE mpRf(15,5) TO mcLn
      CASE ptDd="HO"
           STORE mpRf(16,3) TO vlIn
           STORE mpRf(16,5) TO mcLn
      CASE ptDd="LE"
           STORE mpRf(17,3) TO vlIn
           STORE mpRf(17,5) TO mcLn
      CASE ptDd="ET"
           STORE mpRf(18,3) TO vlIn
           STORE mpRf(18,5) TO mcLn
      CASE ptDd="NP"
           STORE mpRf(19,3) TO vlIn
           STORE mpRf(19,5) TO mcLn
      CASE ptDd="CT"
           STORE mpRf(20,3) TO vlIn
           STORE mpRf(20,5) TO mcLn
      CASE ptDd="ND"
           STORE mpRf(21,3) TO vlIn
           STORE mpRf(21,5) TO mcLn
      CASE ptDd="NC"
           STORE mpRf(22,3) TO vlIn
           STORE mpRf(22,5) TO mcLn
      CASE ptDd="GI"
           STORE mpRf(23,3) TO vlIn
           STORE mpRf(23,5) TO mcLn
      CASE ptDd="GS"
           STORE mpRf(24,3) TO vlIn
           STORE mpRf(24,5) TO mcLn
      CASE ptDd="PC"
           STORE mpRf(25,3) TO vlIn
           STORE mpRf(25,5) TO mcLn
      CASE ptDd="BP"
           STORE mpRf(26,3) TO vlIn
           STORE mpRf(26,5) TO mcLn
      CASE ptDd="FE"
           STORE mpRf(27,3) TO vlIn
           STORE mpRf(27,5) TO mcLn
      CASE ptDd="BE"
           STORE mpRf(28,3) TO vlIn
           STORE mpRf(28,5) TO mcLn
      CASE ptDd="N1"
           STORE mpRf(29,3) TO vlIn
           STORE mpRf(29,5) TO mcLn
      CASE ptDd="N2"
           STORE mpRf(30,3) TO vlIn
           STORE mpRf(30,5) TO mcLn
      CASE ptDd="ER"
           STORE mpRf(31,3) TO vlIn
           STORE mpRf(31,5) TO mcLn
      CASE ptDd="FC"
           STORE mpRf(32,3) TO vlIn
           STORE mpRf(32,5) TO mcLn
      CASE ptDd="BC"
           STORE mpRf(33,3) TO vlIn
           STORE mpRf(33,5) TO mcLn
      CASE ptDd="N3"
           STORE mpRf(34,3) TO vlIn
           STORE mpRf(34,5) TO mcLn
      CASE ptDd="N4"
           STORE mpRf(35,3) TO vlIn
           STORE mpRf(35,5) TO mcLn
 ENDCASE
ENDPROC
*
PROCEDURE Fin_1300z
 PARAMETER ptDd
 DO CASE
      CASE ptDd="FA" .OR. ptDd="TF"
           STORE mpRf(01,3)+mpRf(01,4) TO vlIn
      CASE ptDd="BO" .OR. ptDd="TB"
           STORE mpRf(02,3)+mpRf(02,4) TO vlIn
      CASE ptDd="PE"
           STORE mpRf(03,3)+mpRf(03,4) TO vlIn
      CASE ptDd="RE"
           STORE mpRf(04,3)+mpRf(04,4) TO vlIn
      CASE ptDd="DE"
           STORE mpRf(05,3)+mpRf(05,4) TO vlIn
      CASE ptDd="D1"
           STORE mpRf(06,3)+mpRf(06,4) TO vlIn
      CASE ptDd="D2"
           STORE mpRf(07,3)+mpRf(07,4) TO vlIn
      CASE ptDd="D3"
           STORE mpRf(08,3)+mpRf(08,4) TO vlIn
      CASE ptDd="D4"
           STORE mpRf(09,3)+mpRf(09,4) TO vlIn
      CASE ptDd="D5"
           STORE mpRf(10,3)+mpRf(10,4) TO vlIn
      CASE ptDd="D6"
           STORE mpRf(11,3)+mpRf(11,4) TO vlIn
      CASE ptDd="D7"
           STORE mpRf(12,3)+mpRf(12,4) TO vlIn
      CASE ptDd="D8"
           STORE mpRf(13,3)+mpRf(13,4) TO vlIn
      CASE ptDd="D9"
           STORE mpRf(14,3)+mpRf(14,4) TO vlIn
      CASE ptDd="VE"
           STORE mpRf(15,3)+mpRf(15,4) TO vlIn
      CASE ptDd="HO"
           STORE mpRf(16,3)+mpRf(16,4) TO vlIn
      CASE ptDd="LE"
           STORE mpRf(17,3)+mpRf(17,4) TO vlIn
      CASE ptDd="ET"
           STORE mpRf(18,3)+mpRf(18,4) TO vlIn
      CASE ptDd="NP"
           STORE mpRf(19,3)+mpRf(19,4) TO vlIn
      CASE ptDd="CT"
           STORE mpRf(20,3)+mpRf(20,4) TO vlIn
      CASE ptDd="ND"
           STORE mpRf(21,3)+mpRf(21,4) TO vlIn
      CASE ptDd="NC"
           STORE mpRf(22,3)+mpRf(22,4) TO vlIn
      CASE ptDd="GI"
           STORE mpRf(23,3)+mpRf(23,4) TO vlIn
      CASE ptDd="GS"
           STORE mpRf(24,3)+mpRf(24,4) TO vlIn
      CASE ptDd="PC"
           STORE mpRf(25,3)+mpRf(25,4) TO vlIn
      CASE ptDd="BP"
           STORE mpRf(26,3)+mpRf(26,4) TO vlIn
      CASE ptDd="FE"
           STORE mpRf(27,3)+mpRf(27,4) TO vlIn
      CASE ptDd="BE"
           STORE mpRf(28,3)+mpRf(28,4) TO vlIn
      CASE ptDd="N1"
           STORE mpRf(29,3)+mpRf(29,4) TO vlIn
      CASE ptDd="N2"
           STORE mpRf(30,3)+mpRf(30,4) TO vlIn
      CASE ptDd="ER"
           STORE mpRf(31,3)+mpRf(31,4) TO vlIn
      CASE ptDd="FC"
           STORE mpRf(32,3)+mpRf(32,4) TO vlIn
      CASE ptDd="BC"
           STORE mpRf(33,3)+mpRf(33,4) TO vlIn
      CASE ptDd="N3"
           STORE mpRf(32,3)+mpRf(34,4) TO vlIn
      CASE ptDd="N4"
           STORE mpRf(33,3)+mpRf(35,4) TO vlIn
 ENDCASE
ENDPROC
*
PROCEDURE Lar_1300z
 DO CASE
      CASE SUBSTR(clAr, LEN(clAr)-2, 3)="000"
           STORE SUBSTR(clAr, 1, LEN(clAr)-4) TO clAr
      CASE SUBSTR(clAr, LEN(clAr)-1, 2)="00"
           STORE SUBSTR(clAr, 1, LEN(clAr)-2) TO clAr
      CASE SUBSTR(clAr, LEN(clAr), 1)="0"
           STORE SUBSTR(clAr, 1, LEN(clAr)-1) TO clAr
 ENDCASE
ENDPROC
*
PROCEDURE Anc_1300z
 DO CASE
      CASE SUBSTR(caNc, LEN(caNc)-2, 3)="000"
           STORE SUBSTR(caNc, 1, LEN(caNc)-4) TO caNc
      CASE SUBSTR(caNc, LEN(caNc)-1, 2)="00"
           STORE SUBSTR(caNc, 1, LEN(caNc)-2) TO caNc
      CASE SUBSTR(caNc, LEN(caNc), 1)="0"
           STORE SUBSTR(caNc, 1, LEN(caNc)-1) TO caNc
 ENDCASE
ENDPROC
*
PROCEDURE Prd_2600z
 SELECT deT_remi
 STORE f2601cod TO vcOd
 DO pr1_1300z IN FAC0000A
 SELECT deT_remi
 DO CASE
      CASE f2601lar=0 .AND. f2601la1=0 .AND. f2601la2=0 .AND. f2601la3=0  ;
           .AND. f2601la4=0 .AND. f2601la5=0 .AND. f2601la6=0 .AND.  ;
           f2601la7=0 .AND. f2601la8=0 .AND. f2601la9=0 .AND. f2601anc=0  ;
           .AND. f2601an1=0 .AND. f2601an2=0 .AND. f2601an3=0 .AND.  ;
           f2601an4=0 .AND. f2601an5=0 .AND. f2601an6=0 .AND. f2601an7=0  ;
           .AND. f2601an8=0 .AND. f2601an9=0 .AND. f2601alt=0 .AND.  ;
           f2601al1=0 .AND. f2601al2=0 .AND. f2601al3=0 .AND. f2601al4=0  ;
           .AND. f2601al5=0 .AND. f2601al6=0 .AND. f2601al7=0 .AND.  ;
           f2601al8=0 .AND. f2601al9=0 .AND. f2601an1=0 .AND. vtPo=10
      CASE (f2601la1=0 .OR. f2601an1=0) .AND. (vtPo=2 .AND. f2601med=1)
      CASE (f2601la2=0 .OR. f2601an2=0) .AND. (vtPo=2 .AND. f2601med=2)
      CASE vtPo=2 .AND. f2601med=1
           STORE ALLTRIM(STR(f2601la1, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2601an1, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=2 .AND. f2601med=2
           STORE ALLTRIM(STR(f2601la2, 7, 3)) TO clAr
           STORE ALLTRIM(STR(f2601an2, 7, 3)) TO caNc
           DO laR_1300z IN FAC0000A
           DO anC_1300z IN FAC0000A
           STORE clAr+" x "+caNc TO clAr
      CASE vtPo=10
           STORE "" TO caNc, clAr
           SELECT prOductos
           IF f2111ser=1
                SELECT deT_fact
                IF f2601lar<>0
                     STORE ALLTRIM(STR(f2601lar, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la1<>0
                     STORE ALLTRIM(STR(f2601la1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la2<>0
                     STORE ALLTRIM(STR(f2601la2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la3<>0
                     STORE ALLTRIM(STR(f2601la3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la4<>0
                     STORE ALLTRIM(STR(f2601la4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la5<>0
                     STORE ALLTRIM(STR(f2601la5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la6<>0
                     STORE ALLTRIM(STR(f2601la6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la7<>0
                     STORE ALLTRIM(STR(f2601la7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la8<>0
                     STORE ALLTRIM(STR(f2601la8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601la9<>0
                     STORE ALLTRIM(STR(f2601la9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601anc<>0
                     STORE ALLTRIM(STR(f2601anc, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an1<>0
                     STORE ALLTRIM(STR(f2601an1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an2<>0
                     STORE ALLTRIM(STR(f2601an2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an3<>0
                     STORE ALLTRIM(STR(f2601an3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an4<>0
                     STORE ALLTRIM(STR(f2601an4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an5<>0
                     STORE ALLTRIM(STR(f2601an5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an6<>0
                     STORE ALLTRIM(STR(f2601an6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an7<>0
                     STORE ALLTRIM(STR(f2601an7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an8<>0
                     STORE ALLTRIM(STR(f2601an8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601an9<>0
                     STORE ALLTRIM(STR(f2601an9, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601alt<>0
                     STORE ALLTRIM(STR(f2601alt, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al1<>0
                     STORE ALLTRIM(STR(f2601al1, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al2<>0
                     STORE ALLTRIM(STR(f2601al2, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al3<>0
                     STORE ALLTRIM(STR(f2601al3, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al4<>0
                     STORE ALLTRIM(STR(f2601al4, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al5<>0
                     STORE ALLTRIM(STR(f2601al5, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al6<>0
                     STORE ALLTRIM(STR(f2601al6, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al7<>0
                     STORE ALLTRIM(STR(f2601al7, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al8<>0
                     STORE ALLTRIM(STR(f2601al8, 7, 3)) TO clAr
                     DO laR_1300z IN FAC0000A
                ENDIF
                DO CASE
                     CASE LEN(ALLTRIM(caNc))=0
                          STORE clAr TO caNc
                     CASE LEN(ALLTRIM(clAr))<>0
                          STORE caNc+" x "+clAr TO caNc
                ENDCASE
                STORE "" TO clAr
                IF f2601al9<>0
                     STORE ALLTRIM(STR(f2601al9, 7, 3)) TO clAr
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
PROCEDURE Med_2600z
 STORE 00 TO vcTd
 SELECT itE_remi
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f2602tdo+ ;
    f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"
      IF f2602opc="S"
           SKIP
           LOOP
      ENDIF
      IF (vtPo>=4 .AND. vtPo<=9 .AND. vtPo<>6)
           STORE vcTd+f2602ctd TO vcTd
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Ruc_2600z
 IF f2600td1<>"BO" .OR. f2600mot<>1
      STORE f2600ruc TO prUc
 ELSE
      STORE "DNI:"+f2600ele TO prUc
 ENDIF
ENDPROC
*
PROCEDURE Lug_2600z
 IF LEN(ALLTRIM(f2600lug))<>0
      STORE ALLTRIM(f2600lug)+", "+ALLTRIM(f2600lud)+", "+ ;
            ALLTRIM(f2600lup) TO plUg
 ELSE
      STORE ALLTRIM(f2600dir)+", "+ALLTRIM(f2600dis)+", "+ ;
            ALLTRIM(f2600dep) TO plUg
 ENDIF
ENDPROC
*
PROCEDURE Par_2600z
 STORE ALLTRIM(vaDi)+", "+ALLTRIM(vaDs) TO ppAr
ENDPROC
*
PROCEDURE Pes_2600z
 STORE " " TO ppEs
 DO CASE
      CASE f2600pes>=1000
           STORE ALLTRIM(STR(f2600pes/1000, 10, 3))+" TN" TO ppEs
      CASE f2600pes=INT(f2600pes)
           STORE ALLTRIM(STR(f2600pes, 10, 0))+" Kg." TO ppEs
      OTHERWISE
           STORE ALLTRIM(STR(f2600pes, 10, 3))+" Kg." TO ppEs
 ENDCASE
ENDPROC
*
PROCEDURE Pla_2600z
 STORE " " TO ppLa
 DO CASE
      CASE LEN(ALLTRIM(f2600mr1))=0 .AND. LEN(ALLTRIM(f2600pla))<>0 .AND.  ;
           LEN(ALLTRIM(f2600mr2))=0 .AND. LEN(ALLTRIM(f2600pl2))<>0
           STORE ALLTRIM(f2600pla)+" / "+ALLTRIM(f2600pl2) TO ppLa
      CASE LEN(ALLTRIM(f2600mr1))=0 .AND. LEN(ALLTRIM(f2600pla))<>0 .AND.  ;
           LEN(ALLTRIM(f2600mr2))=0 .AND. LEN(ALLTRIM(f2600pl2))=0
           STORE ALLTRIM(f2600pla) TO ppLa
      CASE LEN(ALLTRIM(f2600mr1))=0 .AND. LEN(ALLTRIM(f2600pla))=0 .AND.  ;
           LEN(ALLTRIM(f2600mr2))=0 .AND. LEN(ALLTRIM(f2600pl2))<>0
           STORE ALLTRIM(f2600pl2) TO ppLa
      CASE LEN(ALLTRIM(f2600pla))<>0 .AND. LEN(ALLTRIM(f2600pl2))<>0
           STORE ALLTRIM(f2600mr1)+": "+ALLTRIM(f2600pla)+" / "+ ;
                 ALLTRIM(f2600mr2)+": "+ALLTRIM(f2600pl2) TO ppLa
      CASE LEN(ALLTRIM(f2600pla))<>0 .AND. LEN(ALLTRIM(f2600pl2))=0
           STORE ALLTRIM(f2600mr1)+": "+ALLTRIM(f2600pla) TO ppLa
      CASE LEN(ALLTRIM(f2600pla))=0 .AND. LEN(ALLTRIM(f2600pl2))<>0
           STORE ALLTRIM(f2600mr2)+": "+ALLTRIM(f2600pl2) TO ppLa
 ENDCASE
ENDPROC
*
PROCEDURE Uni_2600z
 SELECT deT_remi
 STORE f2601can TO vcAn
 STORE f2601nuv TO puNi
 IF AT("-", puNi)<>0
      STORE ALLTRIM(SUBSTR(puNi, AT("-", puNi)+1, 20)) TO puNi
 ENDIF
ENDPROC
*
PROCEDURE Del_Files
ENDPROC
*
PROCEDURE Len_0000a
 PARAMETER ptPo
 PRIVATE pnOm, pnO1, pnO2, pnUm, piTe
 DO CASE
      CASE ptPo="1"
           STORE ALLTRIM(vaPp)+" " TO pnOm
      CASE ptPo="2"
           STORE ALLTRIM(vaPm)+" " TO pnOm
      CASE ptPo="3"
           STORE ALLTRIM(vnO1)+" " TO pnOm
      CASE ptPo="4"
           STORE ALLTRIM(vnOm)+" " TO pnOm
      CASE ptPo="5"
           STORE ALLTRIM(vdIr)+" " TO pnOm
      CASE ptPo="6"
           STORE ALLTRIM(veNt)+" " TO pnOm
      CASE ptPo="7"
           STORE ALLTRIM(vcT1)+" " TO pnOm
      CASE ptPo="8"
           STORE ALLTRIM(vcT2)+" " TO pnOm
      CASE ptPo="9"
           STORE ALLTRIM(vcT3)+" " TO pnOm
      CASE ptPo="0"
           STORE ALLTRIM(vcA1)+" " TO pnOm
      CASE ptPo="A"
           STORE ALLTRIM(vcA2)+" " TO pnOm
      CASE ptPo="B"
           STORE ALLTRIM(vcA3)+" " TO pnOm
      CASE ptPo="C"
           STORE ALLTRIM(vdIs)+" " TO pnOm
      CASE ptPo="D"
           STORE ALLTRIM(vdEp)+" " TO pnOm
 ENDCASE
 STORE SUBSTR(UPPER(pnOm), 1, 1)+SUBSTR(LOWER(pnOm), 2, 100) TO pnOm
 DO CASE
      CASE AT(" SA ", UPPER(pnOm))<>0
           STORE AT(" SA ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" S.A. "+pnO2 TO pnOm
      CASE AT(" SAC ", UPPER(pnOm))<>0
           STORE AT(" SAC ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+5, 100) TO pnO2
           STORE pnO1+" S.A.C. "+pnO2 TO pnOm
      CASE AT(" S A C ", UPPER(pnOm))<>0
           STORE AT(" S A C ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+7, 100) TO pnO2
           STORE pnO1+" S.A.C. "+pnO2 TO pnOm
      CASE AT(" SRL ", UPPER(pnOm))<>0
           STORE AT(" SRL ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+5, 100) TO pnO2
           STORE pnO1+" S.R.L. "+pnO2 TO pnOm
      CASE AT(" EIRL ", UPPER(pnOm))<>0
           STORE AT(" EIRL ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+6, 100) TO pnO2
           STORE pnO1+" E.I.R.L. "+pnO2 TO pnOm
      CASE AT(" SOCIEDAD ANONIMA CERRADA ", UPPER(pnOm))<>0
           STORE AT(" SOCIEDAD ANONIMA CERRADA ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+26, 100) TO pnO2
           STORE pnO1+" S.A.C. "+pnO2 TO pnOm
      CASE AT(" EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA ",  ;
           UPPER(pnOm))<>0
           STORE AT(" EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA ",  ;
                 UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+48, 100) TO pnO2
           STORE pnO1+" E.I.R.L. "+pnO2 TO pnOm
      CASE AT(" EMPRESA DE RESPONSABILIDAD LIMITADA ", UPPER(pnOm))<>0
           STORE AT(" EMPRESA DE RESPONSABILIDAD LIMITADA ", UPPER(pnOm))  ;
                 TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+37, 100) TO pnO2
           STORE pnO1+" E.R.Ltda. "+pnO2 TO pnOm
 ENDCASE
 STORE ALLTRIM(pnOm) TO pnOm
 STORE 1 TO piTe
 DO WHILE .T.
      STORE AT(" ", pnOm, piTe) TO pnUm
      IF pnUm=0
           EXIT
      ENDIF
      STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
      STORE SUBSTR(pnOm, pnUm+1, 100) TO pnO2
      STORE SUBSTR(UPPER(pnO2), 1, 1)+SUBSTR(pnO2, 2, 100) TO pnO2
      STORE pnO1+" "+pnO2 TO pnOm
      STORE piTe+1 TO piTe
 ENDDO
 STORE 1 TO piTe
 DO WHILE .T.
      STORE AT(".", pnOm, piTe) TO pnUm
      IF pnUm=0
           EXIT
      ENDIF
      STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
      STORE SUBSTR(pnOm, pnUm+1, 100) TO pnO2
      STORE SUBSTR(UPPER(pnO2), 1, 1)+SUBSTR(pnO2, 2, 100) TO pnO2
      STORE pnO1+"."+pnO2 TO pnOm
      STORE piTe+1 TO piTe
 ENDDO
 DO CASE
      CASE AT(" Y ", UPPER(pnOm))<>0
           STORE AT(" Y ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+3, 100) TO pnO2
           STORE pnO1+" y "+pnO2 TO pnOm
      CASE AT(" A ", UPPER(pnOm))<>0
           STORE AT(" A ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+3, 100) TO pnO2
           STORE pnO1+" a "+pnO2 TO pnOm
      CASE AT(" O ", UPPER(pnOm))<>0
           STORE AT(" O ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+3, 100) TO pnO2
           STORE pnO1+" o "+pnO2 TO pnOm
      CASE AT(" DE ", UPPER(pnOm))<>0
           STORE AT(" DE ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" de "+pnO2 TO pnOm
      CASE AT(" EL ", UPPER(pnOm))<>0
           STORE AT(" EL ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" el "+pnO2 TO pnOm
      CASE AT(" LA ", UPPER(pnOm))<>0
           STORE AT(" LA ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" la "+pnO2 TO pnOm
      CASE AT(" EN ", UPPER(pnOm))<>0
           STORE AT(" EN ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" en "+pnO2 TO pnOm
      CASE AT(" CON ", UPPER(pnOm))<>0
           STORE AT(" CON ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+5, 100) TO pnO2
           STORE pnO1+" con "+pnO2 TO pnOm
      CASE AT(" TE ", UPPER(pnOm))<>0
           STORE AT(" TE ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" te "+pnO2 TO pnOm
      CASE AT(" TU ", UPPER(pnOm))<>0
           STORE AT(" TU ", UPPER(pnOm)) TO pnUm
           STORE SUBSTR(pnOm, 1, pnUm-01) TO pnO1
           STORE SUBSTR(pnOm, pnUm+4, 100) TO pnO2
           STORE pnO1+" tu "+pnO2 TO pnOm
 ENDCASE
 DO CASE
      CASE ptPo="1"
           STORE pnOm TO vaPp
      CASE ptPo="2"
           STORE pnOm TO vaPm
      CASE ptPo="3"
           STORE pnOm TO vnO1
      CASE ptPo="4"
           STORE pnOm TO vnOm
      CASE ptPo="5"
           STORE pnOm TO vdIr
      CASE ptPo="6"
           STORE pnOm TO veNt
      CASE ptPo="7"
           STORE pnOm TO vcT1
      CASE ptPo="8"
           STORE pnOm TO vcT2
      CASE ptPo="9"
           STORE pnOm TO vcT3
      CASE ptPo="0"
           STORE pnOm TO vcA1
      CASE ptPo="A"
           STORE pnOm TO vcA2
      CASE ptPo="B"
           STORE pnOm TO vcA3
      CASE ptPo="C"
           STORE pnOm TO vdIs
      CASE ptPo="D"
           STORE pnOm TO vdEp
 ENDCASE
 RELEASE pnOm, pnO1, pnO2, pnUm, piTe
ENDPROC
*
PROCEDURE Ver_Ult
 PARAMETER puLt, paCt
 DO CASE
      CASE paCt=1
           DO CASE
                CASE puLt=3
                     SELECT 4
                CASE puLt=4
                     SELECT 5
                CASE puLt=5
                     SELECT 6
                CASE puLt=6
                     SELECT 7
                CASE puLt=7
                     SELECT 8
                CASE puLt=8
                     SELECT 9
                CASE puLt=9
                     SELECT 10
                CASE puLt=10
                     SELECT 11
                CASE puLt=11
                     SELECT 12
                CASE puLt=12
                     SELECT 13
                CASE puLt=13
                     SELECT 14
                CASE puLt=14
                     SELECT 15
                CASE puLt=15
                     SELECT 16
                CASE puLt=16
                     SELECT 17
                CASE puLt=17
                     SELECT 18
                CASE puLt=18
                     SELECT 19
                CASE puLt=19
                     SELECT 20
                CASE puLt=20
                     SELECT 21
                CASE puLt=21
                     SELECT 22
                CASE puLt=22
                     SELECT 23
                CASE puLt=23
                     SELECT 24
                CASE puLt=24
                     SELECT 25
                CASE puLt=25
                     SELECT 26
                CASE puLt=26
                     SELECT 27
                CASE puLt=27
                     SELECT 28
                CASE puLt=28
                     SELECT 29
                CASE puLt=29
                     SELECT 30
                CASE puLt=30
                     SELECT 31
                CASE puLt=31
                     SELECT 32
                CASE puLt=32
                     SELECT 33
                CASE puLt=33
                     SELECT 34
                CASE puLt=34
                     SELECT 35
                CASE puLt=35
                     SELECT 36
                CASE puLt=36
                     SELECT 37
                CASE puLt=37
                     SELECT 38
                CASE puLt=38
                     SELECT 39
                CASE puLt=39
                     SELECT 40
                CASE puLt=40
                     SELECT 41
                CASE puLt=41
                     SELECT 42
                CASE puLt=42
                     SELECT 43
                CASE puLt=43
                     SELECT 44
                CASE puLt=44
                     SELECT 45
                CASE puLt=45
                     SELECT 46
                CASE puLt=46
                     SELECT 47
                CASE puLt=47
                     SELECT 48
                CASE puLt=48
                     SELECT 49
                CASE puLt=49
                     SELECT 50
                CASE puLt=50
                     SELECT 51
                CASE puLt=51
                     SELECT 52
                CASE puLt=52
                     SELECT 53
                CASE puLt=53
                     SELECT 54
                CASE puLt=54
                     SELECT 55
                CASE puLt=55
                     SELECT 56
                CASE puLt=56
                     SELECT 57
                CASE puLt=57
                     SELECT 58
                CASE puLt=58
                     SELECT 59
                CASE puLt=59
                     SELECT 60
                CASE puLt=60
                     SELECT 61
                CASE puLt=61
                     SELECT 62
                CASE puLt=62
                     SELECT 63
                CASE puLt=63
                     SELECT 64
                CASE puLt=64
                     SELECT 65
                CASE puLt=65
                     SELECT 66
                CASE puLt=66
                     SELECT 67
                CASE puLt=67
                     SELECT 68
                CASE puLt=68
                     SELECT 69
                CASE puLt=69
                     SELECT 70
                CASE puLt=70
                     SELECT 71
           ENDCASE
      CASE paCt=2
           DO CASE
                CASE puLt=3
                     SELECT 5
                CASE puLt=4
                     SELECT 6
                CASE puLt=5
                     SELECT 7
                CASE puLt=6
                     SELECT 8
                CASE puLt=7
                     SELECT 9
                CASE puLt=8
                     SELECT 10
                CASE puLt=9
                     SELECT 11
                CASE puLt=10
                     SELECT 12
                CASE puLt=11
                     SELECT 13
                CASE puLt=12
                     SELECT 14
                CASE puLt=13
                     SELECT 15
                CASE puLt=14
                     SELECT 16
                CASE puLt=15
                     SELECT 17
                CASE puLt=16
                     SELECT 18
                CASE puLt=17
                     SELECT 19
                CASE puLt=18
                     SELECT 20
                CASE puLt=19
                     SELECT 21
                CASE puLt=20
                     SELECT 22
                CASE puLt=21
                     SELECT 23
                CASE puLt=22
                     SELECT 24
                CASE puLt=23
                     SELECT 25
                CASE puLt=24
                     SELECT 26
                CASE puLt=25
                     SELECT 27
                CASE puLt=26
                     SELECT 28
                CASE puLt=27
                     SELECT 29
                CASE puLt=28
                     SELECT 30
                CASE puLt=29
                     SELECT 31
                CASE puLt=30
                     SELECT 32
                CASE puLt=31
                     SELECT 33
                CASE puLt=32
                     SELECT 34
                CASE puLt=33
                     SELECT 35
                CASE puLt=34
                     SELECT 36
                CASE puLt=35
                     SELECT 37
                CASE puLt=36
                     SELECT 38
                CASE puLt=37
                     SELECT 39
                CASE puLt=38
                     SELECT 40
                CASE puLt=39
                     SELECT 41
                CASE puLt=40
                     SELECT 42
                CASE puLt=41
                     SELECT 43
                CASE puLt=42
                     SELECT 44
                CASE puLt=43
                     SELECT 45
                CASE puLt=44
                     SELECT 46
                CASE puLt=45
                     SELECT 47
                CASE puLt=46
                     SELECT 48
                CASE puLt=47
                     SELECT 49
                CASE puLt=48
                     SELECT 50
                CASE puLt=49
                     SELECT 51
                CASE puLt=50
                     SELECT 52
                CASE puLt=51
                     SELECT 53
                CASE puLt=52
                     SELECT 54
                CASE puLt=53
                     SELECT 55
                CASE puLt=54
                     SELECT 56
                CASE puLt=55
                     SELECT 57
                CASE puLt=56
                     SELECT 58
                CASE puLt=57
                     SELECT 59
                CASE puLt=58
                     SELECT 60
                CASE puLt=59
                     SELECT 61
                CASE puLt=60
                     SELECT 62
                CASE puLt=61
                     SELECT 63
                CASE puLt=62
                     SELECT 64
                CASE puLt=63
                     SELECT 65
                CASE puLt=64
                     SELECT 66
                CASE puLt=65
                     SELECT 67
                CASE puLt=66
                     SELECT 68
                CASE puLt=67
                     SELECT 69
                CASE puLt=68
                     SELECT 70
                CASE puLt=69
                     SELECT 71
                CASE puLt=70
                     SELECT 72
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Con_RUC
 IF LEN(ALLTRIM(vnOm))=0
      RETURN
 ENDIF
 PRIVATE ppAn, pdB1, pdB2, piD1, ptAm, prUc, prAz, ptM1, pnUm
 STORE 0 TO pnUm
 STORE "0000" TO ptM1
 STORE LEN(ALLTRIM(vnOm)) TO ptAm
 SAVE SCREEN TO ppAn
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "RAZ"
 afIl[x, 2] = "C"
 afIl[x, 3] = 100
 afIl[x, 4] = 0
 STORE "TMM1"+ptM1+meXt TO pdB1
 STORE "TMM1"+ptM1+".CDX" TO piD1
 DO WHILE .T.
      ptM1 = STRTRAN(STR(VAL(ptM1)+1, 4, 0), " ", "0")
      STORE "TMM1"+ptM1+meXt TO pdB1
      If .not.File("&pDB1")
           EXIT
      ENDIF
      IF ptM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (pdB1) FROM ARRAY afIl
 DO veR_ult WITH muLt, 1
 Use &pDB1 Exclusive Alias Tmp_RUC
 INDEX ON UPPER(raZ)+ruC TAG raZ
 DO veR_ult WITH muLt, 2
 STORE mpTh+"RRR1\R2UC1_1.DLL" TO pdB2
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Sunat
 SET ORDER TO RAZ
 SEEK UPPER(ALLTRIM(vnOm))
 STORE 99 TO mkEy
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(raZ)), 1, ptAm)= ;
    SUBSTR(UPPER(ALLTRIM(vnOm)), 1, ptAm)
      IF mkEy=9000
           EXIT
      ENDIF
      STORE pnUm+1 TO pnUm
      @ 10, 10 SAY STR(pnUm, 12, 0)+" "+ruC+" "+raZ STYLE "BQ" SIZE 1, 120
      STORE ruC TO prUc
      STORE raZ TO prAz
      SELECT tmP_ruc
      APPEND BLANK
      REPLACE ruC WITH prUc
      REPLACE raZ WITH prAz
      SELECT suNat
      SKIP
 ENDDO
 IF mkEy<>9000
      SELECT suNat
      STORE mpTh+"RRR1\R2UC1_2.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Sunat
      SET ORDER TO RAZ
      SEEK UPPER(ALLTRIM(vnOm))
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(raZ)), 1, ptAm)= ;
         SUBSTR(UPPER(ALLTRIM(vnOm)), 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 12, 10 SAY STR(pnUm, 12, 0)+" "+ruC+" "+raZ STYLE "BQ" SIZE 1, 120
           STORE ruC TO prUc
           STORE raZ TO prAz
           SELECT tmP_ruc
           APPEND BLANK
           REPLACE ruC WITH prUc
           REPLACE raZ WITH prAz
           SELECT suNat
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT suNat
      STORE mpTh+"RRR1\R2UC2.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Sunat
      SET ORDER TO RAZ
      SEEK UPPER(ALLTRIM(vnOm))
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(raZ)), 1, ptAm)= ;
         SUBSTR(UPPER(ALLTRIM(vnOm)), 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+ruC+" "+raZ STYLE "BQ" SIZE 1, 120
           STORE ruC TO prUc
           STORE raZ TO prAz
           SELECT tmP_ruc
           APPEND BLANK
           REPLACE ruC WITH prUc
           REPLACE raZ WITH prAz
           SELECT suNat
           SKIP
      ENDDO
 ENDIF
 ON ESCAPE
 SET ESCAPE OFF
 IF mkEy<>9000
      SELECT tmP_ruc
      GOTO TOP
      BROWSE FIELDS ruC : 16 :R, raZ : 120 :R FONT "Arial", 12 STYLE "NQ"
 ENDIF
 SELECT tmP_ruc
 USE
 SELECT suNat
 USE
 Delete File &pDB1
 Delete File &pID1
 RESTORE SCREEN FROM ppAn
 RELEASE ppAn, pdB1, pdB2, piD1, ptAm, prUc, prAz, ptM1, pnUm
ENDPROC
*
PROCEDURE Con_DNI
 IF LEN(ALLTRIM(vnOm))=0
      RETURN
 ENDIF
 PRIVATE ppAn, pdB1, pdB2, piD1, ptAm, pdNi, plE1, vlE2
 PRIVATE paPp, paPm, pnOm, ptM1, pnUm, pnNn, plEn
 STORE 0 TO pnUm
 STORE "0000" TO ptM1
 STORE UPPER(ALLTRIM(vnOm)) TO pnNn
 DO WHILE .T.
      IF AT(" ", pnNn)=0
           EXIT
      ENDIF
      STORE AT(" ", pnNn) TO plEn
      STORE SUBSTR(pnNn, 1, plEn-1)+SUBSTR(pnNn, plEn+1, 100) TO pnNn
      STORE ALLTRIM(pnNn) TO pnNn
 ENDDO
 STORE LEN(pnNn) TO ptAm
 SAVE SCREEN TO ppAn
 DIMENSION afIl[4, 4]
 STORE 1 TO x
 afIl[x, 1] = "DNI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "APP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "APM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 35
 afIl[x, 4] = 0
 STORE "TMM1"+ptM1+meXt TO pdB1
 STORE "TMM1"+ptM1+".CDX" TO piD1
 DO WHILE .T.
      ptM1 = STRTRAN(STR(VAL(ptM1)+1, 4, 0), " ", "0")
      STORE "TMM1"+ptM1+meXt TO pdB1
      If .not.File("&pDB1")
           EXIT
      ENDIF
      IF ptM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (pdB1) FROM ARRAY afIl
 DO veR_ult WITH muLt, 1
 Use &pDB1 Exclusive Alias Tmp_DNI
 INDEX ON UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ALLTRIM(noM))+dnI TAG apP
 DO veR_ult WITH muLt, 2
 STORE mpTh+"RRR1\D0NI.DLL" TO pdB2
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Reniec
 SET ORDER TO NOM
 SEEK pnNn
 STORE 99 TO mkEy
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
    ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
      IF mkEy=9000
           EXIT
      ENDIF
      STORE pnUm+1 TO pnUm
      @ 10, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
      STORE dnI TO pdNi
      STORE apP TO paPp
      STORE apM TO paPm
      STORE noM TO pnOm
      SELECT tmP_dni
      APPEND BLANK
      REPLACE dnI WITH pdNi
      REPLACE apP WITH paPp
      REPLACE apM WITH paPm
      REPLACE noM WITH pnOm
      SELECT reNiec
      SKIP
 ENDDO
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D1NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D2NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D3NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D4NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D5NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D6NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D7NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D8NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      SELECT reNiec
      STORE mpTh+"RRR1\D9NI.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO NOM
      SEEK pnNn
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(apP)+ALLTRIM(apM)+ ;
         ALLTRIM(noM)), 1, ptAm)=SUBSTR(pnNn, 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           @ 14, 10 SAY STR(pnUm, 12, 0)+" "+dnI+" "+apP STYLE "BQ" SIZE 1, 120
           STORE dnI TO pdNi
           STORE apP TO paPp
           STORE apM TO paPm
           STORE noM TO pnOm
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 SELECT reNiec
 STORE LEN(ALLTRIM(vnOm)) TO ptAm
 IF mkEy<>9000
      STORE mpTh+"RRR1\R2UC1_1.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO RAZ
      SEEK UPPER(ALLTRIM(vnOm))
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(raZ)), 1, ptAm)= ;
         SUBSTR(UPPER(ALLTRIM(vnOm)), 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           STORE SUBSTR(ruC, 3, 8) TO pdNi
           STORE raZ TO pnOm
           STORE " " TO paPp, paPm
           STORE AT(" ", pnOm, 1) TO plE1
           STORE AT(" ", pnOm, 2) TO plE2
           IF plE1<>0
                STORE SUBSTR(pnOm, 1, plE1-1) TO paPp
           ENDIF
           IF plE2<>0
                STORE SUBSTR(pnOm, plE1+1, (plE2-plE1)-1) TO paPm
           ENDIF
           STORE SUBSTR(pnOm, plE2+1, 100) TO pnOm
           @ 16, 10 SAY STR(pnUm, 12, 0)+" "+pdNi+" "+paPp STYLE "BQ"  ;
             SIZE 1, 120
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 IF mkEy<>9000
      STORE mpTh+"RRR1\R2UC1_2.DLL" TO pdB2
      IF LEN(ALLTRIM(muNi))<>0
           STORE muNi+":"+pdB2 TO pdB2
      ENDIF
      Use &pDB2 Shared NoUpdate Alias Reniec
      SET ORDER TO RAZ
      SEEK UPPER(ALLTRIM(vnOm))
      DO WHILE  .NOT. EOF() .AND. SUBSTR(UPPER(ALLTRIM(raZ)), 1, ptAm)= ;
         SUBSTR(UPPER(ALLTRIM(vnOm)), 1, ptAm)
           IF mkEy=9000
                EXIT
           ENDIF
           STORE pnUm+1 TO pnUm
           STORE SUBSTR(ruC, 3, 8) TO pdNi
           STORE raZ TO pnOm
           STORE " " TO paPp, paPm
           STORE AT(" ", pnOm, 1) TO plE1
           STORE AT(" ", pnOm, 2) TO plE2
           IF plE1<>0
                STORE SUBSTR(pnOm, 1, plE1-1) TO paPp
           ENDIF
           IF plE2<>0
                STORE SUBSTR(pnOm, plE1+1, (plE2-plE1)-1) TO paPm
           ENDIF
           STORE SUBSTR(pnOm, plE2+1, 100) TO pnOm
           @ 18, 10 SAY STR(pnUm, 12, 0)+" "+pdNi+" "+paPp STYLE "BQ"  ;
             SIZE 1, 120
           SELECT tmP_dni
           APPEND BLANK
           REPLACE dnI WITH pdNi
           REPLACE apP WITH paPp
           REPLACE apM WITH paPm
           REPLACE noM WITH pnOm
           SELECT reNiec
           SKIP
      ENDDO
 ENDIF
 ON ESCAPE
 SET ESCAPE OFF
 IF mkEy<>9000
      SELECT tmP_dni
      GOTO TOP
      BROWSE FIELDS dnI : 16 :R, apP : 30 :R, apM : 40 :R, noM : 35 :R  ;
             FONT "Arial", 12 STYLE "NQ"
 ENDIF
 SELECT reNiec
 USE
 SELECT tmP_dni
 USE
 Delete File &pDB1
 Delete File &pID1
 RESTORE SCREEN FROM ppAn
 RELEASE ppAn, pdB1, pdB2, piD1, ptAm, pdNi, paPp, paPm, pnOm, ptM1, pnUm, pnNn
ENDPROC
*
PROCEDURE Val_RUC
 PARAMETER pfRa
 PRIVATE prU1, prU2, prU3, prU4, prU5, prU6, prU7, prU8, prU9, prU0, prUa, prUc
 STORE SPACE(100) TO mmSj
 STORE VAL(SUBSTR(pfRa, 01, 1))*5 TO prU1
 STORE VAL(SUBSTR(pfRa, 02, 1))*4 TO prU2
 STORE VAL(SUBSTR(pfRa, 03, 1))*3 TO prU3
 STORE VAL(SUBSTR(pfRa, 04, 1))*2 TO prU4
 STORE VAL(SUBSTR(pfRa, 05, 1))*7 TO prU5
 STORE VAL(SUBSTR(pfRa, 06, 1))*6 TO prU6
 STORE VAL(SUBSTR(pfRa, 07, 1))*5 TO prU7
 STORE VAL(SUBSTR(pfRa, 08, 1))*4 TO prU8
 STORE VAL(SUBSTR(pfRa, 09, 1))*3 TO prU9
 STORE VAL(SUBSTR(pfRa, 10, 1))*2 TO prU0
 STORE VAL(SUBSTR(pfRa, 11, 1)) TO prUa
 STORE prU1+prU2+prU3+prU4+prU5+prU6+prU7+prU8+prU9+prU0 TO prUc
 STORE prUc-(INT(prUc/11)*11) TO prUc
 STORE 11-prUc TO prUc
 DO CASE
      CASE prUc=10
           STORE 0 TO prUc
      CASE prUc=11
           STORE 1 TO prUc
 ENDCASE
 IF prUa<>prUc
      STORE "RUC Inválido..."+CHR(13)+ ;
            "Presionar una tecla para Continuar..." TO mmSj
      DO poNmsj
      mkEy = INKEY(0)
      STORE 99 TO mkEy
 ENDIF
 RELEASE prU1, prU2, prU3, prU4, prU5, prU6, prU7, prU8, prU9, prU0, prUa, prUc
ENDPROC
*
PROCEDURE Ver_RU2
 PARAMETER ptPo, prUc
 IF LEN(ALLTRIM(prUc))=0 .OR. msUn=" " .OR. msUn="B" .OR. (msUn$"AB"  ;
    .AND. (mfDe=CTOD(" ") .OR. DATE()>mfHa))
      RETURN
 ENDIF
 PUBLIC pdBf, piNi, pfIn, piT1, prU1, pnNn, ptXt, ptAm, psEp, pvAr, prAz,  ;
        pdIr, puBi, peSt, pcOn, pdI1
 PUBLIC qt01, qt02, qt03, qt04, qt05, qt06, qt07, qt08, qt09, qt10, qt11,  ;
        qt12, qt13, qt14, qt15
 STORE "|" TO psEp
 STORE "" TO ptXt
 STORE 188 TO ptAm
 STORE 1 TO piT1
 STORE mpTh+"RRR1\PADRON_REDUCIDO_RUC.TXT" TO pdBf
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdBf TO pdBf
 ENDIF
 Archivo=fOpen("&pDBF",0)
 STORE FSEEK(arChivo, 0, 2) TO pfIn
 STORE FSEEK(arChivo, 0) TO piNi
 SET ESCAPE ON
 ON ESCAPE STORE 9000 TO MKEY
 DO WHILE .T.
      IF piT1>=pfIn
           EXIT
      ENDIF
      IF mkEy=9000
           FLUSH
           EXIT
      ENDIF
      DO CASE
           CASE piT1+ptAm>pfIn
                STORE pfIn-piT1 TO ppOs
           OTHERWISE
                STORE ptAm TO ppOs
      ENDCASE
      ptXt = FSEEK(arChivo, piT1)
      pvAr = FGETS(arChivo, ppOs)
      DO poN_0000a
      DO CASE
           CASE LEN(ALLTRIM(prU1))<>11 .OR. (SUBSTR(prU1, 1, 1)<>"1"  ;
                .AND. SUBSTR(prU1, 1, 1)<>"2") .OR. AT(" ", prU1)<>0
                STORE piT1+pnNn+1 TO piT1
                LOOP
           CASE SUBSTR(prU1, 2, 1)<"0" .OR. SUBSTR(prU1, 3, 1)<"0" .OR.  ;
                SUBSTR(prU1, 4, 1)<"0" .OR. SUBSTR(prU1, 5, 1)<"0" .OR.  ;
                SUBSTR(prU1, 6, 1)<"0" .OR. SUBSTR(prU1, 7, 1)<"0" .OR.  ;
                SUBSTR(prU1, 8, 1)<"0" .OR. SUBSTR(prU1, 9, 1)<"0" .OR.  ;
                SUBSTR(prU1, 10, 1)<"0"
                STORE piT1+pnNn+1 TO piT1
                LOOP
           CASE SUBSTR(prU1, 2, 1)>"9" .OR. SUBSTR(prU1, 3, 1)>"9" .OR.  ;
                SUBSTR(prU1, 4, 1)>"9" .OR. SUBSTR(prU1, 5, 1)>"9" .OR.  ;
                SUBSTR(prU1, 6, 1)>"9" .OR. SUBSTR(prU1, 7, 1)>"9" .OR.  ;
                SUBSTR(prU1, 8, 1)>"9" .OR. SUBSTR(prU1, 9, 1)>"9" .OR.  ;
                SUBSTR(prU1, 10, 1)>"9"
                STORE piT1+pnNn+1 TO piT1
                LOOP
           CASE prU1=prUc
                STORE pcOn TO vcOn
                STORE prAz TO vrAz
                STORE pdIr TO vdIr
                STORE SUBSTR(puBi, 1, 2) TO vdEp
                STORE SUBSTR(puBi, 3, 4) TO vdIs
                IF peSt<>"ACTIVO"
                     STORE ALLTRIM(peSt)+"/"+ALLTRIM(vcOn) TO vcOn
                ENDIF
      ENDCASE
      STORE piT1+pnNn+1 TO piT1
 ENDDO
 ON ESCAPE
 SET ESCAPE OFF
 FCLOSE(arChivo)
 RELEASE pdBf, piNi, pfIn, piT1, prU1, pnNn, ptXt, ptAm, psEp, pvAr, prAz,  ;
         pdIr, puBi, peSt, pcOn, pdI1
 RELEASE qt01, qt02, qt03, qt04, qt05, qt06, qt07, qt08, qt09, qt10, qt11,  ;
         qt12, qt13, qt14, qt15
ENDPROC
*
PROCEDURE Pon_0000a
 STORE 0 TO pnNn, qt01, qt02, qt03, qt04, qt05, qt06, qt07, qt08, qt09,  ;
       qt10, qt11, qt12, qt13, qt14, qt15
 STORE " " TO prU1, prAz, pdIr, puBi, peSt, pcOn, pdI1
 IF AT(psEp, pvAr)=1
      STORE ALLTRIM(SUBSTR(pvAr, 2, ptAm)) TO pvAr
      STORE pnNn+1 TO pnNn
 ENDIF
 STORE AT(psEp, pvAr, 01)-1 TO qt01
 STORE AT(psEp, pvAr, 02)-1 TO qt02
 STORE AT(psEp, pvAr, 03)-1 TO qt03
 STORE AT(psEp, pvAr, 04)-1 TO qt04
 STORE AT(psEp, pvAr, 05)-1 TO qt05
 STORE AT(psEp, pvAr, 06)-1 TO qt06
 STORE AT(psEp, pvAr, 07)-1 TO qt07
 STORE AT(psEp, pvAr, 08)-1 TO qt08
 STORE AT(psEp, pvAr, 09)-1 TO qt09
 STORE AT(psEp, pvAr, 10)-1 TO qt10
 STORE AT(psEp, pvAr, 11)-1 TO qt11
 STORE AT(psEp, pvAr, 12)-1 TO qt12
 STORE AT(psEp, pvAr, 13)-1 TO qt13
 STORE AT(psEp, pvAr, 14)-1 TO qt14
 STORE AT(psEp, pvAr, 15)-1 TO qt15
 IF qt01=0
      STORE piT1+1 TO piT1
      LOOP
 ENDIF
 IF qt01>0
      STORE SUBSTR(pvAr, 1, qt01) TO prU1
      STORE pnNn+LEN(ALLTRIM(prU1))+1 TO pnNn
 ENDIF
 IF qt02>0
      STORE SUBSTR(pvAr, qt01+2, qt02-qt01-1) TO prAz
      STORE pnNn+LEN(ALLTRIM(prAz))+1 TO pnNn
 ENDIF
 IF qt03>0
      STORE SUBSTR(pvAr, qt02+2, qt03-qt02-1) TO peSt
      STORE pnNn+LEN(ALLTRIM(peSt))+1 TO pnNn
 ENDIF
 IF qt04>0
      STORE SUBSTR(pvAr, qt03+2, qt04-qt03-1) TO pcOn
      STORE pnNn+LEN(ALLTRIM(pcOn))+1 TO pnNn
 ENDIF
 IF qt05>0
      STORE SUBSTR(pvAr, qt04+2, qt05-qt04-1) TO puBi
      STORE pnNn+LEN(ALLTRIM(puBi))+1 TO pnNn
 ENDIF
 IF qt06>0
      STORE SUBSTR(pvAr, qt05+2, qt06-qt05-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt07>0
      STORE SUBSTR(pvAr, qt06+2, qt07-qt06-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt08>0
      STORE SUBSTR(pvAr, qt07+2, qt08-qt07-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt09>0
      STORE SUBSTR(pvAr, qt08+2, qt09-qt08-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt10>0
      STORE SUBSTR(pvAr, qt09+2, qt10-qt09-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt11>0
      STORE SUBSTR(pvAr, qt10+2, qt11-qt10-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt12>0
      STORE SUBSTR(pvAr, qt11+2, qt12-qt11-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt13>0
      STORE SUBSTR(pvAr, qt12+2, qt13-qt12-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt14>0
      STORE SUBSTR(pvAr, qt13+2, qt14-qt13-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
      IF ALLTRIM(pdI1)="-"
           STORE "" TO pdI1
      ENDIF
 ELSE
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
 IF qt15>0
      STORE SUBSTR(pvAr, qt14+2, qt15-qt14-1) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
 ELSE
      STORE ALLTRIM(SUBSTR(pvAr, qt14+2, 40)) TO pdI1
      STORE pnNn+LEN(ALLTRIM(pdI1))+1 TO pnNn
 ENDIF
 IF ALLTRIM(pdI1)="-"
      STORE "" TO pdI1
 ENDIF
 STORE ALLTRIM(pdIr)+" "+pdI1 TO pdIr
ENDPROC
*
PROCEDURE Ver_RUC
 PARAMETER ptPo, prUc
 PRIVATE pdB1, pdB2, pdB3, piD1, piD2, piD3
 IF LEN(ALLTRIM(prUc))=0 .OR. msUn=" " .OR. msUn="B" .OR. (msUn$"AB"  ;
    .AND. (mfDe=CTOD(" ") .OR. DATE()>mfHa))
      RETURN
 ENDIF
 STORE " " TO vcOn
 DO veR_ult WITH muLt, 1
 STORE mpTh+"RRR1\R1UC.DLL" TO pdB1
 STORE mpTh+"RRR1\R1UC.SSL" TO piD1
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB1 TO pdB1
      STORE muNi+":"+piD1 TO piD1
 ENDIF
 If .not.File("&pDB1")
      STORE "Reorganizar Plataforma Sunat-1... Archivo corrupto" TO mmSj
      DO poNmsj
      = INKEY(0.05)
      STORE 1999 TO mkEy
      RETURN
 ENDIF
 If .not.File("&pID1")
      STORE "Reorganizar Plataforma Sunat-2... Archivo corrupto" TO mmSj
      DO poNmsj
      = INKEY(0.05)
      STORE 1999 TO mkEy
      RETURN
 ENDIF
 Use &pDB1 Shared NoUpdate Alias Sunat
 Set Index to &pID1
 SEEK ALLTRIM(prUc)+"*"
 IF EOF()
      STORE 1733 TO mkEy
      SELECT suNat
      USE
      RETURN
 ENDIF
 STORE coN TO vcOn
 IF esT<>"ACTIVO"
      STORE ALLTRIM(esT)+"/"+ALLTRIM(vcOn) TO vcOn
 ENDIF
 USE
 DO veR_ult WITH muLt, 1
 DO CASE
      CASE SUBSTR(prUc, 1, 1)="1" .AND. SUBSTR(prUc, 1, 3)<="102"
           STORE mpTh+"RRR1\R2UC1_1.DLL" TO pdB2
           STORE mpTh+"RRR1\R2UC1_1.SSL" TO piD2
      CASE SUBSTR(prUc, 1, 1)="1" .AND. SUBSTR(prUc, 1, 3)>="103"
           STORE mpTh+"RRR1\R2UC1_2.DLL" TO pdB2
           STORE mpTh+"RRR1\R2UC1_2.SSL" TO piD2
      CASE SUBSTR(prUc, 1, 1)="2"
           STORE mpTh+"RRR1\R2UC2.DLL" TO pdB2
           STORE mpTh+"RRR1\R2UC2.SSL" TO piD2
 ENDCASE
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
      STORE muNi+":"+piD2 TO piD2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Sunat
 Set Index to &pID2
 SEEK ALLTRIM(prUc)+"*"
 IF  .NOT. EOF()
      STORE raZ TO vnOm
 ELSE
      STORE 1733 TO mkEy
      SELECT suNat
      USE
      RETURN
 ENDIF
 USE
 DO veR_ult WITH muLt, 1
 STORE mpTh+"RRR1\R3UC.DLL" TO pdB3
 STORE mpTh+"RRR1\R3UC.SSL" TO piD3
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB3 TO pdB3
      STORE muNi+":"+piD3 TO piD3
 ENDIF
 Use &pDB3 Shared NoUpdate Alias Sunat
 Set Index to &pID3
 SEEK ALLTRIM(prUc)+"*"
 IF  .NOT. EOF()
      STORE diR TO vdIr
      STORE deP TO pdP1
      STORE diS TO pdI1
      STORE " " TO vdEp, vdIs
      SELECT dePartamentos
      SEEK pdP1
      IF  .NOT. EOF()
           STORE f9114nom TO vdEp
      ENDIF
      SELECT diStritos
      SEEK pdP1+pdI1
      IF  .NOT. EOF()
           STORE f9115nom TO vdIs
      ENDIF
 ENDIF
 SELECT suNat
 USE
 RELEASE pdB1, pdB2, pdB3, piD1, piD2, piD3
ENDPROC
*
PROCEDURE Ver_DNI
 PARAMETER ptPo, pdNi
 PRIVATE pdB1, pdB2, piD1, piD2, prUc, plE1, plE2, psW0
 IF LEN(ALLTRIM(pdNi))=0 .OR. mrEn=" " .OR. mrEn="B" .OR. (mrEn$"AB"  ;
    .AND. (mfDr=CTOD(" ") .OR. DATE()>mfHr))
      RETURN
 ENDIF
 STORE 0 TO psW0
 STORE " " TO vcOn
 STORE mpTh+"RRR1\GUBI.DLL" TO pdB1
 STORE mpTh+"RRR1\GUBI.SSL" TO piD1
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB1 TO pdB1
      STORE muNi+":"+piD1 TO piD1
 ENDIF
 DO veR_ult WITH muLt, 1
 Use &pDB1 Shared NoUpdate Alias Ubigeo
 Set Index to &pID1
 DO veR_ult WITH muLt, 2
 DO CASE
      CASE SUBSTR(pdNi, 1, 1)="0"
           STORE mpTh+"RRR1\D0NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D0NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="1"
           STORE mpTh+"RRR1\D1NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D1NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="2"
           STORE mpTh+"RRR1\D2NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D2NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="3"
           STORE mpTh+"RRR1\D3NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D3NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="4"
           STORE mpTh+"RRR1\D4NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D4NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="5"
           STORE mpTh+"RRR1\D5NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D5NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="6"
           STORE mpTh+"RRR1\D6NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D6NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="7"
           STORE mpTh+"RRR1\D7NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D7NI.SSL" TO piD2
      CASE SUBSTR(pdNi, 1, 1)="8"
           STORE mpTh+"RRR1\D8NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D8NI.SSL" TO piD2
      OTHERWISE
           STORE mpTh+"RRR1\D9NI.DLL" TO pdB2
           STORE mpTh+"RRR1\D9NI.SSL" TO piD2
 ENDCASE
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
      STORE muNi+":"+piD2 TO piD2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Reniec
 Set Index to &pID2
 SEEK ALLTRIM(pdNi)+"*"
 IF EOF()
      STORE 1999 TO mkEy
      SELECT reNiec
      USE
      SELECT ubIgeo
      USE
      RETURN
 ELSE
      STORE 1 TO psW0
      STORE apP TO vaPp
      STORE apM TO vaPm
      STORE noM TO vnO1
      STORE deP TO pdP1
      STORE diS TO pdI1
      STORE " " TO vdEp, vdIs
      STORE ALLTRIM(vaPp)+" "+ALLTRIM(vaPm)+" "+ALLTRIM(vnO1) TO vnOm
      SELECT ubIgeo
      SEEK pdP1+pdI1
      STORE deP TO vdEp
      STORE ALLTRIM(diSt)+", "+ALLTRIM(prOv) TO vdIs
      SELECT dePartamentos
      SET FILTER TO ALLTRIM(UPPER(f9114nom))+"*"=ALLTRIM(UPPER(vdEp))+"*"
      GOTO TOP
      IF  .NOT. BOF()
           STORE f9114dpt TO pdP1
           STORE f9114nom TO pdEp
      ELSE
           STORE " " TO pdP1
      ENDIF
      SET FILTER TO
      SELECT diStritos
      SET FILTER TO ALLTRIM(UPPER(f9115nom))+"*"=ALLTRIM(UPPER(vdIs))+"*"
      GOTO TOP
      IF  .NOT. BOF()
           STORE f9115dis TO pdI1
           STORE f9115nom TO vdIs
      ELSE
           STORE " " TO pdI1
      ENDIF
      SET FILTER TO
 ENDIF
 SELECT reNiec
 USE
 STORE mpTh+"RRR1\R1UC.DLL" TO pdB2
 STORE mpTh+"RRR1\R1UCD.SSL" TO piD2
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
      STORE muNi+":"+piD2 TO piD2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Reniec
 Set Index to &pID2
 SEEK ALLTRIM(pdNi)+"*1"
 IF  .NOT. EOF() .AND. SUBSTR(ruC, 1, 1)<>"1"
      SELECT ubIgeo
      USE
      SELECT reNiec
      USE
      RETURN
 ENDIF
 IF EOF() .AND. psW0=0
      STORE 1733 TO mkEy
      SELECT ubIgeo
      USE
      SELECT reNiec
      USE
      RETURN
 ENDIF
 STORE ruC TO prUc
 USE
 DO CASE
      CASE SUBSTR(prUc, 1, 3)<="102"
           STORE mpTh+"RRR1\R2UC1_1.DLL" TO pdB2
           STORE mpTh+"RRR1\R2UC1_1.SSL" TO piD2
      CASE SUBSTR(prUc, 1, 3)>="103"
           STORE mpTh+"RRR1\R2UC1_2.DLL" TO pdB2
           STORE mpTh+"RRR1\R2UC1_2.SSL" TO piD2
 ENDCASE
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
      STORE muNi+":"+piD2 TO piD2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Reniec
 Set Index to &pID2
 SEEK ALLTRIM(prUc)+"*"
 IF EOF() .AND. psW0=0
      STORE 1733 TO mkEy
      SELECT ubIgeo
      USE
      SELECT reNiec
      USE
      RETURN
 ENDIF
 IF psW0=0
      STORE raZ TO vnOm
      STORE " " TO vaPp, vaPm, vnO1
      STORE AT(" ", vnOm, 1) TO plE1
      STORE AT(" ", vnOm, 2) TO plE2
      IF plE1<>0
           STORE SUBSTR(vnOm, 1, plE1-1) TO vaPp
      ENDIF
      IF plE2<>0
           STORE SUBSTR(vnOm, plE1+1, (plE2-plE1)-1) TO vaPm
      ENDIF
      STORE SUBSTR(vnOm, plE2+1, 100) TO vnO1
 ENDIF
 USE
 STORE mpTh+"RRR1\R3UC.DLL" TO pdB2
 STORE mpTh+"RRR1\R3UC.SSL" TO piD2
 IF LEN(ALLTRIM(muNi))<>0
      STORE muNi+":"+pdB2 TO pdB2
      STORE muNi+":"+piD2 TO piD2
 ENDIF
 Use &pDB2 Shared NoUpdate Alias Reniec
 Set Index to &pID2
 SEEK ALLTRIM(prUc)+"*"
 DO CASE
      CASE EOF() .AND. psW0=0
           STORE "01" TO pdP1
           STORE "0101" TO pdI1
      CASE  .NOT. EOF() .AND. LEN(ALLTRIM(prUc))<11
      CASE  .NOT. EOF() .AND. AT(" ", prUc)<>0
      CASE  .NOT. EOF()
           STORE "N" TO moPc
           IF psW0<>0
                DO prE_docum WITH  ;
                   "Cliente tiene RUC ¿Quiere llamar datos de SUNAT?"
           ENDIF
           IF psW0<>0 .AND. moPc$"Nn"
                STORE " " TO vdIr, vrUc
           ENDIF
           IF psW0=0 .OR. moPc$"Ss"
                STORE deP TO pdP1
                STORE diS TO pdI1
                STORE diR TO vdIr
                SELECT dePartamentos
                SET FILTER TO
                SEEK pdP1
                IF  .NOT. EOF()
                     STORE f9114nom TO vdEp
                ELSE
                     STORE " " TO vdEp
                ENDIF
                SELECT diStritos
                SET FILTER TO
                SEEK pdP1+pdI1
                IF  .NOT. EOF()
                     STORE f9115nom TO vdIs
                ELSE
                     STORE " " TO vdIs
                ENDIF
           ENDIF
 ENDCASE
 SELECT reNiec
 USE
 SELECT ubIgeo
 USE
 RELEASE pdB1, pdB2, piD1, piD2, prUc, plE1, plE2, psW0
ENDPROC
*
PROCEDURE Cot_1300z
 PARAMETER pdSt
 PUBLIC puNi, pmEs, pdIr, pcL1
 STORE 13 TO mcLn
 STORE 00 TO vpAg
 DO meS_1300z IN FAC0000A WITH SUBSTR(DTOC(vfEm), 4, 2)
 DO diR_1300z IN FAC0000A
 DO ccO_1300z IN FAC0000A WITH "1"
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      IF vlIn>mpAg-3
           DO ccO_1300z IN FAC0000A WITH "2"
      ENDIF
      DO meD_1300z IN FAC0000A
      DO unI_1300z IN FAC0000A
      DO CASE
           CASE f1301can=1 .AND. f1301to2=0
           OTHERWISE
                DO CASE
                     CASE mpRt="1" .AND. INT(vcAn)<>vcAn
                          STORE mcLn+12.5 TO pcL1
                     CASE mpRt="1"
                          STORE mcLn+06.9 TO pcL1
                     CASE INT(vcAn)<>vcAn
                          STORE mcLn+02.0 TO pcL1
                     OTHERWISE
                          STORE mcLn+01.0 TO pcL1
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,pCL1-0.1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,pCL1     Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16     Say pUNI Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S60"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0 .AND. vtDd<>"C1"
           IF mpRt="1"
                @vLIN,mCLN+115.0 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,19 Pict "99,999,999.9999"
                @vLIN,mCLN+134.5 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,17 Pict "99,999,999.99"
           ELSE
                @vLIN,mCLN+107.0 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,19 Pict "99,999,999.9999"
                @vLIN,mCLN+127.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,17 Pict "99,999,999.99"
           ENDIF
      ENDIF
      IF LEN(ALLTRIM(f1301ref))<>0
           STORE vlIn+1.2 TO vlIn
           @vLIN,mCLN+27 Say F1301REF Font "&mLetRom",11 Style "NQ" Size 1,60 Pict "@S60"
      ENDIF
      STORE vlIn+1.3 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           STORE vlIn+1.4 TO vlIn
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+16 Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
                CASE mpRt="2"
                     @vLIN,mCLN+16 Say "Medidas:" Font "&mLetSwi",8 Style "NQ"
           ENDCASE
           DO itC_1300z IN FAC0000A WITH "C"
           STORE vlIn+1.5 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z IN FAC0000A WITH "2"
 ENDIF
 IF tvAl<>f1300tot
      @vLIN,mCLN+106 Say "Sub-Total:"    Font "&mLetRom",10 Style "BQ"
      IF mpRt="1"
           @vLIN,mCLN+133.8 Say tVAL       Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
      ELSE
           @vLIN,mCLN+122.4 Say tVAL       Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
      ENDIF
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z IN FAC0000A WITH "2"
      ENDIF
      IF tvAl<f1300tot
           @vLIN,mCLN+106 Say "Redond:"    Font "&mLetRom",10 Style "BQ"
      ELSE
           @vLIN,mCLN+106 Say "Dcto.:"     Font "&mLetRom",10 Style "BQ"
      ENDIF
      IF mpRt="1"
           @vLIN,mCLN+133.8 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
      ELSE
           @vLIN,mCLN+122.4 Say F1300TOT-tVAL Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
      ENDIF
      STORE vlIn+1.4 TO vlIn
      IF vlIn>mpAg-3
           DO ccO_1300z IN FAC0000A WITH "2"
      ENDIF
 ENDIF
 @vLIN,mCLN+121.8 Say "==========" Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z IN FAC0000A WITH "2"
 ENDIF
 @vLIN,mCLN+115   Say vSIG         Font "&mLetRom",10 Style "BQ"
 IF mpRt="1"
      @vLIN,mCLN+133.8 Say F1300TOT  Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
 ELSE
      @vLIN,mCLN+122.4 Say F1300TOT  Font "&mLetRom",10 Style "BQ" Size 1,19 Pict "99,999,999.99"
 ENDIF
 STORE vlIn+2.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z IN FAC0000A WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Observaciones" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vCM1            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO ccO_1300z IN FAC0000A WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Vendedor"      Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNVE            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+1.4 TO vlIn
 IF vlIn+3.4>mpAg-3
      DO ccO_1300z IN FAC0000A WITH "2"
 ENDIF
 @vLIN,mCLN    Say "Forma de Pago" Font "&mLetRom",11 Style "NQI"
 @vLIN,mCLN+22 Say ":"             Font "&mLetRom",11 Style "BQ"
 @vLIN,mCLN+24 Say vNFP            Font "&mLetRom",11 Style "NQ" Size 1,70 Pict "@S70"
 STORE vlIn+3.4 TO vlIn
 @vLIN,mCLN    Say "Atentamente,"  Font "&mLetRom",11 Style "NQI"
 RELEASE puNi, pmEs, pdIr, pcL1
ENDPROC
*
PROCEDURE CCo_1300z
 PARAMETER ptPo
 STORE 00 TO vlIn
 @vLIN,mCLN Say mRAZ Font "&mLetRom",16 Style "BQ"
 STORE vlIn+2 TO vlIn
 @vLIN,mCLN Say mDIR Font "&mLetAri",10 Style "BQ"
 STORE vlIn+0.5 TO vlIn
 IF LEN(ALLTRIM(mtEl))<>0
      STORE vlIn+1.4 TO vlIn
      @vLIN,mCLN+07 Say "Teléfonos: "+mTEL Font "&mLetAri",8 Style "NQ"
 ENDIF
 IF LEN(ALLTRIM(meMa))<>0
      STORE vlIn+1.4 TO vlIn
      @vLIN,mCLN+02 Say "e-Mail : "+mEMA   Font "&mLetAri",8 Style "NQ"
 ENDIF
 STORE vlIn+0.5 TO vlIn
 IF ptPo="1"
      STORE vlIn+3 TO vlIn
      @vLIN,mCLN+104 Say pDST+","+Substr(Dtoc(vFEM),1,2)+" de "+AllTrim(pMES)+" de "+Substr(Dtoc(vFEM),7,4) Font "&mLetRom",11 Style "NQI"
      STORE vlIn+3 TO vlIn
 ENDIF
 @vLIN,mCLN+42 Say "COTIZACIÓN # "+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE ptPo="1"
           STORE vlIn+1 TO vlIn
           @vLIN,mCLN Say "Sres"                                   Font "&mLetRom",12 Style "BQI"
           STORE vlIn+1.4 TO vlIn
           @vLIN,mCLN Say vNOM                                     Font "&mLetRom",13 Style "BQI"
           STORE vlIn+2.5 TO vlIn
           @vLIN,mCLN Say "De nuestra consideración:"              Font "&mLetRom",11 Style "NQI"
           STORE vlIn+2.4 TO vlIn
           @vLIN,mCLN Say "Les presentamos la siguiente Proforma:" Font "&mLetRom",11 Style "NQI"
           STORE vlIn+1.5 TO vlIn
 ENDCASE
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.4 TO vlIn
 IF mpRt="1"
      @vLIN,mCLN+00  Say "Cantidad"           Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+16  Say "Unidad"             Font "&mLetRom",10 Style "BQ"
      @vLIN,mCLN+27  Say "Producto"           Font "&mLetRom",10 Style "BQ"
      IF vtDd<>"C1"
           @vLIN,mCLN+102   Say "Prec.Unitario" Font "&mLetRom",10 Style "BQ"
           @vLIN,mCLN+122.8 Say "Precio Total"  Font "&mLetRom",10 Style "BQ"
      ENDIF
 ELSE
      @vLIN,mCLN+4.8 Say "Cantidad"           Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+16  Say "Unidad"             Font "&mLetRom",10 Style "NQ"
      @vLIN,mCLN+27  Say "Producto"           Font "&mLetRom",10 Style "NQ"
      IF vtDd<>"C1"
           @vLIN,mCLN+104   Say "Prec.Unitario" Font "&mLetRom",10 Style "NQ"
           @vLIN,mCLN+124.2 Say "Precio Total"  Font "&mLetRom",10 Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 93, vlIn
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Dsp_1300z
 PARAMETER pdSp
 PUBLIC pwWw, puNi, pcL1, pdIr
 STORE 00 TO vpAg
 STORE 06 TO mcLn
 STORE 38 TO mpAg
 DO cdE_1300z IN FAC0000A
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+106 Say "Hora"          Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vTIM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Cliente"       Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+19  Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+21  Say vNOM            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Fecha"         Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vFEM            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN     Say "Dirección:"    Font "&mLetAri",9 Style "BQ"
 @vLIN,mCLN+21  Say pDIR            Font "&mLetAri",9 Style "NQ" Size 1,40 Pict "@S40"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN     Say "Observaciones" Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+19  Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+21  Say vCM1            Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "Vendedor"      Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vNVE            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+21  Say F1300CM2        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+106 Say "F.Pago"        Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+118 Say ":"             Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+120 Say vNFP            Font "&mLetAri",9 Style "NQ"
 STORE vlIn+1 TO vlIn
 DO ldE_1300z IN FAC0000A
 STORE vlIn+1.4 TO vlIn
 @vLIN,mCLN+1   Say "Cantidad"      Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+16  Say "Med/Uni"       Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+27  Say "Descripción"   Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+119 Say "Prec.Unit"     Font "&mLetAri",9 Style "NQ"
 @vLIN,mCLN+133 Say "Prec.Total"    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 DO ldE_1300z IN FAC0000A
 STORE vlIn+1.6 TO vlIn
 STORE "1" TO pwWw
 DO ddE_1300z IN FAC0000A
 STORE "2" TO pwWw
 DO ddE_1300z IN FAC0000A
 SELECT caB_fact
 DO ldE_1300z IN FAC0000A
 STORE vlIn+1.4 TO vlIn
 IF vlIn>mpAg-3
      DO cdE_1300z IN FAC0000A
 ENDIF
 DO CASE
      CASE mpRt="1"
           IF tvAl<f1300tot
                @vLIN,mCLN+95 Say "Redon:"      Font "&mLetAri",9 Style "NQ"
           ELSE
                @vLIN,mCLN+95 Say "Dcto.:"      Font "&mLetAri",9 Style "NQ"
           ENDIF
           @vLIN,mCLN+064.0 Say "Sub-Total:"  Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+089.0 Say tVAL          Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
           @vLIN,mCLN+116.0 Say F1300TOT-tVAL Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99" Function "("
           @vLIN,mCLN+124.0 Say vSIG          Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+141.4 Say F1300TOT      Font "&mLetAri",9 Style "NQ" Size 1,17 Pict "9,999,999.99"
      CASE mpRt="2"
           IF tvAl<f1300tot
                @vLIN,mCLN+102 Say "Redon:"     Font "&mLetAri",9 Style "BQ"
           ELSE
                @vLIN,mCLN+102 Say "Dcto.:"     Font "&mLetAri",9 Style "BQ"
           ENDIF
           @vLIN,mCLN+073.0 Say "Sub-Total:"  Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+087.0 Say tVAL          Font "&mLetAri",9 Style "BQ" Size 1,13 Pict "999,999.99"
           @vLIN,mCLN+111.0 Say F1300TOT-tVAL Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999,999.99" Function "("
           @vLIN,mCLN+128.0 Say vSIG          Font "&mLetAri",9 Style "BQ"
           @vLIN,mCLN+133.0 Say F1300TOT      Font "&mLetAri",9 Style "BQ" Size 1,13 Pict "999,999.99"
 ENDCASE
 RELEASE pwWw, puNi, pcL1, pdIr
ENDPROC
*
PROCEDURE Cde_1300z
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="FA"
           @vLIN,mCLN Say "O.D.Factura No."                   +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="FE"
           @vLIN,mCLN Say "O.D.Factura Electrónica No. F"     +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="FC"
           @vLIN,mCLN Say "O.D.Factura Electrónica Sol No. E" +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BO"
           @vLIN,mCLN Say "O.D.Boleta No."                    +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BE"
           @vLIN,mCLN Say "O.D.Boleta Electrónica No. B"      +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="BC"
           @vLIN,mCLN Say "O.D.Boleta Electrónica Sol No. EB" +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="TF"
           @vLIN,mCLN Say "O.D.Ticket Factura No."            +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="TB"
           @vLIN,mCLN Say "O.D.Ticket Boleta No."             +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="TK"
           @vLIN,mCLN Say "O.D.Ticket No."                    +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="NP" .AND. pdSp="D"
           @vLIN,mCLN Say "Orden de Despacho de NP No."       +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
      CASE vtDo="NP"
           @vLIN,mCLN Say "PROFORMA No."                      +vSER+"-"+vDOC Font "&mLetAri",12 Style "NQ"
 ENDCASE
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.4 TO vlIn
 DO ldE_1300z IN FAC0000A
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Dde_1300z
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF (pwWw="1" .AND.  .NOT. EOF()) .OR. (pwWw="2" .AND. EOF())
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      SELECT deT_fact
      DO unI_1300z IN FAC0000A
      IF vlIn>mpAg-3
           DO cdE_1300z IN FAC0000A
      ENDIF
      DO CASE
           CASE vcAn=1 .AND. f1301to2=0
           OTHERWISE
                DO CASE
                     CASE mpRt="1" .AND. INT(vcAn)<>vcAn
                          STORE mcLn+11 TO pcL1
                     CASE mpRt="1"
                          STORE mcLn+06 TO pcL1
                     CASE INT(vcAn)<>vcAn
                          STORE mcLn+02 TO pcL1
                     OTHERWISE
                          STORE mcLn+01 TO pcL1
                ENDCASE
                IF INT(vcAn)<>vcAn
                     @vLIN,pCL1 Say vCAN Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                ELSE
                     @vLIN,pCL1 Say vCAN Font "&mLetSwi",9 Style "NQ" Size 1,9  Pict "999,999"
                ENDIF
                @vLIN,mCLN+16 Say pUNI Font "&mLetSwi",9 Style "NQ" Size 1,7  Pict "@S7"
      ENDCASE
      @vLIN,mCLN+27 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetSwi",9 Style "NQ" Size 1,60 Pict "@S60"
      IF f1301to2<>0
           STORE ROUND(f1301to2/vcAn, 4) TO vpRe
           DO CASE
                CASE mpRt="1"
                     @vLIN,mCLN+127 Say vPRE     Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                     @vLIN,mCLN+142 Say F1301TO2 Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
                CASE mpRt="2"
                     @vLIN,mCLN+118 Say vPRE     Font "&mLetSwi",9 Style "NQ" Size 1,15 Pict "999,999.9999"
                     @vLIN,mCLN+135 Say F1301TO2 Font "&mLetSwi",9 Style "NQ" Size 1,13 Pict "999,999.99"
           ENDCASE
      ENDIF
      STORE vlIn+1.2 TO vlIn
      IF pwWw="2"
           STORE vlIn+0.1 TO vlIn
           @vLIN,mCLN+16 Say "Med:" Font "&mLetSwi",9 Style "NQ"
           STORE vlIn+0.3 TO vlIn
           IF vlIn>mpAg-3
                DO cdE_1300z IN FAC0000A
           ENDIF
           DO itC_1300z IN FAC0000A WITH "D"
           STORE vlIn+1.3 TO vlIn
           IF vlIn>mpAg-3
                DO cdE_1300z IN FAC0000A
           ENDIF
           SELECT deT_fact
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Lde_1300z
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say Replicate("_",104) Font "&mLetAri",9 Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 ENDCASE
ENDPROC
*
PROCEDURE ItC_1300z
 PARAMETER ppRr
 SELECT itE_fact
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      PUBLIC plL1, plL2, plL3, pp11, pp21, pmLa, pmAn
      STORE 01 TO plL1, plL2, plL3
      STORE 30 TO vcLn
      DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"= ;
         f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
           IF f1302opc="S"
                SKIP
                LOOP
           ENDIF
           IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
                STORE vlIn+1.2 TO vlIn
                STORE 01 TO plL1, plL2, plL3
                STORE 30 TO vcLn
                IF vlIn>mpAg-3
                     DO ccO_1300z IN FAC0000A WITH "2"
                ENDIF
           ENDIF
           STORE STR(f1302p11, 3, 0) TO pp11
           STORE STR(f1302p21, 3, 0) TO pp21
           STORE STR(f1302mla, 6, 3) TO pmLa
           STORE STR(f1302man, 6, 3) TO pmAn
           DO CASE
                CASE vtPo=5 .OR. vtPo=4 .OR. vtPo=7
                     DO CASE
                          CASE f1302un1="M"
                               @vLIN,mCLN+vCLN+3.0 Say pMLA             Font "&mLetRom",11 Style "NQ"
                          CASE f1302un1="P"
                               @vLIN,mCLN+vCLN+0.0 Say pP11             Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+vCLN+4.8 Say '"'              Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f1302p12)<>"/"
                                    @vLIN,mCLN+vCLN+5.8 Say F1302P12      Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+12.4 Say "x"                     Font "&mLetRom",11 Style "BQ"
                     DO CASE
                          CASE f1302un2="M"
                               @vLIN,mCLN+vCLN+17 Say pMAN              Font "&mLetRom",11 Style "NQ"
                          CASE f1302un2="P"
                               @vLIN,mCLN+vCLN+14.5 Say pP21            Font "&mLetRom",11 Style "NQ"
                               @vLIN,mCLN+vCLN+19.3 Say '"'             Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f1302p22)<>"/"
                                    @vLIN,mCLN+vCLN+20.3 Say F1302P22     Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+25.5 Say " = "+Str(F1302CTD,4,0) Font "&mLetRom",11 Style "NQ"
                     STORE vcLn+33 TO vcLn
                     STORE plL1+1 TO plL1
                CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                     @vLIN,mCLN+vCLN+3.0 Say F1302MLA                 Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+9.9 Say "="+Str(F1302CTD,4,0)    Font "&mLetRom",11 Style "NQ"
                     STORE vcLn+18 TO vcLn
                     STORE plL2+1 TO plL2
                CASE vtPo=11
                     @vLIN,mCLN+vCLN+02.0 Say F1302CA1              Font "&mLetSwi",9 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+05.0 Say F1302MLA              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+12.4 Say "x"                   Font "&mLetSwi",9 Style "BQ" Size 1,1
                     @vLIN,mCLN+vCLN+16.0 Say F1302CA2              Font "&mLetSwi",9 Style "NQ" Size 1,2   Pict "9"
                     @vLIN,mCLN+vCLN+19.0 Say F1302MAN              Font "&mLetSwi",9 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+26.0 Say "="+Str(F1302CTD,4,0) Font "&mLetSwi",9 Style "NQ"
                     STORE vcLn+34 TO vcLn
                     STORE plL1+1 TO plL1
           ENDCASE
           SKIP
      ENDDO
      RELEASE plL1, plL2, plL3, pp11, pp21, pmLa, pmAn
 ENDIF
ENDPROC
*
PROCEDURE Cnp_1300z
 STORE 00 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
      CASE mpRt="2"
           @vLIN,mCLN Say "PROFORMA No."+vSER+"-"+vDOC Font "&mLetRom",14 Style "BQ"
 ENDCASE
 STORE vlIn+0.5 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
      CASE mpRt="2"
           @vLIN,mCLN Say Replicate("_",110) Font "&mLetAri",9 Style "NT"
 ENDCASE
 STORE vlIn+1.3 TO vlIn
ENDPROC
*
PROCEDURE Fel_1300z
 PUBLIC puNi, plIn, ppZa
 SELECT caB_fact
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_fel IN FAC0000A
 STORE vlIn+1 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300FEM               Font "&mLetAri",9 Style "NQ"
 @vLIN,108 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say F1300FEM+F1300DIA      Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "RUC"               Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300RUC            Font "&mLetAri",9 Style "NQ"
 @vLIN,108 Say "Forma de Pago"     Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Dirección"         Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300DIR            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "Tipo de Moneda"    Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f1300mon=1
           @vLIN,138 Say "Soles"           Font "&mLetAri",9 Style "NQ"
      CASE f1300mon=2
           @vLIN,138 Say "Dólar Americano" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,034 Say F1300DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "T/Cambio"          Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,143 Say vTCA                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,034 Say F1300DEP            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "Guía de Remisión"  Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say vCM1                Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S12"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300CM2            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 @vLIN,011.0 Say "CODIGO"          Font "&mLetAri",8 Style "NQ"
 @vLIN,027.0 Say "DESCRIPCION"     Font "&mLetAri",8 Style "NQ"
 @vLIN,111.9 Say "UNIDAD"          Font "&mLetAri",8 Style "NQ"
 @vLIN,126.0 Say "CANTIDAD"        Font "&mLetAri",8 Style "NQ"
 @vLIN,142.0 Say "VALOR UNITARIO"  Font "&mLetAri",8 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_1300z IN FAC0000A
      IF mcIa="28"
           DO pc2_1300z IN FAC0000A
      ELSE
           DO pc1_1300z IN FAC0000A
      ENDIF
      IF ppZa=0
           @vLIN,27 Say AllTrim(F1301DCR)                         Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
      ELSE
           @vLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,3,0) Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
      ENDIF
      IF vtOt<>0
           @vLIN,008.0 Say vCOD  Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S13"
           @vLIN,112.5 Say pUNI  Font "&mLetAri",9 Style "NQ" Size 1,7  Pict "@S7"
           @vLIN,136.8 Say vCAN  Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @vLIN,155.2 Say vPRE  Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      ENDIF
      DO liN_1300z IN FAC0000A WITH vlIn
      DO li2_1300z IN FAC0000A WITH vlIn
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 STORE vlIn TO plIn
 DO fiN_1300z IN FAC0000A WITH "FE"
 IF vlIn>plIn .OR. vlIn=0 .OR. vlIn<70
      IF vlIn=0 .OR. vlIn<70
           STORE 70 TO vlIn
      ENDIF
      DO WHILE .T.
           IF plIn>vlIn
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_1300z IN FAC0000A WITH plIn
           STORE plIn+1 TO plIn
      ENDDO
 ENDIF
 SELECT caB_fact
 STORE vlIn+0.3 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,08 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,112.2 Say "OP.GRAVADAS"         Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL                  Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "OP.INAFECTAS"        Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "OP.EXONERADAS"       Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "OP.GRATUITAS"        Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "OTROS CARGOS"        Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "OTROS TRIBUTOS"      Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "FLETE"               Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "DCTO/REDOND"         Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F1300NET-tVAL         Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "IGV "+Str(F1300PIG,2,0)+"%" Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F1300IGV                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "TOTAL"               Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F1300TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE vtDo="FE"
           @vLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica"                                      Font "&mLetAri",7 Style "NQ"
      CASE vtDo="FC"
           @vLIN+0.0,06.4 Say "Representación impresa de la Factura Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @vLIN+1.5,06.4 Say "Puede verificarla utilizando su clave SOL."                                        Font "&mLetAri",7 Style "NQ"
 ENDCASE
 RELEASE puNi, plIn, ppZa
ENDPROC
*
PROCEDURE ItF_1300z
 PUBLIC plL1, plL2, plL3
 STORE 01 TO plL1, plL2, plL3
 STORE 30 TO vcLn
 SELECT itE_fact
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      IF plL1>2 .OR. plL2>4 .OR. plL3>3
           DO liN_1300z IN FAC0000A WITH vlIn
           DO li2_1300z IN FAC0000A WITH vlIn
           STORE vlIn+1 TO vlIn
           STORE 01 TO plL1, plL2, plL3
           STORE 30 TO vcLn
      ENDIF
      DO CASE
           CASE vtPo=5
                DO CASE
                     CASE f1302un1="M"
                          @vLIN,vCLN+05.7 Say F1302MLA    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un1="P"
                          @vLIN,vCLN+00.2 Say F1302P11    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,vCLN+01.0 Say '"'         Font "&mLetAri",8 Style "NQ"
                          IF ALLTRIM(f1302p12)<>"/"
                               @vLIN,vCLN+02.0 Say F1302P12 Font "&mLetAri",8 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,vCLN+07.8 Say "x"                 Font "&mLetAri",8 Style "NQ"
                DO CASE
                     CASE f1302un2="M"
                          @vLIN,vCLN+15.3 Say F1302MAN    Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                     CASE f1302un2="P"
                          @vLIN,vCLN+12.7 Say F1302P21    Font "&mLetAri",8 Style "NQ" Size 1,3.6 Pict "999"
                          @vLIN,vCLN+13.5 Say '"'         Font "&mLetAri",8 Style "NQ"
                          IF ALLTRIM(f1302p22)<>"/"
                               @vLIN,vCLN+14.5 Say F1302P22 Font "&mLetAri",8 Style "NQ"
                          ENDIF
                ENDCASE
                @vLIN,vCLN+20.3 Say "="                 Font "&mLetAri",8 Style "NQ"
                @vLIN,vCLN+26.5 Say F1302CTD            Font "&mLetAri",8 Style "NQ" Size 1,5.0 Pict "9999"
                STORE vcLn+34 TO vcLn
                STORE plL1+1 TO plL1
           CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                @vLIN,vCLN+05.7 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,vCLN+07.8 Say "="      Font "&mLetAri",8 Style "NQ"
                @vLIN,vCLN+14.1 Say F1302CTD Font "&mLetAri",8 Style "NQ" Size 1,5.0 Pict "9999"
                STORE vcLn+19 TO vcLn
                STORE plL2+1 TO plL2
           CASE vtPo=4 .OR. vtPo=7
                @vLIN,vCLN+03.7 Say F1302MLA Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,vCLN+05.8 Say "x"      Font "&mLetAri",8 Style "NQ"
                @vLIN,vCLN+13.3 Say F1302MAN Font "&mLetAri",8 Style "NQ" Size 1,7.2 Pict "99.999"
                @vLIN,vCLN+15.8 Say "="      Font "&mLetAri",8 Style "NQ"
                @vLIN,vCLN+22.0 Say F1302CTD Font "&mLetAri",8 Style "NQ" Size 1,5.0 Pict "9999"
                STORE vcLn+28 TO vcLn
                STORE plL3+1 TO plL3
      ENDCASE
      SKIP
 ENDDO
 RELEASE plL1, plL2, plL3
ENDPROC
*
PROCEDURE Cab_Fel
 PRIVATE pdIr, plEn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 DO coLbln
 @vLIN,93.2 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 @vLIN,93.7 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,102.1 Say "R.U.C. N"                    Font "&mLetAri",16 Style "BQ"
 @vLIN,120.7 Say Chr(176)                      Font "&mLetAri",16 Style "BQ"
 @vLIN,124.2 Say mRUC                          Font "&mLetRom",16 Style "BQ"
 DO CASE
      Case File("&mDBF")
           DO caB_fel1
      OTHERWISE
           DO caB_fel2
 ENDCASE
 @vLIN,93.2 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 @vLIN,93.7 Say Replicate("-",55)              Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Cab_Fel1
 @vLIN,009.0 Say "&mDBF" Bitmap Size 20,30 Isometric
 STORE vlIn+0.1 TO vlIn
 @vLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,009.0 Say mRAZ                            Font "&mLetRom",12 Style "BT"
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.3 TO vlIn
 DO CASE
      CASE vtDo="FE" .OR. vtDo="FC"
           @vLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE" .OR. vtDo="BC"
           @vLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA" Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @vLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      @vLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      @vLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO CASE
      CASE vtDo="FE"
           @vLIN,115 Say "F"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BE"
           @vLIN,115 Say "B"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="FC"
           @vLIN,115 Say "E"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BC"
           @vLIN,115 Say "EB"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
 ENDCASE
 DO coLbln
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cab_Fel2
 @vLIN,009.0 Say mRAZ                            Font "&mLetRom",13 Style "BT"
 @vLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.5 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.5 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @vLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",10 Style "NQ"
 ELSE
      @vLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",10 Style "NQ"
 ENDIF
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      @vLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",10 Style "NQ"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 DO CASE
      CASE vtDo="FE" .OR. vtDo="FC"
           @vLIN,102.4 Say "FACTURA ELECTRÓNICA"         Font "&mLetAri",14 Style "BQ"
      CASE vtDo="BE" .OR. vtDo="BC"
           @vLIN,096.0 Say "BOLETA DE VENTA ELECTRÓNICA" Font "&mLetAri",13 Style "BQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+0.6 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 @vLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO CASE
      CASE vtDo="FE"
           @vLIN,115 Say "F"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BE"
           @vLIN,115 Say "B"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="FC"
           @vLIN,115 Say "E"+vSER+"-"+vDOC         Font "&mLetAri",17 Style "BQ"
      CASE vtDo="BC"
           @vLIN,115 Say "EB"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
 ENDCASE
 DO coLbln
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.8 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.8 TO vlIn
 @vLIN,093.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
ENDPROC
*
PROCEDURE Det_Fel_Chi
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,011.0 Say "CODIGO"          Font "&mLetAri",7 Style "BQ"
 @pLIN,027.0 Say "DESCRIPCION"     Font "&mLetAri",7 Style "BQ"
 @pLIN,111.9 Say "UNIDAD"          Font "&mLetAri",7 Style "BQ"
 @pLIN,126.0 Say "CANTIDAD"        Font "&mLetAri",7 Style "BQ"
 @pLIN,142.0 Say "VALOR UNITARIO"  Font "&mLetAri",7 Style "BQ"
 STORE plIn+0.3 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 @pLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @pLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE plIn+0.7 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 STORE plIn+0.5 TO plIn
 DO liN_1300z IN FAC0000A WITH plIn
 DO li2_1300z IN FAC0000A WITH plIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_1300z IN FAC0000A
      DO pc1_1300z IN FAC0000A
      IF ppZa=0
           @pLIN,27 Say AllTrim(F1301DCR)                         Font "&mLetAri",8 Style "NQ" Size 1,80 Pict "@S80"
      ELSE
           @pLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,3,0) Font "&mLetAri",8 Style "NQ" Size 1,80 Pict "@S80"
      ENDIF
      IF vtOt<>0
           @pLIN,008.0 Say vCOD  Font "&mLetAri",8 Style "NQ" Size 1,10 Pict "@S13"
           @pLIN,112.5 Say pUNI  Font "&mLetAri",8 Style "NQ" Size 1,7  Pict "@S7"
           @pLIN,136.8 Say vCAN  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @pLIN,155.2 Say vPRE  Font "&mLetAri",8 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      ENDIF
      DO liN_1300z IN FAC0000A WITH plIn
      DO li2_1300z IN FAC0000A WITH plIn
      STORE plIn+1.1 TO plIn
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Lin_1300z
 PARAMETER plL1
 @pLL1,006.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL1,159.1 Say "|" Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Li2_1300z
 PARAMETER plL2
 @pLL2,025.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,110.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,121.8 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,140.8 Say "|" Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Li3_1300z
 PARAMETER plL3
 @pLL3,010.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL3,036.0 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL3,060.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL3,086.0 Say "|" Font "&mLetAri",13 Style "NT"
 DO li4_1300z WITH plL3
ENDPROC
*
PROCEDURE Li4_1300z
 PARAMETER plL4
 @pLL4,110.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL4,136.0 Say "|" Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Li5_1300z
 PARAMETER plL3
 @pLL3,110.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL3,136.0 Say "|" Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Li6_1300z
 PARAMETER plL2
 @pLL2,110.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,121.8 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,140.8 Say "|" Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Bel_1300z
 PUBLIC puNi, plIn, ppZa
 SELECT caB_fact
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_fel IN FAC0000A
 STORE vlIn+1 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Fecha de Emisión"     Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300FEM               Font "&mLetAri",9 Style "NQ"
 @vLIN,108 Say "Fecha de Vencimiento" Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                    Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say F1300FEM+F1300DIA      Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "DNI"               Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300ELE            Font "&mLetAri",9 Style "NQ"
 @vLIN,108 Say "Forma de Pago"     Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say F1300NFP            Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S16"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Sr. (es)"          Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say vNOM                Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "Vendedor"          Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say F1300NVE            Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S20"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Dirección"         Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300DIR            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "Tipo de Moneda"    Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f1300mon=1
           @vLIN,138 Say "Soles"           Font "&mLetAri",9 Style "NQ"
      CASE f1300mon=2
           @vLIN,138 Say "Dolar Americano" Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,034 Say F1300DIS            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "T/Cambio"          Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,143 Say vTCA                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99.999"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,034 Say F1300DEP            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 @vLIN,108 Say "Guia de Remisión"  Font "&mLetAri",9 Style "BQ"
 @vLIN,136 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,138 Say vCM1                Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S10"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Observaciones"     Font "&mLetAri",9 Style "BQ"
 @vLIN,032 Say ":"                 Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say F1300CM2            Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 @vLIN,011.0 Say "CODIGO"          Font "&mLetAri",8 Style "NQ"
 @vLIN,027.0 Say "DESCRIPCION"     Font "&mLetAri",8 Style "NQ"
 @vLIN,111.9 Say "UNIDAD"          Font "&mLetAri",8 Style "NQ"
 @vLIN,126.0 Say "CANTIDAD"        Font "&mLetAri",8 Style "NQ"
 @vLIN,142.4 Say "PRECIO-UNITA"    Font "&mLetAri",8 Style "NQ"
 STORE vlIn+0.5 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_1300z IN FAC0000A WITH vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      DO meD_1300z IN FAC0000A
      DO toT_pzasz IN FAC0000A
      SELECT deT_fact
      IF vmD3=2
           SKIP
           LOOP
      ENDIF
      DO unI_1300z IN FAC0000A
      DO pc2_1300z IN FAC0000A
      IF ppZa=0
           @vLIN,27 Say AllTrim(F1301DCR)                         Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
      ELSE
           @vLIN,27 Say AllTrim(F1301DCR)+" -Pzas:"+Str(pPZA,3,0) Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S80"
      ENDIF
      IF vtOt<>0
           @vLIN,008.0 Say vCOD  Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "@S13"
           @vLIN,112.5 Say pUNI  Font "&mLetAri",9 Style "NQ" Size 1,7  Pict "@S7"
           @vLIN,136.8 Say vCAN  Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
           @vLIN,155.2 Say vPRE  Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      ENDIF
      DO liN_1300z IN FAC0000A WITH vlIn
      DO li2_1300z IN FAC0000A WITH vlIn
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 STORE vlIn TO plIn
 DO fiN_1300z IN FAC0000A WITH "BE"
 IF vlIn>plIn .OR. vlIn=0 .OR. vlIn<70
      IF vlIn=0 .OR. vlIn<70
           STORE 70 TO vlIn
      ENDIF
      DO WHILE .T.
           IF plIn>vlIn
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_1300z IN FAC0000A WITH plIn
           STORE plIn+1 TO plIn
      ENDDO
 ENDIF
 SELECT caB_fact
 STORE vlIn+0.3 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,08 Say "SON: "+vFRA+" S.E.u.O." Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 IF f1300tot-tvAl>0
      @vLIN,112.2 Say "REDONDEO"         Font "&mLetAri",8 Style "NQ"
 ELSE
      @vLIN,112.2 Say "DESCUENTO"        Font "&mLetAri",8 Style "NQ"
 ENDIF
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,154.2 Say F1300TOT-tVAL         Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "TOTAL"               Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,154.2 Say F1300TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE vtDo="BE"
           @vLIN,06.4 Say "Representación impresa de la Boleta Electrónica"                                  Font "&mLetAri",5 Style "NQ"
      CASE vtDo="BC"
           @vLIN+0.0,06.4 Say "Representación impresa de la Boleta Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",5 Style "NQ"
           @vLIN+1.5,06.4 Say "Puede verificarla utilizando su clave SOL."                                       Font "&mLetAri",5 Style "NQ"
 ENDCASE
 RELEASE puNi, plIn, ppZa
ENDPROC
*
PROCEDURE Fac_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+09.0 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+40.8 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+70.0 Say vNFP          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say vRUC          Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+40.8 Say vVEN          Font "&mLetRom",10 Style "NQ" Pict "@S30"
 @vLIN,mCLN+70.0 Say vTEL          Font "&mLetRom",10 Style "NQ"
 STORE vlIn+01.3 TO vlIn
 @vLIN,mCLN+09.0 Say vCM2          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 @vLIN,mCLN+67.7 Say vTCA          Font "&mLetRom",10 Style "NQ" Size 1,10 Pict "99.999"
 @vLIN,mCLN+78.5 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+3.4 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
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
                @vLIN,mCLN+2 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,13 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+1 Say vCAN Font "&mLetRom",10 Style "NQ" Size 1,7  Pict "999,999"
           ENDIF
           @vLIN,mCLN+15 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDIF
      @vLIN,mCLN+25 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc1_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+129.4 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+144.7 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
           DO itE_1300z IN FAC0000A
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "FA"
 @vLIN,mCLN+054 Say tVAL             Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+075 Say F1300NET-tVAL    Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99" Function "("
 @vLIN,mCLN+095 Say F1300NET         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+117 Say F1300IGV         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 @vLIN,mCLN+134 Say vSIG             Font "&mLetRom",11 Style "NQ"
 @vLIN,mCLN+143 Say F1300TOT         Font "&mLetRom",11 Style "NQ" Size 1,12 Pict "999,999.99"
 STORE vlIn+002 TO vlIn
 @vLIN,mCLN+055 Say vFRA+" S.E.u.O." Font "&mLetAri",8  Style "NQ" Size 1,100 Pict "@S100"
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Bol_1300z
 PUBLIC puNi, pdIr
 DO diR_1300z IN FAC0000A
 @vLIN,mCLN+012 Say vFEM          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+041 Say vDNI          Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+067 Say vCM1          Font "&mLetRom",10 Style "NQ" Size 1,11 Pict "@S11"
 @vLIN,mCLN+104 Say vVEN          Font "&mLetRom",10 Style "NQ" Size 1,30 Pict "@S30"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say vNOM          Font "&mLetRom",11 Style "NQ" Size 1,78 Pict "@S80"
 @vLIN,mCLN+097 Say vSER+"-"+vDOC Font "&mLetRom",10 Style "NQ"
 STORE vlIn+1.3 TO vlIn
 @vLIN,mCLN+012 Say pDIR          Font "&mLetRom",10 Style "NQ" Size 1,78 Pict "@S80"
 STORE vlIn+2.8 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
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
           @vLIN,mCLN+18 Say pUNI   Font "&mLetRom",10 Style "NQ" Size 1,9 Pict "@S10"
      ENDIF
      @vLIN,mCLN+28 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",10 Style "NQ" Size 1,75 Pict "@S75"
      DO pc2_1300z IN FAC0000A
      IF vtOt<>0
           @vLIN,mCLN+123.9 Say vPRE Font "&mLetRom",10 Style "NQ" Size 1,13.4 Pict "999,999.9999"
           @vLIN,mCLN+141.0 Say vTOT Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SELECT itE_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF() .AND. ALLTRIM(f1302cod)+"*"=ALLTRIM(vcOd)+"*"
           DO itE_1300z IN FAC0000A
           STORE vlIn+1.3 TO vlIn
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT caB_fact
 DO fiN_1300z IN FAC0000A WITH "BO"
 @vLIN,mCLN+045.3 Say vTCA                 Font "&mLetRom",10 Style "NQ" Size 1,10   Pict "99.999"
 @vLIN,mCLN+073.5 Say tVAL                 Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 @vLIN,mCLN+110.0 Say F1300TOT-tVAL        Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99" Function "("
 @vLIN,mCLN+134.0 Say vSIG                 Font "&mLetRom",10 Style "NQ"
 @vLIN,mCLN+142.5 Say F1300TOT             Font "&mLetRom",10 Style "NQ" Size 1,12.4 Pict "999,999.99"
 STORE vlIn+001.5 TO vlIn
 @vLIN,mCLN+048.0 Say vFRA+" S.E.u.O."     Font "&mLetAri",8  Style "NQ" Size 1,100  Pict "@S100"
 RELEASE puNi, pdIr
ENDPROC
*
PROCEDURE Obr_1300z
 STORE 00 TO vlIn
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      DO prD_1300z IN FAC0000A
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      IF vpAg=0 .OR. vlIn>mpAg-2
           DO coB_1300z IN FAC0000A
      ENDIF
      SELECT deT_fact
      @vLIN,mCLN    Say F1301CAN                   Font "&mLetRom",12 Style "BQ" Size 1,7 Pict "9999"
      @vLIN,mCLN+10 Say AllTrim(F1301DCR)+" "+cLAR Font "&mLetRom",12 Style "BQ"
      STORE f1301can TO vcAn
      STORE vlIn+1.6 TO vlIn
      SELECT coN_fact
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc+ ;
         ALLTRIM(f1304cod)+"*"=vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
           IF vlIn>mpAg-2
                DO coB_1300z IN FAC0000A
           ENDIF
           STORE f1304cdg TO ccDg
           SELECT prOductos
           SEEK ALLTRIM(ccDg)+"*"
           IF EOF()
                STORE SPACE(80) TO cdCr
                STORE SPACE(30) TO vnUv
           ELSE
                STORE f2111dcr TO cdCr
                STORE f2111nuv TO vnUv
           ENDIF
           SELECT coN_fact
           IF f1304dst=0
                STORE f1304can TO vcUn
           ELSE
                STORE f1304cun-f1304dst TO vcUn
                STORE vcUn*vcAn TO vcUn
           ENDIF
           IF INT(vcUn)<>vcUn
                @vLIN,mCLN+12 Say vCUN  Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "999,999.9999"
           ELSE
                @vLIN,mCLN+11 Say vCUN  Font "&mLetRom",10 Style "NQ" Size 1,9  Pict "999,999"
           ENDIF
           @vLIN,mCLN+26 Say vNUV     Font "&mLetRom",10 Style "NQ" Size 1,07 Pict "@S7"
           @vLIN,mCLN+37 Say F1304CDG Font "&mLetRom",10 Style "NQ" Size 1,15 Pict "@S15"
           @vLIN,mCLN+54 Say cDCR     Font "&mLetRom",10 Style "NQ" Size 1,60 Pict "@S60"
           STORE vlIn+1.3 TO vlIn
           SKIP
      ENDDO
      SELECT deT_fact
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Cob_1300z
 PUBLIC pdIr
 STORE 00 TO vlIn
 STORE vpAg+1 TO vpAg
 DO CASE
      CASE vtDo="TK"
           @vLIN,mCLN Say "Orden de Obra de Ticket No."        +vSER+"-"+vDOC Font "&mLetAri",12 Style "NT"
      CASE vtDo="FA"
           @vLIN,mCLN Say "Orden de Obra de Factura No."       +vSER+"-"+vDOC Font "&mLetAri",12 Style "NT"
      CASE vtDo="BO"
           @vLIN,mCLN Say "Orden de Obra de Boleta No."        +vSER+"-"+vDOC Font "&mLetAri",12 Style "NT"
      CASE vtDo="NP"
           @vLIN,mCLN Say "Orden de Obra de N.P. No."          +vSER+"-"+vDOC Font "&mLetAri",12 Style "NT"
      CASE vtDo="CT"
           @vLIN,mCLN Say "Relación de Obra de Cotización No." +vSER+"-"+vDOC Font "&mLetAri",12 Style "NT"
 ENDCASE
 @vLIN,mCLN+135 Say "Pagina: "+Str(vPAG,2,0)                                Font "&mLetAri",9  Style "NT"
 STORE vlIn+0.4 TO vlIn
 DO liN_0000a WITH 101, vlIn
 STORE vlIn+1.3 TO vlIn
 IF vpAg=1
      STORE vlIn+0.3 TO vlIn
      DO diR_1300z IN FAC0000A
      @vLIN,mCLN     Say "Cliente"   Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+016 Say ":"         Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+018 Say vNOM        Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+106 Say "Fecha"     Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+119 Say ":"         Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+121 Say vFEM        Font "&mLetAri",10 Style "NQ"
      STORE vlIn+1.3 TO vlIn
      @vLIN,mCLN     Say "Dirección" Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+016 Say ":"         Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+018 Say pDIR        Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+106 Say "Hora"      Font "&mLetAri",10 Style "NQ"
      @vLIN,mCLN+119 Say ":"         Font "&mLetAri",10 Style "BQ"
      @vLIN,mCLN+121 Say vTIM        Font "&mLetAri",10 Style "NQ"
      STORE vlIn+1 TO vlIn
      DO liN_0000a WITH 101, vlIn
      STORE vlIn+1.6 TO vlIn
 ENDIF
 RELEASE pdIr
ENDPROC
*
PROCEDURE Ite_1300z
 SELECT itE_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      PUBLIC plL1, plL2, plL3
      STORE 01 TO plL1, plL2, plL3
      STORE 16 TO vcLn
      DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"= ;
         f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
           IF f1302opc="S"
                SKIP
                LOOP
           ENDIF
           IF plL1>mlL1 .OR. plL2>mlL2 .OR. plL3>mlL3
                STORE vlIn+1.4 TO vlIn
                STORE 01 TO plL1, plL2, plL3
                STORE 16 TO vcLn
           ENDIF
           DO CASE
                CASE vtPo=5
                     DO CASE
                          CASE f1302un1="M"
                               @vLIN,mCLN+vCLN+3.8 Say F1302MLA     Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f1302un1="P"
                               @vLIN,mCLN+vCLN+0.1 Say F1302P11     Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                               @vLIN,mCLN+vCLN+4.4 Say '"'          Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f1302p12)<>"/"
                                    @vLIN,mCLN+vCLN+5.6 Say F1302P12  Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+11.6 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                     DO CASE
                          CASE f1302un2="M"
                               @vLIN,mCLN+vCLN+16.2 Say F1302MAN    Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                          CASE f1302un2="P"
                               @vLIN,mCLN+vCLN+14.2 Say F1302P21    Font "&mLetRom",11 Style "NQ" Size 1,3.6 Pict "999"
                               @vLIN,mCLN+vCLN+18.2 Say '"'         Font "&mLetRom",11 Style "NQ"
                               IF ALLTRIM(f1302p22)<>"/"
                                    @vLIN,mCLN+vCLN+19.4 Say F1302P22 Font "&mLetRom",11 Style "NQ"
                               ENDIF
                     ENDCASE
                     @vLIN,mCLN+vCLN+25.7 Say "="                 Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+vCLN+28.1 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                     STORE vcLn+36 TO vcLn
                     STORE plL1+1 TO plL1
                CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
                     @vLIN,mCLN+vCLN+03.8 Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+11.6 Say "="                 Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+vCLN+16.2 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                     STORE vcLn+20 TO vcLn
                     STORE plL2+1 TO plL2
                CASE vtPo=4 .OR. vtPo=7
                     @vLIN,mCLN+vCLN+03.8 Say F1302MLA            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+11.6 Say "x"                 Font "&mLetRom",11 Style "NQ" Size 1,1
                     @vLIN,mCLN+vCLN+16.2 Say F1302MAN            Font "&mLetRom",11 Style "NQ" Size 1,7.2 Pict "99.999"
                     @vLIN,mCLN+vCLN+25.7 Say "="                 Font "&mLetRom",11 Style "BQ"
                     @vLIN,mCLN+vCLN+28.1 Say F1302CTD            Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "9999"
                     STORE vcLn+36 TO vcLn
                     STORE plL3+1 TO plL3
           ENDCASE
           SKIP
      ENDDO
      RELEASE plL1, plL2, plL3
      STORE vlIn+1.3 TO vlIn
 ENDIF
ENDPROC
*
PROCEDURE Pr2_1300z
 SELECT prOductos
 SEEK ALLTRIM(vcOd)+"*"
 IF EOF()
      STORE 2 TO vmD3
      STORE 1 TO vtPp
 ELSE
      STORE f2111md3 TO vmD3
      STORE f2111tpo TO vtPp
 ENDIF
 SELECT deT_fact
ENDPROC
*
PROCEDURE Gli_1300z
 PARAMETER pvA1
 FPUTS(ptXt, pvA1)
 FSEEK(ptXt, 0, 2)
ENDPROC
*
PROCEDURE Itx_0000a
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_0000a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cel_3610z
 PUBLIC plIn
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\OGOL.GPJ" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\OGOL.GPJ" TO mdBf
 ENDIF
 @ vlIn, 0 SAY " "
 STORE vlIn+1.3 TO vlIn
 DO caB_cel IN FAC0000A
 STORE vlIn+1 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Fecha de Emisión"          Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3610FEM                    Font "&mLetAri",9 Style "NQ"
 @vLIN,120 Say "ANULACIÓN DE LA OPERACIÓN" Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Documento que modifica:"   Font "&mLetAri",9 Style "BQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO CASE
      CASE SUBSTR(f3610cm1, 1, 2)="FC"
           @vLIN,9 Say "Factura Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="FE"
           @vLIN,9 Say "Factura Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BC"
           @vLIN,9 Say "Boleta Electrónica" Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BE"
           @vLIN,9 Say "Boleta Electrónica"  Font "&mLetAri",9 Style "BQ"
 ENDCASE
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE SUBSTR(f3610cm1, 1, 2)="FE"
           @vLIN,36 Say "F"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BE"
           @vLIN,36 Say "B"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="FC"
           @vLIN,36 Say "E"+Substr(F3610CM1,4,12)  Font "&mLetAri",9 Style "BQ"
      CASE SUBSTR(f3610cm1, 1, 2)="BC"
           @vLIN,36 Say "EB"+Substr(F3610CM1,5,12) Font "&mLetAri",9 Style "BQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Señor (es)"                Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say vNOM                        Font "&mLetAri",9 Style "NQ" Size 1,52 Pict "@S54"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "RUC"                       Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3610RUC                    Font "&mLetAri",9 Style "NQ"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,009 Say "Tipo de Moneda"            Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE f3610mon=1
           @vLIN,36 Say "Soles"              Font "&mLetAri",9 Style "NQ"
      CASE f3610mon=2
           @vLIN,36 Say "Dólar Americano"    Font "&mLetAri",9 Style "NQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 SELECT deT_nota
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 @vLIN,009 Say "Motivo o Sustento"         Font "&mLetAri",9 Style "BQ"
 @vLIN,034 Say ":"                         Font "&mLetAri",9 Style "BQ"
 @vLIN,036 Say F3611DES                    Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
 SELECT caB_nota
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 @vLIN,008.0 Say "CANTIDAD"                Font "&mLetAri",8 Style "NQ"
 @vLIN,027.0 Say "UNIDAD DE MEDIDA"        Font "&mLetAri",8 Style "NQ"
 @vLIN,051.8 Say "DESCRIPCION"             Font "&mLetAri",8 Style "NQ"
 IF SUBSTR(f3610cm1, 1, 2)="FA" .OR. SUBSTR(f3610cm1, 1, 2)="FE" .OR.  ;
    SUBSTR(f3610cm1, 1, 2)="FC"
      @vLIN,142.0 Say "VALOR UNITARIO"       Font "&mLetAri",8 Style "NQ"
 ELSE
      @vLIN,141.8 Say "PRECIO UNITARIO"      Font "&mLetAri",8 Style "NQ"
 ENDIF
 STORE vlIn+0.5 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 @vLIN,06.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)         Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li2_3610z IN FAC0000A WITH vlIn
 STORE f3610net TO tnEt
 STORE f3610tot TO ttOt
 STORE 0 TO tvAl
 SELECT deT_nota
 SKIP
 DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+vsEr+vdOc
      @vLIN,021.2 Say F3611CAN Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      @vLIN,027.0 Say F3611NUV Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S15"
      @vLIN,051.8 Say F3611DES Font "&mLetAri",9 Style "NQ" Size 1,80 Pict "@S85"
      @vLIN,154.5 Say F3611PRE Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "9,999,999.9999"
      DO liN_1300z IN FAC0000A WITH vlIn
      DO li2_3610z IN FAC0000A WITH vlIn
      STORE vlIn+1.2 TO vlIn
      STORE f3611pre*f3611can TO vtOt
      STORE tvAl+vtOt TO tvAl
      SKIP
 ENDDO
 STORE vlIn TO plIn
 DO fiN_1300z IN FAC0000A WITH "N3"
 IF vlIn>plIn .OR. vlIn=0 .OR. vlIn<70
      IF vlIn=0 .OR. vlIn<70
           STORE 70 TO vlIn
      ENDIF
      DO WHILE .T.
           IF plIn>vlIn
                EXIT
           ENDIF
           DO liN_1300z IN FAC0000A WITH plIn
           DO li2_3610z IN FAC0000A WITH plIn
           STORE plIn+1 TO plIn
      ENDDO
 ENDIF
 SELECT caB_nota
 IF SUBSTR(f3610cm1, 1, 2)="BO" .OR. SUBSTR(f3610cm1, 1, 2)="BE" .OR.  ;
    SUBSTR(f3610cm1, 1, 2)="BC"
      STORE tvAl/(1+(mpIg/100)) TO tvAl
 ENDIF
 STORE vlIn+0.3 TO vlIn
 @vLIN,06.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127) Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,08 Say "SON: "+vFRA+" S.E.u.O."  Font "&mLetAri",9 Style "NQ" Size 1,100 Pict "@S100"
 @vLIN,112.2 Say "Sub Total Ventas"     Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                   Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL                   Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Anticipos"           Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Dcto/Redond"         Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tVAL-tNET             Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Valor de Venta"      Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say tNET                  Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "ISC"                 Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "IGV "+Str(F3610PIG,2,0)+"%" Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F3610IGV                     Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Otros Cargos"               Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                            Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Otros Tributos"             Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                         Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say 0                            Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.6 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 STORE vlIn+0.7 TO vlIn
 DO liN_1300z IN FAC0000A WITH vlIn
 DO li5_1300z IN FAC0000A WITH vlIn
 @vLIN,112.2 Say "Importe Total"       Font "&mLetAri",8 Style "NQ"
 @vLIN,137.8 Say vSIG                  Font "&mLetAri",8 Style "NQ"
 @vLIN,153.2 Say F3610TOT              Font "&mLetAri",8 Style "BQ" Size 1,20 Pict "99,999,999.99"
 STORE vlIn+0.5 TO vlIn
 @vLIN,06.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.1 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 @vLIN,07.4 Say Replicate("-",127)     Font "&mLetAri",13 Style "NT"
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE vtDo="N1"
           @vLIN,06.4 Say "Representación impresa de la Nota de Credito Electrónica"                                      Font "&mLetAri",7 Style "NQ"
      CASE vtDo="N3"
           @vLIN+0.0,06.4 Say "Representación impresa de la Nota de Credito Electrónica gererada en el Sistema de Sunat." Font "&mLetAri",7 Style "NQ"
           @vLIN+1.5,06.4 Say "Puede verificarla utilizando su clave SOL."                                                Font "&mLetAri",7 Style "NQ"
 ENDCASE
 RELEASE plIn
ENDPROC
*
PROCEDURE Li2_3610z
 PARAMETER plL2
 @pLL2,025.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,050.1 Say "|" Font "&mLetAri",13 Style "NT"
 @pLL2,140.8 Say "|" Font "&mLetAri",13 Style "NT"
ENDPROC
*
PROCEDURE Cab_Cel
 PRIVATE pdIr, plEn
 DO coLbln
 @vLIN,90.2 Say Replicate("-",57)              Font "&mLetAri",13 Style "NT"
 @vLIN,90.7 Say Replicate("-",57)              Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                           Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                           Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,102.1 Say "R.U.C. N"                    Font "&mLetAri",16 Style "BQ"
 @vLIN,120.7 Say Chr(176)                      Font "&mLetAri",16 Style "BQ"
 @vLIN,124.2 Say mRUC                          Font "&mLetRom",16 Style "BQ"
 DO CASE
      Case File("&mDBF")
           DO caB_cel1
      OTHERWISE
           DO caB_cel2
 ENDCASE
 @vLIN,90.2 Say Replicate("-",57)              Font "&mLetAri",13 Style "NT"
 @vLIN,90.7 Say Replicate("-",57)              Font "&mLetAri",13 Style "NT"
 RELEASE pdIr, plEn
ENDPROC
*
PROCEDURE Cel_Nro
 DO CASE
      CASE vtDo="N1" .OR. vtDo="N2"
           @vLIN,115 Say Substr(vSER,1,1)+"0"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
      CASE vtDo="N3" .AND. vsEr="E0"
           @vLIN,115 Say Substr(vSER,1,1)+"0"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
      CASE vtDo="N3" .AND. vsEr="EB"
           @vLIN,115 Say Substr(vSER,1,2)+"0"+Substr(vSER,3,1)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
      CASE vtDo="N4" .AND. vsEr="E0"
           @vLIN,115 Say Substr(vSER,1,1)+"0"+Substr(vSER,2,2)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
      CASE vtDo="N4" .AND. vsEr="EB"
           @vLIN,115 Say Substr(vSER,1,2)+"0"+Substr(vSER,3,1)+"-"+vDOC Font "&mLetAri",17 Style "BQ"
 ENDCASE
ENDPROC
*
PROCEDURE Cab_Cel1
 DO coLbln
 @vLIN,009.0 Say "&mDBF" Bitmap Size 20,30 Isometric
 STORE vlIn+0.1 TO vlIn
 @vLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+1.3 TO vlIn
 @vLIN,009.0 Say mRAZ                            Font "&mLetRom",12 Style "BT"
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.3 TO vlIn
 DO CASE
      CASE vtDo="N1" .OR. vtDo="N3"
           @vLIN,092.4 Say "NOTA DE CRÉDITO ELECTRÓNICA" Font "&mLetAri",14 Style "BQ"
      CASE vtDo="N2" .OR. vtDo="N4"
           @vLIN,093.0 Say "NOTA DE DÉBITO ELECTRÓNICA"  Font "&mLetAri",14 Style "BQ"
 ENDCASE
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @vLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      @vLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      @vLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO ceL_nro IN FAC0000A
 DO coLbln
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ" Size 1,90 Pict "@S70"
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cab_Cel2
 @vLIN,009.0 Say mRAZ                            Font "&mLetRom",13 Style "BT"
 @vLIN,120.5 Say Chr(6)                          Font "&mLetAri",16 Style "BT"
 STORE vlIn+0.5 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.5 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      STORE SUBSTR(mdIr, 1, 50) TO pdIr
      STORE RAT(" ", pdIr) TO plEn
      @vLIN,9 Say Substr(mDIR,1,pLEN)              Font "&mLetAri",10 Style "NQ"
 ELSE
      @vLIN,9 Say AllTrim(mDIR)                    Font "&mLetAri",10 Style "NQ"
 ENDIF
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      @vLIN,9 Say AllTrim(Substr(mDIR,pLEN+1,90))  Font "&mLetAri",10 Style "NQ"
 ELSE
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 DO CASE
      CASE vtDo="N1" .OR. vtDo="N3"
           @vLIN,092.4 Say "NOTA DE CRÉDITO ELECTRÓNICA" Font "&mLetAri",14 Style "BQ"
      CASE vtDo="N2" .OR. vtDo="N4"
           @vLIN,093.0 Say "NOTA DE DÉBITO ELECTRÓNICA"  Font "&mLetAri",14 Style "BQ"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(mtEl))<>0
           @vLIN,9 Say "Teléfonos: "+mTEL            Font "&mLetAri",9  Style "NQ"
      ENDIF
 ELSE
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 STORE vlIn+0.6 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.7 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 IF LEN(ALLTRIM(mdIr))>50
      IF LEN(ALLTRIM(meMa))<>0
           @vLIN,9 Say "e-Mail : "+mEMA              Font "&mLetAri",9  Style "NQ"
      ENDIF
 ENDIF
 @vLIN,107.0 Say "N"                             Font "&mLetAri",17 Style "BQ"
 @vLIN,110.7 Say Chr(176)                        Font "&mLetAri",17 Style "BQ"
 DO coLblz
 DO ceL_nro IN FAC0000A
 DO coLbln
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.8 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.8 TO vlIn
 @vLIN,090.0 Say "|"                             Font "&mLetAri",13 Style "NT"
 @vLIN,159.1 Say "|"                             Font "&mLetAri",13 Style "NT"
 STORE vlIn+0.6 TO vlIn
ENDPROC
*
PROCEDURE Tim_1300z
 PUBLIC pvAr, ptXt
 = INKEY(0.5)
 IF mpT3="FACT\" .AND.  .NOT. DIRECTORY("FACT")
      MD ("Fact")
 ENDIF
 STORE ALLTRIM(mpT3) TO mpT3
 DO CASE
      CASE vtDo="FC"
           STORE mpT3+"F_"+ALLTRIM(vsEr)+"_"+vdOc+".TXT" TO pvAr
      CASE vtDo="BC"
           STORE mpT3+"B_"+ALLTRIM(vsEr)+"_"+vdOc+".TXT" TO pvAr
      CASE vtDo="N3"
           STORE mpT3+"NC_"+ALLTRIM(vsEr)+"_"+vdOc+".TXT" TO pvAr
      CASE vtDo="N4"
           STORE mpT3+"ND_"+ALLTRIM(vsEr)+"_"+vdOc+".TXT" TO pvAr
 ENDCASE
 pTXT=FCreate("&pVAR")
 FSEEK(ptXt, 0, 2)
 DO CASE
      CASE vtDo="FC"
           DO glI_1300z WITH "FA: E"+vsEr+"_"+vdOc+" - "+" Fecha : "+ ;
              DTOC(vfEm)+" - "+mdIr
           DO glI_1300z WITH "RUC: "+vrUc+" Nombre: "+vnOm
      CASE vtDo="BC"
           DO glI_1300z WITH "BO: EB"+vsEr+"_"+vdOc+" - "+" Fecha : "+ ;
              DTOC(vfEm)+" - "+mdIr
           DO glI_1300z WITH "DNI: "+vdNi+" Nombre: "+vnOm
      CASE vtDo="N3"
           DO glI_1300z WITH "NC: "+vsEr+"_"+vdOc+" - "+" Fecha : "+ ;
              DTOC(vfEm)+" - "+mdIr
           DO glI_1300z WITH "RUC: "+vrUc+" Nombre: "+vnOm
      CASE vtDo="N4"
           DO glI_1300z WITH "ND: "+vsEr+"_"+vdOc+" - "+" Fecha : "+ ;
              DTOC(vfEm)+" - "+mdIr
           DO glI_1300z WITH "RUC: "+vrUc+" Nombre: "+vnOm
 ENDCASE
 IF vtDo="FC" .OR. vtDo="FE" .OR. vtDo="BC" .OR. vtDo="BE"
      DO glI_1300z WITH "Correo: "+vnTe
 ENDIF
 DO glI_1300z WITH " "
 IF vtDo="N3" .OR. vtDo="N4"
      SELECT deT_nota
      GOTO TOP
      SEEK vtDo+vsEr+vdOc
      DO CASE
           CASE vtDo="N3"
                DO glI_1300z WITH "Documento NC: "+SUBSTR(xcM1, 5, 12)
           CASE vtDo="N4"
                DO glI_1300z WITH "Documento ND: "+SUBSTR(xcM1, 5, 12)
      ENDCASE
      DO glI_1300z WITH "Motivo   : "+f3611des
      SELECT caB_nota
      DO glI_1300z WITH "Total    : "+xsIg+STR(f3610tot, 12, 2)
      FCLOSE(ptXt)
      RELEASE pvAr, ptXt
      RETURN
 ENDIF
 PUBLIC ptI1, ptOt, puNi, pvR1, pvR2, pvR3, pvR4, pvR5, pvR6, pdCt
 STORE "Codigo         Precio  Cantidad Dcto. Unid Descripcion" TO ptI1
 DO glI_1300z WITH ptI1
 SELECT deT_fact
 GOTO TOP
 STORE 0 TO ptOt
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      STORE f1301can TO vcAn
      STORE f1301nuv TO puNi
      IF AT("-", puNi)<>0
           STORE ALLTRIM(SUBSTR(puNi, AT("-", puNi)+1, 20)) TO puNi
      ENDIF
      DO pc1_1300z IN FAC0000A
      STORE ALLTRIM(f1301dcr) TO pvR6
      IF pvR6="Servic"
           STORE ALLTRIM(STR(vcAn, 7, 2))+" - "+pvR6 TO pvR6
           STORE 1 TO vcAn
      ELSE
           STORE ROUND(f1301can, 2) TO vcAn
           IF vcAn<f1301can
                STORE vcAn+0.01 TO vcAn
           ENDIF
      ENDIF
      STORE ROUND(f1301to1/vcAn, 2) TO vpRe
      IF vcAn*vpRe<f1301to1
           STORE vpRe+0.01 TO vpRe
      ENDIF
      IF vcAn*vpRe>f1301to1
           STORE INT((vcAn*vpRe)-f1301to1) TO pdCt
      ELSE
           STORE 0 TO pdCt
      ENDIF
      STORE ptOt+(vcAn*vpRe)-pdCt TO ptOt
      STORE SUBSTR(f1301cod, 1, 12) TO pvR1
      STORE STR(vpRe, 8, 2) TO pvR2
      STORE STR(vcAn, 9, 2) TO pvR3
      STORE STR(pdCt, 5, 2) TO pvR4
      STORE SUBSTR(puNi, 1, 4) TO pvR5
      STORE pvR6+SPACE(100) TO pvR6
      STORE SUBSTR(pvR6, 1, 80) TO pvR6
      DO glI_1300z WITH pvR1+" "+pvR2+" "+pvR3+" "+pvR4+" "+pvR5+" "+pvR6
      SKIP
 ENDDO
 SELECT caB_fact
 IF f1300net-ptOt<>0
      DO glI_1300z WITH "Descuento sin IGV:  "+STR((f1300net-ptOt)*-1, 12, 2)
      DO glI_1300z WITH "                    ------------"
 ENDIF
 DO glI_1300z WITH "TOTAL IMPRESO    :"+xsIg+STR(f1300tot, 12, 2)
 FCLOSE(ptXt)
 RELEASE ptI1, ptOt, puNi, pvR1, pvR2, pvR3, pvR4, pvR5, pvR6, pdCt
ENDPROC
*
PROCEDURE Tot_Pzasz
 SELECT itE_fact
 STORE 00 TO ppZa
 SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"=f1302tdo+ ;
    f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"
      IF f1302opc="S"
           SKIP
           LOOP
      ENDIF
      STORE ppZa+f1302ctd TO ppZa
      SKIP
 ENDDO
ENDPROC
*
