 PARAMETER wtPo, wnIv
 SET CENTURY ON
 PUBLIC ntM1, ntM2, ntM3, ntM4, ntM5
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE 01 TO meRr
 DO tmP_2112z IN PAC2112Z
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2112a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT prOductos
 STORE 00 TO meRr
 DO vaR_2111a IN PAC2111A
 PUBLIC vsW0, csW0, ysW0, vsW1, csW1, xsW1, vsW2, vsW3, vsW4, csW4, vsW5,  ;
        vsW6, vsW7
 PUBLIC vsW8, vsW9, vsWa, vsWb, vsWw, csWw, vpAl, cpAl, vlIn, vcLl, vpAg,  ;
        tpAg, vxLs
 PUBLIC vuFi, vuCo, vfI0, vcO0, vcO2, ucO2, vpIc, vpIt, vtB1, vtB2, vtB3,  ;
        vfB7, vfB8
 PUBLIC vfB9, vfB0, vcB7, vcB8, vcB9, vcB0, vfIl, ifIl, ufIl, ffIl, cfIl,  ;
        vfFs, ifFs
 PUBLIC ufFs, ffFs, cfFs, vcL1, vcL2, vcL3, vcL4, vcL5, vcL6, viTe, yiTe,  ;
        viT1, viT2
 PUBLIC vcOd, icOd, ucOd, ccOd, dcOd, hcOd, vdEs, idEs, udEs, cdEs, ydEs,  ;
        vaNo, iaNo
 PUBLIC uaNo, caNo, xaNo, yaNo, zaNo, vmEs, imEs, umEs, cmEs, xmEs, ymEs,  ;
        zmEs, vdIa
 PUBLIC idIa, udIa, cdIa, xdIa, ydIa, zdIa, vtDo, itDo, utDo, ctDo, xtDo,  ;
        ytDo, ztDo
 PUBLIC vsEr, isEr, usEr, csEr, xsEr, ysEr, zsEr, vdOc, idOc, udOc, cdOc,  ;
        xdOc, ydOc
 PUBLIC zdOc, vtPp, itPp, utPp, ctPp, xtPp, ytPp, ztPp, vtPo, itPo, utPo,  ;
        ctPo, xtPo
 PUBLIC ytPo, ztPo, vtD1, itD1, utD1, ctD1, ytD1, vtD2, itD2, utD2, ctD2,  ;
        vtD3, itD3
 PUBLIC utD3, ctD3, vsR1, isR1, usR1, csR1, ysR1, vsR2, isR2, usR2, csR2,  ;
        vsR3, isR3
 PUBLIC usR3, csR3, vdO1, idO1, udO1, cdO1, vdO2, idO2, udO2, cdO2, vdO3,  ;
        idO3, udO3
 PUBLIC cdO3, vpEd, ipEd, upEd, cpEd, vsEc, isEc, usEc, csEc, zcAj, ycAj,  ;
        xcJ1, zcPe
 PUBLIC xcPe, ycPe, zcJp, xcJp, ycJp, zoRp, xoRp, yoRp, vpRm, zpRm, ypRm,  ;
        upRm, tpRm
 PUBLIC ycO1, ycO2, yfE1, yfE2, zvS1, xvS1, zvS2, xvS2, zvP1, xvP1, zvP2,  ;
        xvP2, zvO1
 PUBLIC xvO1, zvO2, xvO2, vsTs, zsTs, ysTs, vfEc, ifEc, ufEc, ifEm, ufEm,  ;
        dfEm, hfEm
 PUBLIC yfEm, dfE1, ufE1, xsT1, vsTo, zsTo, ysTo, xnTi, xnGr, vmOn, ymOn,  ;
        vuLt, yuLt
 PUBLIC vuL1, vtIp, ctIp, xtIp, xcCc, vtCa, ctC1, ctC2, ctC3, ctC4, vsLc,  ;
        vsCs, usLs
 PUBLIC vcAn, tcAn, ycAn, tcPe, tcAj, tcJp, tpR1, tpD1, tpE1, tpR2, tpD2,  ;
        tpE2, vnEs
 PUBLIC cmOt, vsIn, vrEp, vnUc, ynUc, vsRr, vtSa, vtSl, vsLd, usLd, xfDe,  ;
        vcDg, vsGs
 PUBLIC vnGs, caN1, yaN1, cmE1, cdI1, veNt, vsAl, viNi, iiNi, yvCp, yvCs,  ;
        vcPr, vmNd
 PUBLIC vtIm, vtSt, vmOv, vpEs, vcOs, vpIe, ypIe, vsIg, vpEq, ccDd, vcDd,  ;
        icDd, ucDd
 PUBLIC ynUe, ydCr, ycUv, ynUv, ycUc, ylA1, ylA2, yaN2, yeSp, ypRv, ynOm,  ;
        ypIg, yfAc
 PUBLIC ymEd, ypRe, vtAm, vrEs, tpGg, viNv, vpLe, vnUm, ptAm
 PUBLIC vpAn_11, vpAn_12, vpAn_99
 STORE CTOD("01/01/"+SUBSTR(DTOC(DATE()), 7, 4)) TO dfEm
 STORE DATE() TO hfEm, vfEc
 STORE SPACE(02) TO xsEr, xdOc
 STORE SPACE(70) TO vpAl, vmAr
 STORE SPACE(120) TO vdEs, idEs, udEs
 STORE SPACE(mtMa) TO vcOd, icOd, ucOd
 STORE 01 TO vsW0, csW0, vsW1, vsW2, vsW7, vpEs, vsWa, voP1, vrEs
 STORE 00 TO zsTo, xsT1, ysTo, zcAj, xcJ1, ycAj, zcPe, xcPe, ycPe, zcJp
 STORE 00 TO xcJp, ycJp, zoRp, xoRp, yoRp, zpRm, xpRm, ypRm, zvS1, xvS1
 STORE 00 TO zvP1, xvP1, zvO1, xvO1, zvS2, xvS2, zvP2, xvP2, zvO2, xvO2
 STORE 00 TO csW1, voP2, voP3, voP4, vtAm
 STORE 02 TO vsWb
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE mmOn TO vmOn
 DO CASE
      CASE mdEc=0
           STORE "9999,999,999" TO vpIc
           STORE "99999999,999" TO vpIt
      CASE mdEc=1
           STORE "99,999,999.9" TO vpIc
           STORE "999999,999.9" TO vpIt
      CASE mdEc=2
           STORE "9,999,999.99" TO vpIc
           STORE "99999,999.99" TO vpIt
      CASE mdEc=3
           STORE "9999,999.999" TO vpIc
           STORE "99999999.999" TO vpIt
      CASE mdEc=4
           STORE "999,999.9999" TO vpIc
           STORE "9999999.9999" TO vpIt
 ENDCASE
 SELECT caMbio
 SEEK DATE()
 IF EOF()
      GOTO BOTTOM
      IF  .NOT. EOF()
           STORE f9111tc1 TO ctC1
           STORE f9111tc2 TO ctC2
           STORE f9111tc3 TO ctC3
           STORE f9111tc4 TO ctC4
           DO nuEvo_rg
           REPLACE f9111fem WITH DATE()
           REPLACE f9111tc1 WITH ctC1
           REPLACE f9111tc2 WITH ctC2
           REPLACE f9111tc3 WITH ctC3
           REPLACE f9111tc4 WITH ctC4
           UNLOCK
           FLUSH
      ENDIF
 ELSE
      IF f9111tc1=0 .OR. f9111tc3=0
           STORE "Tipo de Cambio es 0 (cero)..." TO mmSj
           DO poNmsj IN MODSET
           DO deL_files
           RETURN
      ENDIF
 ENDIF
 SELECT grUpos
 GOTO TOP
 STORE f9216cod TO vgRu
 STORE f9216des TO vnGr
 SELECT tiP_prod
 GOTO TOP
 STORE f9211tip TO vtPp
 STORE f9211nti TO vnTi
 SELECT prOductos
 GOTO BOTTOM
 STORE f2111cod TO hcOd
 GOTO TOP
 STORE f2111cod TO dcOd
 SET READBORDER ON
 DO p00_2112a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2112a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2112a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2112a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2112a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=2
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO coD_2113a IN PAC2113A
           CASE mkEy=k_F9
                DO opC_2111a IN PAC2111A WITH "PAC2112A", "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO prEsiona WITH "4", "R_CONS07", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO paC2112b
                SET READBORDER ON
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coL_boton
                @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO geT_2111a IN PAC2111A
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Lin_2112a
 PARAMETER piNi, pfIn
 DO coLplp
 DO CASE
      CASE mrEs="3"
           DO CASE
                CASE wtPo="1"
                     @ piNi, icLn+073.3 TO pfIn, icLn+073.3
                     @ piNi, icLn+080.0 TO pfIn, icLn+080.0
                     @ piNi, icLn+097.8 TO pfIn, icLn+097.8
                     @ piNi, icLn+115.6 TO pfIn, icLn+115.6
                     @ piNi, icLn+133.4 TO pfIn, icLn+133.4
                     @ piNi, icLn+151.2 TO pfIn, icLn+151.2
                     @ piNi, icLn+169.0 TO pfIn, icLn+169.0
                     @ piNi, icLn+182.2 TO pfIn, icLn+182.2
                CASE msTp=1
                     @ piNi, icLn+085.2 TO pfIn, icLn+085.2
                     @ piNi, icLn+093.4 TO pfIn, icLn+093.4
                     @ piNi, icLn+111.2 TO pfIn, icLn+111.2
                     @ piNi, icLn+129.0 TO pfIn, icLn+129.0
                     @ piNi, icLn+146.8 TO pfIn, icLn+146.8
                     @ piNi, icLn+164.6 TO pfIn, icLn+164.6
                     @ piNi, icLn+182.5 TO pfIn, icLn+182.5
                CASE msTp<>1 .AND. mcAj<>1
                     @ piNi, icLn+111.2 TO pfIn, icLn+111.2
                     @ piNi, icLn+129.0 TO pfIn, icLn+129.0
                     @ piNi, icLn+146.8 TO pfIn, icLn+146.8
                     @ piNi, icLn+164.6 TO pfIn, icLn+164.6
                     @ piNi, icLn+182.5 TO pfIn, icLn+182.5
                OTHERWISE
                     @ piNi, icLn+103.0 TO pfIn, icLn+103.0
                     @ piNi, icLn+111.2 TO pfIn, icLn+111.2
                     @ piNi, icLn+129.0 TO pfIn, icLn+129.0
                     @ piNi, icLn+146.8 TO pfIn, icLn+146.8
                     @ piNi, icLn+164.6 TO pfIn, icLn+164.6
                     @ piNi, icLn+182.5 TO pfIn, icLn+182.5
           ENDCASE
      OTHERWISE
           DO CASE
                CASE wtPo="1"
                     @ piNi, icLn+089.9 TO pfIn, icLn+089.9
                     @ piNi, icLn+096.5 TO pfIn, icLn+096.5
                     @ piNi, icLn+114.3 TO pfIn, icLn+114.3
                     @ piNi, icLn+132.1 TO pfIn, icLn+132.1
                     @ piNi, icLn+149.9 TO pfIn, icLn+149.9
                     @ piNi, icLn+167.7 TO pfIn, icLn+167.7
                     @ piNi, icLn+185.5 TO pfIn, icLn+185.5
                     @ piNi, icLn+203.3 TO pfIn, icLn+203.3
                     @ piNi, icLn+221.1 TO pfIn, icLn+221.1
                     @ piNi, icLn+238.9 TO pfIn, icLn+238.9
                     @ piNi, icLn+256.7 TO pfIn, icLn+256.7
                CASE msTp=1 .AND. mcAj=1
                     @ piNi, icLn+085.2 TO pfIn, icLn+085.2
                     @ piNi, icLn+091.8 TO pfIn, icLn+091.8
                     @ piNi, icLn+109.7 TO pfIn, icLn+109.7
                     @ piNi, icLn+127.5 TO pfIn, icLn+127.5
                     @ piNi, icLn+145.3 TO pfIn, icLn+145.3
                     @ piNi, icLn+163.1 TO pfIn, icLn+163.1
                     @ piNi, icLn+180.9 TO pfIn, icLn+180.9
                     @ piNi, icLn+198.7 TO pfIn, icLn+198.7
                     @ piNi, icLn+216.5 TO pfIn, icLn+216.5
                     @ piNi, icLn+234.3 TO pfIn, icLn+234.3
                     @ piNi, icLn+252.1 TO pfIn, icLn+252.1
                CASE msTp=1
                     @ piNi, icLn+105.3 TO pfIn, icLn+105.3
                     @ piNi, icLn+119.8 TO pfIn, icLn+119.8
                     @ piNi, icLn+127.5 TO pfIn, icLn+127.5
                     @ piNi, icLn+145.3 TO pfIn, icLn+145.3
                     @ piNi, icLn+163.1 TO pfIn, icLn+163.1
                     @ piNi, icLn+180.9 TO pfIn, icLn+180.9
                     @ piNi, icLn+198.7 TO pfIn, icLn+198.7
                     @ piNi, icLn+216.5 TO pfIn, icLn+216.5
                     @ piNi, icLn+234.3 TO pfIn, icLn+234.3
                     @ piNi, icLn+252.1 TO pfIn, icLn+252.1
                OTHERWISE
                     @ piNi, icLn+145.3 TO pfIn, icLn+145.3
                     @ piNi, icLn+163.1 TO pfIn, icLn+163.1
                     @ piNi, icLn+180.9 TO pfIn, icLn+180.9
                     @ piNi, icLn+198.7 TO pfIn, icLn+198.7
                     @ piNi, icLn+216.5 TO pfIn, icLn+216.5
                     @ piNi, icLn+234.3 TO pfIn, icLn+234.3
                     @ piNi, icLn+252.1 TO pfIn, icLn+252.1
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Li1_2112a
 PARAMETER piNi, pfIn
 DO coLplp
 DO coLbln
 DO CASE
      CASE wtPo="1" .AND. vsW7=1
           @ piNi, icLn+17.6 TO pfIn, icLn+17.6
      CASE vsW7=1
           @ piNi, icLn+27.6 TO pfIn, icLn+27.6
 ENDCASE
