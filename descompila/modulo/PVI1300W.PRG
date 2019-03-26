*
PROCEDURE Num_1300w
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 IF cuLt=1 .AND. (vtDo="FC" .OR. vtDo="BC")
      SELECT nuMeracion3
 ENDIF
 REPLACE f9999num WITH vdOc
 SELECT tmP_doc
 APPEND BLANK
 REPLACE f1300ser WITH vsEr
 REPLACE f1300doc WITH vdOc
ENDPROC
*
PROCEDURE GFa_1300w
 WAIT WINDOW NOWAIT "Grabando Cabecera..."+vtDo+":"+vsEr+"-"+vdOc
 SELECT caB_fact
 DO nuEvo_rg
 REPLACE f1300tdo WITH vtDo
 REPLACE f1300ser WITH vsEr
 REPLACE f1300doc WITH vdOc
 REPLACE f1300tit WITH vtIt
 REPLACE f1300ntt WITH vnTt
 REPLACE f1300cli WITH vcLi
 REPLACE f1300suc WITH vsUc
 REPLACE f1300nom WITH vnOm
 REPLACE f1300dir WITH vdIr
 REPLACE f1300dis WITH vdIs
 REPLACE f1300dep WITH vdEp
 REPLACE f1300ruc WITH vrUc
 REPLACE f1300ele WITH vdNi
 REPLACE f1300tel WITH vtEl
 REPLACE f1300ven WITH vvEn
 REPLACE f1300nve WITH vnVe
 REPLACE f1300com WITH vcOm
 REPLACE f1300dtc WITH vdTc
 REPLACE f1300dcl WITH vdCl
 REPLACE f1300lug WITH vlUg
 REPLACE f1300lud WITH vlUd
 REPLACE f1300lup WITH vlUp
 REPLACE f1300fem WITH vfEm
 REPLACE f1300nte WITH vnTe
 IF mdSp=2
      REPLACE f1300fde WITH CTOD("  /  /    ")
 ELSE
      REPLACE f1300fde WITH vfEm
 ENDIF
 REPLACE f1300mon WITH vmOn
 REPLACE f1300fpa WITH vfPa
 REPLACE f1300nfp WITH vnFp
 REPLACE f1300dia WITH vdI1
 REPLACE f1300tfp WITH vtFp
 REPLACE f1300pig WITH vpIg
 REPLACE f1300swg WITH vsWg
 REPLACE f1300pgd WITH vpGd
 REPLACE f1300int WITH 0
 REPLACE f1300net WITH 0
 REPLACE f1300igv WITH 0
 REPLACE f1300tot WITH 0
 REPLACE f1300cop WITH 0
 REPLACE f1300cm1 WITH vcM1
 REPLACE f1300cm2 WITH vcM2
 REPLACE f1300est WITH "1"
 REPLACE f1300can WITH "1"
 REPLACE f1300usu WITH muSu
 REPLACE f1300dat WITH DATE()
 REPLACE f1300tim WITH TIME()
 REPLACE f1300maq WITH mmAq
