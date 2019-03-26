*
PROCEDURE Gra_2111c
 DO CASE
      CASE vsWg=1
           DO gr3_2111c
      CASE vsWg=2
           DO gr1_2111c
 ENDCASE
 STORE 0 TO viT1
 STORE 1 TO vsWg, viTe
 UNLOCK ALL
 WAIT CLEAR
 FLUSH
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gr1_2111c
 DO abR_2111c
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO gr2_2111c
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 DO orD_2111c
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 DO peD_2111c
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 DO toT_2111c
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 DO ciE_2111c
ENDPROC
*
PROCEDURE Gr2_2111c
 PRIVATE ppEd, psEc, paNo, pmEs, pdIa, ptDo, psEr, pdOc, ptPo, ptPp
 DO grAbar WITH "1"
 SELECT prOductos
 SEEK UPPER(ALLTRIM(vcOd))+"*"
 IF EOF()
      DO nuEvo_rg
      REPLACE f2111cod WITH vcOd
      REPLACE f2111bas WITH vbAs
      REPLACE f2111sto WITH 0
      REPLACE f2111sts WITH 0
      REPLACE f2111caj WITH 0
      REPLACE f2111cas WITH 0
      REPLACE f2111prm WITH 0
      SELECT viRtual_prod
      DO nuEvo_rg
      REPLACE f2111cod WITH vcOd
      SELECT prOductos
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH UPPER(ALLTRIM(vcOd))+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 IF vtPo=1
      SELECT prO_tot
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      IF EOF()
           DO nuEvo_rg
           REPLACE f2118cod WITH vcOd
      ELSE
           IF  .NOT. RLOCK()
                DO reG_lock WITH UPPER(ALLTRIM(vcOd))+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      REPLACE f2118sto WITH 0
      REPLACE f2118caj WITH 0
      REPLACE f2118cpe WITH 0
      REPLACE f2118cjp WITH 0
      REPLACE f2118sts WITH 0
      REPLACE f2118orp WITH 0
      REPLACE f2118prm WITH 0
      REPLACE f2118co1 WITH 0
      REPLACE f2118co2 WITH 0
      REPLACE f2118fe1 WITH CTOD(" ")
      REPLACE f2118fe2 WITH CTOD(" ")
      REPLACE f2118vcp WITH vvCp
      REPLACE f2118vcs WITH vvCs
 ENDIF
 SELECT stO_tot
 GOTO TOP
 IF BOF()
      DO nuEvo_rg
      REPLACE f2119sto WITH 0
      REPLACE f2119caj WITH 0
      REPLACE f2119cpe WITH 0
      REPLACE f2119cjp WITH 0
      REPLACE f2119orp WITH 0
      REPLACE f2119prm WITH 0
      REPLACE f2119vs1 WITH 0
      REPLACE f2119vs2 WITH 0
      REPLACE f2119vp1 WITH 0
      REPLACE f2119vp2 WITH 0
      REPLACE f2119vo1 WITH 0
      REPLACE f2119vo2 WITH 0
 ENDIF
 IF vtPo=1
      SELECT seRies
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2112cod)+"*"=ALLTRIM(vcOd)+"*"
           WAIT WINDOW NOWAIT "Verificando Serie "+f2112cod+":"+f2112ped+ ;
                "-"+f2112sec+"..."
           STORE f2112ped TO ppEd
           STORE f2112sec TO psEc
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SKIP
      ENDDO
 ENDIF
 IF vtPo=1
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           WAIT WINDOW NOWAIT "Verificando Serie "+f2990cod+"..."
           STORE f2990ano TO paNo
           STORE f2990mes TO pmEs
           STORE f2990dia TO pdIa
           STORE f2990tpo TO ptPo
           STORE f2990tpp TO ptPp
           STORE f2990tdo TO ptDo
           STORE f2990ser TO psEr
           STORE f2990doc TO pdOc
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ ;
                   ptPp+ptDo+psEr+pdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SKIP
      ENDDO
 ENDIF
 IF vtPo=1
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2991cod)+"*"=ALLTRIM(vcOd)+"*"
           WAIT WINDOW NOWAIT "Verificando Serie "+f2991cod+":"+f2991ped+ ;
                "-"+f2991sec+"..."
           STORE f2991ped TO ppEd
           STORE f2991sec TO psEc
           STORE f2991ano TO paNo
           STORE f2991mes TO pmEs
           STORE f2991dia TO pdIa
           STORE f2991tpo TO ptPo
           STORE f2991tpp TO ptPp
           STORE f2991tdo TO ptDo
           STORE f2991ser TO psEr
           STORE f2991doc TO pdOc
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptPo+ ;
                ptPp+ptDo+psEr+pdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+ ;
                   paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SKIP
      ENDDO
 ENDIF
 IF vtPo=1
      SELECT seRies
      DO WHILE .T.
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                EXIT
           ENDIF
           REPLACE f2112cod WITH SPACE(20)
           REPLACE f2112ped WITH SPACE(05)
           REPLACE f2112sec WITH SPACE(03)
           DELETE
           UNLOCK
      ENDDO
 ENDIF
 IF vtPo=1
      SELECT kaRdex
      DO WHILE .T.
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                EXIT
           ENDIF
           REPLACE f2990cod WITH SPACE(20)
           DELETE
           UNLOCK
      ENDDO
 ENDIF
 IF vtPo=1
      SELECT kaRdex_series
      DO WHILE .T.
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                EXIT
           ENDIF
           REPLACE f2991cod WITH SPACE(20)
           REPLACE f2991ped WITH SPACE(05)
           REPLACE f2991sec WITH SPACE(03)
           DELETE
           UNLOCK
      ENDDO
 ENDIF
 IF LEN(ALLTRIM(vcUx))=0 .OR. miMp=2
      STORE vcUc TO vcUx
      STORE vnUc TO vnUx
 ENDIF
 IF vlA3=0 .AND. vaN3=0
      STORE vlA1 TO vlA3
      STORE vaN1 TO vaN3
 ENDIF
 SELECT prOductos
 REPLACE f2111des WITH vdEs
 REPLACE f2111dcr WITH vdCr
 REPLACE f2111tpo WITH vtPo
 REPLACE f2111tip WITH vtIp
 REPLACE f2111vta WITH vvTa
 REPLACE f2111md1 WITH vmD1
 REPLACE f2111md2 WITH vmD2
 REPLACE f2111md3 WITH vmD3
 REPLACE f2111vv1 WITH vvV1
 REPLACE f2111vv2 WITH vvV2
 REPLACE f2111vv3 WITH vvV3
 REPLACE f2111vv4 WITH vvV4
 REPLACE f2111vv5 WITH vvV5
 REPLACE f2111vv6 WITH vvV6
 REPLACE f2111vv7 WITH vvV7
 REPLACE f2111vv8 WITH vvV8
 REPLACE f2111vv9 WITH vvV9
 REPLACE f2111vv0 WITH vvV0
 REPLACE f2111vva WITH vvVa
 REPLACE f2111vvb WITH vvVb
 REPLACE f2111vvc WITH vvVc
 REPLACE f2111vvd WITH vvVd
 REPLACE f2111vve WITH vvVe
 REPLACE f2111vvf WITH vvVf
 REPLACE f2111vvg WITH vvVg
 REPLACE f2111vvh WITH vvVh
 REPLACE f2111vvi WITH vvVi
 REPLACE f2111vvj WITH vvVj
 REPLACE f2111mv1 WITH vmV1
 REPLACE f2111mv2 WITH vmV2
 REPLACE f2111mv3 WITH vmV3
 REPLACE f2111mv4 WITH vmV4
 REPLACE f2111mv5 WITH vmV5
 REPLACE f2111mv6 WITH vmV6
 REPLACE f2111mv7 WITH vmV7
 REPLACE f2111mv8 WITH vmV8
 REPLACE f2111mv9 WITH vmV9
 REPLACE f2111mv0 WITH vmV0
 REPLACE f2111mva WITH vmVa
 REPLACE f2111mvb WITH vmVb
 REPLACE f2111mvc WITH vmVc
 REPLACE f2111mvd WITH vmVd
 REPLACE f2111mve WITH vmVe
 REPLACE f2111mvf WITH vmVf
 REPLACE f2111mvg WITH vmVg
 REPLACE f2111mvh WITH vmVh
 REPLACE f2111mvi WITH vmVi
 REPLACE f2111mvj WITH vmVj
 REPLACE f2111gru WITH vgRu
 REPLACE f2111cuv WITH vcUv
 REPLACE f2111nuv WITH vnUv
 REPLACE f2111cuc WITH vcUc
 REPLACE f2111nuc WITH vnUc
 REPLACE f2111cux WITH vcUx
 REPLACE f2111nux WITH vnUx
 REPLACE f2111tam WITH vtAm
 REPLACE f2111cst WITH vcSt
 REPLACE f2111ser WITH vsRr
 REPLACE f2111min WITH vmIn
 REPLACE f2111max WITH vmAx
 REPLACE f2111imp WITH viMp
 REPLACE f2111pro WITH vpRo
 REPLACE f2111mar WITH vmAr
 REPLACE f2111mon WITH vmNd
 REPLACE f2111vcp WITH vvCp
 REPLACE f2111vcs WITH vvCs
 REPLACE f2111uti WITH vuTi
 REPLACE f2111ut2 WITH vuT2
 REPLACE f2111ut3 WITH vuT3
 REPLACE f2111ut4 WITH vuT4
 REPLACE f2111ut5 WITH vuT5
 REPLACE f2111ut6 WITH vuT6
 REPLACE f2111ut7 WITH vuT7
 REPLACE f2111ut8 WITH vuT8
 REPLACE f2111ut9 WITH vuT9
 REPLACE f2111ut0 WITH vuT0
 REPLACE f2111dct WITH vdTt
 REPLACE f2111dc2 WITH vdT2
 REPLACE f2111dc3 WITH vdT3
 REPLACE f2111dc4 WITH vdT4
 REPLACE f2111dc5 WITH vdT5
 REPLACE f2111dc6 WITH vdT6
 REPLACE f2111dc7 WITH vdT7
 REPLACE f2111dc8 WITH vdT8
 REPLACE f2111dc9 WITH vdT9
 REPLACE f2111dc0 WITH vdT0
 REPLACE f2111la1 WITH vlA1
 REPLACE f2111an1 WITH vaN1
 REPLACE f2111la2 WITH vlA2
 REPLACE f2111an2 WITH vaN2
 REPLACE f2111la3 WITH vlA3
 REPLACE f2111an3 WITH vaN3
 REPLACE f2111esp WITH veSp
 REPLACE f2111pxc WITH vpXc
 REPLACE f2111cx1 WITH vcX1
 REPLACE f2111cx2 WITH vcX2
 REPLACE f2111bas WITH vbAs
 REPLACE f2111adv WITH vaDv
 REPLACE f2111din WITH vdIn
 REPLACE f2111cub WITH vcUb
 REPLACE f2111tie WITH vtIe
 REPLACE f2111fot WITH vfOt
 REPLACE f2111cmx WITH vcMx
 REPLACE f2111pes WITH vpEs
 REPLACE f2111sto WITH 0
 REPLACE f2111sts WITH 0
 REPLACE f2111caj WITH 0
 REPLACE f2111cas WITH 0
 REPLACE f2111prm WITH 0
 REPLACE f2111mov WITH " "
 REPLACE f2111ult WITH CTOD("  /  /    ")
 REPLACE f2111est WITH veSt
 REPLACE f2111usu WITH muSu
 REPLACE f2111maq WITH mmAq
 REPLACE f2111dat WITH DATE()
 REPLACE f2111tim WITH TIME()
 IF vtPo=1
      STORE DATE() TO vfEc
      DO or1_2111c
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO caL_2111c
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SELECT prOductos
      IF f2111ser=1
           DO or2_2111c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO seR_2111c
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
 ENDIF
 SELECT viRtual_prod
 REPLACE f2111des WITH vdEs
 RELEASE ppEd, psEc, paNo, pmEs, pdIa, ptDo, psEr, pdOc, ptPo, ptPp