ENDPROC
*
PROCEDURE P00_2112a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_99
 STORE INT(mwFi-11) TO muFi
 STORE INT(mwCo-4) TO muCo
 STORE 29 TO vuFi
 STORE 124 TO vuCo
 IF mrEs>"3"
      STORE INT(mwCo-3.2) TO muCo
 ENDIF
 DO maRcos
 STORE mfI0+2 TO mfI0
 DO CASE
      CASE mrEs>"3" .AND. maNc=1360
           STORE muCo+0.4 TO muCo
      CASE mrEs>"3"
           STORE muCo-0.4 TO muCo
 ENDCASE
 STORE ((mwFi-vuFi)/2)-0.2 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+0.3 TO ifFs, ufFs, vfFs
 STORE ifFs+(INT(muFi)-5) TO ffFs
 STORE ifIl+4.7 TO vfB1
 STORE ifIl+7.9 TO vfB2
 STORE ifIl+0.5 TO vfB3
 STORE ifIl+3.5 TO vfB4
 STORE ifIl+6.7 TO vfB5
 STORE ifIl+9.9 TO vfB6
 STORE mcO0-0.1 TO icLn
 STORE mcO0+muCo TO ucLn
 STORE 118.9 TO ucO2
 STORE ifFs-1.5 TO vfB7, vfB8, vfB9
 STORE ifIl-1.7 TO vfB0
 STORE mcO0 TO vcB7
 STORE mcO0+19.2 TO vcB8
 STORE mcO0+30.4 TO vcB9
 STORE icLn+70.4 TO vcB0
 DO CASE
      CASE mrEs="3"
           STORE mcO0+62 TO vcB3, vcB4, vcB5, vcB6
           STORE 151.7 TO ucO2
           STORE 132.6 TO vcLl
           DO CASE
                CASE wtPo="1"
                     STORE icLn+065.5 TO vcB0
                CASE msTp=1
                     STORE icLn+077.4 TO vcB0
                CASE msTp<>1 .AND. mcAj=1
                     STORE icLn+095.0 TO vcB0
                OTHERWISE
                     STORE icLn+104.0 TO vcB0
           ENDCASE
      OTHERWISE
           STORE mcO0+102 TO vcB3, vcB4, vcB5, vcB6
           STORE 151.7 TO ucO2
           STORE 132.6 TO vcLl
           DO CASE
                CASE wtPo="1"
                     STORE icLn+081.9 TO vcB0
                CASE msTp=1 .AND. mcAj=1
                     STORE icLn+077.3 TO vcB0
                CASE msTp=1
                     STORE icLn+097.5 TO vcB0
                CASE msTp<>1 .AND. mcAj=1
                     STORE icLn+137.5 TO vcB0
                CASE msTp<>1
                     STORE icLn+137.5 TO vcB0
           ENDCASE
 ENDCASE
 STORE (mwCo-ucO2)/2 TO vcO2
 STORE vcB3+40 TO vcB1, vcB2
 Define Popup vTB3 from iFFS+3,iCLN+30 to iFFS+15,iCLN+90 Font "&mLetCou",11 Style "NQ" Prompt Field " "+F2112TDO+":"+F2112SER+"-"+F2112DOC+"  "+F2112DIA+"/"+F2112MES+"/"+F2112ANO Scroll Color Scheme 10 Footer "DETALLE DE SERIES"
 ON SELECTION POPUP vtB3 DO TB3_0000A
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de StockS y Kardex Valorizado"
      CASE wtPo="2"
           DO tiT_0000a WITH "Consulta de Stocks"
      CASE wtPo="3"
           DO tiT_0000a WITH "Consulta y Arreglo de Stocks"
 ENDCASE
 DO coLsc1
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLplp
 @ ifIl-0.2, icLn TO ifIl-0.2, ucLn
 @ ffIl+1.1, icLn TO ffIl+1.1, ucLn
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO coD_2113a IN PAC2113A
 DO geT_2111a IN PAC2111A
 READ TIMEOUT 0.01
 DO p01_2112z IN PAC2112Z
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_2112a
 DO tiT_2112z IN PAC2112Z
 @mFI0+mUFI-1.3,mCO0+1 Say "Palabra:" Font "&mLetRom",10 Style "BT"
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO paL_2111a IN PAC2111A
 DO tb1_2111a IN PAC2111A
