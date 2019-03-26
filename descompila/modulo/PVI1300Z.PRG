 = INKEY(0.01)
 PUBLIC ptDo, psEr, pdOc
 STORE vtDo TO ptDo
 STORE vsEr TO psEr
 STORE vdOc TO pdOc
 STORE mpPe TO vpPe
 STORE "" TO vcLi
 STORE 0 TO tpEr
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF f1300mon=1
      STORE msIg TO xsIg
 ELSE
      STORE "US$" TO xsIg
 ENDIF
 STORE f1300nte TO vnTe
 IF  .NOT. EOF()
      STORE f1300cli TO vcLi
 ENDIF
 SELECT clIentes
 SEEK vcLi
 IF  .NOT. EOF()
      STORE f1101ppe TO vpPe
 ENDIF
 DO CASE
      CASE vtDo<>"PC"
           DO toT_1300z WITH vtDo, vsEr, vdOc
           DO ctA_1300z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE ptDo TO vtDo
           STORE psEr TO vsEr
           STORE pdOc TO vdOc
           SELECT caB_fact
           SEEK vtDo+vsEr+vdOc
      CASE vtDo="PC" .AND. SUBSTR(vsEr, 1, 1)="T"
           DO ct1_1300z
           SELECT caB_fact
           STORE f1300tdo TO vtDo
           STORE f1300ser TO vsEr
           STORE f1300doc TO vdOc
           IF mkEy=k_Esc
                STORE ptDo TO vtDo
                STORE psEr TO vsEr
                STORE pdOc TO vdOc
                SELECT caB_fact
                SEEK vtDo+vsEr+vdOc
                RETURN
           ENDIF
      CASE vtDo="PC"
           SELECT caB_fact
           STORE 99 TO mkEy
           SEEK vtDo+vsEr+vdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           IF f1300cop<9
                REPLACE f1300cop WITH f1300cop+1
           ENDIF
           IF f1300est="1"
                REPLACE f1300est WITH "2"
                IF mgRa=1
                     REPLACE f1300can WITH "2"
                ENDIF
           ENDIF
           UNLOCK
 ENDCASE
 IF mdEs=4
      STORE ptDo TO vtDo
      STORE psEr TO vsEr
      STORE pdOc TO vdOc
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 STORE 0 TO mvIs
 SAVE SCREEN TO mpAn_prn
 DO imP_1300z
 STORE ptDo TO vtDo
 STORE psEr TO vsEr
 STORE pdOc TO vdOc
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 SELECT teMporal
 SET ORDER TO
 ZAP
 RELEASE ptDo, psEr, pdOc
ENDPROC
*
PROCEDURE Imp_1300z
 DO CASE
      CASE (mdEs=1 .AND. vtDo<>"PC") .AND. (mcIa="LT" .OR. mcIa="LC")  ;
           .AND. vsEr<>"001"
           RETURN
      CASE (mdEs=2 .AND. vtDo<>"PC") .AND. (mcIa="LT" .OR. mcIa="LC")  ;
           .AND. vsEr<>"001"
           DO reP_1300z WITH vtDo
      CASE (mdEs=2 .AND. vtDo="NP") .AND. (mcIa="UN" .OR. mcIa="PU" .OR.  ;
           mcIa="P2" .OR. mcIa="U2")
           DO reP_1300z WITH "NP"
      CASE (mdEs=1 .OR. mdEs=2) .AND. vtDo<>"PC" .AND. vtDo<>"CT"
           IF mdEs=2
                DO reP_1300z WITH vtDo
                DO fpR_0001a
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ENDIF
           = INKEY(0.5, "HM")
           DO reP_1300z WITH "DE"
           = INKEY(0.5, "HM")
           DO CASE
                CASE mcIa="CS" .AND. (vtDo="FE" .OR. vtDo="BE")
                     DO tiM_1300z IN FACCSCOR
                CASE mcIa="CR" .AND. (vtDo="FE" .OR. vtDo="BE")
                     DO tiM_1300z IN FACOLIVO
                CASE vtDo="FC" .OR. vtDo="BC"
                     DO tiM_1300z IN FAC0000A
           ENDCASE
      CASE vtDo="CT"
           DO reP_1300z WITH "CT"
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           IF mcIa="SR" .OR. mcIa="S2"
                STORE "N" TO moPc
                DO prE_docum WITH "¿Desea Imprimir Orden de Cotización: "+ ;
                   vsEr+"-"+vdOc+" ?"
                IF moPc$"Ss"
                     DO reP_1300z WITH "DE"
                ENDIF
           ENDIF
      OTHERWISE
           DO reP_1300z WITH vtDo
           = INKEY(0.5, "HM")
           DO CASE
                CASE mcIa="CS" .AND. (vtDo="FE" .OR. vtDo="BE")
                     DO tiM_1300z IN FACCSCOR
                CASE mcIa="CR" .AND. (vtDo="FE" .OR. vtDo="BE")
                     DO tiM_1300z IN FACOLIVO
                CASE vtDo="FC" .OR. vtDo="BC"
                     DO tiM_1300z IN FAC0000A
           ENDCASE
 ENDCASE
 SET DEVICE TO SCREEN
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Rep_1300z
 PARAMETER ptDd
 STORE 00 TO vcLn
 IF ptDd<>"CT"
      DO ipR_0001a WITH ptDd
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           RETURN
      ENDIF
      DO inI_1300z IN FAC0000A WITH ptDd
 ENDIF
 IF ptDd="CT"
      DO ipR_0001a WITH ptDd
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
      DO ipR_0001a WITH ptDd
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           RETURN
      ENDIF
      DO inI_1300z IN FAC0000A WITH ptDd
 ENDIF
 DO coLbln
 SELECT caB_fact
 STORE ptDo TO vtDo
 SEEK vtDo+vsEr+vdOc
 DO prG_1300z
 DO CASE
      CASE vtDo="CT"
           DO fpR_0000a
      OTHERWISE
           DO fpR_0001a
 ENDCASE
 WAIT WINDOW NOCLEAR NOWAIT "Término de Impresión..."
 = INKEY(0.5, "HM")
 WAIT CLEAR
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tot_1300z
 PARAMETER ptD1, psR1, pdO1
 PRIVATE psW0
 SELECT deT_fact
 SEEK ptD1+psR1+pdO1
 STORE 01 TO psW0
 STORE 00 TO tvL1, tvL2, tvAl, tpEr, tnEt
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=ptD1+psR1+pdO1
      STORE f1301cod TO vcOd
      DO pr1_1300z IN FAC0000A
      SELECT deT_fact
      DO CASE
           CASE mpDc=2 .AND. (ptD1="FA" .OR. ptD1="FE" .OR. ptD1="FC"  ;
                .OR. ptD1="TF" .OR. (ptD1="TK" .AND. LEN(ALLTRIM(vrUc))<>0))
                STORE ROUND(f1301pre/(1+(vpIg/100))*f1301can, 2) TO vtO1
           CASE mpDc=2
                STORE ROUND(f1301pre*f1301can, 2) TO vtO1
           CASE ptD1="FA" .OR. ptD1="FE" .OR. ptD1="FC" .OR. ptD1="TF"  ;
                .OR. (ptD1="TK" .AND. LEN(ALLTRIM(vrUc))<>0)
                STORE f1301to1 TO vtO1
           OTHERWISE
                STORE f1301to2 TO vtO1
      ENDCASE
      DO CASE
           CASE f1301md3=2
                STORE tvL1+vtO1 TO tvL1
           OTHERWISE
                STORE tvL2+vtO1 TO tvL2
      ENDCASE
      DO CASE
           CASE ptD1="FA" .OR. ptD1="FE" .OR. ptD1="FC" .OR. ptD1="TF"  ;
                .OR. (ptD1="TK" .AND. LEN(ALLTRIM(vrUc))<>0)
                IF vpEr=1
                     STORE ROUND(f1301to2*vpPe/100, 2) TO viPe
                ELSE
                     STORE 0 TO psW0, viPe
                ENDIF
                STORE tpEr+viPe TO tpEr
                STORE tnEt+f1301to2 TO tnEt
                STORE tvAl+f1301to1 TO tvAl
           OTHERWISE
                STORE tvAl+f1301to2 TO tvAl
      ENDCASE
      SKIP
 ENDDO
 SELECT caB_fact
 SEEK ptD1+psR1+pdO1
 IF tpEr>0 .AND. f1300net-tvAl<>0 .AND. (msEp=1 .OR. psW0=1) .AND. (ptD1= ;
    "FA" .OR. ptD1="FE" .OR. ptD1="FC" .OR. ptD1="TF" .OR. (ptD1="TK"  ;
    .AND. LEN(ALLTRIM(vrUc))<>0))
      STORE ROUND(f1300tot*vpPe/100, 2) TO tpEr
      STORE f1300tot TO tnEt
 ENDIF
 RELEASE psW0