ENDPROC
*
PROCEDURE Gr3_2111c
 DO grAbar WITH "1"
 SELECT prOductos
 SEEK UPPER(ALLTRIM(vcOd))+"*"
 IF EOF()
      DO nuEvo_rg
      REPLACE f2111cod WITH vcOd
      REPLACE f2111bas WITH vbAs
      REPLACE f2111sto WITH 0
      REPLACE f2111sts WITH 0
      REPLACE f2111caj WITH 0
      REPLACE f2111cas WITH 0
      REPLACE f2111prm WITH 0
      REPLACE f2111mov WITH " "
      REPLACE f2111ult WITH CTOD("  /  /    ")
      SELECT viRtual_prod
      DO nuEvo_rg
      REPLACE f2111cod WITH vcOd
      SELECT prOductos
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH UPPER(ALLTRIM(vcOd))+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 IF LEN(ALLTRIM(vcUx))=0 .OR. miMp=2
      STORE vcUc TO vcUx
      STORE vnUc TO vnUx
 ENDIF
 IF vlA3=0 .AND. vaN3=0
      STORE vlA1 TO vlA3
      STORE vaN1 TO vaN3
 ENDIF
 SELECT prOductos
 REPLACE f2111des WITH vdEs
 REPLACE f2111dcr WITH vdCr
 REPLACE f2111tpo WITH vtPo
 REPLACE f2111tip WITH vtIp
 REPLACE f2111vta WITH vvTa
 REPLACE f2111md1 WITH vmD1
 REPLACE f2111md2 WITH vmD2
 REPLACE f2111md3 WITH vmD3
 REPLACE f2111vv1 WITH vvV1
 REPLACE f2111vv2 WITH vvV2
 REPLACE f2111vv3 WITH vvV3
 REPLACE f2111vv4 WITH vvV4
 REPLACE f2111vv5 WITH vvV5
 REPLACE f2111vv6 WITH vvV6
 REPLACE f2111vv7 WITH vvV7
 REPLACE f2111vv8 WITH vvV8
 REPLACE f2111vv9 WITH vvV9
 REPLACE f2111vv0 WITH vvV0
 REPLACE f2111vva WITH vvVa
 REPLACE f2111vvb WITH vvVb
 REPLACE f2111vvc WITH vvVc
 REPLACE f2111vvd WITH vvVd
 REPLACE f2111vve WITH vvVe
 REPLACE f2111vvf WITH vvVf
 REPLACE f2111vvg WITH vvVg
 REPLACE f2111vvh WITH vvVh
 REPLACE f2111vvi WITH vvVi
 REPLACE f2111vvj WITH vvVj
 REPLACE f2111mv1 WITH vmV1
 REPLACE f2111mv2 WITH vmV2
 REPLACE f2111mv3 WITH vmV3
 REPLACE f2111mv4 WITH vmV4
 REPLACE f2111mv5 WITH vmV5
 REPLACE f2111mv6 WITH vmV6
 REPLACE f2111mv7 WITH vmV7
 REPLACE f2111mv8 WITH vmV8
 REPLACE f2111mv9 WITH vmV9
 REPLACE f2111mv0 WITH vmV0
 REPLACE f2111mva WITH vmVa
 REPLACE f2111mvb WITH vmVb
 REPLACE f2111mvc WITH vmVc
 REPLACE f2111mvd WITH vmVd
 REPLACE f2111mve WITH vmVe
 REPLACE f2111mvf WITH vmVf
 REPLACE f2111mvg WITH vmVg
 REPLACE f2111mvh WITH vmVh
 REPLACE f2111mvi WITH vmVi
 REPLACE f2111mvj WITH vmVj
 REPLACE f2111gru WITH vgRu
 REPLACE f2111cuv WITH vcUv
 REPLACE f2111nuv WITH vnUv
 REPLACE f2111cuc WITH vcUc
 REPLACE f2111nuc WITH vnUc
 REPLACE f2111cux WITH vcUx
 REPLACE f2111nux WITH vnUx
 REPLACE f2111tam WITH vtAm
 REPLACE f2111cst WITH vcSt
 REPLACE f2111ser WITH vsRr
 REPLACE f2111min WITH vmIn
 REPLACE f2111max WITH vmAx
 REPLACE f2111imp WITH viMp
 REPLACE f2111pro WITH vpRo
 REPLACE f2111mar WITH vmAr
 REPLACE f2111mon WITH vmNd
 REPLACE f2111vcp WITH vvCp
 REPLACE f2111vcs WITH vvCs
 REPLACE f2111uti WITH vuTi
 REPLACE f2111ut2 WITH vuT2
 REPLACE f2111ut3 WITH vuT3
 REPLACE f2111ut4 WITH vuT4
 REPLACE f2111ut5 WITH vuT5
 REPLACE f2111ut6 WITH vuT6
 REPLACE f2111ut7 WITH vuT7
 REPLACE f2111ut8 WITH vuT8
 REPLACE f2111ut9 WITH vuT9
 REPLACE f2111ut0 WITH vuT0
 REPLACE f2111dct WITH vdTt
 REPLACE f2111dc2 WITH vdT2
 REPLACE f2111dc3 WITH vdT3
 REPLACE f2111dc4 WITH vdT4
 REPLACE f2111dc5 WITH vdT5
 REPLACE f2111dc6 WITH vdT6
 REPLACE f2111dc7 WITH vdT7
 REPLACE f2111dc8 WITH vdT8
 REPLACE f2111dc9 WITH vdT9
 REPLACE f2111dc0 WITH vdT0
 REPLACE f2111la1 WITH vlA1
 REPLACE f2111an1 WITH vaN1
 REPLACE f2111la2 WITH vlA2
 REPLACE f2111an2 WITH vaN2
 REPLACE f2111la3 WITH vlA3
 REPLACE f2111an3 WITH vaN3
 REPLACE f2111esp WITH veSp
 REPLACE f2111pxc WITH vpXc
 REPLACE f2111cx1 WITH vcX1
 REPLACE f2111cx2 WITH vcX2
 REPLACE f2111bas WITH vbAs
 REPLACE f2111adv WITH vaDv
 REPLACE f2111din WITH vdIn
 REPLACE f2111cub WITH vcUb
 REPLACE f2111tie WITH vtIe
 REPLACE f2111fot WITH vfOt
 REPLACE f2111cmx WITH vcMx
 REPLACE f2111pdt WITH vpDt
 REPLACE f2111pes WITH vpEs
 REPLACE f2111est WITH veSt
 REPLACE f2111usu WITH muSu
 REPLACE f2111maq WITH mmAq
 REPLACE f2111dat WITH DATE()
 REPLACE f2111tim WITH TIME()
 UNLOCK
 SELECT viRtual_prod
 REPLACE f2111des WITH vdEs
ENDPROC
*
PROCEDURE Cal_2111c
 PRIVATE pnUm, ppIe
 STORE 0 TO pnUm, vsTo, vsTs, vsLc, vsCs, vpRm, tpRm, vcO1, vcO2
 STORE CTOD("  /  /    ") TO vuLt, vfE1, vfE2
 DO kaR_2111c
 DO coS_2111c
 SELECT prOductos
 IF f2111tpo=1
      IF f2111cst=1 .AND. f2111est="1"
           REPLACE f2111sto WITH vsTo
           REPLACE f2111sts WITH vsTs
           IF mcAj=1 .AND. f2111ser=1
                REPLACE f2111caj WITH vsLc
                REPLACE f2111cas WITH vsCs
           ENDIF
           REPLACE f2111prm WITH vpRm
           REPLACE f2111ult WITH vuLt
           IF AT(" ", DTOC(vuLt))<>0
                REPLACE f2111mov WITH "@"
           ELSE
                REPLACE f2111mov WITH " "
           ENDIF
           SELECT prO_tot
           REPLACE f2118sto WITH vsTo
           REPLACE f2118caj WITH vsLc
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH vsTs
           REPLACE f2118orp WITH 0
           REPLACE f2118prm WITH vpRm
      ELSE
           REPLACE f2111sto WITH 0
           REPLACE f2111caj WITH 0
           REPLACE f2111sts WITH 0
           REPLACE f2111cas WITH 0
           REPLACE f2111prm WITH 0
           REPLACE f2111ult WITH CTOD("  /  /    ")
           REPLACE f2111mov WITH " "
           SELECT prO_tot
           REPLACE f2118sto WITH 0
           REPLACE f2118caj WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118orp WITH 0
           REPLACE f2118prm WITH 0
      ENDIF
      REPLACE f2118co1 WITH vcO1
      REPLACE f2118co2 WITH vcO2
      REPLACE f2118fe1 WITH vfE1
      REPLACE f2118fe2 WITH vfE2
      SELECT prOductos
      STORE f2111vcp TO vvCp
      STORE f2111vcs TO vvCs
      SELECT prO_tot
      REPLACE f2118vcp WITH vvCp
      REPLACE f2118vcs WITH vvCs
 ENDIF
 RELEASE pnUm, ppIe