ENDPROC
*
PROCEDURE Gdf_1300w
 SELECT deT_fact
 DO nuEvo_rg
 REPLACE f1301tdo WITH vtDo
 REPLACE f1301ser WITH vsEr
 REPLACE f1301doc WITH vdOc
 REPLACE f1301ite WITH vrEc
 REPLACE f1301cod WITH vcOd
 REPLACE f1301des WITH vdEs
 REPLACE f1301dcr WITH vdCr
 REPLACE f1301cuv WITH vcUv
 REPLACE f1301nuv WITH vnUv
 REPLACE f1301cuc WITH vcUc
 REPLACE f1301nuc WITH vnUc
 REPLACE f1301med WITH vmEd
 REPLACE f1301can WITH vcAn
 REPLACE f1301pes WITH 0
 REPLACE f1301pie WITH vpIe
 REPLACE f1301sol WITH vsOl
 REPLACE f1301usd WITH vuSd
 REPLACE f1301pre WITH vpRe
 REPLACE f1301pro WITH vpRo
 REPLACE f1301pr1 WITH vpR1
 REPLACE f1301pdc WITH vpDc
 REPLACE f1301dct WITH vdCt
 REPLACE f1301md1 WITH vmD1
 REPLACE f1301md2 WITH vmD2
 REPLACE f1301md3 WITH vmD3
 IF mcAj=1 .AND. vsRr=1
      REPLACE f1301ref WITH ALLTRIM(STR(vcAj, 5, 0))
 ELSE
      REPLACE f1301ref WITH vrEf
 ENDIF
 REPLACE f1301lar WITH vlAr
 REPLACE f1301la1 WITH vlA1
 REPLACE f1301la2 WITH vlA2
 REPLACE f1301la3 WITH vlA3
 REPLACE f1301la4 WITH vlA4
 REPLACE f1301la5 WITH vlA5
 REPLACE f1301la6 WITH vlA6
 REPLACE f1301la7 WITH vlA7
 REPLACE f1301la8 WITH vlA8
 REPLACE f1301la9 WITH vlA9
 REPLACE f1301anc WITH vaNc
 REPLACE f1301an1 WITH vaN1
 REPLACE f1301an2 WITH vaN2
 REPLACE f1301an3 WITH vaN3
 REPLACE f1301an4 WITH vaN4
 REPLACE f1301an5 WITH vaN5
 REPLACE f1301an6 WITH vaN6
 REPLACE f1301an7 WITH vaN7
 REPLACE f1301an8 WITH vaN8
 REPLACE f1301an9 WITH vaN9
 REPLACE f1301alt WITH vaLt
 REPLACE f1301al1 WITH vaL1
 REPLACE f1301al2 WITH vaL2
 REPLACE f1301al3 WITH vaL3
 REPLACE f1301al4 WITH vaL4
 REPLACE f1301al5 WITH vaL5
 REPLACE f1301al6 WITH vaL6
 REPLACE f1301al7 WITH vaL7
 REPLACE f1301al8 WITH vaL8
 REPLACE f1301al9 WITH vaL9
 REPLACE f1301esp WITH veSp
 REPLACE f1301to1 WITH vtO1
 REPLACE f1301to2 WITH vtO2
 IF mdSp=2
      REPLACE f1301fde WITH CTOD("  /  /    ")
 ELSE
      REPLACE f1301fde WITH vfEm
 ENDIF