ENDPROC
*
PROCEDURE Cta_1300z
 PUBLIC pcPe, psPe
 STORE 99 TO mkEy
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 DO muE_1300z
 SELECT caB_fact
 IF vtDo="CT"
      IF f1300cop<9
           REPLACE f1300cop WITH f1300cop+1
      ENDIF
      IF f1300est="1"
           REPLACE f1300est WITH "2"
           IF mgRa=1
                REPLACE f1300can WITH "2"
           ENDIF
      ENDIF
      UNLOCK
      RETURN
 ENDIF
 SELECT caB_fact
 IF f1300cop<9
      REPLACE f1300cop WITH f1300cop+1
 ENDIF
 IF f1300est<>"1"
      UNLOCK
      RETURN
 ENDIF
 SELECT ctAs_tot_vtas
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f3502tdo WITH vtDo
      REPLACE f3502ser WITH vsEr
      REPLACE f3502to1 WITH 0
      REPLACE f3502in1 WITH 0
      REPLACE f3502ac1 WITH 0
      REPLACE f3502to2 WITH 0
      REPLACE f3502in2 WITH 0
      REPLACE f3502ac2 WITH 0
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT caB_fact
 REPLACE f1300est WITH "2"
 IF mgRa=1
      REPLACE f1300can WITH "2"
 ENDIF
 SELECT ctAs_tot_vtas
 DO CASE
      CASE vmOn=1
           REPLACE f3502to1 WITH f3502to1+ttOt
      CASE vmOn=2
           REPLACE f3502to2 WITH f3502to2+ttOt
 ENDCASE
 UNLOCK
 SELECT peNd_vtas
 DO nuEvo_rg
 REPLACE f3500tdo WITH vtDo
 REPLACE f3500ser WITH vsEr
 REPLACE f3500doc WITH vdOc
 REPLACE f3500ruc WITH vrUc
 REPLACE f3500ven WITH vvEn
 REPLACE f3500nve WITH vnVe
 REPLACE f3500tec WITH vtEc
 REPLACE f3500nte WITH vnTe
 REPLACE f3500tit WITH vtIt
 REPLACE f3500nti WITH vnTt
 REPLACE f3500cli WITH vcLi
 REPLACE f3500suc WITH vsUc
 REPLACE f3500nom WITH vnOm
 REPLACE f3500tcl WITH vtCl
 REPLACE f3500ntc WITH vnTc
 REPLACE f3500fpa WITH vfPa
 REPLACE f3500nfp WITH vnFp
 REPLACE f3500fem WITH vfEm
 REPLACE f3500fve WITH vfEm+vdIa
 REPLACE f3500mon WITH vmOn
 REPLACE f3500can WITH vcAn
 REPLACE f3500pig WITH vpIg
 REPLACE f3500tot WITH ttOt
 IF vlEc=2
      REPLACE f3500acu WITH ttOt
 ELSE
      REPLACE f3500acu WITH 0.00
 ENDIF
 UNLOCK
 IF tpEr=0 .AND. (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="TF"  ;
    .OR. (vtDo="TK" .AND. LEN(ALLTRIM(vrUc))<>0))
      SELECT caB_fact
      UNLOCK
      RETURN
 ENDIF
 IF tpEr>0 .AND. (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="TF"  ;
    .OR. (vtDo="TK" .AND. LEN(ALLTRIM(vrUc))<>0))
      SELECT nuMeracion
      DO CASE
           CASE mcIa="AL" .OR. mcIa="CR"
                STORE "9"+SUBSTR(vsEr, 2, 2) TO psPe
           CASE vdIa=0
                STORE "9"+SUBSTR(vsEr, 2, 2) TO psPe
           OTHERWISE
                STORE "T"+SUBSTR(vsEr, 2, 2) TO psPe
      ENDCASE
      SEEK "PC"+psPe
      IF EOF()
           DO nuEvo_rg
           REPLACE f9999tdo WITH "PC"
           REPLACE f9999ser WITH psPe
           REPLACE f9999num WITH "0000000"
           UNLOCK
      ENDIF
      SEEK "PC"+psPe
      IF  .NOT. RLOCK()
           DO reG_lock WITH "PC"+psPe
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9999num TO pcPe
      STORE STRTRAN(STR(VAL(pcPe)+1, 7, 0), " ", "0") TO pcPe
      REPLACE f9999num WITH pcPe
      UNLOCK
      SELECT ctAs_tot_vtas
      SEEK "PC"+psPe
      IF EOF()
           DO nuEvo_rg
           REPLACE f3502tdo WITH "PC"
           REPLACE f3502ser WITH psPe
           REPLACE f3502to1 WITH 0
           REPLACE f3502in1 WITH 0
           REPLACE f3502ac1 WITH 0
           REPLACE f3502to2 WITH 0
           REPLACE f3502in2 WITH 0
           REPLACE f3502ac2 WITH 0
      ELSE
           IF  .NOT. RLOCK()
                DO reG_lock WITH "PC"+psPe
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      DO CASE
           CASE vmOn=1
                REPLACE f3502to1 WITH f3502to1+tpEr
           CASE vmOn=2
                REPLACE f3502to2 WITH f3502to2+tpEr
      ENDCASE
      UNLOCK
      SELECT caB_fact
      REPLACE f1300srp WITH psPe
      REPLACE f1300ped WITH pcPe
      UNLOCK
      SELECT caB_fact
      DO nuEvo_rg
      REPLACE f1300tdo WITH "PC"
      REPLACE f1300ser WITH psPe
      REPLACE f1300doc WITH pcPe
      REPLACE f1300cli WITH vcLi
      REPLACE f1300suc WITH vsUc
      REPLACE f1300ruc WITH vrUc
      REPLACE f1300ele WITH vdNi
      REPLACE f1300nom WITH vnOm
      REPLACE f1300dir WITH vdIr
      REPLACE f1300dis WITH vdIs
      REPLACE f1300dep WITH vdEp
      REPLACE f1300fpa WITH vfPa
      REPLACE f1300nfp WITH vnFp
      IF SUBSTR(psPe, 1, 1)="T"
           REPLACE f1300fem WITH vfEm
           REPLACE f1300dia WITH vdIa
      ELSE
           REPLACE f1300fem WITH DATE()
           REPLACE f1300dia WITH 0
      ENDIF
      REPLACE f1300mon WITH vmOn
      REPLACE f1300swg WITH 1
      REPLACE f1300net WITH tnEt
      REPLACE f1300pig WITH vpPe
      REPLACE f1300cm1 WITH vtDo+":"+vsEr+"-"+vdOc
      REPLACE f1300nte WITH vtDo+":"+vsEr+"-"+vdOc
      REPLACE f1300tot WITH tpEr
      REPLACE f1300can WITH "2"
      REPLACE f1300usu WITH muSu
      REPLACE f1300dat WITH DATE()
      REPLACE f1300tim WITH TIME()
      REPLACE f1300maq WITH mmAq
      IF SUBSTR(f1300ser, 1, 1)="T"
           REPLACE f1300est WITH "3"
      ELSE
           REPLACE f1300est WITH "2"
      ENDIF
      UNLOCK
      SELECT peR_fact
      DO nuEvo_rg
      REPLACE f1305ser WITH psPe
      REPLACE f1305doc WITH pcPe
      REPLACE f1305sr1 WITH vsEr
      REPLACE f1305fac WITH vdOc
      REPLACE f1305fem WITH vfEm
      REPLACE f1305mon WITH vmOn
      REPLACE f1305tot WITH ttOt
      UNLOCK
      SELECT peNd_vtas
      DO nuEvo_rg
      REPLACE f3500tdo WITH "PC"
      REPLACE f3500ser WITH psPe
      REPLACE f3500doc WITH pcPe
      REPLACE f3500ruc WITH vrUc
      REPLACE f3500ven WITH vvEn
      REPLACE f3500nve WITH vnVe
      REPLACE f3500tec WITH "  "
      REPLACE f3500nte WITH vtDo+":"+vsEr+"-"+vdOc
      REPLACE f3500tit WITH vtIt
      REPLACE f3500nti WITH vnTt
      REPLACE f3500cli WITH vcLi
      REPLACE f3500suc WITH vsUc
      REPLACE f3500nom WITH vnOm
      REPLACE f3500tcl WITH vtCl
      REPLACE f3500ntc WITH vnTc
      REPLACE f3500fpa WITH vfPa
      REPLACE f3500nfp WITH vnFp
      IF SUBSTR(psPe, 1, 1)="T"
           REPLACE f3500fem WITH vfEm
           REPLACE f3500fve WITH vfEm+vdIa
      ELSE
           REPLACE f3500fem WITH DATE()
           REPLACE f3500fve WITH DATE()
      ENDIF
      REPLACE f3500mon WITH vmOn
      REPLACE f3500can WITH "2"
      REPLACE f3500pig WITH vpPe
      REPLACE f3500tot WITH tpEr
      REPLACE f3500acu WITH 0.00
      UNLOCK
 ENDIF
 UNLOCK ALL
 RELEASE pcPe, psPe