ENDPROC
*
PROCEDURE Kar_2111c
 PRIVATE ptDo, psEr, pdOc, pcAn, pcAj, pcOs, pfEm, paNo, pmEs, pdIa, ppEd,  ;
         psOr, poRd
 PRIVATE ppRe, plA1, plA2, paN1, paN2, peSp, pmEd, pcLi, pnOm, psR1, prEm,  ;
         pfRe, ptPp
 PRIVATE ptPo, ptIp, pnTi, ptOt, pmOn, pmOt, pcO1, ptP1, ppRv, ptD1, psRf,  ;
         pfAc, pdEc
 PRIVATE ptRa, ptCa, psRr, pcDg
 SELECT prOductos
 STORE f2111ser TO psRr
 SELECT deT_ingr
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2701cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Guía de Entrada: "+ ;
                f2701ser+"-"+f2701doc
           STORE f2701tdo TO ptDo
           STORE f2701ser TO psEr
           STORE f2701doc TO pdOc
           STORE f2701can TO pcAn
           STORE f2701caj TO pcAj
           STORE f2701cos TO pcOs
           IF psRr=2
                STORE 0 TO pcAj
           ENDIF
           SELECT caB_ingr
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2700est="9" .OR. f2700fem>vfEc
                SELECT deT_ingr
                SKIP
                LOOP
           ENDIF
           STORE f2700fem TO pfEm
           STORE f2700ped TO ppEd
           STORE f2700sor TO psOr
           STORE f2700ord TO poRd
           STORE f2700tip TO ptIp
           STORE ALLTRIM(f2700cm1) TO pnTi
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           STORE " " TO pnOm
           DO CASE
                CASE UPPER(f2700nti)="TRASLADO ENTRE ALMACENES"
                     STORE "3" TO ptRa
                OTHERWISE
                     STORE "1" TO ptRa
           ENDCASE
           DO CASE
                CASE f2700tpp=3
                     STORE "1" TO ptPo
                     STORE "2" TO ptPp
                CASE f2700tpp=4
                     STORE "1" TO ptPo
                     STORE "0" TO ptPp
                     STORE "INVENTARIO INICIAL" TO pnOm
                OTHERWISE
                     STORE "1" TO ptPo
                     STORE "1" TO ptPp
                     IF ALLTRIM(UPPER(f2700cm1))+"*"="INVENTARIO INICIAL"+"*"
                          STORE "INVENTARIO INICIAL" TO pnOm
                     ENDIF
           ENDCASE
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tra WITH ptRa
                REPLACE f2990can WITH pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH pcAj
                ENDIF
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH pcOs
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH SPACE(03)
                REPLACE f2990rem WITH SPACE(07)
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH ppEd
                REPLACE f2990sor WITH psOr
                REPLACE f2990ord WITH poRd
                REPLACE f2990emi WITH pfEm
                REPLACE f2990fem WITH pfEm
                REPLACE f2990tit WITH SPACE(04)
                REPLACE f2990cli WITH SPACE(04)
                REPLACE f2990nom WITH pnTi
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH pcOs
                REPLACE f2990tig WITH ROUND(f2990tne*f2990pig/100, 2)
                REPLACE f2990tfa WITH f2990tne+f2990tig
                REPLACE f2990ten WITH ptIp
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH f2990caj+pcAj
                ENDIF
           ENDIF
           SELECT deT_ingr
           SKIP
      ENDDO
 ENDIF
 SELECT deT_cpra
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2401cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Compra: "+f2401ser+"-"+ ;
                f2401doc
           STORE f2401tdo TO ptDo
           STORE f2401ser TO psEr
           STORE f2401doc TO pdOc
           STORE f2401can TO pcAn
           STORE f2401caj TO pcAj
           STORE f2401pre TO ppRe
           STORE f2401co1 TO pcO1
           STORE f2401tpo TO ptP1
           STORE f2401la1 TO plA1
           STORE f2401la2 TO plA2
           STORE f2401an1 TO paN1
           STORE f2401an2 TO paN2
           STORE f2401esp TO peSp
           STORE f2401med TO pmEd
           IF psRr=2
                STORE 0 TO pcAj
           ENDIF
           SELECT caB_cpra
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2400est="9" .OR. f2400tpo=2 .OR. f2400fin>vfEc
                SELECT deT_cpra
                SKIP
                LOOP
           ENDIF
           DO CASE
                CASE f2400td1="NC"
                     STORE "2" TO ptPo
                OTHERWISE
                     STORE "1" TO ptPo
           ENDCASE
           STORE "1" TO ptPp
           STORE f2400fin TO pfEm
           STORE f2400fem TO pfRe
           STORE f2400prv TO ppRv
           STORE f2400td1 TO ptD1
           STORE f2400sr1 TO psRf
           STORE f2400fac TO pfAc
           STORE f2400sr2 TO psR1
           STORE f2400rem TO prEm
           STORE f2400sor TO psOr
           STORE f2400ord TO poRd
           STORE f2400ped TO ppEd
           STORE f2400mon TO pmOn
           STORE f2400dec TO pdEc
           STORE f2400tra TO ptRa
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           STORE ALLTRIM(f2400nom)+" "+ALLTRIM(f2400cm1)+" "+ ;
                 ALLTRIM(f2400cm2) TO pnOm
           IF f2400tra="2" .AND. pcO1>0
                STORE pcO1 TO ppRe
           ENDIF
           STORE 0 TO ppIe
           DO piE_2111c IN PAM2111C
           STORE ROUND(pcAn*ppRe*ppIe, 6) TO ptOt
           DO CASE
                CASE pdEc=2
                     STORE ROUND(ptOt/pcAn, 5) TO pcOs, ppRe
                CASE pdEc=3
                     STORE ROUND(ptOt/pcAn, 6) TO pcOs, ppRe
                OTHERWISE
                     STORE ROUND(ptOt/pcAn, 4) TO pcOs, ppRe
           ENDCASE
           SELECT caMbio
           SEEK pfRe
           IF EOF()
                STORE mtCa TO ptCa
           ELSE
                STORE f9111tc1 TO ptCa
           ENDIF
           IF pmOn=2
                DO CASE
                     CASE pdEc<=1
                          STORE ROUND(pcOs*ptCa, 4) TO pcOs
                     CASE pdEc=2
                          STORE ROUND(pcOs*ptCa, 5) TO pcOs
                     CASE pdEc=3
                          STORE ROUND(pcOs*ptCa, 6) TO pcOs
                ENDCASE
           ENDIF
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990can WITH pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH pcAj
                ENDIF
                REPLACE f2990tra WITH ptRa
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH pcOs
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH psR1
                REPLACE f2990rem WITH prEm
                REPLACE f2990td1 WITH ptD1
                REPLACE f2990srf WITH psRf
                REPLACE f2990fac WITH pfAc
                REPLACE f2990ped WITH ppEd
                REPLACE f2990sor WITH psOr
                REPLACE f2990ord WITH poRd
                REPLACE f2990emi WITH pfRe
                REPLACE f2990fem WITH pfEm
                REPLACE f2990tit WITH ppRv
                REPLACE f2990cli WITH ppRv
                REPLACE f2990nom WITH pnOm
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH pmOn
                REPLACE f2990tne WITH ppRe
                REPLACE f2990tig WITH ROUND(f2990tne*f2990pig/100, 4)
                REPLACE f2990tfa WITH f2990tne+f2990tig
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH f2990caj+pcAj
                ENDIF
           ENDIF
           SELECT deT_cpra
           SKIP
      ENDDO
 ENDIF
 SELECT deT_sali
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2801cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Guía de Salida: "+ ;
                f2801ser+"-"+f2801doc
           STORE f2801tdo TO ptDo
           STORE f2801ser TO psEr
           STORE f2801doc TO pdOc
           STORE f2801can TO pcAn
           STORE f2801caj TO pcAj
           IF psRr=2
                STORE 0 TO pcAj
           ENDIF
           SELECT caB_sali
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2800est="9" .OR. f2800fem>vfEc
                SELECT deT_sali
                SKIP
                LOOP
           ENDIF
           STORE "1" TO ptPp
           STORE "2" TO ptPo
           STORE f2800fem TO pfEm
           STORE f2800ped TO ppEd
           STORE f2800tip TO ptIp
           STORE ALLTRIM(f2800cm1) TO pnTi
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           DO CASE
                CASE UPPER(f2800nti)="TRASLADO ENTRE ALMACENES"
                     STORE "3" TO ptRa
                OTHERWISE
                     STORE "1" TO ptRa
           ENDCASE
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990tra WITH ptRa
                REPLACE f2990can WITH pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH pcAj
                ENDIF
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH SPACE(03)
                REPLACE f2990rem WITH SPACE(07)
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH ppEd
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH pfEm
                REPLACE f2990fem WITH pfEm
                REPLACE f2990tit WITH SPACE(04)
                REPLACE f2990cli WITH SPACE(04)
                REPLACE f2990nom WITH pnTi
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH ptIp
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH f2990caj+pcAj
                ENDIF
           ENDIF
           SELECT deT_sali
           SKIP
      ENDDO
 ENDIF
 SELECT deT_remi
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2601cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Guía de Remisión: "+ ;
                f2601ser+"-"+f2601doc
           STORE f2601tdo TO ptDo
           STORE f2601ser TO psEr
           STORE f2601doc TO pdOc
           STORE f2601can TO pcAn
           STORE f2601caj TO pcAj
           IF psRr=2
                STORE 0 TO pcAj
           ENDIF
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89" .OR. f2600mot=1 .OR. f2600cst=2  ;
              .OR. f2600fem>vfEc
                SELECT deT_remi
                SKIP
                LOOP
           ENDIF
           STORE "1" TO ptPp
           STORE f2600fem TO pfEm
           STORE f2600cli TO pcLi
           STORE f2600nom TO pnOm
           STORE f2600mot TO pmOt
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           DO CASE
                CASE pmOt=8
                     STORE "2" TO ptPo
                     IF LEN(ALLTRIM(f2600cm1))<>0
                          STORE LOWER(ALLTRIM(SUBSTR(pnOm, 1, 20))+" / "+ ;
                                ALLTRIM(f2600cm1)) TO pnOm
                     ENDIF
                CASE pmOt=3 .OR. pmOt=6 .OR. pmOt=12
                     STORE "1" TO ptPo
                CASE pmOt=2
                     STORE LOWER(ALLTRIM(SUBSTR(pnOm, 1, 20))+" / "+ ;
                           ALLTRIM(f2600lug)) TO pnOm
                     STORE "2" TO ptPo
                OTHERWISE
                     STORE "2" TO ptPo
           ENDCASE
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH pcAj
                ENDIF
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH SPACE(03)
                REPLACE f2990rem WITH SPACE(07)
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH SPACE(07)
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH pfEm
                REPLACE f2990fem WITH pfEm
                REPLACE f2990tit WITH pcLi
                REPLACE f2990cli WITH pcLi
                REPLACE f2990nom WITH pnOm
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH STRTRAN(STR(pmOt, 2, 0), " ", "0")
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH f2990caj+pcAj
                ENDIF
           ENDIF
           SELECT deT_remi
           SKIP
      ENDDO
 ENDIF
 SELECT coN_remi
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2604cdg)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT  ;
                "Leyendo Detalle de Conjuntos de Guías de Remisión: "+ ;
                f2604ser+"-"+f2604doc
           STORE f2604tdo TO ptDo
           STORE f2604ser TO psEr
           STORE f2604doc TO pdOc
           STORE f2604can TO pcAn
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89" .OR. f2600mot=1 .OR. f2600cst=2  ;
              .OR. f2600fem>vfEc
                SELECT coN_remi
                SKIP
                LOOP
           ENDIF
           STORE "1" TO ptPp
           STORE f2600fem TO pfEm
           STORE f2600cli TO pcLi
           STORE f2600nom TO pnOm
           STORE f2600mot TO pmOt
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           DO CASE
                CASE pmOt=8
                     IF LEN(ALLTRIM(f2600cm1))<>0
                          STORE LOWER(ALLTRIM(SUBSTR(pnOm, 1, 20))+" / "+ ;
                                ALLTRIM(f2600cm1)) TO pnOm
                     ENDIF
                CASE pmOt=3 .OR. pmOt=6 .OR. pmOt=12
                     STORE "1" TO ptPo
                CASE pmOt=2
                     STORE LOWER(ALLTRIM(SUBSTR(pnOm, 1, 20))+" / "+ ;
                           ALLTRIM(f2600lug)) TO pnOm
                     STORE "2" TO ptPo
                OTHERWISE
                     STORE "2" TO ptPo
           ENDCASE
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH pcAn
                REPLACE f2990caj WITH 0
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH SPACE(03)
                REPLACE f2990rem WITH SPACE(07)
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH SPACE(07)
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH pfEm
                REPLACE f2990fem WITH pfEm
                REPLACE f2990tit WITH pcLi
                REPLACE f2990cli WITH pcLi
                REPLACE f2990nom WITH pnOm
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH "CJ"
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
           ENDIF
           SELECT coN_remi
           SKIP
      ENDDO
 ENDIF
 SELECT deT_fact
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1301cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           IF f1301tdo="CT" .OR. f1301fde>vfEc
                SELECT deT_fact
                SKIP
                LOOP
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Factura: "+f1301ser+"-"+ ;
                f1301doc
           STORE f1301tdo TO ptDo
           STORE f1301ser TO psEr
           STORE f1301doc TO pdOc
           STORE f1301can TO pcAn
           STORE ROUND(f1301to2/pcAn, 4) TO ppRe
           STORE VAL(f1301ref) TO pcAj
           STORE f1301fde TO pfEm
           IF psRr=2
                STORE 0 TO pcAj
           ENDIF
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89"
                SELECT deT_fact
                SKIP
                LOOP
           ENDIF
           STORE "1" TO ptPp
           STORE "2" TO ptPo
           STORE f1300fem TO pfRe
           STORE f1300cli TO pcLi
           STORE f1300nom TO pnOm
           STORE f1300mon TO pmOn
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           STORE SUBSTR(f1300cm1, 1, 3) TO psR1
           STORE SUBSTR(f1300cm1, 5, 7) TO prEm
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH pcAj
                ENDIF
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH psR1
                REPLACE f2990rem WITH prEm
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH SPACE(07)
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH pfRe
                REPLACE f2990fem WITH pfEm
                REPLACE f2990tit WITH pcLi
                REPLACE f2990cli WITH pcLi
                REPLACE f2990nom WITH pnOm
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH pmOn
                REPLACE f2990tfa WITH ppRe
                REPLACE f2990tne WITH ROUND(f2990tfa/(1+(f2990pig/100)), 2)
                REPLACE f2990tig WITH f2990tfa-f2990tne
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
                IF mcAj=1
                     REPLACE f2990caj WITH f2990caj+pcAj
                ENDIF
           ENDIF
           SELECT deT_fact
           SKIP
      ENDDO
 ENDIF
 SELECT coN_fact
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1304cdg)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           IF f1304tdo="CT"
                SELECT coN_fact
                SKIP
                LOOP
           ENDIF
           WAIT WINDOW NOWAIT  ;
                "Leyendo Detalle de Conjuntos de Facturas: "+f1304ser+"-"+ ;
                f1304doc
           STORE f1304tdo TO ptDo
           STORE f1304ser TO psEr
           STORE f1304doc TO pdOc
           STORE f1304can TO pcAn
           STORE f1304cod TO pcDg
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89"
                SELECT coN_fact
                SKIP
                LOOP
           ENDIF
           SELECT deT_fact
           SEEK ALLTRIM(pcDg)+"*"+ptDo+psEr+pdOc
           IF EOF() .OR. f1301fde>vfEc
                SELECT coN_fact
                SKIP
                LOOP
           ENDIF
           STORE f1301fde TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           SELECT caB_fact
           STORE "1" TO ptPp
           STORE "2" TO ptPo
           STORE f1300fem TO pfRe
           STORE f1300cli TO pcLi
           STORE f1300nom TO pnOm
           STORE SUBSTR(f1300cm1, 1, 3) TO psR1
           STORE SUBSTR(f1300cm1, 5, 7) TO prEm
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2990cod WITH vcOd
                REPLACE f2990ano WITH paNo
                REPLACE f2990mes WITH pmEs
                REPLACE f2990dia WITH pdIa
                REPLACE f2990tpp WITH ptPp
                REPLACE f2990tpo WITH ptPo
                REPLACE f2990tra WITH "1"
                REPLACE f2990can WITH pcAn
                REPLACE f2990caj WITH 0
                REPLACE f2990sld WITH 0
                REPLACE f2990slc WITH 0
                REPLACE f2990sls WITH 0
                REPLACE f2990scs WITH 0
                REPLACE f2990cos WITH 0
                REPLACE f2990dct WITH 0
                REPLACE f2990gas WITH 0
                REPLACE f2990prm WITH 0
                REPLACE f2990tdo WITH ptDo
                REPLACE f2990ser WITH psEr
                REPLACE f2990doc WITH pdOc
                REPLACE f2990sr1 WITH psR1
                REPLACE f2990rem WITH prEm
                REPLACE f2990td1 WITH SPACE(02)
                REPLACE f2990srf WITH SPACE(03)
                REPLACE f2990fac WITH SPACE(20)
                REPLACE f2990ped WITH SPACE(07)
                REPLACE f2990sor WITH SPACE(03)
                REPLACE f2990ord WITH SPACE(07)
                REPLACE f2990emi WITH pfEm
                REPLACE f2990fem WITH pfRe
                REPLACE f2990tit WITH pcLi
                REPLACE f2990cli WITH pcLi
                REPLACE f2990nom WITH pnOm
                REPLACE f2990pig WITH miGv
                REPLACE f2990mon WITH 1
                REPLACE f2990tne WITH 0
                REPLACE f2990tig WITH 0
                REPLACE f2990tfa WITH 0
                REPLACE f2990ten WITH "CJ"
           ELSE
                REPLACE f2990can WITH f2990can+pcAn
           ENDIF
           SELECT coN_fact
           SKIP
      ENDDO
 ENDIF
 RELEASE ptDo, psEr, pdOc, pcAn, pcAj, pcOs, pfEm, paNo, pmEs, pdIa, ppEd,  ;
         psOr, poRd
 RELEASE ppRe, plA1, plA2, paN1, paN2, peSp, pmEd, pcLi, pnOm, psR1, prEm,  ;
         pfRe, ptPp
 RELEASE ptPo, ptIp, pnTi, ptOt, pmOn, pmOt, pcO1, ptP1, ppRv, ptD1, psRf,  ;
         pfAc, pdEc
 RELEASE ptRa, ptCa, psRr, pcDg