ENDPROC
*
PROCEDURE Kar_1300w
 PARAMETER pcOd
 SELECT kaRdex
 DO nuEvo_rg
 REPLACE f2990cod WITH pcOd
 REPLACE f2990ano WITH SUBSTR(DTOC(vfEm), 7, 4)
 REPLACE f2990mes WITH SUBSTR(DTOC(vfEm), 4, 2)
 REPLACE f2990dia WITH SUBSTR(DTOC(vfEm), 1, 2)
 REPLACE f2990tpp WITH "1"
 REPLACE f2990tpo WITH "2"
 REPLACE f2990tra WITH "1"
 REPLACE f2990can WITH vcAn
 REPLACE f2990caj WITH vcAj
 REPLACE f2990sld WITH 0
 REPLACE f2990slc WITH 0
 REPLACE f2990sls WITH 0
 REPLACE f2990scs WITH 0
 REPLACE f2990cos WITH vpRe
 REPLACE f2990dct WITH 0
 REPLACE f2990gas WITH 0
 REPLACE f2990prm WITH 0
 REPLACE f2990tdo WITH vtDo
 REPLACE f2990ser WITH vsEr
 REPLACE f2990doc WITH vdOc
 REPLACE f2990td1 WITH vtDo
 REPLACE f2990srf WITH vsEr
 REPLACE f2990fac WITH vdOc
 REPLACE f2990emi WITH vfEm
 REPLACE f2990fem WITH vfEm
 REPLACE f2990tit WITH vtIt
 REPLACE f2990cli WITH vcLi
 REPLACE f2990nom WITH vnOm
 REPLACE f2990pig WITH miGv
 REPLACE f2990mon WITH vmOn
 REPLACE f2990tne WITH 0
 REPLACE f2990tig WITH 0
 REPLACE f2990tfa WITH 0
 UNLOCK
 SKIP -1
 IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(pcOd)+"*"
      STORE f2990sld TO vsLd
      STORE f2990slc TO vsLc
 ELSE
      STORE 0 TO vsLd, vsLc
 ENDIF
 SEEK ALLTRIM(pcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
      SUBSTR(DTOC(vfEm), 1, 2)+"2"+"1"+vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(pcOd)+"*"
      STORE f2990ano TO caNo
      STORE f2990mes TO cmEs
      STORE f2990dia TO cdIa
      STORE f2990tpo TO ctPo
      STORE f2990tpp TO ctPp
      STORE f2990tdo TO ctDo
      STORE f2990ser TO csEr
      STORE f2990doc TO cdOc
      SEEK ALLTRIM(pcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(pcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ ;
              ctDo+csEr+cdOc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      DO CASE
           CASE f2990tpo="1" .AND. f2990tpp="0"
                STORE f2990can TO vsLd
                STORE f2990caj TO vsLc
           CASE f2990tpo="1"
                STORE vsLd+f2990can TO vsLd
                STORE vsLc+f2990caj TO vsLc
           CASE f2990tpo="2"
                STORE vsLd-f2990can TO vsLd
                STORE vsLc-f2990caj TO vsLc
      ENDCASE
      REPLACE f2990sld WITH vsLd
      REPLACE f2990slc WITH vsLc
      UNLOCK
      SKIP
 ENDDO
 DO grA_stock IN PAI2700A WITH pcOd
ENDPROC
*
PROCEDURE Gse_1300w
 PRIVATE ptP1, puLt, pvAl, psW0, pcAn
 DO CASE
      CASE vtPo=5 .OR. vtPo=11
           STORE 1 TO ptP1
      CASE vtPo=6 .OR. vtPo=8 .OR. vtPo=9
           STORE 2 TO ptP1
      CASE vtPo=4 .OR. vtPo=7
           STORE 3 TO ptP1
 ENDCASE
 DO CASE
      CASE vtDo="TK" .OR. vtDo="TF" .OR. vtDo="TK"
           STORE 99 TO puLt
      CASE vtDo="FA" .OR. vtDo="FC" .OR. vtDo="FE"
           STORE mlFa TO puLt
      CASE vtDo="BO" .OR. vtDo="BC" .OR. vtDo="BE"
           STORE mlBo TO puLt
      CASE vtDo="NP"
           STORE mlNp TO puLt
      CASE vtDo="CT"
           STORE 99 TO puLt
 ENDCASE
 SELECT teMporal_4
 STORE 00 TO clIn, vtO1, vtO2, vcAn, vpIe, pvAl, pcAn, psW0
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
      IF (vtDo="BO" .OR. vtDo="BC" .OR. vtDo="BE" .OR. vtDo="TB" .OR.  ;
         (vtDo="TK" .AND. LEN(ALLTRIM(vrUc))=0)) .AND. mpPe<>0 .AND.  ;
         (psPp=1 .OR. psPp=3) .AND. vtPo<>11 .AND. vpEr=1
           STORE vcAn TO pcAn
           DO CASE
                CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                     STORE ftM4pie*ftM4can TO vcAn
                CASE vtPo=6 .OR. vtPo=9
                     STORE ftM4mla*ftM4can TO vcAn
                CASE vtPo=8
                     STORE ftM4mla*4*ftM4can TO vcAn
           ENDCASE
           DO caL_1200b IN PVI1200B
           STORE pcAn TO vcAn
      ENDIF
      IF ftM4opc<>"S" .AND. ((vtDo="FA" .AND. mlLz="S") .OR. (vtDo="BO"  ;
         .AND. mlLb="S") .OR. (vtDo="FE" .AND. mlLz="S") .OR. (vtDo="BE"  ;
         .AND. mlLb="S") .OR. (vtDo="FC" .AND. mlLz="S") .OR. (vtDo="BC"  ;
         .AND. mlLb="S"))
           IF (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC") .AND. mpPe<>0  ;
              .AND. (psPp=1 .OR. psPp=3) .AND. vtPo<>11 .AND. vpEr=1
                IF (tvAl+pvAl+vtOt>mmBo .AND. vmOn=1) .OR. ((tvAl+pvAl+ ;
                   vtOt)*vtCa>mmBo .AND. vmOn=2)
                     STORE 1 TO psW0
                ENDIF
           ENDIF
           STORE clIn+1 TO clIn
           IF (clIn>mlL1 .AND. mlL1>0 .AND. ptP1=1) .OR. (clIn>mlL2 .AND.  ;
              mlL2>0 .AND. ptP1=2) .OR. (clIn>mlL3 .AND. mlL3>0 .AND.  ;
              ptP1=3) .OR. psW0=1
                STORE 01 TO clIn
                IF vmD3=1
                     STORE xiT1+1 TO xiT1
                ENDIF
                IF xiT1>puLt .OR. psW0=1
                     DO caL_1200b IN PVI1200B
                     STORE vnEt TO vtO1
                     STORE vtOt TO vtO2
                     SELECT deT_fact
                     STORE tvAl+vtO2 TO tvAl
                     STORE tpEr+viPe TO tpEr
                     DO ct1_1200b IN PVI1200B
                     DO ct2_1200b IN PVI1200B
                     REPLACE f1301can WITH vcAn
                     REPLACE f1301pie WITH vpIe
                     REPLACE f1301pr1 WITH vpR1
                     REPLACE f1301pdc WITH vpDc
                     REPLACE f1301dct WITH vdCt
                     REPLACE f1301to1 WITH vtO1
                     REPLACE f1301to2 WITH vtO2
                     UNLOCK
                     SELECT caB_fact
                     REPLACE f1300net WITH tnEt
                     REPLACE f1300igv WITH tiGv
                     REPLACE f1300tot WITH ttOt
                     UNLOCK
                     IF vtDo<>"CT"
                          DO kaR_1300w WITH vcOd
                     ENDIF
                     IF vsWg=2
                          STORE 00 TO vpGd
                     ENDIF
                     STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
                     DO nuM_1300w
                     DO gfA_1300w
                     STORE 01 TO vrEc
                     STORE 00 TO xiT1
                     IF vmD3=1
                          STORE 2 TO xiT1
                          DO CASE
                               CASE vtDo="FA" .AND. mlL0="S" .AND.  ;
                                    LEN(ALLTRIM(vrEf))>0 .AND. vmD3=1
                                    STORE xiT1+1 TO xiT1
                               CASE vtDo="BO" .AND. ml0b="S" .AND.  ;
                                    LEN(ALLTRIM(vrEf))>0 .AND. vmD3=1
                                    STORE xiT1+1 TO xiT1
                          ENDCASE
                     ENDIF
                     DO gdF_1300w
                     STORE 00 TO tvAl, pvAl, tpEr, tnEt, tiGv, ttOt, vtO1,  ;
                           vtO2, vcAn, vpIe
                ENDIF
                STORE 00 TO psW0
           ENDIF
           SELECT teMporal_4
      ENDIF
      STORE ftM4rec TO vrCc
      STORE ftM4opc TO voPc
      STORE ftM4un1 TO vuN1
      STORE ftM4un2 TO vuN2
      STORE ftM4mla TO vmLa
      STORE ftM4man TO vmAn
      STORE ftM4p11 TO vp11
      STORE ftM4p12 TO vp12
      STORE ftM4p21 TO vp21
      STORE ftM4p22 TO vp22
      STORE ftM4can TO vcTd
      STORE ftM4ca1 TO vcA1
      STORE ftM4ca2 TO vcA2
      STORE ftM4por TO vpOr
      STORE ftM4pie TO vpIe
      STORE ftM4cm1 TO vcMm
      STORE ftM4cm2 TO vcMp
      SELECT itE_fact
      DO nuEvo_rg
      REPLACE f1302tdo WITH vtDo
      REPLACE f1302ser WITH vsEr
      REPLACE f1302doc WITH vdOc
      REPLACE f1302cod WITH vcOd
      REPLACE f1302rcc WITH vrCc
      REPLACE f1302opc WITH voPc
      REPLACE f1302un1 WITH vuN1
      REPLACE f1302un2 WITH vuN2
      REPLACE f1302mla WITH vmLa
      REPLACE f1302man WITH vmAn
      REPLACE f1302p11 WITH vp11
      REPLACE f1302p12 WITH vp12
      REPLACE f1302p21 WITH vp21
      REPLACE f1302p22 WITH vp22
      REPLACE f1302ctd WITH vcTd
      REPLACE f1302ca1 WITH vcA1
      REPLACE f1302ca2 WITH vcA2
      REPLACE f1302ca3 WITH vcA3
      REPLACE f1302ca4 WITH vcA4
      REPLACE f1302por WITH vpOr
      REPLACE f1302pie WITH vpIe
      REPLACE f1302cm1 WITH vcMm
      REPLACE f1302cm2 WITH vcMp
      UNLOCK
      DO CASE
           CASE voPc="S"
                STORE vcAn+vpIe TO vcAn
           CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7 .OR. vtPo=11
                STORE vcAn+(vpIe*vcTd) TO vcAn
           CASE vtPo=6 .OR. vtPo=9
                STORE vcAn+(vmLa*vcTd) TO vcAn
           CASE vtPo=8
                STORE vcAn+(vmLa*4*vcTd) TO vcAn
      ENDCASE
      DO caL_1200b IN PVI1200B
      STORE vtOt TO pvAl
      SELECT teMporal_4
      SKIP
 ENDDO
 DO caL_1200b IN PVI1200B
 STORE vnEt TO vtO1
 STORE vtOt TO vtO2
 SELECT deT_fact
 REPLACE f1301can WITH vcAn
 REPLACE f1301pie WITH vpIe
 REPLACE f1301pr1 WITH vpR1
 REPLACE f1301pdc WITH vpDc
 REPLACE f1301dct WITH vdCt
 REPLACE f1301to1 WITH vtO1
 REPLACE f1301to2 WITH vtO2
 UNLOCK
 IF vtDo<>"CT"
      DO kaR_1300w WITH vcOd
 ENDIF
 RELEASE ptP1, puLt, pvAl, psW0, pcAn
ENDPROC
*