ENDPROC
*
PROCEDURE Ct1_1300z
 PRIVATE pcPe, psPe, ptOt, pnEt
 STORE 0 TO ptOt, pnEt
 SELECT nuMeracion
 STORE msEr(08) TO psPe
 SEEK "PC"+psPe
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH "PC"
      REPLACE f9999ser WITH psPe
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK "PC"+psPe
 IF  .NOT. RLOCK()
      DO reG_lock WITH "PC"+psPe
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO pcPe
 STORE STRTRAN(STR(VAL(pcPe)+1, 7, 0), " ", "0") TO pcPe
 REPLACE f9999num WITH pcPe
 UNLOCK
 SELECT tmP_cargos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM4tdo TO vtDo
      STORE ftM4ser TO vsEr
      STORE ftM4doc TO vdOc
      SELECT caB_fact
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      DO muE_1300z
      SELECT caMbio
      SEEK DATE()
      IF EOF()
           STORE 1 TO vtCs
      ELSE
           STORE f9111tc1 TO vtCs
      ENDIF
      SELECT caB_fact
      STORE ttOt TO tpEr
      STORE f1300net TO tnEt
      REPLACE f1300est WITH "9"
      UNLOCK
      SELECT peNd_vtas
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f3500tdo WITH SPACE(02)
           REPLACE f3500ser WITH SPACE(03)
           REPLACE f3500doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDIF
      SELECT ctAs_tot_vtas
      SEEK vtDo+vsEr
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           DO CASE
                CASE vmOn=1
                     REPLACE f3502to1 WITH f3502to1-tpEr
                CASE vmOn=2
                     REPLACE f3502to2 WITH f3502to2-tpEr
           ENDCASE
           UNLOCK
      ENDIF
      SELECT peR_fact
      STORE 0 TO ptOt, pnEt
      DO WHILE .T.
           GOTO TOP
           SEEK vsEr+vdOc
           IF EOF() .OR. f1305ser+f1305doc<>vsEr+vdOc
                EXIT
           ENDIF
           STORE f1305sr1 TO vsR1
           STORE f1305fac TO vdO1
           STORE f1305fem TO vfEm
           STORE f1305mon TO cmOn
           STORE f1305tot TO vtOt
           IF cmOn=2
                STORE ROUND(vtOt*vtCs, 2) TO vtOt
           ENDIF
           SEEK vsEr+vdOc+vsR1+vdO1
           IF  .NOT. RLOCK()
                DO reG_lock WITH vsEr+vdOc+vsR1+vdO1
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f1305ser WITH SPACE(03)
           REPLACE f1305doc WITH SPACE(07)
           DELETE
           UNLOCK
           DO nuEvo_rg
           REPLACE f1305ser WITH psPe
           REPLACE f1305doc WITH pcPe
           REPLACE f1305sr1 WITH vsR1
           REPLACE f1305fac WITH vdO1
           REPLACE f1305fem WITH vfEm
           REPLACE f1305mon WITH 1
           REPLACE f1305tot WITH vtOt
           STORE ROUND(f1305tot*vpIg/100, 2) TO ppEr
           STORE pnEt+f1305tot TO pnEt
           STORE ptOt+ppEr TO ptOt
           UNLOCK
      ENDDO
      SELECT tmP_cargos
      SKIP
 ENDDO
 SELECT caB_fact
 DO nuEvo_rg
 REPLACE f1300tdo WITH "PC"
 REPLACE f1300ser WITH psPe
 REPLACE f1300doc WITH pcPe
 REPLACE f1300cli WITH vcLi
 REPLACE f1300suc WITH vsUc
 REPLACE f1300ruc WITH vrUc
 REPLACE f1300ele WITH vdNi
 REPLACE f1300nom WITH vnOm
 REPLACE f1300dir WITH vdIr
 REPLACE f1300dis WITH vdIs
 REPLACE f1300dep WITH vdEp
 REPLACE f1300fpa WITH vfPa
 REPLACE f1300nfp WITH vnFp
 REPLACE f1300fem WITH DATE()
 REPLACE f1300dia WITH 0
 REPLACE f1300mon WITH 1
 REPLACE f1300swg WITH 1
 REPLACE f1300net WITH pnEt
 REPLACE f1300pig WITH vpIg
 REPLACE f1300cm1 WITH vcM1
 REPLACE f1300nte WITH vnTe
 REPLACE f1300tot WITH ptOt
 REPLACE f1300est WITH "2"
 REPLACE f1300can WITH "2"
 REPLACE f1300usu WITH muSu
 REPLACE f1300dat WITH DATE()
 REPLACE f1300tim WITH TIME()
 REPLACE f1300maq WITH mmAq
 UNLOCK
 SELECT peNd_vtas
 DO nuEvo_rg
 REPLACE f3500tdo WITH "PC"
 REPLACE f3500ser WITH psPe
 REPLACE f3500doc WITH pcPe
 REPLACE f3500ruc WITH vrUc
 REPLACE f3500ven WITH vvEn
 REPLACE f3500nve WITH vnVe
 REPLACE f3500tec WITH "  "
 REPLACE f3500nte WITH vnTe
 REPLACE f3500tit WITH vtIt
 REPLACE f3500nti WITH vnTt
 REPLACE f3500cli WITH vcLi
 REPLACE f3500suc WITH vsUc
 REPLACE f3500nom WITH vnOm
 REPLACE f3500tcl WITH vtCl
 REPLACE f3500ntc WITH vnTc
 REPLACE f3500fpa WITH vfPa
 REPLACE f3500nfp WITH vnFp
 REPLACE f3500fem WITH DATE()
 REPLACE f3500fve WITH DATE()
 REPLACE f3500mon WITH 1
 REPLACE f3500can WITH "2"
 REPLACE f3500pig WITH vpIg
 REPLACE f3500tot WITH ptOt
 REPLACE f3500acu WITH 0.00
 UNLOCK
 SELECT ctAs_tot_vtas
 SEEK "PC"+psPe
 IF EOF()
      DO nuEvo_rg
      REPLACE f3502tdo WITH "PC"
      REPLACE f3502ser WITH psPe
      REPLACE f3502to1 WITH 0
      REPLACE f3502in1 WITH 0
      REPLACE f3502ac1 WITH 0
      REPLACE f3502to2 WITH 0
      REPLACE f3502in2 WITH 0
      REPLACE f3502ac2 WITH 0
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH "PC"+psPe
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f3502to1 WITH f3502to1+ptOt
 UNLOCK ALL
 RELEASE pcPe, psPe, ptOt, pnEt