ENDPROC
*
PROCEDURE Cos_2111c
 PRIVATE pcOs, pfEm
 SELECT kaRdex
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      STORE 0 TO vsTo, vsTs, vsLc, vsCs, vpRm, tpRm, vcO1, vcO2
      STORE CTOD(" ") TO vfE1, vfE2
      WAIT WINDOW NOWAIT "Calculando Costos adicionales..."
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           IF f2990tdo="CO" .AND. f2990td1="FA" .AND. LEN(ALLTRIM(f2990fac))<>0
                DO gaS_2111c
           ENDIF
           SELECT kaRdex
           SKIP
      ENDDO
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      STORE f2990cos+f2990gas-f2990dct TO vpRm
      WAIT WINDOW NOWAIT "Calculando Saldos y Costo promedio..."
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           STORE CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano) TO vuLt
           STORE f2990emi TO pfEm
           DO CASE
                CASE f2990tpo="1" .AND. f2990tpp="0" .AND. f2990td1<>"NC"
                     STORE f2990can TO vsTo
                     STORE f2990caj TO vsLc
                     IF f2990can=0
                     ELSE
                          STORE pnUm+1 TO pnUm
                     ENDIF
                CASE f2990tpo="1" .AND. f2990tpp="0"
                     STORE f2990can*-1 TO vsTo
                     STORE f2990caj*-1 TO vsLc
                     STORE pnUm+1 TO pnUm
                CASE f2990tpo="1" .AND. f2990td1<>"NC"
                     STORE vsTo+f2990can TO vsTo
                     STORE vsLc+f2990caj TO vsLc
                     STORE pnUm+1 TO pnUm
                     IF f2990tdo="CO"
                          DO CASE
                               CASE f2990mon=1 .AND. vfE1<pfEm
                                    STORE pfEm TO vfE1
                                    STORE f2990cos+f2990gas-f2990dct TO vcO1
                               CASE f2990mon=2 .AND. vfE2<pfEm
                                    STORE pfEm TO vfE2
                                    STORE f2990cos+f2990gas-f2990dct TO vcO2
                          ENDCASE
                     ENDIF
                CASE f2990tpo$"12"
                     STORE vsTo-f2990can TO vsTo
                     STORE vsLc-f2990caj TO vsLc
                     STORE pnUm+1 TO pnUm
           ENDCASE
           IF f2990tdo="NP" .OR. (f2990tdo="CO" .AND.  ;
              (LEN(ALLTRIM(f2990td1))=0 .OR. LEN(ALLTRIM(f2990srf))=0  ;
              .OR. LEN(ALLTRIM(f2990fac))=0))
           ELSE
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0" .AND. f2990td1<>"NC"
                          STORE f2990can TO vsTs
                          STORE f2990caj TO vsCs
                          STORE f2990cos+f2990gas-f2990dct TO vpRm
                     CASE f2990tpo="1" .AND. f2990tpp="0" .AND. f2990td1="NC"
                          STORE f2990can*-1 TO vsTs
                          STORE f2990caj*-1 TO vsCs
                     CASE f2990tpo="1" .AND. f2990tdo="GI" .AND. f2990nom= ;
                          "INVENTARIO INICIAL" .AND. f2990mes+f2990dia="0101"
                          STORE vsTs+f2990can TO vsTs
                          STORE vsCs+f2990caj TO vsCs
                          STORE f2990cos+f2990gas-f2990dct TO pcOs
                          STORE pcOs*f2990can TO pcOs
                          STORE tpRm+pcOs TO tpRm
                          STORE ROUND(tpRm/vsTs, 4) TO vpRm
                     CASE f2990tpo="1" .AND. f2990tdo="GI" .AND. f2990tpp<> ;
                          "0" .AND. (SUBSTR(f2990nom, 1, 2)="GR" .OR.  ;
                          SUBSTR(f2990nom, 1, 2)="NC")
                          STORE vsTs+f2990can TO vsTs
                          STORE vsCs+f2990caj TO vsCs
                     CASE f2990tpo="1" .AND. f2990tdo="GI" .AND. f2990tpp= ;
                          "1" .AND. f2990mes+f2990dia="0101"
                          STORE vsTs+f2990can TO vsTs
                          STORE vsCs+f2990caj TO vsCs
                          REPLACE f2990cos WITH vpRm
                     CASE f2990tpo="1" .AND. f2990td1<>"NC" .AND. (vsTs+ ;
                          f2990can<=0 .OR. vsTs<=0)
                          STORE vsTs+f2990can TO vsTs
                          STORE vsCs+f2990caj TO vsCs
                          STORE f2990cos+f2990gas-f2990dct TO vpRm
                     CASE f2990tpo="1" .AND. f2990td1<>"NC"
                          STORE vsTs+f2990can TO vsTs
                          STORE vsCs+f2990caj TO vsCs
                          STORE f2990cos+f2990gas-f2990dct TO pcOs
                          STORE pcOs*f2990can TO pcOs
                          STORE tpRm+pcOs TO tpRm
                          STORE ROUND(tpRm/vsTs, 4) TO vpRm
                     CASE f2990tpo$"12"
                          STORE vsTs-f2990can TO vsTs
                          STORE vsCs-f2990caj TO vsCs
                ENDCASE
           ENDIF
           REPLACE f2990sld WITH vsTo
           REPLACE f2990slc WITH vsLc
           REPLACE f2990sls WITH vsTs
           REPLACE f2990scs WITH vsCs
           REPLACE f2990prm WITH vpRm
           STORE f2990sls*f2990prm TO tpRm
           SKIP
      ENDDO
 ENDIF
 RELEASE pcOs, pfEm