ENDPROC
*
PROCEDURE Bot_2112a
 DO prEsiona WITH "1", "BOTON", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @vFB0+0.2,vCB0+2.1 Say Str(vSW7,1,0)+"/2" Font "&mLetRom",9 Style "BT"
ENDPROC
*
PROCEDURE Rs1_2112a
 DO p00_2112a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(icOd))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO CASE
           CASE vsW1=01
                SELECT prOductos
           CASE vsW1=02
                SELECT teMporal
      ENDCASE
      DO muE_2112b IN PAC2112B WITH "v", "c"
      DO seE_2112b IN PAC2112B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF ALLTRIM(f2111cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl, cfIl
           DO muE_2112b IN PAC2112B WITH "v", "c"
           DO muE_2112b IN PAC2112B WITH "v", "i"
      ENDIF
      DO seE_2112b IN PAC2112B WITH "i"
      DO paN_2112b IN PAC2112B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_2112b IN PAC2112B WITH "c", "v"
      DO seE_2112b IN PAC2112B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Clp_2112a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Abr_2112a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Productos
 ELSE
      Use &mDBF Shared NoUpdate Alias Productos
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET FILTER TO f2111tpo=1 .AND. f2111est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos para esta consulta" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Series
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pro_Tot
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2118COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sto_Tot
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Cab_Cpra
 ELSE
      Use &mDBF Shared NoUpdate Alias Cab_Cpra
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Det_Cpra
 ELSE
      Use &mDBF Shared NoUpdate Alias Det_Cpra
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Cab_Remi
 ELSE
      Use &mDBF Shared NoUpdate Alias Cab_Remi
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Det_Remi
 ELSE
      Use &mDBF Shared NoUpdate Alias Det_Remi
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Cab_Ingr
 ELSE
      Use &mDBF Shared NoUpdate Alias Cab_Ingr
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Det_Ingr
 ELSE
      Use &mDBF Shared NoUpdate Alias Det_Ingr
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Cab_Sali
 ELSE
      Use &mDBF Shared NoUpdate Alias Cab_Sali
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Det_Sali
 ELSE
      Use &mDBF Shared NoUpdate Alias Det_Sali
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "2910", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Orden
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2911", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Orden
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2911COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2921", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Conjuntos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2921CDG
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Kardex
 ELSE
      Use &mDBF Shared NoUpdate Alias Kardex
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Kardex_Series
 ELSE
      Use &mDBF Shared NoUpdate Alias Kardex_Series
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "1200", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1201COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Ped
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1204CDG
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Cab_Fact
 ELSE
      Use &mDBF Shared NoUpdate Alias Cab_Fact
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Det_Fact
 ELSE
      Use &mDBF Shared NoUpdate Alias Det_Fact
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF wtPo="3"
      Use &mDBF Shared          Alias Con_Fact
 ELSE
      Use &mDBF Shared NoUpdate Alias Con_Fact
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cambio
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Grupos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "9217", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos_Ing
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9217TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Entradas vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos_Sal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Salida vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "9311", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Doc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9311TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "9001", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Estab_Sunat
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 31
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 32
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Pedidos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 33
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Series
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2112DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 34
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Hoja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 35
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Kardex
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Hl1_2112a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta consulta, muestra todos los Productos,  Servicios y/o Activos Fijos"
 @ pfIl+01, 02 SAY "incluyendo los que están anulados."
 @ pfIl+02, 02 SAY  ;
   "Los Códigos que se encuentren en Letra Azul controlan Stock y los que"
 @ pfIl+03, 02 SAY "se encuentran en Negro no."
 DO CASE
      CASE wtPo="1"
           @ pfIl+04, 02 SAY  ;
             "Se puede visualizar en el Detalle del Producto los Precios de Lista y Costo"
           @ pfIl+05, 02 SAY "promedio aproximado."
      CASE wtPo="2"
           @ pfIl+04, 02 SAY  ;
             "No se puede visualizar en el Detalle del Producto Precios de Lista y Costo"
           @ pfIl+05, 02 SAY "promedio aproximado."
      CASE wtPo="3"
           @ pfIl+04, 02 SAY  ;
             "Se puede visualizar en el Detalle del Producto los Precios de Lista, mas no"
           @ pfIl+05, 02 SAY "el Costo promedio aproximado."
 ENDCASE
 @ pfIl+07, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+09, 18 SAY ":" STYLE "BT"
 @ pfIl+10, 18 SAY ":" STYLE "BT"
 @ pfIl+11, 18 SAY ":" STYLE "BT"
 @ pfIl+12, 18 SAY ":" STYLE "BT"
 @ pfIl+13, 18 SAY ":" STYLE "BT"
 @ pfIl+14, 18 SAY ":" STYLE "BT"
 @ pfIl+15, 18 SAY ":" STYLE "BT"
 @ pfIl+17, 18 SAY ":" STYLE "BT"
 @ pfIl+09, 01 SAY "ESC" STYLE "BT"
 @ pfIl+10, 01 SAY "F10" STYLE "BT"
 @ pfIl+11, 01 SAY "F1" STYLE "BT"
 @ pfIl+12, 01 SAY "F6" STYLE "BT"
 @ pfIl+13, 01 SAY "F9" STYLE "BT"
 @ pfIl+14, 01 SAY "ENTER,TAB," STYLE "BT"
 @ pfIl+15, 01 SAY "CTRL ->," STYLE "BT"
 @ pfIl+16, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+17, 01 SAY "ALT C" STYLE "BT"
 @ pfIl+09, 20 SAY "Regresar al Menú Principal"
 @ pfIl+10, 20 SAY "Cerrar y regresar a Windows"
 @ pfIl+11, 20 SAY "Ayuda del Programa"
 @ pfIl+12, 20 SAY "Cambio de Orden de Consulta"
 @ pfIl+13, 20 SAY "Buscar palabra o frase dentro de la descripción"
 @ pfIl+14, 20 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+15, 20 SAY "trado va al final del Archivo"
 @ pfIl+17, 20 SAY "Cambiar a un Año almacenado"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2112a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 03 SAY  ;
   "Esta opción selecciona el Año que se quiere visualizar. Esta opción"
 @ pfIl+01, 03 SAY "sólo funciona cuando hay años anteriores guardados."
 @ pfIl+03, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 13 SAY "ESC" STYLE "BT"
 @ pfIl+06, 13 SAY "F10" STYLE "BT"
 @ pfIl+07, 13 SAY "F1" STYLE "BT"
 @ pfIl+08, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 23 SAY "Regresar a Cabecera"
 @ pfIl+06, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 23 SAY "Ayuda del Programa"
 @ pfIl+08, 23 SAY "Aceptar y mostrar rango"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a IN MODSET
 DO deL_file1
 SET READBORDER OFF
 DO bvA_2111a IN PAC2111A
 RELEASE vsW0, csW0, ysW0, vsW1, csW1, xsW1, vsW2, vsW3, vsW4, csW4, vsW5,  ;
         vsW6, vsW7
 RELEASE vsW8, vsW9, vsWa, vsWb, vsWw, csWw, vpAl, cpAl, vlIn, vcLl, vpAg,  ;
         tpAg, vxLs
 RELEASE vuFi, vuCo, vfI0, vcO0, vcO2, ucO2, vpIc, vpIt, vtB1, vtB2, vtB3,  ;
         vfB7, vfB8
 RELEASE vfB9, vfB0, vcB7, vcB8, vcB9, vcB0, vfIl, ifIl, ufIl, ffIl, cfIl,  ;
         vfFs, ifFs
 RELEASE ufFs, ffFs, cfFs, vcL1, vcL2, vcL3, vcL4, vcL5, vcL6, viTe, yiTe,  ;
         viT1, viT2
 RELEASE vcOd, icOd, ucOd, ccOd, dcOd, hcOd, vdEs, idEs, udEs, cdEs, ydEs,  ;
         vaNo, iaNo
 RELEASE uaNo, caNo, xaNo, yaNo, zaNo, vmEs, imEs, umEs, cmEs, xmEs, ymEs,  ;
         zmEs, vdIa
 RELEASE idIa, udIa, cdIa, xdIa, ydIa, zdIa, vtDo, itDo, utDo, ctDo, xtDo,  ;
         ytDo, ztDo
 RELEASE vsEr, isEr, usEr, csEr, xsEr, ysEr, zsEr, vdOc, idOc, udOc, cdOc,  ;
         xdOc, ydOc
 RELEASE zdOc, vtPp, itPp, utPp, ctPp, xtPp, ytPp, ztPp, vtPo, itPo, utPo,  ;
         ctPo, xtPo
 RELEASE ytPo, ztPo, vtD1, itD1, utD1, ctD1, ytD1, vtD2, itD2, utD2, ctD2,  ;
         vtD3, itD3
 RELEASE utD3, ctD3, vsR1, isR1, usR1, csR1, ysR1, vsR2, isR2, usR2, csR2,  ;
         vsR3, isR3
 RELEASE usR3, csR3, vdO1, idO1, udO1, cdO1, vdO2, idO2, udO2, cdO2, vdO3,  ;
         idO3, udO3
 RELEASE cdO3, vpEd, ipEd, upEd, cpEd, vsEc, isEc, usEc, csEc, zcAj, ycAj,  ;
         xcJ1, zcPe
 RELEASE xcPe, ycPe, zcJp, xcJp, ycJp, zoRp, xoRp, yoRp, vpRm, zpRm, ypRm,  ;
         upRm, tpRm
 RELEASE ycO1, ycO2, yfE1, yfE2, zvS1, xvS1, zvS2, xvS2, zvP1, xvP1, zvP2,  ;
         xvP2, zvO1
 RELEASE xvO1, zvO2, xvO2, vsTs, zsTs, ysTs, vfEc, ifEc, ufEc, ifEm, ufEm,  ;
         dfEm, hfEm
 RELEASE yfEm, dfE1, ufE1, xsT1, vsTo, zsTo, ysTo, xnTi, xnGr, vmOn, ymOn,  ;
         vuLt, yuLt
 RELEASE vuL1, vtIp, ctIp, xtIp, xcCc, vtCa, ctC1, ctC2, ctC3, ctC4, vsLc,  ;
         vsCs, usLs
 RELEASE vcAn, tcAn, ycAn, tcPe, tcAj, tcJp, tpR1, tpD1, tpE1, tpR2, tpD2,  ;
         tpE2, vnEs
 RELEASE cmOt, vsIn, vrEp, vnUc, ynUc, vsRr, vtSa, vtSl, vsLd, usLd, xfDe,  ;
         vcDg, vsGs
 RELEASE vnGs, caN1, yaN1, cmE1, cdI1, veNt, vsAl, viNi, iiNi, yvCp, yvCs,  ;
         vcPr, vmNd
 RELEASE vtIm, vtSt, vmOv, vpEs, vcOs, vpIe, ypIe, vsIg, vpEq, ccDd, vcDd,  ;
         icDd, ucDd
 RELEASE ynUe, ydCr, ycUv, ynUv, ycUc, ylA1, ylA2, yaN2, yeSp, ypRv, ynOm,  ;
         ypIg, yfAc
 RELEASE ymEd, ypRe, vtAm, vrEs, tpGg, viNv, vpLe, vnUm, ptAm
 RELEASE vpAn_11, vpAn_12, vpAn_99
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file2 IN MODSET WITH "1", "S"
 DO deL_file2 IN MODSET WITH "2", "S"
 DO deL_file2 IN MODSET WITH "3", "S"
 DO deL_file2 IN MODSET WITH "4", "S"
 DO deL_file2 IN MODSET WITH "5", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5
ENDPROC
*