ENDPROC
*
PROCEDURE Mue_1300z
 SELECT caB_fact
 STORE "" TO vpLc
 STORE SPACE(70) TO vtNo
 STORE SPACE(11) TO vtRu
 STORE f1300tdo TO vtDo
 STORE f1300ser TO vsEr
 STORE f1300doc TO vdOc
 STORE f1300ven TO vvEn
 STORE f1300nve TO vnVe
 STORE f1300tec TO vtEc
 STORE f1300nte TO vnTe
 STORE f1300tit TO vtIt
 STORE f1300ntt TO vnTt
 STORE f1300cli TO vcLi
 STORE f1300suc TO vsUc
 STORE f1300ruc TO vrUc
 STORE f1300ele TO vdNi
 STORE f1300nom TO vnOm
 STORE f1300dir TO vdIr
 STORE f1300dis TO vdIs
 STORE f1300dep TO vdEp
 STORE f1300fpa TO vfPa
 STORE f1300nfp TO vnFp
 STORE f1300fem TO vfEm
 STORE f1300dia TO vdIa
 STORE f1300mon TO vmOn
 STORE f1300can TO vcAn
 STORE f1300tot TO ttOt
 STORE f1300tel TO vtEl
 STORE f1300tra TO vtRa
 STORE f1300cm1 TO vcM1
 STORE f1300cm2 TO vcM2
 STORE f1300pig TO vpIg
 STORE f1300tdi TO vtDi
 STORE f1300tim TO vtIm
 IF LEN(ALLTRIM(vtIt))=0
      STORE vcLi TO vtIt
      STORE vnOm TO vnTt
 ENDIF
 DO leE_1300z IN FAC0000A
 DO siG_1300z IN FAC0000A WITH vmOn
 IF vmOn=1
      STORE vfRa+" Soles" TO vfRa
 ELSE
      STORE vfRa+" Dolares Americanos" TO vfRa
 ENDIF
 SELECT clIentes
 SEEK vtIt
 STORE f1101tip TO vtCl
 SELECT tiPo_cli
 SEEK vtCl
 STORE f9110nti TO vnTc
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa, vtCs, vtCv
 ELSE
      STORE f9111tc1 TO vtCs
      STORE f9111tc3 TO vtCv
      STORE f9111tc4 TO vtCa
 ENDIF
 IF LEN(ALLTRIM(vtRa))<>0
      SELECT trAnsportista
      DO orD_0000a WITH "9215", "U", "F9215COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK vtRa
      IF  .NOT. EOF()
           STORE f9215nom TO vtNo
           STORE f9215ruc TO vtRu
      ENDIF
      DO orD_0000a WITH "9215", "U", "F9215NOM", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(vcM1))<>0
      STORE 1 TO viTe
      SELECT caB_remi
      DO WHILE .T.
           SEEK "GR"+SUBSTR(vcM1, viTe, 3)+SUBSTR(vcM1, viTe+4, 7)
           IF  .NOT. EOF() .AND. f2600est<>"9"
                IF LEN(ALLTRIM(f2600pla))<>0
                     IF LEN(ALLTRIM(vpLc))=0
                          STORE ALLTRIM(f2600pla) TO vpLc
                     ELSE
                          STORE vpLc+","+ALLTRIM(f2600pla) TO vpLc
                     ENDIF
                ENDIF
                IF LEN(ALLTRIM(f2600pl2))<>0
                     IF LEN(ALLTRIM(vpLc))=0
                          STORE ALLTRIM(f2600pl2) TO vpLc
                     ELSE
                          STORE vpLc+","+ALLTRIM(f2600pl2) TO vpLc
                     ENDIF
                ENDIF
           ENDIF
           STORE viTe+12 TO viTe
           IF LEN(ALLTRIM(vcM1))<=viTe
                EXIT
           ENDIF
      ENDDO
 ENDIF