ENDPROC
*
PROCEDURE Gas_2111c
 PRIVATE ptD1, psRf, pfAc, pfEm, pmOn, pvAl, pdCt, pnEt, pdEc
 PRIVATE ptCa, pcAn, ppRe, ptP1, plA1, plA2, paN1, paN2, pmEd, ppOr, ppEd
 STORE 0 TO tvAl, tdCt, tnEt, tgAs, tcUn, tcAn
 STORE f2990td1 TO ptD1
 STORE f2990srf TO psRf
 STORE f2990fac TO pfAc
 STORE f2990ped TO ppEd
 SELECT caB_cpra
 DO orD_0000a WITH "2400", "A", "F2400FAC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ptD1+psRf+pfAc
 IF EOF() .OR. f2400tpo=2 .OR. f2400tra="2"
      RETURN
 ENDIF
 SELECT deT_cpra
 DO orD_0000a WITH "2401", "A", "F2401DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 DO WHILE  .NOT. EOF() .AND. f2400td1+f2400sr1+f2400fac=ptD1+psRf+pfAc
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      IF f2400est="9" .OR. f2400tpo=2
           SKIP
           LOOP
      ENDIF
      STORE f2400tdo TO ptDo
      STORE f2400ser TO psEr
      STORE f2400doc TO pdOc
      STORE f2400ped TO ppEd
      STORE f2400fem TO pfEm
      STORE f2400mon TO pmOn
      STORE f2400val TO pvAl
      STORE f2400dct TO pdCt
      STORE f2400net TO pnEt
      STORE f2400dec TO pdEc
      SELECT caMbio
      SEEK pfEm
      IF EOF()
           STORE mtCa TO ptCa
      ELSE
           STORE f9111tc1 TO ptCa
      ENDIF
      IF pmOn=2
           DO CASE
                CASE pdEc<=1
                     STORE ROUND(pvAl*ptCa, 4) TO pvAl
                     STORE ROUND(pnEt*ptCa, 4) TO pnEt
                     STORE ROUND(pdCt*ptCa, 4) TO pdCt
                CASE pdEc=2
                     STORE ROUND(pvAl*ptCa, 5) TO pvAl
                     STORE ROUND(pnEt*ptCa, 5) TO pnEt
                     STORE ROUND(pdCt*ptCa, 5) TO pdCt
                CASE pdEc=3
                     STORE ROUND(pvAl*ptCa, 6) TO pvAl
                     STORE ROUND(pnEt*ptCa, 6) TO pnEt
                     STORE ROUND(pdCt*ptCa, 6) TO pdCt
           ENDCASE
      ENDIF
      STORE tvAl+pvAl TO tvAl
      STORE tdCt+pdCt TO tdCt
      SELECT deT_cpra
      SEEK ptDo+psEr+pdOc
      DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=ptDo+psEr+pdOc
           IF ALLTRIM(f2401cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2401can TO pcAn
                STORE f2401pre TO ppRe
                STORE f2401tpo TO ptP1
                STORE f2401la1 TO plA1
                STORE f2401la2 TO plA2
                STORE f2401an1 TO paN1
                STORE f2401an2 TO paN2
                STORE f2401med TO pmEd
                IF pmOn=2
                     DO CASE
                          CASE pdEc<=1
                               STORE ROUND(ppRe*ptCa, 4) TO ppRe
                          CASE pdEc=2
                               STORE ROUND(ppRe*ptCa, 5) TO ppRe
                          CASE pdEc=3
                               STORE ROUND(ppRe*ptCa, 6) TO ppRe
                     ENDCASE
                ENDIF
                STORE 0 TO ppIe
                DO piE_2111c IN PAM2111C
                STORE tcUn+(pcAn*ppRe*ppIe) TO tcUn
                STORE tcAn+pcAn TO tcAn
           ENDIF
           SKIP
      ENDDO
      SELECT caB_cpra
      SKIP
 ENDDO
 IF tcUn>0
      STORE ROUND(tcUn/tvAl, 8) TO ppOr
      IF tdCt>0
           STORE ROUND(tdCt*ppOr, 8) TO tdCt
           STORE ROUND(tdCt/tcAn, 8) TO tdCt
      ENDIF
      IF tdCt<0
           STORE 0 TO tdCt
      ENDIF
      STORE ROUND(tcUn/tcAn, 8) TO tcUn
      STORE ROUND(tcUn, 4) TO tcUn
      STORE ROUND(tdCt, 4) TO tdCt
 ENDIF
 SELECT kaRdex
 REPLACE f2990cos WITH tcUn
 REPLACE f2990dct WITH tdCt
 IF LEN(ALLTRIM(ppEd))=0 .OR. SUBSTR(ppEd, 6, 2)="-T"
      RETURN
 ENDIF
 SELECT kaRdex
 STORE f2990can TO pcAn
 STORE f2990cos*pcAn TO tcUn
 SELECT caB_cpra
 DO orD_0000a WITH "2400", "A", "F2400PED", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 SEEK ALLTRIM(ppEd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2400ped)+"*"=ALLTRIM(ppEd)+"*"
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      IF f2400est="9"
           SKIP
           LOOP
      ENDIF
      STORE f2400fem TO pfEm
      STORE f2400mon TO pmOn
      STORE f2400net TO pnEt
      STORE f2400dec TO pdEc
      SELECT caMbio
      SEEK pfEm
      IF EOF()
           STORE mtCa TO ptCa
      ELSE
           STORE f9111tc1 TO ptCa
      ENDIF
      IF pmOn=2
           DO CASE
                CASE pdEc<=1
                     STORE ROUND(pnEt*ptCa, 4) TO pnEt
                CASE pdEc=2
                     STORE ROUND(pnEt*ptCa, 5) TO pnEt
                CASE pdEc=3
                     STORE ROUND(pnEt*ptCa, 6) TO pnEt
           ENDCASE
      ENDIF
      SELECT caB_cpra
      DO CASE
           CASE f2400tpo<>2 .AND. f2400td1<>"NC" .AND. LEN(ALLTRIM(f2400td1))>0
                STORE tnEt+pnEt TO tnEt
           CASE f2400tpo<>2 .AND. f2400td1="NC" .AND. LEN(ALLTRIM(f2400td1))>0
                STORE tnEt-pnEt TO tnEt
           CASE f2400tpo=2 .AND. f2400td1<>"NC"
                STORE tgAs+pnEt TO tgAs
           CASE f2400tpo=2 .AND. f2400td1="NC"
                STORE tgAs-pnEt TO tgAs
      ENDCASE
      SKIP
 ENDDO
 SELECT kaRdex
 IF tcUn>0 .AND. tnEt>0
      STORE ROUND(tcUn/tnEt, 8) TO ppOr
      IF tgAs>0
           STORE ROUND(tgAs*ppOr, 8) TO tgAs
           STORE ROUND(tgAs/pcAn, 8) TO tgAs
           IF tgAs<0
                STORE 0 TO tgAs
           ENDIF
           STORE ROUND(tgAs, 4) TO tgAs
      ELSE
           STORE 0 TO tgAs
      ENDIF
 ENDIF
 REPLACE f2990gas WITH tgAs
 RELEASE ptD1, psRf, pfAc, pfEm, pmOn, pvAl, pdCt, pnEt, pdEc
 RELEASE ptCa, pcAn, ppRe, ptP1, plA1, plA2, paN1, paN2, pmEd, ppOr, ppEd
ENDPROC
*
PROCEDURE Pie_2111c
 DO CASE
      CASE plA1=0 .AND. paN1=0
           STORE 2 TO pmEd
      OTHERWISE
           STORE 1 TO pmEd
 ENDCASE
 DO CASE
      CASE ptP1=2 .AND. pmEd=1
           STORE ROUND(plA1*paN1*10.77, 6) TO ppIe
      CASE ptP1=2 .AND. pmEd=2
           STORE ROUND(plA2*paN2/144, 6) TO ppIe
      CASE ptP1=3
           STORE ROUND(plA2*paN2*peSp/12, 6) TO ppIe
      OTHERWISE
           STORE 1 TO ppIe
 ENDCASE
ENDPROC
*
PROCEDURE Ser_2111c
 PRIVATE ptDo, psEr, pdOc, ppEd, psEc, ppLa, pmOt, pfEm, paNo, pmEs, pdIa
 PRIVATE ptI1, ptP1, peS1, ptD1, psR1, pdO1, psW2
 SELECT seR_ingr
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2703cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT  ;
                "Leyendo Detalle de Serie de Guía de Entrada: "+f2703ser+ ;
                "-"+f2703doc
           STORE f2703tdo TO ptDo
           STORE f2703ser TO psEr
           STORE f2703doc TO pdOc
           STORE f2703ped TO ppEd
           STORE f2703sec TO psEc
           STORE f2703pla TO ppLa
           STORE f2703mot TO pmOt
           SELECT caB_ingr
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2700est="9" .OR. f2700fem>vfEc
                SELECT seR_ingr
                SKIP
                LOOP
           ENDIF
           STORE f2700fem TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           DO CASE
                CASE f2700tpp=3
                     STORE "1" TO ptI1
                     STORE "2" TO ptP1
                     STORE "M" TO peS1
                CASE f2700tpp=4
                     STORE "1" TO ptI1
                     STORE "0" TO ptP1
                     STORE "S" TO peS1
                OTHERWISE
                     STORE "1" TO ptI1
                     STORE "1" TO ptP1
                     STORE "S" TO peS1
           ENDCASE
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptI1+ ;
                ptP1+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH ppEd
                REPLACE f2991sec WITH psEc
                REPLACE f2991ano WITH paNo
                REPLACE f2991mes WITH pmEs
                REPLACE f2991dia WITH pdIa
                REPLACE f2991tpp WITH ptP1
                REPLACE f2991tpo WITH ptI1
                REPLACE f2991tdo WITH ptDo
                REPLACE f2991ser WITH psEr
                REPLACE f2991doc WITH pdOc
                REPLACE f2991pla WITH ppLa
                REPLACE f2991mot WITH pmOt
                REPLACE f2991est WITH peS1
           ENDIF
           SELECT seR_ingr
           SKIP
      ENDDO
 ENDIF
 SELECT seR_cpra
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2403cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Series de Compra: "+ ;
                f2403ser+"-"+f2403doc
           STORE f2403tdo TO ptDo
           STORE f2403ser TO psEr
           STORE f2403doc TO pdOc
           STORE f2403ped TO ppEd
           STORE f2403sec TO psEc
           STORE f2403pla TO ppLa
           STORE f2403mot TO pmOt
           SELECT caB_cpra
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2400est="9" .OR. f2400tpo=2 .OR. f2400fin>vfEc
                SELECT seR_cpra
                SKIP
                LOOP
           ENDIF
           DO CASE
                CASE f2400td1="NC"
                     STORE "2" TO ptI1
                     STORE "D" TO peS1
                OTHERWISE
                     STORE "1" TO ptI1
                     STORE "S" TO peS1
           ENDCASE
           STORE "1" TO ptP1
           STORE f2400fin TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptI1+ ;
                ptP1+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH ppEd
                REPLACE f2991sec WITH psEc
                REPLACE f2991ano WITH paNo
                REPLACE f2991mes WITH pmEs
                REPLACE f2991dia WITH pdIa
                REPLACE f2991tpp WITH ptP1
                REPLACE f2991tpo WITH ptI1
                REPLACE f2991tdo WITH ptDo
                REPLACE f2991ser WITH psEr
                REPLACE f2991doc WITH pdOc
                REPLACE f2991pla WITH ppLa
                REPLACE f2991mot WITH pmOt
                REPLACE f2991est WITH peS1
           ENDIF
           SELECT seR_cpra
           SKIP
      ENDDO
 ENDIF
 SELECT seR_sali
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2803cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT  ;
                "Leyendo Detalle de Series de Guía de Salida: "+f2803ser+ ;
                "-"+f2803doc
           STORE f2803tdo TO ptDo
           STORE f2803ser TO psEr
           STORE f2803doc TO pdOc
           STORE f2803ped TO ppEd
           STORE f2803sec TO psEc
           STORE f2803pla TO ppLa
           STORE f2803mot TO pmOt
           SELECT caB_sali
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2800est="9" .OR. f2800fem>vfEc
                SELECT seR_sali
                SKIP
                LOOP
           ENDIF
           STORE "1" TO ptP1
           STORE "2" TO ptI1
           STORE f2800fem TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           DO CASE
                CASE f2800tpp=2
                     STORE "D" TO peS1
                OTHERWISE
                     STORE "O" TO peS1
           ENDCASE
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptI1+ ;
                ptP1+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH ppEd
                REPLACE f2991sec WITH psEc
                REPLACE f2991ano WITH paNo
                REPLACE f2991mes WITH pmEs
                REPLACE f2991dia WITH pdIa
                REPLACE f2991tpp WITH ptP1
                REPLACE f2991tpo WITH ptI1
                REPLACE f2991tdo WITH ptDo
                REPLACE f2991ser WITH psEr
                REPLACE f2991doc WITH pdOc
                REPLACE f2991pla WITH ppLa
                REPLACE f2991mot WITH pmOt
                REPLACE f2991est WITH peS1
           ENDIF
           SELECT seR_sali
           SKIP
      ENDDO
 ENDIF
 SELECT seR_remi
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2603cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           WAIT WINDOW NOWAIT  ;
                "Leyendo Detalle de Series de Guía de Remisión: "+ ;
                f2603ser+"-"+f2603doc
           STORE f2603tdo TO ptDo
           STORE f2603ser TO psEr
           STORE f2603doc TO pdOc
           STORE f2603ped TO ppEd
           STORE f2603sec TO psEc
           STORE f2603pla TO ppLa
           STORE f2603mot TO pmOt
           SELECT caB_remi
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f2600est$"89" .OR. f2600mot=1 .OR. f2600cst=2  ;
              .OR. f2600fem>vfEc
                SELECT seR_remi
                SKIP
                LOOP
           ENDIF
           STORE "1" TO ptP1
           STORE f2600fem TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           DO CASE
                CASE f2600mot=3 .OR. f2600mot=6 .OR. f2600mot=12
                     STORE "1" TO ptI1
                     STORE "S" TO peS1
                OTHERWISE
                     STORE "2" TO ptI1
                     STORE "O" TO peS1
           ENDCASE
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptI1+ ;
                ptP1+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH ppEd
                REPLACE f2991sec WITH psEc
                REPLACE f2991ano WITH paNo
                REPLACE f2991mes WITH pmEs
                REPLACE f2991dia WITH pdIa
                REPLACE f2991tpp WITH ptP1
                REPLACE f2991tpo WITH ptI1
                REPLACE f2991tdo WITH ptDo
                REPLACE f2991ser WITH psEr
                REPLACE f2991doc WITH pdOc
                REPLACE f2991pla WITH ppLa
                REPLACE f2991mot WITH pmOt
                REPLACE f2991est WITH peS1
           ENDIF
           SELECT seR_remi
           SKIP
      ENDDO
 ENDIF
 SELECT seR_fact
 SEEK ALLTRIM(vcOd)+"*"
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1303cod)+"*"=ALLTRIM(vcOd)+"*"
           IF mkEy=9000
                STORE 99 TO mkEy
                RETURN
           ENDIF
           IF f1303tdo="CT"
                SELECT seR_fact
                SKIP
                LOOP
           ENDIF
           WAIT WINDOW NOWAIT "Leyendo Detalle de Series de Factura: "+ ;
                f1303ser+"-"+f1303doc
           STORE f1303tdo TO ptDo
           STORE f1303ser TO psEr
           STORE f1303doc TO pdOc
           STORE f1303ped TO ppEd
           STORE f1303sec TO psEc
           STORE f1303pla TO ppLa
           STORE f1303mot TO pmOt
           SELECT caB_fact
           SEEK ptDo+psEr+pdOc
           IF EOF() .OR. f1300est$"89" .OR. f1300fde>vfEc
                SELECT seR_fact
                SKIP
                LOOP
           ENDIF
           STORE "V" TO peS1
           STORE "1" TO ptP1
           STORE "2" TO ptI1
           STORE f1300fde TO pfEm
           STORE SUBSTR(DTOC(pfEm), 7, 4) TO paNo
           STORE SUBSTR(DTOC(pfEm), 4, 2) TO pmEs
           STORE SUBSTR(DTOC(pfEm), 1, 2) TO pdIa
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptI1+ ;
                ptP1+ptDo+psEr+pdOc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH ppEd
                REPLACE f2991sec WITH psEc
                REPLACE f2991ano WITH paNo
                REPLACE f2991mes WITH pmEs
                REPLACE f2991dia WITH pdIa
                REPLACE f2991tpp WITH ptP1
                REPLACE f2991tpo WITH ptI1
                REPLACE f2991tdo WITH ptDo
                REPLACE f2991ser WITH psEr
                REPLACE f2991doc WITH pdOc
                REPLACE f2991pla WITH ppLa
                REPLACE f2991mot WITH pmOt
                REPLACE f2991est WITH peS1
           ENDIF
           SELECT seR_fact
           SKIP
      ENDDO
 ENDIF
 STORE 0 TO psW2
 SELECT kaRdex_series
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2991cod)+"*"=ALLTRIM(vcOd)+"*"
      STORE f2991ped TO ppEd
      STORE f2991sec TO psEc
      STORE f2991tdo TO ptDo
      STORE f2991ser TO psEr
      STORE f2991doc TO pdOc
      STORE f2991tpp TO ptP1
      STORE f2991tpo TO ptI1
      STORE f2991pla TO ppLa
      STORE f2991mot TO pmOt
      STORE f2991est TO peS1
      STORE CTOD(f2991dia+"/"+f2991mes+"/"+f2991ano) TO pfEm
      SELECT seRies
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc
      IF EOF()
           APPEND BLANK
           REPLACE f2112cod WITH vcOd
           REPLACE f2112ped WITH ppEd
           REPLACE f2112sec WITH psEc
           REPLACE f2112plo WITH ppLa
           REPLACE f2112pla WITH ppLa
           REPLACE f2112rep WITH SPACE(01)
           REPLACE f2112est WITH SPACE(01)
           STORE 0 TO psW2
      ENDIF
      REPLACE f2112est WITH peS1
      IF f2112est$"VOD"
           STORE psW2+1 TO psW2
      ENDIF
      IF psW2>1
           REPLACE f2112rep WITH "R"
      ENDIF
      DO CASE
           CASE ptI1="1"
                REPLACE f2112td1 WITH ptDo
                REPLACE f2112sr1 WITH psEr
                REPLACE f2112do1 WITH pdOc
                REPLACE f2112fe1 WITH pfEm
           CASE ptI1="2"
                REPLACE f2112td2 WITH ptDo
                REPLACE f2112sr2 WITH psEr
                REPLACE f2112do2 WITH pdOc
                REPLACE f2112fe2 WITH pfEm
                DO CASE
                     CASE ptDo="FA" .OR. ptDo="BO" .OR. ptDo="TK" .OR.  ;
                          ptDo="NP"
                          REPLACE f2112pla WITH ppLa
                          REPLACE f2112mot WITH pmOt
                          IF f2112pla<>f2112plo
                               SELECT seR_fact
                               SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+ ;
                                    ptDo+psEr+pdOc
                               IF LEN(ALLTRIM(f1303td1))<>0
                                    STORE f1303td1 TO ptD1
                                    STORE f1303sr1 TO psR1
                                    STORE f1303do1 TO pdO1
                               ELSE
                                    STORE SPACE(02) TO ptD1
                                    STORE SPACE(03) TO psR1
                                    STORE "Sin Doc" TO pdO1
                               ENDIF
                               SELECT seRies
                               REPLACE f2112td3 WITH ptD1
                               REPLACE f2112sr3 WITH psR1
                               REPLACE f2112do3 WITH pdO1
                          ENDIF
                     CASE ptDo="GS"
                          REPLACE f2112pla WITH ppLa
                          REPLACE f2112mot WITH pmOt
                ENDCASE
      ENDCASE
      SELECT kaRdex_series
      SKIP
 ENDDO
 RELEASE ptDo, psEr, pdOc, ppEd, psEc, ppLa, pmOt, pfEm, paNo, pmEs, pdIa
 RELEASE ptI1, ptP1, peS1, ptD1, psR1, pdO1, psW2
ENDPROC
*
PROCEDURE Del_2111c
 PARAMETER poPc
 PRIVATE ppEd, psEc, paNo, pmEs, pdIa, ptDo, psEr, pdOc, ptPo, ptPp
 SELECT prOductos
 SEEK UPPER(ALLTRIM(vcOd))+"*"
 IF EOF()
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      RETURN
 ENDIF
 DO CASE
      CASE poPc="1"
           DO grAbar WITH "2"
      CASE veSt="1"
           DO grAbar WITH "4"
      CASE veSt="9"
           DO grAbar WITH "6"
 ENDCASE
 IF  .NOT. RLOCK()
      DO reG_lock WITH UPPER(ALLTRIM(vcOd))+"*"
      IF mkEy=k_Esc
           UNLOCK ALL
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 IF f2111tpo=1
      DO abR_2111c
      IF mkEy=k_Esc
           UNLOCK ALL
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
      SELECT prO_tot
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH UPPER(ALLTRIM(vcOd))+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT stO_tot
      GOTO TOP
      IF BOF()
           DO nuEvo_rg
           REPLACE f2119sto WITH 0
           REPLACE f2119caj WITH 0
           REPLACE f2119cpe WITH 0
           REPLACE f2119cjp WITH 0
           REPLACE f2119orp WITH 0
           REPLACE f2119prm WITH 0
           REPLACE f2119vs1 WITH 0
           REPLACE f2119vs2 WITH 0
           REPLACE f2119vp1 WITH 0
           REPLACE f2119vp2 WITH 0
           REPLACE f2119vo1 WITH 0
           REPLACE f2119vo2 WITH 0
      ENDIF
      SELECT seRies
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2112cod)+"*"=ALLTRIM(vcOd)+"*"
           WAIT WINDOW NOWAIT "Verificando Serie "+f2112cod+":"+f2112ped+ ;
                "-"+f2112sec+"..."
           STORE f2112ped TO ppEd
           STORE f2112sec TO psEc
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc
                IF mkEy=k_Esc
                     UNLOCK ALL
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SKIP
      ENDDO
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           WAIT WINDOW NOWAIT "Verificando Serie "+f2990cod+"..."
           STORE f2990ano TO paNo
           STORE f2990mes TO pmEs
           STORE f2990dia TO pdIa
           STORE f2990tpo TO ptPo
           STORE f2990tpp TO ptPp
           STORE f2990tdo TO ptDo
           STORE f2990ser TO psEr
           STORE f2990doc TO pdOc
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+ptPo+ ;
                   ptPp+ptDo+psEr+pdOc
                IF mkEy=k_Esc
                     UNLOCK ALL
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SKIP
      ENDDO
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2991cod)+"*"=ALLTRIM(vcOd)+"*"
           WAIT WINDOW NOWAIT "Verificando Serie "+f2991cod+":"+f2991ped+ ;
                "-"+f2991sec+"..."
           STORE f2991ped TO ppEd
           STORE f2991sec TO psEc
           STORE f2991ano TO paNo
           STORE f2991mes TO pmEs
           STORE f2991dia TO pdIa
           STORE f2991tpo TO ptPo
           STORE f2991tpp TO ptPp
           STORE f2991tdo TO ptDo
           STORE f2991ser TO psEr
           STORE f2991doc TO pdOc
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+paNo+pmEs+pdIa+ptPo+ ;
                ptPp+ptDo+psEr+pdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(ppEd)+psEc+ ;
                   paNo+pmEs+pdIa+ptPo+ptPp+ptDo+psEr+pdOc
                IF mkEy=k_Esc
                     UNLOCK ALL
                     WAIT CLEAR
                     = INKEY(0.01)
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SKIP
      ENDDO
 ENDIF
 SELECT prOductos
 DO CASE
      CASE poPc="1"
           REPLACE f2111cod WITH SPACE(20)
           DELETE
           SELECT viRtual_prod
           DELETE FOR ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
           SELECT prOductos
      CASE poPc="2" .AND. veSt="1"
           STORE "9" TO veSt
           REPLACE f2111cst WITH 2
           REPLACE f2111sto WITH 0
           REPLACE f2111sts WITH 0
           IF mcAj=1 .AND. f2111ser=1
                REPLACE f2111caj WITH 0
                REPLACE f2111cas WITH 0
           ENDIF
           REPLACE f2111prm WITH 0
           REPLACE f2111ult WITH CTOD("  /  /    ")
           REPLACE f2111mov WITH " "
           REPLACE f2111est WITH veSt
           SELECT viRtual_prod
           REPLACE f2111est WITH "9" FOR ALLTRIM(f2111cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
           SELECT prOductos
      CASE poPc="2" .AND. veSt="9"
           STORE "1" TO veSt
           REPLACE f2111est WITH veSt
           SELECT viRtual_prod
           REPLACE f2111est WITH "1" FOR ALLTRIM(f2111cod)+"*"= ;
                   ALLTRIM(vcOd)+"*"
           SELECT prOductos
 ENDCASE
 IF f2111tpo=1
      SELECT prO_tot
      SEEK UPPER(ALLTRIM(vcOd))+"*"
      DO CASE
           CASE EOF() .AND. veSt<>"1"
           CASE EOF() .AND. poPc="1"
           CASE EOF() .AND. vcSt=1 .AND. vtPo=1
                DO nuEvo_rg
                REPLACE f2118cod WITH vcOd
                REPLACE f2118sto WITH 0
                REPLACE f2118caj WITH 0
                REPLACE f2118sts WITH 0
                REPLACE f2118cpe WITH 0
                REPLACE f2118cjp WITH 0
                REPLACE f2118orp WITH 0
                REPLACE f2118prm WITH 0
           OTHERWISE
                REPLACE f2118cod WITH SPACE(20)
                DELETE
      ENDCASE
      IF poPc="1" .OR. veSt="9"
           SELECT seRies
           DO WHILE .T.
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     EXIT
                ENDIF
                REPLACE f2112cod WITH SPACE(20)
                REPLACE f2112ped WITH SPACE(05)
                REPLACE f2112sec WITH SPACE(03)
                DELETE
                UNLOCK
           ENDDO
           SELECT kaRdex
           DO WHILE .T.
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     EXIT
                ENDIF
                REPLACE f2990cod WITH SPACE(20)
                DELETE
                UNLOCK
           ENDDO
           SELECT kaRdex_series
           DO WHILE .T.
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     EXIT
                ENDIF
                REPLACE f2991cod WITH SPACE(20)
                REPLACE f2991ped WITH SPACE(05)
                REPLACE f2991sec WITH SPACE(03)
                DELETE
                UNLOCK
           ENDDO
      ENDIF
      IF poPc<>"1" .AND. veSt="1"
           STORE DATE() TO vfEc
           DO or1_2111c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO caL_2111c
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT prOductos
           IF f2111ser=1
                DO seR_2111c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      ENDIF
      DO orD_2111c
      IF mkEy=k_Esc
           UNLOCK ALL
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
      DO peD_2111c
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
           RETURN
      ENDIF
      DO toT_2111c
      UNLOCK ALL
      DO ciE_2111c
 ENDIF
 FLUSH
 WAIT CLEAR
 = INKEY(0.01)
 STORE 1 TO viTe
 STORE 0 TO viT1
 RELEASE ppEd, psEc, paNo, pmEs, pdIa, ptDo, psEr, pdOc, ptPo, ptPp
ENDPROC
*
PROCEDURE Ord_2111c
 PRIVATE poRp
 SELECT prOductos
 IF EOF() .OR. f2111est<>"1" .OR. f2111cst<>1 .OR. f2111tpo<>1
      RETURN
 ENDIF
 STORE 0 TO poRp
 SELECT deT_orden
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"=ALLTRIM(vcOd)+"*"
      IF f2911can-f2911ctd<=0
           SKIP
           LOOP
      ENDIF
      IF f2911can-f2911ctd>0
           STORE poRp+(f2911can-f2911ctd) TO poRp
      ENDIF
      SKIP
 ENDDO
 SELECT prO_tot
 REPLACE f2118orp WITH poRp
 RELEASE poRp
ENDPROC
*
PROCEDURE Ped_2111c
 PRIVATE pcAn, pcAj, ptD1, psR1, pdO1, pcDg, pcUn, psRr
 SELECT prOductos
 IF EOF() .OR. f2111est<>"1" .OR. f2111cst<>1 .OR. f2111tpo<>1
      RETURN
 ENDIF
 STORE f2111ser TO psRr
 SELECT deT_ped
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"
 STORE 00 TO pcAn, pcAj
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1201cod)+"*"=ALLTRIM(vcOd)+"*"
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      IF f1201can>f1201cad
           STORE pcAn+(f1201can-f1201cad) TO pcAn
           IF mcAj=1 .AND. psRr=1
                STORE pcAj+(VAL(ALLTRIM(f1201ref))-f1201cjd) TO pcAj
           ENDIF
      ENDIF
      SKIP
 ENDDO
 SELECT coN_ped
 SEEK ALLTRIM(vcOd)+"*"
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1204cdg)+"*"=ALLTRIM(vcOd)+"*"
      IF mkEy=9000
           STORE 99 TO mkEy
           RETURN
      ENDIF
      STORE f1204tdo TO ptD1
      STORE f1204ser TO psR1
      STORE f1204doc TO pdO1
      STORE f1204cod TO pcDg
      STORE f1204cun TO pcUn
      SELECT deT_ped
      SEEK ALLTRIM(pcDg)+"*"+ptD1+psR1+pdO1
      IF  .NOT. EOF() .AND. f1201can>f1201cad
           STORE pcAn+((f1201can-f1201cad)*pcUn) TO pcAn
      ENDIF
      SELECT coN_ped
      SKIP
 ENDDO
 IF msTp=1
      SELECT prOductos
      REPLACE f2111sto WITH f2111sto-pcAn
      IF mcAj=1 .AND. psRr=1
           REPLACE f2111caj WITH f2111caj-pcAj
      ENDIF
      SELECT prO_tot
      REPLACE f2118sto WITH f2118sto-pcAn
      IF mcAj=1 .AND. psRr=1
           REPLACE f2118caj WITH f2118caj-pcAj
      ENDIF
      REPLACE f2118cpe WITH pcAn
      REPLACE f2118cjp WITH pcAj
 ENDIF
 SELECT prO_tot
 REPLACE f2118cpe WITH pcAn
 REPLACE f2118cjp WITH pcAj
 RELEASE pcAn, pcAj, ptD1, psR1, pdO1, pcDg, pcUn, psRr