ENDPROC
*
PROCEDURE Prg_1300z
 DO CASE
      CASE mcIa="28"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC28DEJ
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC28DEJ
                CASE ptDd="FA"
                     DO faC_1300z IN FAC28DEJ
                CASE ptDd="BO"
                     DO boL_1300z IN FAC28DEJ
                CASE ptDd="NP"
                     DO npE_1300z IN FAC28DEJ
                CASE ptDd="PC"
                     DO peR_1300z IN FAC28DEJ
                CASE ptDd="CT"
                     DO coT_1300z IN FAC28DEJ
                CASE ptDd="DE"
                     DO deS_1300z IN FAC28DEJ
           ENDCASE
      CASE mcIa="SR"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FACVIROM
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FACVIROM
                CASE ptDd="FA"
                     DO faC_1300z IN FACVIROM
                CASE ptDd="BO"
                     DO boL_1300z IN FACVIROM
                CASE ptDd="NP"
                     DO npE_1300z IN FACVIROM
                CASE ptDd="CT"
                     DO coT_1300z IN FACVIROM
                CASE ptDd="DE"
                     DO deS_1300z IN FACVIROM
           ENDCASE
      CASE mcIa="S2"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FACVIROM
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FACVIROM
                CASE ptDd="FA"
                     DO faC_1300z IN FACVIRO2
                CASE ptDd="BO"
                     DO boL_1300z IN FACVIRO2
                CASE ptDd="NP"
                     DO npE_1300z IN FACVIRO2
                CASE ptDd="CT"
                     DO coT_1300z IN FACVIRO2
                CASE ptDd="DE"
                     DO deS_1300z IN FACVIRO2
           ENDCASE
      CASE mcIa="AL" .OR. mcIa="A1"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FACALEJO
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FACALEJO
                CASE ptDd="FA"
                     DO faC_1300z IN FACALEJO
                CASE ptDd="BO"
                     DO boL_1300z IN FACALEJO
                CASE ptDd="NP"
                     DO npE_1300z IN FACALEJO
                CASE ptDd="CT"
                     DO coT_1300z IN FACALEJO
                CASE ptDd="DE"
                     PUBLIC puNi, piMp, ptP1, ptP2, ptP3, ptP4
                     STORE 28 TO mpAg
                     STORE "V" TO piMp
                     STORE " " TO ptP1, ptP2, ptP3, ptP4
                     DO deS_1300z IN FACALEJO
                     STORE "A" TO piMp
                     STORE " " TO ptP1, ptP2, ptP3, ptP4
                     DO deS_1300z IN FACALEJO
                     STORE "*" TO piMp
                     STORE "V" TO ptP1
                     STORE "A" TO ptP2
                     STORE " " TO ptP3, ptP4
                     DO deS_1300z IN FACALEJO
                     STORE 99 TO mkEy
                     RELEASE puNi, piMp, ptP1, ptP2, ptP3, ptP4
           ENDCASE
      CASE mcIa="MA"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FACMARCE
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FACMARCE
                CASE ptDd="FA"
                     DO faC_1300z IN FACMARCE
                CASE ptDd="BO"
                     DO boL_1300z IN FACMARCE
                CASE ptDd="NP"
                     DO npE_1300z IN FACMARCE
                CASE ptDd="CT"
                     DO coT_1300z IN FACMARCE
                CASE ptDd="DE"
                     DO deS_1300z IN FACMARCE
           ENDCASE
      CASE mcIa="VV"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FACVILLA
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FACVILLA
                CASE ptDd="FA"
                     DO faC_1300z IN FACVILLA
                CASE ptDd="BO"
                     DO boL_1300z IN FACVILLA
                CASE ptDd="NP"
                     DO npE_1300z IN FACVILLA
                CASE ptDd="CT"
                     DO coT_1300z IN FACVILLA
                CASE ptDd="DE"
                     DO deS_1300z IN FACVILLA
           ENDCASE
      CASE mcIa="MV"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     STORE 0 TO vlIn
                     DO feL_1300z IN FACMAVIC
                     STORE 0 TO vlIn
                     DO feL_1300z IN FACMAVIC
                CASE ptDd="BE" .OR. ptDd="BC"
                     STORE 0 TO vlIn
                     DO beL_1300z IN FACMAVIC
                     STORE 0 TO vlIn
                     DO beL_1300z IN FACMAVIC
                CASE ptDd="FA"
                     DO faC_1300z IN FACMAVIC
                CASE ptDd="BO"
                     DO boL_1300z IN FACMAVIC
                CASE ptDd="NP"
                     DO npE_1300z IN FACMAVIC
                CASE ptDd="CT"
                     DO coT_1300z IN FACMAVIC
                CASE ptDd="DE"
                     DO deS_1300z IN FACMAVIC
           ENDCASE
      CASE mcIa="CG"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     STORE 0 TO vlIn
                     DO feL_1300z IN FACVICGM
                CASE ptDd="BE" .OR. ptDd="BC"
                     STORE 0 TO vlIn
                     DO beL_1300z IN FACVICGM
                CASE ptDd="FA"
                     DO faC_1300z IN FACVICGM
                CASE ptDd="BO"
                     DO boL_1300z IN FACVICGM
                CASE ptDd="NP"
                     DO npE_1300z IN FACVICGM
                CASE ptDd="CT"
                     DO coT_1300z IN FACVICGM
                CASE ptDd="DE"
                     DO deS_1300z IN FACVICGM
           ENDCASE
      CASE mcIa="RE"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="FA"
                     DO faC_1300z IN FACRELUM
                CASE ptDd="BO"
                     DO boL_1300z IN FACRELUM
                CASE ptDd="NP"
                     DO npE_1300z IN FACRELUM
                CASE ptDd="CT"
                     DO coT_1300z IN FACRELUM
                CASE ptDd="DE"
                     DO deS_1300z IN FACRELUM
           ENDCASE
      CASE mcIa="OL" .OR. mcIa="CR"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FACOLIVO
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FACOLIVO
                CASE ptDd="FA"
                     DO faC_1300z IN FACOLIVO
                CASE ptDd="BO"
                     DO boL_1300z IN FACOLIVO
                CASE ptDd="NP"
                     DO npE_1300z IN FACOLIVO
                CASE ptDd="CT"
                     DO coT_1300z IN FACOLIVO
                CASE ptDd="DE"
                     DO deS_1300z IN FACOLIVO
           ENDCASE
      CASE mcIa="CS"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="FA"
                     DO faC_1300z IN FACCSCOR
                CASE ptDd="BO"
                     DO boL_1300z IN FACCSCOR
                CASE ptDd="NP"
                     DO npE_1300z IN FACCSCOR
                CASE ptDd="PC"
                     DO peR_1300z IN FACCSCOR
                CASE ptDd="CT"
                     DO coT_1300z IN FACCSCOR
                CASE ptDd="DE"
                     DO deS_1300z IN FACCSCOR
           ENDCASE
      CASE mcIa="JA"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     STORE 0 TO vlIn
                     DO feL_1300z IN FACJANET
                CASE ptDd="BE" .OR. ptDd="BC"
                     STORE 0 TO vlIn
                     DO beL_1300z IN FACJANET
                CASE ptDd="FA"
                     DO faC_1300z IN FACJANET
                CASE ptDd="BO"
                     DO boL_1300z IN FACJANET
                CASE ptDd="NP"
                     DO npE_1300z IN FACJANET
                CASE ptDd="PC"
                     DO peR_1300z IN FACJANET
                CASE ptDd="CT"
                     DO coT_1300z IN FACJANET
                CASE ptDd="DE"
                     DO deS_1300z IN FACJANET
           ENDCASE
      CASE mcIa="DI"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     STORE 0 TO vlIn
                     DO feL_1300z IN FACDIBUV
                CASE ptDd="BE" .OR. ptDd="BC"
                     STORE 0 TO vlIn
                     DO beL_1300z IN FACDIBUV
                CASE ptDd="FA"
                     DO faC_1300z IN FACDIBUV
                CASE ptDd="BO"
                     DO boL_1300z IN FACDIBUV
                CASE ptDd="NP"
                     DO npE_1300z IN FACDIBUV
                CASE ptDd="CT"
                     DO coT_1300z IN FACDIBUV
                CASE ptDd="DE"
                     DO deS_1300z IN FACDIBUV
           ENDCASE
      CASE mcIa="LR"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="FA"
                     DO faC_1300z IN FACVILRO
                CASE ptDd="BO"
                     DO boL_1300z IN FACVILRO
                CASE ptDd="NP"
                     DO npE_1300z IN FACVILRO
                CASE ptDd="CT"
                     DO coT_1300z IN FACVILRO
                CASE ptDd="DE"
                     DO deS_1300z IN FACVILRO
           ENDCASE
      CASE mcIa="AG"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACAGUIL
                CASE ptDd="BO"
                     DO boL_1300z IN FACAGUIL
                CASE ptDd="NP"
                     DO npE_1300z IN FACAGUIL
                CASE ptDd="CT"
                     DO coT_1300z IN FACAGUIL
                CASE ptDd="DE"
                     DO deS_1300z IN FACAGUIL
           ENDCASE
      CASE mcIa="RU"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACRUDOR
                CASE ptDd="BO"
                     DO boL_1300z IN FACRUDOR
                CASE ptDd="NP"
                     DO npE_1300z IN FACRUDOR
                CASE ptDd="CT"
                     DO coT_1300z IN FACRUDOR
                CASE ptDd="DE"
                     DO deS_1300z IN FACRUDOR
           ENDCASE
      CASE mcIa="EC"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="TK" .AND. LEN(ALLTRIM(f1300ruc))>0
                     DO faC_1300z IN FACLAECO
                CASE ptDd="TK"
                     DO boL_1300z IN FACLAECO
                CASE ptDd="TF"
                     DO faC_1300z IN FACLAECO
                CASE ptDd="TB"
                     DO boL_1300z IN FACLAECO
                CASE ptDd="FA"
                     DO faC_1300z IN FACLAECO
                CASE ptDd="BO"
                     DO boL_1300z IN FACLAECO
                CASE ptDd="NP"
                     DO npE_1300z IN FACLAECO
                CASE ptDd="PC"
                     DO peR_1300z IN FACLAECO
                CASE ptDd="CT"
                     DO coT_1300z IN FACLAECO
                CASE ptDd="DE"
                     DO deS_1300z IN FACLAECO
           ENDCASE
      CASE mcIa="GR"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACGRACI
                CASE ptDd="BO"
                     DO boL_1300z IN FACGRACI
                CASE ptDd="NP"
                     DO npE_1300z IN FACGRACI
                CASE ptDd="CT"
                     DO coT_1300z IN FACGRACI
                CASE ptDd="DE"
                     DO deS_1300z IN FACGRACI
           ENDCASE
      CASE mcIa="IN"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACINDUS
                CASE ptDd="BO"
                     DO boL_1300z IN FACINDUS
                CASE ptDd="NP"
                     DO npE_1300z IN FACINDUS
                CASE ptDd="CT"
                     DO coT_1300z IN FACINDUS
                CASE ptDd="DE"
                     DO deS_1300z IN FACINDUS
           ENDCASE
      CASE mcIa="C1"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACCHAY1
                CASE ptDd="BO"
                     DO boL_1300z IN FACCHAY1
                CASE ptDd="NP"
                     DO npE_1300z IN FACCHAY1
                CASE ptDd="CT"
                     DO coT_1300z IN FACCHAY1
                CASE ptDd="DE"
                     DO deS_1300z IN FACCHAY1
           ENDCASE
      CASE mcIa="MO"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACMOBLA
                CASE ptDd="BO"
                     DO boL_1300z IN FACMOBLA
                CASE ptDd="NP"
                     DO npE_1300z IN FACMOBLA
                CASE ptDd="CT"
                     DO coT_1300z IN FACMOBLA
                CASE ptDd="DE"
                     DO deS_1300z IN FACMOBLA
           ENDCASE
      CASE mcIa="PU"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="FA"
                     DO faC_1300z IN FACVIPUN
                CASE ptDd="BO"
                     DO boL_1300z IN FACVIPUN
                CASE ptDd="NP"
                     DO npE_1300z IN FACVIPUN
                CASE ptDd="CT"
                     DO coT_1300z IN FACVIPUN
                CASE ptDd="DE"
                     DO deS_1300z IN FACVIPUN
           ENDCASE
      CASE mcIa="P2"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="FA"
                     DO faC_1300z IN FACVIPU2
                CASE ptDd="BO"
                     DO boL_1300z IN FACVIPU2
                CASE ptDd="NP"
                     DO npE_1300z IN FACVIPU2
                CASE ptDd="CT"
                     DO coT_1300z IN FACVIPU2
                CASE ptDd="DE"
                     DO deS_1300z IN FACVIPU2
           ENDCASE
      CASE mcIa="P2"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACLIMAT
                CASE ptDd="BO"
                     DO boL_1300z IN FACLIMAT
                CASE ptDd="NP"
                     DO npE_1300z IN FACLIMAT
                CASE ptDd="PC"
                     DO peR_1300z IN FACLIMAT
                CASE ptDd="CT"
                     DO coT_1300z IN FACLIMAT
                CASE ptDd="DE"
                     DO deS_1300z IN FACLIMAT
           ENDCASE
      CASE mcIa="MB" .OR. mcIa="DS"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACMABER
                CASE ptDd="BO"
                     DO boL_1300z IN FACMABER
                CASE ptDd="NP"
                     DO npE_1300z IN FACMABER
                CASE ptDd="PC"
                     DO peR_1300z IN FACMABER
                CASE ptDd="CT"
                     DO coT_1300z IN FACMABER
                CASE ptDd="DE"
                     DO deS_1300z IN FACMABER
           ENDCASE
      CASE mcIa="RO"
           DO CASE
                CASE ptDd="FE" .OR. ptDd="FC"
                     DO feL_1300z IN FAC0000A
                CASE ptDd="BE" .OR. ptDd="BC"
                     DO beL_1300z IN FAC0000A
                CASE ptDd="FA"
                     DO faC_1300z IN FACSTARO
                CASE ptDd="BO"
                     DO boL_1300z IN FACSTARO
                CASE ptDd="NP"
                     DO npE_1300z IN FACSTARO
                CASE ptDd="CT"
                     DO coT_1300z IN FACSTARO
                CASE ptDd="DE"
                     DO deS_1300z IN FACSTARO
           ENDCASE
      CASE mcIa="LE"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACVILEO
                CASE ptDd="BO"
                     DO boL_1300z IN FACVILEO
                CASE ptDd="NP"
                     DO npE_1300z IN FACVILEO
                CASE ptDd="CT"
                     DO coT_1300z IN FACVILEO
                CASE ptDd="DE"
                     DO deS_1300z IN FACVILEO
                     DO deS_1300z IN FACVILEO
           ENDCASE
      CASE mcIa="UN"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACUNIVE
                CASE ptDd="BO"
                     DO boL_1300z IN FACUNIVE
                CASE ptDd="NP"
                     DO npE_1300z IN FACUNIVE
                CASE ptDd="CT"
                     DO coT_1300z IN FACUNIVE
                CASE ptDd="DE"
                     DO deS_1300z IN FACUNIVE
           ENDCASE
      CASE mcIa="U2"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACUNIV2
                CASE ptDd="BO"
                     DO boL_1300z IN FACUNIV2
                CASE ptDd="NP"
                     DO npE_1300z IN FACUNIV2
                CASE ptDd="CT"
                     DO coT_1300z IN FACUNIV2
                CASE ptDd="DE"
                     DO deS_1300z IN FACUNIV2
           ENDCASE
      CASE mcIa="FL"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACFLEOS
                CASE ptDd="BO"
                     DO boL_1300z IN FACFLEOS
                CASE ptDd="NP"
                     DO npE_1300z IN FACFLEOS
                CASE ptDd="CT"
                     DO coT_1300z IN FACFLEOS
                CASE ptDd="DE"
                     DO deS_1300z IN FACFLEOS
           ENDCASE
      CASE mcIa="LA"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACLANDA
                CASE ptDd="BO"
                     DO boL_1300z IN FACLANDA
                CASE ptDd="NP"
                     DO npE_1300z IN FACLANDA
                CASE ptDd="CT"
                     DO coT_1300z IN FACLANDA
                CASE ptDd="DE"
                     DO deS_1300z IN FACLANDA
           ENDCASE
      CASE mcIa="BE"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACBERMU
                CASE ptDd="BO"
                     DO boL_1300z IN FACBERMU
                CASE ptDd="NP"
                     DO npE_1300z IN FACBERMU
                CASE ptDd="CT"
                     DO coT_1300z IN FACBERMU
                CASE ptDd="DE"
                     DO deS_1300z IN FACBERMU
           ENDCASE
      CASE mcIa="AN" .OR. mcIa="A2"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACANGEL
                CASE ptDd="BO"
                     DO boL_1300z IN FACANGEL
                CASE ptDd="NP"
                     DO npE_1300z IN FACANGEL
                CASE ptDd="CT"
                     DO coT_1300z IN FACANGEL
                CASE ptDd="DE"
                     DO deS_1300z IN FACANGEL
           ENDCASE
      CASE mcIa="24"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FAC24JUN
                CASE ptDd="BO"
                     DO boL_1300z IN FAC24JUN
                CASE ptDd="NP"
                     DO npE_1300z IN FAC24JUN
                CASE ptDd="CT"
                     DO coT_1300z IN FAC24JUN
                CASE ptDd="DE"
                     DO deS_1300z IN FAC24JUN
           ENDCASE
      CASE mcIa="CH"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACCHAYN
                CASE ptDd="BO"
                     DO boL_1300z IN FACCHAYN
                CASE ptDd="NP"
                     DO npE_1300z IN FACCHAYN
                CASE ptDd="CT"
                     DO coT_1300z IN FACCHAYN
                CASE ptDd="DE"
                     DO deS_1300z IN FACCHAYN
           ENDCASE
      CASE mcIa="IM" .OR. mcIa="AC" .OR. mcIa="LC" .OR. mcIa="LT"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACCATER
                CASE ptDd="BO"
                     DO boL_1300z IN FACCATER
                CASE ptDd="NP"
                     DO npE_1300z IN FACCATER
                CASE ptDd="CT"
                     DO coT_1300z IN FACCATER
                CASE ptDd="DE"
                     DO deS_1300z IN FACCATER
           ENDCASE
      CASE mcIa="KO"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACKOLKE
                CASE ptDd="BO"
                     DO boL_1300z IN FACKOLKE
                CASE ptDd="NP"
                     DO npE_1300z IN FACKOLKE
                CASE ptDd="CT"
                     DO coT_1300z IN FACKOLKE
                CASE ptDd="DE"
                     DO deS_1300z IN FACKOLKE
           ENDCASE
      CASE mcIa="RA" .OR. mcIa="RJ"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACRAGUS
                CASE ptDd="BO"
                     DO boL_1300z IN FACRAGUS
                CASE ptDd="NP"
                     DO npE_1300z IN FACRAGUS
                CASE ptDd="CT"
                     DO coT_1300z IN FACRAGUS
                CASE ptDd="DE"
                     DO deS_1300z IN FACRAGUS
           ENDCASE
      CASE mcIa="CA"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACCARPI
                CASE ptDd="BO"
                     DO boL_1300z IN FACCARPI
                CASE ptDd="NP"
                     DO npE_1300z IN FACCARPI
                CASE ptDd="CT"
                     DO coT_1300z IN FACCARPI
                CASE ptDd="DE"
                     DO deS_1300z IN FACCARPI
           ENDCASE
      CASE mcIa="VI"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACVISAC
                CASE ptDd="BO"
                     DO boL_1300z IN FACVISAC
                CASE ptDd="NP"
                     DO npE_1300z IN FACVISAC
                CASE ptDd="CT"
                     DO coT_1300z IN FACVISAC
                CASE ptDd="DE"
                     DO deS_1300z IN FACVISAC
           ENDCASE
      CASE mcIa="SI"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACISIDR
                CASE ptDd="BO"
                     DO boL_1300z IN FACISIDR
                CASE ptDd="NP"
                     DO npE_1300z IN FACISIDR
                CASE ptDd="CT"
                     DO coT_1300z IN FACISIDR
                CASE ptDd="DE"
                     DO deS_1300z IN FACISIDR
           ENDCASE
      CASE mcIa="CL"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACCALDE
                CASE ptDd="BO"
                     DO boL_1300z IN FACCALDE
                CASE ptDd="NP"
                     DO npE_1300z IN FACCALDE
                CASE ptDd="CT"
                     DO coT_1300z IN FACCALDE
                CASE ptDd="DE"
                     DO deS_1300z IN FACCALDE
           ENDCASE
      CASE mcIa="L1"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACVLEOS
                CASE ptDd="BO"
                     DO boL_1300z IN FACVLEOS
                CASE ptDd="NP"
                     DO npE_1300z IN FACVLEOS
                CASE ptDd="CT"
                     DO coT_1300z IN FACVLEOS
                CASE ptDd="DE"
                     DO deS_1300z IN FACVLEOS
           ENDCASE
      CASE mcIa="ME"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACMELAT
                CASE ptDd="BO"
                     DO boL_1300z IN FACMELAT
                CASE ptDd="NP"
                     DO npE_1300z IN FACMELAT
                CASE ptDd="CT"
                     DO coT_1300z IN FACMELAT
                CASE ptDd="DE"
                     DO deS_1300z IN FACMELAT
           ENDCASE
      CASE mcIa="KA"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACKOALA
                CASE ptDd="BO"
                     DO boL_1300z IN FACKOALA
                CASE ptDd="NP"
                     DO npE_1300z IN FACKOALA
                CASE ptDd="PC"
                     DO peR_1300z IN FACKOALA
                CASE ptDd="CT"
                     DO coT_1300z IN FACKOALA
                CASE ptDd="DE"
                     DO deS_1300z IN FACKOALA
           ENDCASE
      CASE mcIa="CP"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACCOOPI
                CASE ptDd="BO"
                     DO boL_1300z IN FACCOOPI
                CASE ptDd="NP"
                     DO npE_1300z IN FACCOOPI
                CASE ptDd="PC"
                     DO peR_1300z IN FACCOOPI
                CASE ptDd="CT"
                     DO coT_1300z IN FACCOOPI
                CASE ptDd="DE"
                     DO deS_1300z IN FACCOOPI
           ENDCASE
      CASE mcIa="SA"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACSABIN
                CASE ptDd="BO"
                     DO boL_1300z IN FACSABIN
                CASE ptDd="NP"
                     DO npE_1300z IN FACSABIN
                CASE ptDd="PC"
                     DO peR_1300z IN FACSABIN
                CASE ptDd="CT"
                     DO coT_1300z IN FACSABIN
                CASE ptDd="DE"
                     DO deS_1300z IN FACSABIN
           ENDCASE
      CASE mcIa="DY"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACDAYAN
                CASE ptDd="BO"
                     DO boL_1300z IN FACDAYAN
                CASE ptDd="NP"
                     DO npE_1300z IN FACDAYAN
                CASE ptDd="PC"
                     DO peR_1300z IN FACDAYAN
                CASE ptDd="CT"
                     DO coT_1300z IN FACDAYAN
                CASE ptDd="DE"
                     DO deS_1300z IN FACDAYAN
           ENDCASE
      CASE mcIa="PA"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACPARAD
                CASE ptDd="BO"
                     DO boL_1300z IN FACPARAD
                CASE ptDd="NP"
                     DO npE_1300z IN FACPARAD
                CASE ptDd="PC"
                     DO peR_1300z IN FACPARAD
                CASE ptDd="CT"
                     DO coT_1300z IN FACPARAD
                CASE ptDd="DE"
                     DO deS_1300z IN FACPARAD
           ENDCASE
      CASE mcIa="GE"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACGENER
                CASE ptDd="BO"
                     DO boL_1300z IN FACGENER
                CASE ptDd="NP"
                     DO npE_1300z IN FACGENER
                CASE ptDd="PC"
                     DO peR_1300z IN FACGENER
                CASE ptDd="CT"
                     DO coT_1300z IN FACGENER
                CASE ptDd="DE"
                     DO deS_1300z IN FACGENER
           ENDCASE
      CASE mcIa="TI"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACTICON
                CASE ptDd="BO"
                     DO boL_1300z IN FACTICON
                CASE ptDd="NP"
                     DO npE_1300z IN FACTICON
                CASE ptDd="CT"
                     DO coT_1300z IN FACTICON
                CASE ptDd="DE"
                     DO deS_1300z IN FACTICON
           ENDCASE
      CASE mcIa="IG"
           DO CASE
                CASE ptDd="FA" .AND. mcIa="IG"
                     DO faC_1300z IN FACIGLES
                CASE ptDd="BO" .AND. mcIa="IG"
                     DO boL_1300z IN FACIGLES
                CASE ptDd="NP" .AND. mcIa="IG"
                     DO npE_1300z IN FACIGLES
                CASE ptDd="CT" .AND. mcIa="IG"
                     DO coT_1300z IN FACIGLES
                CASE ptDd="DE" .AND. mcIa="IG"
                     DO deS_1300z IN FACIGLES
           ENDCASE
      CASE mcIa="SU"
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACVISUR
                CASE ptDd="BO"
                     DO boL_1300z IN FACVISUR
                CASE ptDd="NP"
                     DO npE_1300z IN FACVISUR
                CASE ptDd="PC"
                     DO peR_1300z IN FACVISUR
                CASE ptDd="CT"
                     DO coT_1300z IN FACVISUR
                CASE ptDd="DE"
                     DO deS_1300z IN FACVISUR
           ENDCASE
      CASE mcIa="EL" .OR. mcIa="E2" .OR. mcIa="E3" .OR. mcIa="E4" .OR.  ;
           mcIa="E5" .OR. mcIa="E6" .OR. mcIa="E7" .OR. mcIa="E8"
           PRIVATE pcIa
           DO CASE
                CASE mcIa="EL"
                     STORE "1" TO pcIa
                CASE mcIa="E2"
                     STORE "2" TO pcIa
                CASE mcIa="E3"
                     STORE "3" TO pcIa
                CASE mcIa="E4"
                     STORE "4" TO pcIa
                CASE mcIa="E5"
                     STORE "5" TO pcIa
                CASE mcIa="E6"
                     STORE "6" TO pcIa
                CASE mcIa="E7"
                     STORE "7" TO pcIa
                CASE mcIa="E8"
                     STORE "8" TO pcIa
           ENDCASE
           DO CASE
                CASE ptDd="FA"
                     DO faC_1300z IN FACELEGR WITH pcIa
                CASE ptDd="BO"
                     DO boL_1300z IN FACELEGR WITH pcIa
                CASE ptDd="NP"
                     DO npE_1300z IN FACELEGR WITH pcIa
                CASE ptDd="CT"
                     DO coT_1300z IN FACELEGR WITH pcIa
                CASE ptDd="DE"
                     DO deS_1300z IN FACELEGR WITH pcIa
           ENDCASE
           RELEASE pcIa
 ENDCASE
ENDPROC
*