ENDPROC
*
PROCEDURE Tot_2111c
 PRIVATE psT1, psT2, psT3, psT4, psT5, psT6, psT7, psT8, psT9, psT0, psTa,  ;
         psTb, psTc
 SELECT prO_tot
 SUM f2118sto TO psT1 ALL
 SUM f2118caj TO psT2 ALL
 SUM f2118cpe TO psT3 ALL
 SUM f2118cjp TO psT4 ALL
 SUM f2118sts TO psT5 ALL
 SUM f2118orp TO psT6 ALL
 SUM f2118sts*f2118prm TO psT7 ALL
 SUM f2118sto*f2118vcs TO psT8 ALL
 SUM f2118sto*f2118vcp TO psT9 ALL
 SUM f2118cpe*f2118vcs TO psT0 ALL
 SUM f2118cpe*f2118vcp TO psTa ALL
 SUM f2118orp*f2118vcs TO psTb ALL
 SUM f2118orp*f2118vcp TO psTc ALL
 SELECT stO_tot
 GOTO TOP
 REPLACE f2119sto WITH psT1
 REPLACE f2119caj WITH psT2
 REPLACE f2119cpe WITH psT3
 REPLACE f2119cjp WITH psT4
 REPLACE f2119sts WITH psT5
 REPLACE f2119orp WITH psT6
 REPLACE f2119prm WITH psT7
 REPLACE f2119vs1 WITH psT8
 REPLACE f2119vs2 WITH psT9
 REPLACE f2119vp1 WITH psT0
 REPLACE f2119vp2 WITH psTa
 REPLACE f2119vo1 WITH psTb
 REPLACE f2119vo2 WITH psTc
 UNLOCK
 RELEASE psT1, psT2, psT3, psT4, psT5, psT6, psT7, psT8, psT9, psT0, psTa,  ;
         psTb, psTc
ENDPROC
*
PROCEDURE Abr_2111c
 DO seL_0000a WITH muLt+1
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Series
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+2
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+3
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+4
 DO abR_0000a IN PUX0000A WITH "2403", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ser_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+5
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+6
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+7
 DO abR_0000a IN PUX0000A WITH "2603", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ser_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+8
 DO abR_0000a IN PUX0000A WITH "2604", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+9
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+10
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+11
 DO abR_0000a IN PUX0000A WITH "2703", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ser_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+12
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+13
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+14
 DO abR_0000a IN PUX0000A WITH "2803", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ser_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+15
 DO abR_0000a IN PUX0000A WITH "2910", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Orden
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+16
 DO abR_0000a IN PUX0000A WITH "2911", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Orden
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2911COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+17
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+18
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex_Series
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+19
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "1201", "V", "F1201COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+20
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO orD_0000a WITH "1204", "V", "F1204CDG", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+21
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+22
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+23
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Ser_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+24
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+25
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Share Alias Cambio
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seL_0000a WITH muLt+26
 DO abR_0000a IN PUX0000A WITH "9226", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Monedas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9226COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cie_2111c
 DO usE_0000a WITH muLt+1
 DO usE_0000a WITH muLt+2
 DO usE_0000a WITH muLt+3
 DO usE_0000a WITH muLt+4
 DO usE_0000a WITH muLt+5
 DO usE_0000a WITH muLt+6
 DO usE_0000a WITH muLt+7
 DO usE_0000a WITH muLt+8
 DO usE_0000a WITH muLt+9
 DO usE_0000a WITH muLt+10
 DO usE_0000a WITH muLt+11
 DO usE_0000a WITH muLt+12
 DO usE_0000a WITH muLt+13
 DO usE_0000a WITH muLt+14
 DO usE_0000a WITH muLt+15
 DO usE_0000a WITH muLt+16
 DO usE_0000a WITH muLt+17
 DO usE_0000a WITH muLt+18
 DO usE_0000a WITH muLt+19
 DO usE_0000a WITH muLt+20
 DO usE_0000a WITH muLt+21
 DO usE_0000a WITH muLt+22
 DO usE_0000a WITH muLt+23
 DO usE_0000a WITH muLt+24
 DO usE_0000a WITH muLt+25
 DO usE_0000a WITH muLt+26
ENDPROC
*
PROCEDURE Or1_2111c
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ingr
 DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_ingr
 DO orD_0000a WITH "2701", "A", "F2701COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_cpra
 DO orD_0000a WITH "2401", "A", "F2401COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sali
 DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_sali
 DO orD_0000a WITH "2801", "A", "F2801COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_remi
 DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_remi
 DO orD_0000a WITH "2601", "A", "F2601COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_remi
 DO orD_0000a WITH "2604", "A", "F2604CDG", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT deT_fact
 DO orD_0000a WITH "1301", "V", "F1301COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT coN_fact
 DO orD_0000a WITH "1304", "V", "F1304CDG", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Or2_2111c
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_ingr
 DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_ingr
 DO orD_0000a WITH "2703", "A", "F2703COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_cpra
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_cpra
 DO orD_0000a WITH "2403", "A", "F2403COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_remi
 DO orD_0000a WITH "2600", "A", "F2600DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_remi
 DO orD_0000a WITH "2603", "A", "F2603COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_sali
 DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_sali
 DO orD_0000a WITH "2803", "A", "F2803COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT seR_fact
 DO orD_0000a WITH "1303", "V", "F1303COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
