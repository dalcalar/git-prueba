*
PROCEDURE Set_Ini
 ZOOM WINDOW scReen MAX
 RELEASE ALL
 RELEASE MENU ALL
 RELEASE POPUPS ALL
 RELEASE WINDOW alL
 CLEAR ALL
 CLEAR MACROS
 CLEAR MEMO
 CLEAR WINDOW
 CLEAR RESOURCES
 SET CONSOLE ON
 SET DELETED ON
 SET FULLPATH ON
 SET UNIQUE ON
 SET MOUSE ON
 SET MULTILOCKS ON
 SET CENTURY ON
 SET SYSFORMATS ON
 SET STATUS BAR OFF
 SET BRSTATUS OFF
 SET CONFIRM OFF
 SET CPDIALOG OFF
 SET CURSOR OFF
 SET DECIMALS TO 6
 SET DEBUG OFF
 SET ECHO OFF
 SET ESCAPE OFF
 SET EXCLUSIVE OFF
 SET HEADING OFF
 SET HELP OFF
 SET PALETTE OFF
 SET PRINTER OFF
 SET SAFETY OFF
 SET SYSMENU OFF
 SET TALK OFF
 SET BELL TO
 SET FDOW TO
 SET POINT TO "."
 SET KEYCOMP TO WINDOW
 SET TYPEAHEAD TO 100
 SET REFRESH TO 20, 20
 SET REPROCESS TO 1 SECONDS
 SET CLOCK STATUS
 SET DATE French
 = SYS(3050, 1, 6000000)
 = SYS(3050, 2, 4000000)
 = CAPSLOCK(.F.)
 MODIFY WINDOW scReen FONT "Arial", 8 STYLE "NT" NOCLOSE TITLE "" ICON  ;
        FILE "ICON13.ICO"
 PUBLIC mcLave
 STORE "<=>?" TO mcLave
ENDPROC
*
PROCEDURE Tec_Ini
 PUBLIC k_F1, k_F2, k_F3, k_F4, k_F5, k_F6, k_F7, k_F8, k_F9, k_F10, k_F12
 PUBLIC k_Esc, k_Clic, k_Tab, k_Home, k_End, k_Up, k_Down, k_Left, k_Right
 PUBLIC k_Enter, k_Alt_del, k_Alt_c, k_Alt_a, k_Alt_s, k_Alt_z, k_Alt_d
 PUBLIC k_Ctrl_home, k_Ctrl_end, k_Ctrl_right, k_Ctrl_left, k_Ctrl_f11
 PUBLIC k_Ctrl_del, k_Ctrl_ins, k_Ctrl_p, k_Ctrl_o, k_Pgup, k_Pgdn
 STORE 28 TO k_F1
 STORE -01 TO k_F2
 STORE -02 TO k_F3
 STORE -03 TO k_F4
 STORE -04 TO k_F5
 STORE -05 TO k_F6
 STORE -06 TO k_F7
 STORE -07 TO k_F8
 STORE -08 TO k_F9
 STORE -09 TO k_F10
 STORE 134 TO k_F12
 STORE 27 TO k_Esc
 STORE 09 TO k_Tab
 STORE 05 TO k_Up
 STORE 24 TO k_Down
 STORE 151 TO k_Clic
 STORE 13 TO k_Enter
 STORE 01 TO k_Home
 STORE 06 TO k_End
 STORE 18 TO k_Pgup
 STORE 03 TO k_Pgdn
 STORE 19 TO k_Left
 STORE 04 TO k_Right
 STORE 26 TO k_Ctrl_left
 STORE 02 TO k_Ctrl_right
 STORE 29 TO k_Ctrl_home
 STORE 23 TO k_Ctrl_end
 STORE 147 TO k_Ctrl_del
 STORE 146 TO k_Ctrl_ins
 STORE 15 TO k_Ctrl_o
 STORE 16 TO k_Ctrl_p
 STORE 139 TO k_Ctrl_f11
 STORE 163 TO k_Alt_del
 STORE 46 TO k_Alt_c
 STORE 31 TO k_Alt_s
 STORE 44 TO k_Alt_z
 STORE 30 TO k_Alt_a
 STORE 32 TO k_Alt_d
ENDPROC
*
PROCEDURE Let_Ini
 PUBLIC mlEtrom, mlEtari, mlEtcou, mlEtswi, mlEtswb
 STORE "Times New Roman" TO mlEtrom
 STORE "Arial" TO mlEtari
 STORE "Courier New" TO mlEtcou
 STORE "Swis721 Th BT" TO mlEtswi
 STORE "Swis721 BT" TO mlEtswb
ENDPROC
*
PROCEDURE Col_Ini
 PUBLIC mcOlblb, mcOlbln, mcOlblp, mcOlblz, mcOlblr, mcOlblv, mcOlblf,  ;
        mcOl_fondo
 PUBLIC mcOlneb, mcOlpln, mcOlplp, mcOlsc1, mcOlsc3, mcOlsc4, mcOlsc6, mcOlsc7
 PUBLIC mcOlscp, mcOlron, mcOlazn, mcOlblvo, mcOlblzc, mcOl_beige
 DO coL_in1
ENDPROC
*
PROCEDURE Col_In1
 STORE "7/7+*,7/7+*,7/7+*,7/7+*" TO mcOlblb
 DO CASE
      CASE mhLp=0
           STORE "RGB(0,0,0,255,159,190)" TO mcOlron
           STORE "RGB(0,0,0,32,188,255)" TO mcOlazn
           STORE "8/7*,7/8+,8/7*,7/8+" TO mcOlbln
           STORE "RGB(128,128,128,255,255,255)" TO mcOlblp
           STORE "1/7*,7/1+,1/7*,7/1+" TO mcOlblz
           STORE "RGB(95,95,175,255,255,255)" TO mcOlblzc
           STORE "4/7*,7/4+,4/7*,7/4+" TO mcOlblr
           STORE "3/7*,7/3+,3/7*,7/3+" TO mcOlblv
           STORE "RGB(50,101,101,255,255,255)" TO mcOlblvo
           STORE "5/7*,7/5+,5/7*,7/5+" TO mcOlblf
           STORE "7/8+,8/7+" TO mcOlneb
           STORE "RGB(128,128,128,192,192,192)" TO mcOlplp
           STORE "RGB(0,0,0,192,192,192)" TO mcOlpln
           STORE "RGB(0,0,0,192,192,192),,RGB(255,255,217,0,0,0)" TO mcOlsc1
           STORE "RGB(0,0,0,154,162,170)" TO mcOlsc3
           STORE "RGB(0,0,0,141,136,122)" TO mcOlsc4
           STORE "RGB(0,0,0,164,162,170)" TO mcOlsc6
           STORE "RGB(0,0,0,164,172,170)" TO mcOlsc7
           STORE "RGB(128,128,128,192,192,192)" TO mcOlscp
           STORE "RGB(0,0,0,220,213,199)" TO mcOl_fondo
           STORE "RGB(0,0,0,255,217,179)" TO mcOl_beige
           SET COLOR OF SCHEME 1 TO
           SET COLOR OF SCHEME 1 TO RGB(255,255,217,192,192,192),, RGB(255,255,217,0,0,0)
           SET COLOR OF SCHEME 3 TO
           SET COLOR OF SCHEME 3 TO RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170),, RGB(0,0,0,154,162,170),,,,, RGB(40,0,0,154,162,170)
           SET COLOR OF SCHEME 4 TO
           SET COLOR OF SCHEME 4 TO RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122),,,,, RGB(40,0,0,141,136,122)
           SET COLOR OF SCHEME 5 TO
           SET COLOR OF SCHEME 5 TO RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122),,,,, RGB(4,255,255,141,136,122)
           SET COLOR OF SCHEME 6 TO
           SET COLOR OF SCHEME 6 TO RGB(0,0,0,164,162,170), RGB(0,0,0,164,162,170), RGB(0,0,0,164,162,170),, RGB(0,0,0,164,162,170),,,,, RGB(40,0,0,164,162,170)
           SET COLOR OF SCHEME 7 TO
           SET COLOR OF SCHEME 7 TO RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170),, RGB(0,0,0,164,172,170),,,,, RGB(40,0,0,164,172,170)
           SET COLOR OF SCHEME 8 TO
           SET COLOR OF SCHEME 8 TO RGB(255,255,217,192,192,192),, RGB(255,255,217,0,0,0)
           SET COLOR OF SCHEME 9 TO
           SET COLOR OF SCHEME 9 TO RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170),, RGB(0,0,0,154,162,170),,,,, RGB(40,0,0,154,162,170)
           SET COLOR OF SCHEME 10 TO
           SET COLOR OF SCHEME 10 TO RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170),, RGB(0,0,0,154,162,170),,,,, RGB(40,0,0,154,162,170)
      OTHERWISE
           STORE "RGB(0,0,0,255,159,190)" TO mcOlron
           STORE "RGB(0,0,0,32,188,255)" TO mcOlron
           STORE "8/7*,7/8+,8/7*,7/8+" TO mcOlbln
           STORE "RGB(128,128,128,255,255,255)" TO mcOlblp
           STORE "1/7*,7/1+,1/7*,7/1+" TO mcOlblz
           STORE "RGB(95,95,175,255,255,255)" TO mcOlblzc
           STORE "4/7*,7/4+,4/7*,7/4+" TO mcOlblr
           STORE "3/7*,7/3+,3/7*,7/3+" TO mcOlblv
           STORE "RGB(50,101,101,255,255,255)" TO mcOlblvo
           STORE "5/7*,7/5+,5/7*,7/5+" TO mcOlblf
           STORE "7/8+,8/7+" TO mcOlneb
           STORE "RGB(128,128,128,192,192,192)" TO mcOlplp
           STORE "RGB(0,0,0,192,192,192)" TO mcOlpln
           STORE "RGB(0,0,0,192,192,192),,RGB(255,255,217,0,0,0)" TO mcOlsc1
           STORE "RGB(0,0,0,154,162,170)" TO mcOlsc3
           STORE "RGB(0,0,0,141,136,122)" TO mcOlsc4
           STORE "RGB(0,0,0,164,162,170)" TO mcOlsc6
           STORE "RGB(0,0,0,164,172,170)" TO mcOlsc7
           STORE "RGB(128,128,128,192,192,192)" TO mcOlscp
           STORE "RGB(0,0,0,220,213,199)" TO mcOl_fondo
           STORE "RGB(0,0,0,255,217,179)" TO mcOl_beige
           SET COLOR OF SCHEME 1 TO
           SET COLOR OF SCHEME 1 TO RGB(255,255,217,192,192,192),, RGB(255,255,217,0,0,0)
           SET COLOR OF SCHEME 3 TO
           SET COLOR OF SCHEME 3 TO RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170),, RGB(0,0,0,154,162,170),,,,, RGB(40,0,0,154,162,170)
           SET COLOR OF SCHEME 4 TO
           SET COLOR OF SCHEME 4 TO RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122),,,,, RGB(40,0,0,141,136,122)
           SET COLOR OF SCHEME 5 TO
           SET COLOR OF SCHEME 5 TO RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122),,,,, RGB(4,255,255,141,136,122)
           SET COLOR OF SCHEME 6 TO
           SET COLOR OF SCHEME 6 TO RGB(0,0,0,164,162,170), RGB(0,0,0,164,162,170), RGB(0,0,0,164,162,170),, RGB(0,0,0,164,162,170),,,,, RGB(40,0,0,164,162,170)
           SET COLOR OF SCHEME 7 TO
           SET COLOR OF SCHEME 7 TO RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170),, RGB(0,0,0,164,172,170),,,,, RGB(40,0,0,164,172,170)
           SET COLOR OF SCHEME 8 TO
           SET COLOR OF SCHEME 8 TO RGB(255,255,217,192,192,192),, RGB(255,255,217,0,0,0)
           SET COLOR OF SCHEME 9 TO
           SET COLOR OF SCHEME 9 TO RGB(0,0,0,198,198,198), RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170),, RGB(0,0,0,154,162,170),,,,, RGB(40,0,0,154,162,170)
           SET COLOR OF SCHEME 10 TO
           SET COLOR OF SCHEME 10 TO RGB(0,0,0,154,162,170), RGB(0,0,0,198,198,198), RGB(0,0,0,154,162,170), RGB(0,0,0,128,128,128), RGB(0,0,0,154,162,170), RGB(255,255,255,0,0,0),,,, RGB(40,0,0,154,162,170)
 ENDCASE
ENDPROC
*
PROCEDURE Set_Imp
 PUBLIC mpRf[35, 5]
 STORE "Facturas" TO mpRf[01, 1]
 STORE "2" TO mpRf[01, 2]
 STORE 0 TO mpRf[01, 3]
 STORE 0 TO mpRf[01, 4]
 STORE 0 TO mpRf[01, 5]
 STORE "Boletas" TO mpRf[02, 1]
 STORE "2" TO mpRf[02, 2]
 STORE 0 TO mpRf[02, 3]
 STORE 0 TO mpRf[02, 4]
 STORE 0 TO mpRf[02, 5]
 STORE "Pedido" TO mpRf[03, 1]
 STORE "2" TO mpRf[03, 2]
 STORE 0 TO mpRf[03, 3]
 STORE 0 TO mpRf[03, 4]
 STORE 0 TO mpRf[03, 5]
 STORE "Remisión" TO mpRf[04, 1]
 STORE "2" TO mpRf[04, 2]
 STORE 0 TO mpRf[04, 3]
 STORE 0 TO mpRf[04, 4]
 STORE 0 TO mpRf[04, 5]
 STORE "Despacho" TO mpRf[05, 1]
 STORE "2" TO mpRf[05, 2]
 STORE 0 TO mpRf[05, 3]
 STORE 0 TO mpRf[05, 4]
 STORE 0 TO mpRf[05, 5]
 STORE "Despacho1" TO mpRf[06, 1]
 STORE "2" TO mpRf[06, 2]
 STORE 0 TO mpRf[06, 3]
 STORE 0 TO mpRf[06, 4]
 STORE 0 TO mpRf[06, 5]
 STORE "Despacho2" TO mpRf[07, 1]
 STORE "2" TO mpRf[07, 2]
 STORE 0 TO mpRf[07, 3]
 STORE 0 TO mpRf[07, 4]
 STORE 0 TO mpRf[07, 5]
 STORE "Despacho3" TO mpRf[08, 1]
 STORE "2" TO mpRf[08, 2]
 STORE 0 TO mpRf[08, 3]
 STORE 0 TO mpRf[08, 4]
 STORE 0 TO mpRf[08, 5]
 STORE "Despacho4" TO mpRf[09, 1]
 STORE "2" TO mpRf[09, 2]
 STORE 0 TO mpRf[09, 3]
 STORE 0 TO mpRf[09, 4]
 STORE 0 TO mpRf[09, 5]
 STORE "Despacho5" TO mpRf[10, 1]
 STORE "2" TO mpRf[10, 2]
 STORE 0 TO mpRf[10, 3]
 STORE 0 TO mpRf[10, 4]
 STORE 0 TO mpRf[10, 5]
 STORE "Despacho6" TO mpRf[11, 1]
 STORE "2" TO mpRf[11, 2]
 STORE 0 TO mpRf[11, 3]
 STORE 0 TO mpRf[11, 4]
 STORE 0 TO mpRf[11, 5]
 STORE "Despacho7" TO mpRf[12, 1]
 STORE "2" TO mpRf[12, 2]
 STORE 0 TO mpRf[12, 3]
 STORE 0 TO mpRf[12, 4]
 STORE 0 TO mpRf[12, 5]
 STORE "Despacho8" TO mpRf[13, 1]
 STORE "2" TO mpRf[13, 2]
 STORE 0 TO mpRf[13, 3]
 STORE 0 TO mpRf[13, 4]
 STORE 0 TO mpRf[13, 5]
 STORE "Despacho9" TO mpRf[14, 1]
 STORE "2" TO mpRf[14, 2]
 STORE 0 TO mpRf[14, 3]
 STORE 0 TO mpRf[14, 4]
 STORE 0 TO mpRf[14, 5]
 STORE "Sam_MatV" TO mpRf[15, 1]
 STORE "2" TO mpRf[15, 2]
 STORE 0 TO mpRf[15, 3]
 STORE 0 TO mpRf[15, 4]
 STORE 0 TO mpRf[15, 5]
 STORE "Sam_MatH" TO mpRf[16, 1]
 STORE "2" TO mpRf[16, 2]
 STORE 0 TO mpRf[16, 3]
 STORE 0 TO mpRf[16, 4]
 STORE 0 TO mpRf[16, 5]
 STORE "Letras" TO mpRf[17, 1]
 STORE "2" TO mpRf[17, 2]
 STORE 0 TO mpRf[17, 3]
 STORE 0 TO mpRf[17, 4]
 STORE 0 TO mpRf[17, 5]
 STORE "Etiqueta" TO mpRf[18, 1]
 STORE "2" TO mpRf[18, 2]
 STORE 0 TO mpRf[18, 3]
 STORE 0 TO mpRf[18, 4]
 STORE 0 TO mpRf[18, 5]
 STORE "Pedido" TO mpRf[19, 1]
 STORE "2" TO mpRf[19, 2]
 STORE 0 TO mpRf[19, 3]
 STORE 0 TO mpRf[19, 4]
 STORE 0 TO mpRf[19, 5]
 STORE "Sam_MatV" TO mpRf[20, 1]
 STORE "2" TO mpRf[20, 2]
 STORE 0 TO mpRf[20, 3]
 STORE 0 TO mpRf[20, 4]
 STORE 0 TO mpRf[20, 5]
 STORE "Boletas" TO mpRf[21, 1]
 STORE "2" TO mpRf[21, 2]
 STORE 0 TO mpRf[21, 3]
 STORE 0 TO mpRf[21, 4]
 STORE 0 TO mpRf[21, 5]
 STORE "Boletas" TO mpRf[22, 1]
 STORE "2" TO mpRf[22, 2]
 STORE 0 TO mpRf[22, 3]
 STORE 0 TO mpRf[22, 4]
 STORE 0 TO mpRf[22, 5]
 STORE "Sam_MatV" TO mpRf[23, 1]
 STORE "2" TO mpRf[23, 2]
 STORE 0 TO mpRf[23, 3]
 STORE 0 TO mpRf[23, 4]
 STORE 0 TO mpRf[23, 5]
 STORE "Sam_MatV" TO mpRf[24, 1]
 STORE "2" TO mpRf[24, 2]
 STORE 0 TO mpRf[24, 3]
 STORE 0 TO mpRf[24, 4]
 STORE 0 TO mpRf[24, 5]
 STORE "Sam_MatV" TO mpRf[25, 1]
 STORE "2" TO mpRf[25, 2]
 STORE 0 TO mpRf[25, 3]
 STORE 0 TO mpRf[25, 4]
 STORE 0 TO mpRf[25, 5]
 STORE "Bol_Pago" TO mpRf[26, 1]
 STORE "2" TO mpRf[26, 2]
 STORE 0 TO mpRf[26, 3]
 STORE 0 TO mpRf[26, 4]
 STORE 0 TO mpRf[26, 5]
 STORE "Fac.Elect" TO mpRf[27, 1]
 STORE "1" TO mpRf[27, 2]
 STORE 0 TO mpRf[27, 3]
 STORE 0 TO mpRf[27, 4]
 STORE 0 TO mpRf[27, 5]
 STORE "Bol.Elect" TO mpRf[28, 1]
 STORE "1" TO mpRf[28, 2]
 STORE 0 TO mpRf[28, 3]
 STORE 0 TO mpRf[28, 4]
 STORE 0 TO mpRf[28, 5]
 STORE "NC Elect" TO mpRf[29, 1]
 STORE "1" TO mpRf[29, 2]
 STORE 0 TO mpRf[29, 3]
 STORE 0 TO mpRf[29, 4]
 STORE 0 TO mpRf[29, 5]
 STORE "ND Elect" TO mpRf[30, 1]
 STORE "1" TO mpRf[30, 2]
 STORE 0 TO mpRf[30, 3]
 STORE 0 TO mpRf[30, 4]
 STORE 0 TO mpRf[30, 5]
 STORE "GR Elect" TO mpRf[31, 1]
 STORE "1" TO mpRf[31, 2]
 STORE 0 TO mpRf[31, 3]
 STORE 0 TO mpRf[31, 4]
 STORE 0 TO mpRf[31, 5]
 STORE "Fac.Elec Sol" TO mpRf[32, 1]
 STORE "1" TO mpRf[32, 2]
 STORE 0 TO mpRf[32, 3]
 STORE 0 TO mpRf[32, 4]
 STORE 0 TO mpRf[32, 5]
 STORE "Bol.Elec Sol" TO mpRf[33, 1]
 STORE "1" TO mpRf[33, 2]
 STORE 0 TO mpRf[33, 3]
 STORE 0 TO mpRf[33, 4]
 STORE 0 TO mpRf[33, 5]
 STORE "NC Elect Sol" TO mpRf[34, 1]
 STORE "1" TO mpRf[34, 2]
 STORE 0 TO mpRf[34, 3]
 STORE 0 TO mpRf[34, 4]
 STORE 0 TO mpRf[34, 5]
 STORE "ND Elect Sol" TO mpRf[35, 1]
 STORE "1" TO mpRf[35, 2]
 STORE 0 TO mpRf[35, 3]
 STORE 0 TO mpRf[35, 4]
 STORE 0 TO mpRf[35, 5]
ENDPROC
*
PROCEDURE Set_Var
 PUBLIC mfEl, mdBf, meRr, msAl, mkEy, mmSj, muNi, muN1, muN2, mpTh, mpT1,  ;
        mpT2, mpT3
 PUBLIC mpT4, mrAz, mrZ1, mdIr, mtEl, mrUc, mwEb, meMa, mpCl, muFi, muCo,  ;
        mmF1, mmC1
 PUBLIC mmF2, mmC2, mxX1, myY1, mrEs, mrSs, mrS1, mrS2, mtAm, mpTa, mwFi,  ;
        mwCo, mfI0
 PUBLIC mcO0, mfIl, mcCc, mcOl, moPc, mcOd, muSu, mmAq, miPg, muPg, miTe,  ;
        mpAd, mbAr
 PUBLIC mpAg, mcLn, mmAl, moP1, moP2, moP3, moP4, moP5, moP6, moP7, moP8,  ;
        moP9, maRe
 PUBLIC mnIv, mnVc, mnV1, mnV2, mnV3, maDm, mpRt, mpRn, mcIa, mcIi, mpRg,  ;
        miGv, mpPe
 PUBLIC mpDt, mcM1, mpIg, mtMc, mmOn, mmNc, mmBo, miNt, mvEn, mtIp, mcAj,  ;
        mcOr, mvNd
 PUBLIC mpRe, mpIe, msTp, mlFa, mlFe, mlFc, mlBo, mlBe, mlBc, mlNp, mlGr,  ;
        mlNc, mlNd
 PUBLIC mlCp, mlCr, mpDc, mlL0, ml10, ml20, ml0b, ml1b, ml2b, ml0n, ml0c,  ;
        mlL1, mlL2
 PUBLIC mlL3, mlLz, mlLx, mlLy, mlLb, mlLd, mlLe, mlLn, mlLc, mjAl, mvIt,  ;
        mpAn, mdEt
 PUBLIC mmDt, mmAx, miMp, mlIs, mlIn, mgRa, mvId, mdEs, mdIa, mmIi, mlEt,  ;
        mdEc, mfCc
 PUBLIC moBr, mtFa, mlI1, mpEd, mrEd, msLd, mmNu, mcOm, mhLp, meXt, meX1,  ;
        mfCt, mfCp
 PUBLIC mlSt, msIm, mcIm, meMp, mtRa, maLm, mpAl, miNg, mvIn, mnPs, mtCa,  ;
        mcDx, msIs
 PUBLIC mpNt, mfRa, mtM1, mtM2, mtM3, mfI1, mfI2, mcO1, mcO2, muLt, mvIs,  ;
        mdUe, miPp
 PUBLIC mtMa, mbOr, mfG1, mfG2, mcG1, mcG2, piCl, puCl, piC1, puC1, piC2,  ;
        puC2, piC3
 PUBLIC puC3, piC4, puC4, piC5, puC5, piC6, puC6, piC7, puC7, msEp, msEd,  ;
        mcSt, muIt
 PUBLIC mdAo, mmMm, mlAr, maNc, mhOr, meXi, mvIr, mwEr, mfDe, mfHa, msUn,  ;
        mrEn, mfDr
 PUBLIC mfHr, moPe, meNn, meN1, mdSp, mtC1, mtC2, moPp, msIg, mnSg, mdTr,  ;
        mfR1, mfR2
 PUBLIC mmEnu, mpOp_actual, mpOp_utilit, mpOp_salida, mpAn_hlp, mpAn_prn
 PUBLIC mpAn_sis, mpAn_vis, mtAb[36], msEr[17]
 PUBLIC fiLsobj
 fiLsobj = CREATEOBJECT("Scripting.FileSystemObject")
 DO seT_imp
 STORE 9999999999999 TO meNn
 STORE TIME() TO mhOr
 STORE "" TO moPe
 STORE "" TO mcIa
 STORE "" TO mrZ1
 STORE 02 TO msEp
 STORE 02 TO msEd
 STORE 01 TO mvIt
 STORE 01 TO mbOr
 STORE 02 TO mvIr
 STORE 20 TO mtMa
 STORE 01 TO mpAn
 STORE 01 TO mdEt
 STORE 01 TO mcOl
 STORE 00 TO mdTr
 STORE "" TO mfR1, mfR2
 STORE 01 TO miPg
 STORE 99999 TO muPg
 STORE 0 TO mvIs
 STORE "01" TO mcIi
 STORE ".DBF" TO meXt
 STORE ".CDX" TO mcDx
 STORE 03 TO mtCa
 STORE 00 TO miGv
 STORE 00 TO mpPe
 STORE 00 TO mpDt
 STORE 00 TO mmDt
 STORE 00 TO mdAo
 STORE 00 TO muIt
 STORE 00 TO mmMm
 STORE " " TO mcM1
 STORE "S/" TO msIg
 STORE "Soles" TO mnSg
 STORE "2" TO mfEl
 STORE "" TO moP0, moP1, moP2, moP3, moP4
 STORE "" TO moP5, moP6, moP7, moP8, moP9, miTe
 STORE SPACE(01) TO mtAb[01], mtAb[02], mtAb[03], mtAb[04], mtAb[05],  ;
       mtAb[06], mtAb[07], mtAb[08], mtAb[09]
 STORE SPACE(01) TO mtAb[10], mtAb[11], mtAb[12], mtAb[13], mtAb[14],  ;
       mtAb[15], mtAb[16], mtAb[17], mtAb[18]
 STORE SPACE(01) TO mtAb[19], mtAb[20], mtAb[21], mtAb[22], mtAb[23],  ;
       mtAb[24], mtAb[25], mtAb[26], mtAb[27]
 STORE SPACE(01) TO mtAb[28], mtAb[29], mtAb[30], mtAb[31], mtAb[32],  ;
       mtAb[33], mtAb[34], mtAb[35], mtAb[36]
 STORE "" TO mpAd
 STORE 0 TO msIm
 STORE "" TO msIs
 STORE " " TO mpNt
 STORE " " TO mwEr
 STORE " " TO msUn
 STORE " " TO mrEn
 STORE CTOD(" ") TO mfDe
 STORE CTOD(" ") TO mhDe
 STORE CTOD(" ") TO mfDr
 STORE CTOD(" ") TO mhDr
 STORE "" TO mpRn
 STORE "" TO mtIp
 STORE "" TO mmSj
 STORE "" TO mdBf
 STORE SPACE(04) TO mpCl
 STORE "N" TO moPc
 STORE 00 TO mpAg
 STORE 00 TO mcLn
 STORE 00 TO mfI0
 STORE 00 TO mcO0
 STORE 00 TO mfIl
 STORE 00 TO mcCc
 STORE 00 TO mmF1
 STORE 00 TO meRr
 STORE 00 TO msAl
 STORE 99 TO mkEy
 STORE "1" TO mpRt
 STORE 2 TO mlIn
 STORE 1 TO mcSt
 STORE "@@@" TO mcOd
 STORE "@@@" TO muSu
 STORE " " TO mmAq
 STORE "24" TO maRe
 STORE "1" TO mnIv, mnVc
 STORE 1 TO maDm
 STORE "  " TO mvEn
 STORE "001" TO msEr[01]
 STORE "001" TO msEr[02]
 STORE "001" TO msEr[03]
 STORE "001" TO msEr[04]
 STORE "001" TO msEr[05]
 STORE "001" TO msEr[06]
 STORE "001" TO msEr[07]
 STORE "001" TO msEr[08]
 STORE "001" TO msEr[09]
 STORE "001" TO msEr[10]
 STORE "001" TO msEr[11]
 STORE "001" TO msEr[12]
 STORE "001" TO msEr[13]
 STORE "001" TO msEr[14]
 STORE "001" TO msEr[15]
 STORE "001" TO msEr[16]
 STORE "001" TO msEr[17]
 STORE 0 TO mhLp
 STORE -0.3 TO mcO1
 STORE 3.9 TO mcO2
 STORE -0.2 TO mcG1
 STORE 4 TO mcG2
 STORE 1.2 TO mfI2
 STORE 1.492 TO mfG2
 IF ALLTRIM(msIs)="WINXP"
      STORE -0.885 TO mfI1
      STORE -0.078 TO mfG1
 ELSE
      STORE 0 TO mfI1
      STORE 0 TO mfG1
 ENDIF
ENDPROC
*
PROCEDURE Clp_Coo
 STORE MROW("mPAN_SIS") TO mfIl
 STORE MCOL("mPAN_SIS") TO mcCc
 IF mfIl=-1 .AND. mcCc<>-1 .AND. mcCc>=mwCo-3.8 .AND. mcCc<=mwCo-0.4
      DO reTorna
      STORE 0 TO mfIl, mcCc
 ENDIF
ENDPROC
*
PROCEDURE Clp_Hlp
 STORE MROW("mPAN_HLP") TO mfIl
 STORE MCOL("mPAN_HLP") TO mcCc
ENDPROC
*
PROCEDURE Ver_Fil
 STORE "MDSETUP.DLL" TO mdBf
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo MDSETUP.DLL no instalado o borrado" TO mmSj
 ENDIF
 IF LEN(ALLTRIM(mmSj))<>0
      STORE mmSj+"... PRESIONAR UNA TECLA PARA SALIR..." TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
ENDPROC
*
PROCEDURE Ver_Demo
 PARAMETER psAl
 PRIVATE pcLa
 SELECT 1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"IDENTI2.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"IDENTI2.DBB" TO mdBf
 ENDIF
 STORE 01 TO meRr
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE siM TO msIm
 DO CASE
      CASE ASC(ALLTRIM(msIm))=65
           CLEAR
           STORE "Esta Versión caducó temporalmente por Falta de Pago... PRESIONAR UNA TECLA PARA SALIR..."  ;
                 TO mmSj
           DO poNmsj
           SET COLOR TO N/W*, W+/N, N/W*,
           @ 10, 010 TO 22, 094
           @ 11, 012 TO 21, 092
           @ 10, 110 TO 18, 160
           @ 11, 112 TO 17, 158
           @12,014 Say "Cuentas para Depositar en Banco Continental" Font "&mLetAri",14 Style "NT"
           @14,014 Say "S/. 0011-0180-0200373200"                    Font "&mLetAri",14 Style "NT"
           @16,014 Say "T/C 3.27"                                    Font "&mLetAri",14 Style "NT"
           @18,014 Say "A nombre de Marisol Rojas Armas"             Font "&mLetAri",14 Style "NT"
           @12,114 Say "Ingresar Clave de Pago:"                     Font "&mLetAri",14 Style "NT"
           STORE SPACE(05) TO pcLa
           SET READBORDER ON
           SET CURSOR ON
           @14,130 Get pCLA                                         Font "&mLetAri",14 Style "BQ" Pict "!!!!!" Color ,8/7* Size 1,6.2
           READ
           SET CURSOR OFF
           SET READBORDER OFF
           mkEy = INKEY(0)
           IF mkEy=13
                STORE SUBSTR(pcLa, 1, 1) TO pcL1
                STORE SUBSTR(pcLa, 2, 1) TO pcL2
                STORE SUBSTR(pcLa, 3, 1) TO pcL3
                STORE SUBSTR(pcLa, 4, 1) TO pcL4
                STORE SUBSTR(pcLa, 5, 1) TO pcL5
                STORE SUBSTR(DTOC(DATE()), 1, 1) TO pdI1
                STORE SUBSTR(DTOC(DATE()), 2, 1) TO pdI2
                STORE SUBSTR(DTOC(DATE()), 4, 1) TO pmE1
                STORE SUBSTR(DTOC(DATE()), 5, 1) TO pmE2
                IF pcL1=pdI1 .AND. pcL3=pdI2 .AND. pcL2=pmE1 .AND. pcL5=pmE2
                     DO CASE
                          CASE pcL4="Z"
                               REPLACE siM WITH " "
                               REPLACE siF WITH " "
                          CASE pcL4>="A" .AND. pcL4<="P"
                               REPLACE siM WITH pcL4
                               REPLACE siF WITH SUBSTR(DTOC(DATE()), 9,  ;
                                       2)+SUBSTR(DTOC(DATE()), 4, 2)+ ;
                                       SUBSTR(DTOC(DATE()), 7, 2)+ ;
                                       SUBSTR(DTOC(DATE()), 1, 2)
                          OTHERWISE
                               STORE "Clave Incorrecta... PRESIONAR UNA TECLA PARA SALIR..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0, "HM")
                     ENDCASE
                     CLOSE DATABASES
                     CLOSE INDEXES
                     DO reTorno
                ELSE
                     STORE "Clave Incorrecta... PRESIONAR UNA TECLA PARA SALIR..."  ;
                           TO mmSj
                     DO poNmsj
                     = INKEY(0, "HM")
                     CLOSE DATABASES
                     CLOSE INDEXES
                     DO reTorno
                ENDIF
           ELSE
                CLOSE DATABASES
                CLOSE INDEXES
                DO reTorno
           ENDIF
      CASE LEN(ALLTRIM(msIm))<>0 .AND. LEN(ALLTRIM(siF))=0
           REPLACE siF WITH SUBSTR(DTOC(DATE()), 9, 2)+ ;
                   SUBSTR(DTOC(DATE()), 4, 2)+SUBSTR(DTOC(DATE()), 7, 2)+ ;
                   SUBSTR(DTOC(DATE()), 1, 2)
      CASE LEN(ALLTRIM(msIm))<>0
           PRIVATE pdAt
           STORE SUBSTR(DTOC(DATE()), 9, 2)+SUBSTR(DTOC(DATE()), 4, 2)+ ;
                 SUBSTR(DTOC(DATE()), 7, 2)+SUBSTR(DTOC(DATE()), 1, 2) TO pdAt
           IF pdAt<>siF
                STORE CHR(ASC(ALLTRIM(msIm))-1) TO msIm
                REPLACE siM WITH msIm
                REPLACE siF WITH pdAt
           ENDIF
           RELEASE pdAt
 ENDCASE
 SELECT 2
 IF psAl="1"
      STORE "SYSTEMX.DLL" TO mdBf
 ELSE
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+"SYSTEMX.DLL" TO mdBf
      ELSE
           STORE muNi+":"+mpTh+"SYSTEMX.DLL" TO mdBf
      ENDIF
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If File("&mDBF") .or. mEXI = .T.
      STORE .T. TO meXi
 ENDIF
 IF meXi<>.T.
      CLOSE DATABASES
      CLOSE INDEXES
      STORE "No existe Archivo de Configuracion... PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 STORE 01 TO meRr
 Use &mDBF Shared
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE UPPER(ALLTRIM(f9990cod)) TO msIs
 STORE f9990pnt TO mpNt
 STORE f9990red TO mwEr
 DO CASE
      CASE ALLTRIM(msIs)+"*"="WIN2000"+"*" .AND.  .NOT.  ;
           FILE("C:\WINNT\SYSTEM32\LARTIV.SYS")
           STORE "ESTA ES UNA COPIA NO AUTORIZADA 2000...Póngase en contacto con el Proveedor... PRESIONAR UNA TECLA PARA SALIR..."  ;
                 TO mmSj
      CASE (ALLTRIM(msIs)+"*"="WIN98"+"*" .OR. ALLTRIM(msIs)="WIN95")  ;
           .AND.  .NOT. FILE("C:\WINDOWS\SYSTEM\LARTIV.SYS")
           STORE "ESTA ES UNA COPIA NO AUTORIZADA 98...Póngase en contacto con el Proveedor... PRESIONAR UNA TECLA PARA SALIR..."  ;
                 TO mmSj
      CASE ALLTRIM(msIs)+"*"="WINXP"+"*" .AND.  .NOT.  ;
           FILE("C:\WINDOWS\SYSTEM32\LARTIV.SYS")
           STORE "ESTA ES UNA COPIA NO AUTORIZADA XP...Póngase en contacto con el Proveedor... PRESIONAR UNA TECLA PARA SALIR..."  ;
                 TO mmSj
      CASE ALLTRIM(msIs)+"*"="WIN764"+"*" .AND. ( .NOT.  ;
           FILE("C:\WINDOWS\SYSTEM32\lartiv.sys") .AND.  .NOT.  ;
           FILE("C:\WINDOWS\lartiv.sys"))
           STORE "ESTA ES UNA COPIA NO AUTORIZADA WIN764...Póngase en contacto con el Proveedor... PRESIONAR UNA TECLA PARA SALIR..."  ;
                 TO mmSj
      CASE ALLTRIM(msIs)+"*"="WIN7"+"*" .AND.  .NOT.  ;
           FILE("C:\WINDOWS\SYSTEM32\LARTIV.SYS")
           STORE "ESTA ES UNA COPIA NO AUTORIZADA WIN7...Póngase en contacto con el Proveedor... PRESIONAR UNA TECLA PARA SALIR..."  ;
                 TO mmSj
 ENDCASE
 CLOSE DATABASES
 CLOSE INDEXES
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 RELEASE pcLa
ENDPROC
*
PROCEDURE Sin_Demo
 STORE "SYSTEMX.DLL" TO mdBf
 meXi = fiLsobj.fiLeexists(mdBf)
 If File("&mDBF") .or. mEXI = .T.
      STORE 01 TO meRr
      Use &mDBF Shared
      IF mkEy=k_Esc
           DO reTorno
      ENDIF
      STORE 00 TO meRr
      GOTO TOP
      STORE UPPER(ALLTRIM(f9990cod)) TO msIs
      STORE f9990pnt TO mpNt
      STORE f9990red TO mwEr
      CLOSE DATABASES
      CLOSE INDEXES
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           = INKEY(0, "HM")
           DO reTorno
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Abr_Path
 STORE "MDSETUP.DLL" TO mdBf
 STORE 01 TO meRr
 Use &mDBF Shared NoUpdate
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE unI TO muNi
 STORE ALLTRIM(paTh) TO mpTh
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Ab1_Conf
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"IDENTI2.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"IDENTI2.DBB" TO mdBf
 ENDIF
 STORE 01 TO meRr
 Use &mDBF Shared NoUpdate
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE ciA TO mcIa
 STORE ruC TO msUn
 STORE fdE TO mfDe
 STORE fhA TO mfHa
 STORE dnI TO mrEn
 STORE fdR TO mfDr
 STORE fhR TO mfHr
 CLOSE DATABASES
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ENDIF
 STORE 01 TO meRr
 Use &mDBF Shared NoUpdate
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE viT TO mvIt
 STORE paN TO mpAn
 STORE deT TO mdEt
 DO ab2_conf
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Ab2_Conf
 DO CASE
      CASE mpAn=1
           MODIFY WINDOW scReen ICON FILE "ICON01.ICO"
      CASE mpAn=2
           MODIFY WINDOW scReen ICON FILE "ICON02.ICO"
      CASE mpAn=3
           MODIFY WINDOW scReen ICON FILE "ICON03.ICO"
      CASE mpAn=4
           MODIFY WINDOW scReen ICON FILE "ICON04.ICO"
      CASE mpAn=5
           MODIFY WINDOW scReen ICON FILE "ICON05.ICO"
      CASE mpAn=6
           MODIFY WINDOW scReen ICON FILE "ICON06.ICO"
      CASE mpAn=7
           MODIFY WINDOW scReen ICON FILE "ICON07.ICO"
      CASE mpAn=8
           MODIFY WINDOW scReen ICON FILE "ICON08.ICO"
      CASE mpAn=9
           MODIFY WINDOW scReen ICON FILE "ICON09.ICO"
      CASE mpAn=10
           MODIFY WINDOW scReen ICON FILE "ICON10.ICO"
      CASE mpAn=11
           MODIFY WINDOW scReen ICON FILE "ICON11.ICO"
      CASE mpAn=12
           MODIFY WINDOW scReen ICON FILE "ICON12.ICO"
      OTHERWISE
           MODIFY WINDOW scReen ICON FILE "ICON13.ICO"
 ENDCASE
ENDPROC
*
PROCEDURE Ab3_Conf
 DO CASE
      CASE mpAn=1
           MODIFY WINDOW mpAn_sis ICON FILE "ICON01.ICO"
      CASE mpAn=2
           MODIFY WINDOW mpAn_sis ICON FILE "ICON02.ICO"
      CASE mpAn=3
           MODIFY WINDOW mpAn_sis ICON FILE "ICON03.ICO"
      CASE mpAn=4
           MODIFY WINDOW mpAn_sis ICON FILE "ICON04.ICO"
      CASE mpAn=5
           MODIFY WINDOW mpAn_sis ICON FILE "ICON05.ICO"
      CASE mpAn=6
           MODIFY WINDOW mpAn_sis ICON FILE "ICON06.ICO"
      CASE mpAn=7
           MODIFY WINDOW mpAn_sis ICON FILE "ICON07.ICO"
      CASE mpAn=8
           MODIFY WINDOW mpAn_sis ICON FILE "ICON08.ICO"
      CASE mpAn=9
           MODIFY WINDOW mpAn_sis ICON FILE "ICON09.ICO"
      CASE mpAn=10
           MODIFY WINDOW mpAn_sis ICON FILE "ICON10.ICO"
      CASE mpAn=11
           MODIFY WINDOW mpAn_sis ICON FILE "ICON11.ICO"
      CASE mpAn=12
           MODIFY WINDOW mpAn_sis ICON FILE "ICON12.ICO"
      OTHERWISE
           MODIFY WINDOW mpAn_sis ICON FILE "ICON13.ICO"
 ENDCASE
ENDPROC
*
PROCEDURE Abr_Conf
 PRIVATE pcIa
 DO ab1_conf
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ENDIF
 STORE 01 TO meRr
 Use &mDBF Shared NoUpdate
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE ciA TO pcIa
 STORE tiP TO mtIp
 STORE raZ TO mrAz
 STORE rz1 TO mrZ1
 STORE ruC TO mrUc
 STORE diR TO mdIr
 STORE teL TO mtEl
 STORE weB TO mwEb
 STORE emA TO meMa
 STORE tmC TO mtMc
 STORE moN TO mmOn
 STORE mnC TO mmNc
 STORE inT TO miNt
 STORE caJ TO mcAj
 STORE coR TO mcOr
 STORE vnD TO mvNd
 STORE prE TO mpRe
 STORE piE TO mpIe
 STORE stP TO msTp
 STORE lfA TO mlFa
 STORE lfE TO mlFe
 STORE lfC TO mlFc
 STORE lbO TO mlBo
 STORE lbE TO mlBe
 STORE lbC TO mlBc
 STORE lnP TO mlNp
 STORE lgR TO mlGr
 STORE lnC TO mlNc
 STORE lnD TO mlNd
 STORE lcP TO mlCp
 STORE lcR TO mlCr
 STORE pdC TO mpDc
 STORE jaL TO mjAl
 STORE miI TO mmIi
 STORE maX TO mmAx
 STORE viT TO mvIt
 STORE paN TO mpAn
 STORE deT TO mdEt
 STORE imP TO miMp
 STORE liS TO mlIs
 STORE grA TO mgRa
 STORE viD TO mvId
 STORE deS TO mdEs
 STORE leT TO mlEt
 STORE lsT TO mlSt
 STORE li1 TO mlI1
 STORE obR TO moBr
 STORE peD TO mpEd
 STORE reD TO mrEd
 STORE slD TO msLd
 STORE tfA TO mtFa
 STORE dsP TO mdSp
 STORE feL TO mfEl
 STORE paL TO mpAl
 STORE inG TO miNg
 STORE viN TO mvIn
 STORE ll0 TO mlL0
 STORE l10 TO ml10
 STORE l20 TO ml20
 STORE l0B TO ml0b
 STORE l1B TO ml1b
 STORE l2B TO ml2b
 STORE l0N TO ml0n
 STORE l0C TO ml0c
 STORE ll1 TO mlL1
 STORE ll2 TO mlL2
 STORE ll3 TO mlL3
 STORE llZ TO mlLz
 STORE llX TO mlLx
 STORE llY TO mlLy
 STORE llB TO mlLb
 STORE llD TO mlLd
 STORE llE TO mlLe
 STORE llN TO mlLn
 STORE llC TO mlLc
 STORE fcC TO mfCc
 STORE fcT TO mfCt
 STORE fcP TO mfCp
 STORE mbO TO mmBo
 STORE diA TO mdIa
 STORE deC TO mdEc
 STORE coM TO mcOm
 STORE hlP TO mhLp
 STORE ciM TO mcIm
 STORE emP TO meMp
 STORE trA TO mtRa
 STORE alM TO maLm
 STORE piG TO mpIg
 STORE psS TO mnPs
 STORE seP TO msEp
 STORE seD TO msEd
 DO prO_0000a WITH pcIa
 STORE mfRa TO pcIa
 IF pcIa<>mcIa
      STORE "Datos instalados no concuerdan... PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 DO prO_0000a WITH mtIp
 STORE mfRa TO mtIp
 DO prO_0000a WITH mrAz
 STORE mfRa TO mrAz
 DO prO_0000a WITH mrZ1
 STORE mfRa TO mrZ1
 DO prO_0000a WITH mdIr
 STORE mfRa TO mdIr
 DO prO_0000a WITH mrUc
 STORE mfRa TO mrUc
 DO prO_0000a WITH mtEl
 STORE mfRa TO mtEl
 DO prO_0000a WITH mwEb
 STORE mfRa TO mwEb
 DO prO_0000a WITH meMa
 STORE mfRa TO meMa
 DO prO_0000a WITH mcOr
 STORE mfRa TO mcOr
 DO prO_0000a WITH mpEd
 STORE mfRa TO mpEd
 DO prO_0000a WITH msLd
 STORE mfRa TO msLd
 DO prO_0000a WITH mvIn
 STORE ALLTRIM(mfRa) TO mvIn
 DO prO_0000a WITH mcIm
 STORE mfRa TO mcIm
 DO prO_0000a WITH meMp
 STORE mfRa TO meMp
 DO prO_0000a WITH mtRa
 STORE mfRa TO mtRa
 DO prO_0000a WITH maLm
 STORE mfRa TO maLm
 DO prO_0000a WITH mfEl
 STORE mfRa TO mfEl
 IF mpAl<>"S" .AND. mpAl<>"N"
      DO prO_0000a WITH mpAl
      STORE mfRa TO mpAl
 ENDIF
 IF miNg<>"S" .AND. miNg<>"N"
      DO prO_0000a WITH miNg
      STORE mfRa TO miNg
 ENDIF
 IF mlL0<>"S" .AND. mlL0<>"N" .AND. mlL0<>"M"
      DO prO_0000a WITH mlL0
      STORE mfRa TO mlL0
 ENDIF
 IF ml10<>"S" .AND. ml10<>"N" .AND. ml10<>"M"
      DO prO_0000a WITH ml10
      STORE mfRa TO ml10
 ENDIF
 IF ml20<>"S" .AND. ml20<>"N" .AND. ml20<>"M"
      DO prO_0000a WITH ml20
      STORE mfRa TO ml20
 ENDIF
 IF ml0b<>"S" .AND. ml0b<>"N" .AND. ml0b<>"M"
      DO prO_0000a WITH ml0b
      STORE mfRa TO ml0b
 ENDIF
 IF ml1b<>"S" .AND. ml1b<>"N" .AND. ml1b<>"M"
      DO prO_0000a WITH ml1b
      STORE mfRa TO ml1b
 ENDIF
 IF ml2b<>"S" .AND. ml2b<>"N" .AND. ml2b<>"M"
      DO prO_0000a WITH ml2b
      STORE mfRa TO ml2b
 ENDIF
 IF ml0n<>"S" .AND. ml0n<>"N" .AND. ml0n<>"M"
      DO prO_0000a WITH ml0n
      STORE mfRa TO ml0n
 ENDIF
 IF ml0c<>"S" .AND. ml0c<>"N" .AND. ml0c<>"M"
      DO prO_0000a WITH ml0c
      STORE mfRa TO ml0c
 ENDIF
 IF mlLz<>"S" .AND. mlLz<>"N"
      DO prO_0000a WITH mlLz
      STORE mfRa TO mlLz
 ENDIF
 IF mlLx<>"S" .AND. mlLx<>"N"
      DO prO_0000a WITH mlLx
      STORE mfRa TO mlLx
 ENDIF
 IF mlLy<>"S" .AND. mlLy<>"N"
      DO prO_0000a WITH mlLy
      STORE mfRa TO mlLy
 ENDIF
 IF mlLb<>"S" .AND. mlLb<>"N"
      DO prO_0000a WITH mlLb
      STORE mfRa TO mlLb
 ENDIF
 IF mlLd<>"S" .AND. mlLd<>"N"
      DO prO_0000a WITH mlLd
      STORE mfRa TO mlLd
 ENDIF
 IF mlLe<>"S" .AND. mlLe<>"N"
      DO prO_0000a WITH mlLe
      STORE mfRa TO mlLe
 ENDIF
 IF mlLn<>"S" .AND. mlLn<>"N"
      DO prO_0000a WITH mlLn
      STORE mfRa TO mlLn
 ENDIF
 IF mlLc<>"S" .AND. mlLc<>"N"
      DO prO_0000a WITH mlLc
      STORE mfRa TO mlLc
 ENDIF
 IF mcOm<>"S" .AND. mcOm<>"N"
      DO prO_0000a WITH mcOm
      STORE mfRa TO mcOm
 ENDIF
 IF mcIa="CA"
      STORE 2 TO mcSt
 ENDIF
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Pro_0000a
 PARAMETER pfRa
 PRIVATE ptAm, pnUm, plEt
 STORE LEN(pfRa) TO ptAm
 STORE 1 TO pnUm
 IF ptAm>0
      DO WHILE .T.
           IF pnUm>ptAm
                EXIT
           ENDIF
           STORE SUBSTR(pfRa, pnUm, 1) TO plEt
           DO enC_0000a WITH plEt
           STORE SUBSTR(pfRa, 1, pnUm-1)+plEt+SUBSTR(pfRa, pnUm+1, (ptAm- ;
                 pnUm+1)) TO pfRa
           STORE pnUm+1 TO pnUm
      ENDDO
 ENDIF
 STORE pfRa TO mfRa
 RELEASE ptAm, pnUm, plEt
ENDPROC
*
PROCEDURE Enc_0000a
 PARAMETER plEt
 PRIVATE ppOs, piNi, pfIn, pnUm
 IF ASC(plEt)>=33 .AND. ASC(plEt)<=126
      STORE 33 TO piNi
      STORE 126 TO pfIn
      STORE ASC(plEt) TO ppOs
      STORE ppOs-piNi TO pnUm
      STORE pfIn-pnUm TO pnUm
      STORE CHR(pnUm) TO plEt
 ENDIF
 RELEASE ppOs, piNi, pfIn, pnUm
ENDPROC
*
PROCEDURE Par_FiCo
 DO CASE
      CASE mcIa="AL"
           STORE 1 TO mhLp
      OTHERWISE
           STORE 0 TO mhLp
 ENDCASE
 DO CASE
      CASE mfEl="1" .AND. mpAn=1
           STORE "BMP\MNU_PFE1.JPG" TO mpTa
      CASE mfEl="2" .AND. mvIt<>2 .AND. mpAn=1
           STORE "BMP\MNU_PF2S.JPG" TO mpTa
      CASE mfEl="2" .AND. mpAn=1
           STORE "BMP\MNU_PF2V.JPG" TO mpTa
      CASE mfEl="3" .AND. mpAn=1
           STORE "BMP\MNU_PFE3.JPG" TO mpTa
      CASE mpAn=2
           STORE "BMP\MNU_PS02.JPG" TO mpTa
      CASE mpAn=3
           STORE "BMP\MNU_PS03.JPG" TO mpTa
      CASE mpAn=4
           STORE "BMP\MNU_PS04.JPG" TO mpTa
      CASE mpAn=5
           STORE "BMP\MNU_PS05.JPG" TO mpTa
      CASE mpAn=6
           STORE "BMP\MNU_PS06.JPG" TO mpTa
      CASE mpAn=7
           STORE "BMP\MNU_PS07.JPG" TO mpTa
      CASE mpAn=8
           STORE "BMP\MNU_PS08.JPG" TO mpTa
      CASE mpAn=9
           STORE "BMP\MNU_PS09.JPG" TO mpTa
      CASE mpAn=10
           STORE "BMP\MNU_PS10.JPG" TO mpTa
      CASE mpAn=11
           STORE "BMP\MNU_PS11.JPG" TO mpTa
      CASE mpAn=12
           STORE "BMP\MNU_PS12.JPG" TO mpTa
      CASE mpAn=13
           STORE "BMP\MNU_PS13.JPG" TO mpTa
 ENDCASE
 STORE ROUND(SYSMETRIC(22)*0.0714284, 3) TO mwFi
 STORE ROUND(SYSMETRIC(1)*0.2, 3) TO mwCo
 DO paNtalla_1
 DO paNtalla_2
 DO CASE
      CASE mrEs="3"
           STORE 11 TO mtAm
      OTHERWISE
           STORE 12 TO mtAm
 ENDCASE
 STORE mwCo-95 TO mmC1
 STORE (mwFi-22)/2 TO mxX1
 STORE (mwCo-50)/2 TO myY1
 DO coL_in1
ENDPROC
*
PROCEDURE Pantalla_1
 STORE 640 TO maNc
 STORE 480 TO mlAr
 DO CASE
      CASE mwFi<=30
           STORE 480 TO mlAr
      CASE mwFi<=38.857
           STORE 600 TO mlAr
      CASE mwFi<=47.143
           STORE 720 TO mlAr
      CASE mwFi<=51.143
           STORE 768 TO mlAr
      CASE mwFi<=51.50
           STORE 768 TO mlAr
      CASE mwFi<=60.571
           STORE 900 TO mlAr
      CASE mwFi<=71.286
           STORE 1050 TO mlAr
      CASE mwFi<=73.428
           STORE 1080 TO mlAr
      OTHERWISE
           STORE 1080 TO mlAr
 ENDCASE
 DO CASE
      CASE mwCo<=128
           STORE 640 TO maNc
      CASE mwCo<=160
           STORE 800 TO maNc
      CASE mwCo<=200.0
           STORE 1024 TO maNc
      CASE mwCo<=204.8
           STORE 1024 TO maNc
      CASE mwCo<=256
           STORE 1280 TO maNc
      CASE mwCo<=272.0
           STORE 1360 TO maNc
      CASE mwCo<=273.2
           STORE 1366 TO maNc
      CASE mwCo<=280.0
           STORE 1400 TO maNc
      CASE mwCo<=288.0
           STORE 1440 TO maNc
      CASE mwCo<=320.0
           STORE 1600 TO maNc
      CASE mwCo<=336.0
           STORE 1680 TO maNc
      CASE mwCo<=384.0
           STORE 1920 TO maNc
      OTHERWISE
           STORE 1920 TO maNc
 ENDCASE
ENDPROC
*
PROCEDURE Pantalla_2
 DO CASE
      CASE maNc=640 .AND. mlAr=480
           STORE "1" TO mrEs
      CASE maNc=640 .AND. mlAr=600
           STORE "1" TO mrEs
      CASE maNc=800 .AND. mlAr=600
           STORE "2" TO mrEs
      CASE maNc=800 .AND. mlAr=720
           STORE "2" TO mrEs
      CASE maNc=1024 .AND. mlAr=768
           STORE "3" TO mrEs
      CASE maNc=1280 .AND. mlAr=600
           STORE "4" TO mrEs
      CASE maNc=1280 .AND. mlAr=720
           STORE "4" TO mrEs
      CASE maNc=1280 .AND. mlAr=768
           STORE "4" TO mrEs
      CASE maNc=1280 .AND. mlAr=800
           STORE "4" TO mrEs
      CASE maNc=1360 .AND. mlAr=768
           STORE "5" TO mrEs
      CASE maNc=1366 .AND. mlAr=768
           STORE "5" TO mrEs
      CASE maNc=1400 .AND. mlAr=1050
           STORE "6" TO mrEs
      CASE maNc=1400 .AND. mlAr=900
           STORE "7" TO mrEs
      CASE maNc=1600 .AND. mlAr=900
           STORE "8" TO mrEs
      CASE maNc=1680 .AND. mlAr=1050
           STORE "9" TO mrEs
      CASE maNc=1920 .AND. mlAr=1080
           STORE "A" TO mrEs
      OTHERWISE
           STORE "1" TO mrEs
 ENDCASE
ENDPROC
*
PROCEDURE Pantalla_3
 DO CASE
      CASE maNc=640 .AND. mlAr=480
           STORE "1" TO mrS1
      CASE maNc=640 .AND. mlAr=600
           STORE "1" TO mrS1
      CASE maNc=800 .AND. mlAr=600
           STORE "2" TO mrS1
      CASE maNc=800 .AND. mlAr=720
           STORE "2" TO mrS1
      CASE maNc=1024 .AND. mlAr=768
           STORE "3" TO mrS1
      CASE maNc=1280 .AND. mlAr=600
           STORE "4" TO mrS1
      CASE maNc=1280 .AND. mlAr=720
           STORE "4" TO mrS1
      CASE maNc=1280 .AND. mlAr=768
           STORE "4" TO mrS1
      CASE maNc=1280 .AND. mlAr=800
           STORE "4" TO mrS1
      CASE maNc=1360 .AND. mlAr=768
           STORE "5" TO mrS1
      CASE maNc=1366 .AND. mlAr=768
           STORE "5" TO mrS1
      CASE maNc=1400 .AND. mlAr=1050
           STORE "6" TO mrS1
      CASE maNc=1400 .AND. mlAr=900
           STORE "7" TO mrS1
      CASE maNc=1600 .AND. mlAr=900
           STORE "8" TO mrS1
      CASE maNc=1680 .AND. mlAr=1050
           STORE "9" TO mrS1
      CASE maNc=1920 .AND. mlAr=1080
           STORE "A" TO mrS1
      OTHERWISE
           STORE "1" TO mrS1
 ENDCASE
ENDPROC
*
PROCEDURE Retorno
 CLOSE ALL
 RELEASE ALL
 QUIT
ENDPROC
*
PROCEDURE Retorna
 DO CASE
      CASE msAl=0
           DO deL_filet
           QUIT
      CASE msAl=1
           STORE "S" TO moPc
           IF msLd="S"
                DO prE_docum WITH "¿Está seguro de Salir del Sistema?"
           ENDIF
           IF moPc$"Ss"
                DO deL_files
                DO deL_filet
                QUIT
           ENDIF
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clave_In
 PARAMETER ptPo
 STORE 01 TO miTe
 STORE 99 TO mkEy
 IF ptPo<>"3"
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+mcIa+"\IDENTIF.DBB" TO mdBf
      ELSE
           STORE muNi+":"+mpTh+mcIa+"\IDENTIF.DBB" TO mdBf
      ENDIF
      STORE 01 TO meRr
      Use &mDBF Shared NoUpdate
      IF mkEy=k_Esc
           DO reTorno
      ENDIF
      SET ORDER TO FIDECLA
      IF mkEy=k_Esc
           DO reTorno
      ENDIF
      STORE 00 TO meRr
      GOTO TOP
      STORE LEN(fiDecla) TO muLt
 ELSE
      STORE 4 TO muLt
 ENDIF
 ON KEY LABEL LEFTMOUSE DO P_MOUSE
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL ENTER DO P_ENTER
 ON KEY LABEL HOME DO P_HOME
 ON KEY LABEL END DO P_END
 ON KEY LABEL LEFTARROW DO P_LEFT
 ON KEY LABEL RIGHTARROW DO P_RIGHT
 DO prEsiona WITH "4", "MNU_SAL0", mxX1+12, myY1+33
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 DO WHILE .T.
      DO CASE
           CASE muLt=4
                @mXX1+4.8,mYY1+23.9+(mITE*3)   Say "_" Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
           CASE muLt=6
                @mXX1+4.8,mYY1+23.9+(mITE*2.2) Say "_" Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
      ENDCASE
      mkEy = INKEY(0, "HM")
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           IF mfIl>=mxX1+12.035 .AND. mfIl<=mxX1+13.607 .AND. mcCc>=myY1+ ;
              33 .AND. mcCc<=myY1+44.8
                DO prEsiona WITH "4", "MNU_SAL1", mxX1+12, myY1+33
                STORE SPACE(muLt) TO mpCl
                STORE k_Esc TO mkEy
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                EXIT
           CASE mkEy=k_Enter .OR. (mkEy>=60 .AND. mkEy<=90) .OR. (mkEy>= ;
                48 .AND. mkEy<=57) .OR. (mkEy>=97 .AND. mkEy<=122) .OR. mkEy=32
                IF mkEy<>k_Enter
                     STORE SUBSTR(mpCl, 1, miTe-1)+UPPER(CHR(mkEy))+ ;
                           SUBSTR(mpCl, miTe+1) TO mpCl
                     DO CASE
                          CASE muLt=4 .AND. SUBSTR(mpCl, miTe, 1)<>" "
                               @mXX1+4.8,mYY1+23.9+(mITE*3) Say "*"   Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                          CASE muLt=4
                               @mXX1+4.8,mYY1+23.9+(mITE*3) Say " "   Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                          CASE muLt=6 .AND. SUBSTR(mpCl, miTe, 1)<>" "
                               @mXX1+4.8,mYY1+23.9+(mITE*2.2) Say "*" Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                          CASE muLt=6
                               @mXX1+4.8,mYY1+23.9+(mITE*2.2) Say " " Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                     ENDCASE
                     IF miTe<muLt
                          STORE miTe+1 TO miTe
                     ELSE
                          STORE k_Enter TO mkEy
                     ENDIF
                ENDIF
                IF mkEy=k_Enter
                     IF ptPo<>"3"
                          SEEK mpCl
                     ENDIF
                     DO CASE
                          CASE ALLTRIM(mpCl)=mcLave
                               SET STATUS BAR ON
                               STORE 1 TO mdUe
                               EXIT
                          CASE ptPo="3"
                               STORE "Clave no registrada..." TO mmSj
                          CASE EOF() .OR. (fiDeprt=2 .AND. ptPo="2")
                               IF EOF()
                                    STORE "Clave no registrada..." TO mmSj
                               ELSE
                                    STORE  ;
                                     "Clave no es de Administrador..." TO mmSj
                               ENDIF
                          OTHERWISE
                               SET STATUS BAR OFF
                               STORE 0 TO mdUe
                               EXIT
                     ENDCASE
                     IF LEN(ALLTRIM(mmSj))<>0
                          DO poNmsj
                          STORE SPACE(muLt) TO mpCl
                          STORE SPACE(100) TO mmSj
                          STORE 01 TO miTe
                          DO WHILE .T.
                               DO CASE
                                    CASE muLt=4
                                         @mXX1+4.8,mYY1+23.9+(mITE*3)   Say " " Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                                    CASE muLt=6
                                         @mXX1+4.8,mYY1+23.9+(mITE*2.2) Say " " Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                               ENDCASE
                               STORE miTe+1 TO miTe
                               IF miTe>muLt
                                    EXIT
                               ENDIF
                          ENDDO
                          STORE 1 TO miTe
                     ENDIF
                ENDIF
           CASE (mkEy=k_Home .AND. miTe<>01) .OR. (mkEy=k_End .AND. miTe<> ;
                muLt) .OR. mkEy=k_Left .OR. mkEy=k_Right
                DO CASE
                     CASE muLt=4 .AND. SUBSTR(mpCl, miTe, 1)<>" "
                          @mXX1+4.8,mYY1+23.9+(mITE*3)   Say "*" Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                     CASE muLt=4
                          @mXX1+4.8,mYY1+23.9+(mITE*3)   Say " " Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                     CASE muLt=6 .AND. SUBSTR(mpCl, miTe, 1)<>" "
                          @mXX1+4.8,mYY1+23.9+(mITE*2.2) Say "*" Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                     CASE muLt=6
                          @mXX1+4.8,mYY1+23.9+(mITE*2.2) Say " " Font "&mLetAri",11 Style "NQ" Size 1,1.6 Color &mColBlN
                ENDCASE
                DO CASE
                     CASE mkEy=k_Home
                          STORE 01 TO miTe
                     CASE mkEy=k_End
                          STORE muLt TO miTe
                     CASE mkEy=k_Left
                          IF miTe=01
                               STORE muLt TO miTe
                          ELSE
                               STORE miTe-1 TO miTe
                          ENDIF
                     CASE mkEy=k_Right
                          IF miTe=muLt
                               STORE 01 TO miTe
                          ELSE
                               STORE miTe+1 TO miTe
                          ENDIF
                ENDCASE
      ENDCASE
 ENDDO
 ON KEY LABEL LEFTMOUSE
 ON KEY LABEL ESC
 ON KEY LABEL ENTER
 ON KEY LABEL HOME
 ON KEY LABEL END
 ON KEY LABEL LEFTARROW
 ON KEY LABEL RIGHTARROW
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P_MOUSE
 CLEAR GETS
 CLEAR READ
 STORE k_Clic TO mkEy
ENDPROC
*
PROCEDURE P_F1
 STORE k_F1 TO mkEy
 CLEAR READ
 CLEAR GETS
ENDPROC
*
PROCEDURE P_F2
 CLEAR GETS
 CLEAR READ
 STORE k_F2 TO mkEy
ENDPROC
*
PROCEDURE P_F3
 CLEAR GETS
 CLEAR READ
 STORE k_F3 TO mkEy
ENDPROC
*
PROCEDURE P_F4
 CLEAR GETS
 CLEAR READ
 STORE k_F4 TO mkEy
ENDPROC
*
PROCEDURE P_F5
 CLEAR GETS
 CLEAR READ
 STORE k_F5 TO mkEy
ENDPROC
*
PROCEDURE P_F6
 STORE k_F6 TO mkEy
 CLEAR READ
 CLEAR GETS
ENDPROC
*
PROCEDURE P_F7
 STORE k_F7 TO mkEy
 CLEAR READ
 CLEAR GETS
ENDPROC
*
PROCEDURE P_F8
 STORE k_F8 TO mkEy
 CLEAR READ
 CLEAR GETS
ENDPROC
*
PROCEDURE P_F9
 STORE k_F9 TO mkEy
 CLEAR READ
 CLEAR GETS
ENDPROC
*
PROCEDURE P_F10
 CLEAR GETS
 CLEAR READ
 STORE k_F10 TO mkEy
ENDPROC
*
PROCEDURE P_F12
 CLEAR GETS
 CLEAR READ
 STORE k_F12 TO mkEy
ENDPROC
*
PROCEDURE P_ESC
 CLEAR GETS
 CLEAR READ
 STORE k_Esc TO mkEy
ENDPROC
*
PROCEDURE P_TAB
 CLEAR GETS
 CLEAR READ
 STORE k_Tab TO mkEy
ENDPROC
*
PROCEDURE P_ENTER
 CLEAR GETS
 CLEAR READ
 STORE k_Enter TO mkEy
ENDPROC
*
PROCEDURE P_DOWN
 CLEAR GETS
 CLEAR READ
 STORE k_Down TO mkEy
ENDPROC
*
PROCEDURE P_UP
 CLEAR GETS
 CLEAR READ
 STORE k_Up TO mkEy
ENDPROC
*
PROCEDURE P_PGDN
 CLEAR GETS
 CLEAR READ
 STORE k_Pgdn TO mkEy
ENDPROC
*
PROCEDURE P_PGUP
 CLEAR GETS
 CLEAR READ
 STORE k_Pgup TO mkEy
ENDPROC
*
PROCEDURE P_C_HOME
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_home TO mkEy
ENDPROC
*
PROCEDURE P_C_END
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_end TO mkEy
ENDPROC
*
PROCEDURE P_C_RIGHT
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_right TO mkEy
ENDPROC
*
PROCEDURE P_C_LEFT
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_left TO mkEy
ENDPROC
*
PROCEDURE P_C_DEL
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_del TO mkEy
ENDPROC
*
PROCEDURE P_C_P
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_p TO mkEy
ENDPROC
*
PROCEDURE P_C_O
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_o TO mkEy
ENDPROC
*
PROCEDURE P_A_DEL
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_del TO mkEy
ENDPROC
*
PROCEDURE P_A_A
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_a TO mkEy
ENDPROC
*
PROCEDURE P_A_C
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_c TO mkEy
ENDPROC
*
PROCEDURE P_A_S
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_s TO mkEy
ENDPROC
*
PROCEDURE P_A_Z
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_z TO mkEy
ENDPROC
*
PROCEDURE P_C_INS
 CLEAR GETS
 CLEAR READ
 STORE k_Ctrl_ins TO mkEy
ENDPROC
*
PROCEDURE P_HOME
 CLEAR GETS
 CLEAR READ
 STORE k_Home TO mkEy
ENDPROC
*
PROCEDURE P_END
 CLEAR GETS
 CLEAR READ
 STORE k_End TO mkEy
ENDPROC
*
PROCEDURE P_RIGHT
 CLEAR GETS
 CLEAR READ
 STORE k_Right TO mkEy
ENDPROC
*
PROCEDURE P_LEFT
 CLEAR GETS
 CLEAR READ
 STORE k_Left TO mkEy
ENDPROC
*
PROCEDURE ColRoN
 Set Color to &mColRoN
ENDPROC
*
PROCEDURE ColAzN
 Set Color to &mColAzN
ENDPROC
*
PROCEDURE ColBlN
 Set Color to &mColBlN
ENDPROC
*
PROCEDURE ColBlP
 Set Color to &mColBlP
ENDPROC
*
PROCEDURE ColBlR
 Set Color to &mColBlR
ENDPROC
*
PROCEDURE ColBlZ
 Set Color to &mColBlZ
ENDPROC
*
PROCEDURE ColBlZC
 Set Color to &mColBlZC
ENDPROC
*
PROCEDURE ColBlV
 Set Color to &mColBlV
ENDPROC
*
PROCEDURE ColBlVO
 Set Color to &mColBlVO
ENDPROC
*
PROCEDURE ColBlF
 Set Color to &mColBlF
ENDPROC
*
PROCEDURE ColNeB
 Set Color to &mColNeB
ENDPROC
*
PROCEDURE ColPlP
 Set Color to &mColPlP
ENDPROC
*
PROCEDURE ColPlN
 Set Color to &mColPlN
ENDPROC
*
PROCEDURE ColSc1
 SET COLOR TO RGB(0,0,0,192,192,192),, RGB(255,255,217,0,0,0)
ENDPROC
*
PROCEDURE ColScR
 SET COLOR TO RGB(155,0,0,192,192,192),, RGB(255,255,217,0,0,0)
ENDPROC
*
PROCEDURE ColScF
 SET COLOR TO RGB(128,0,128,192,192,192),, RGB(255,255,217,0,0,0)
ENDPROC
*
PROCEDURE ColScP
 Set Color to &mColScP
ENDPROC
*
PROCEDURE ColScZ
 SET COLOR TO RGB(0,0,128,192,192,192),, RGB(255,255,217,0,0,0)
ENDPROC
*
PROCEDURE ColSc3
 SET COLOR TO RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170), RGB(0,0,0,154,162,170),
ENDPROC
*
PROCEDURE ColSc4
 SET COLOR TO RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122), RGB(0,0,0,141,136,122),
ENDPROC
*
PROCEDURE ColSc5
 SET COLOR TO RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122), RGB(255,255,255,141,136,122),
ENDPROC
*
PROCEDURE ColSc6
 SET COLOR TO RGB(0,0,0,164,162,170), RGB(0,0,0,164,162,170), RGB(0,0,0,164,162,170),
ENDPROC
*
PROCEDURE ColSc7
 SET COLOR TO RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170),
ENDPROC
*
PROCEDURE ColSc7R
 SET COLOR TO RGB(155,0,0,164,172,170), RGB(155,0,0,164,172,170), RGB(155,0,0,164,172,170),
ENDPROC
*
PROCEDURE ColScV
 SET COLOR TO RGB(0,128,0,192,192,192),, RGB(255,255,217,0,0,0)
ENDPROC
*
PROCEDURE Col_Fondo
 SET COLOR TO RGB(0,0,0,220,213,199)
ENDPROC
*
PROCEDURE Col_FonPl
 SET COLOR TO RGB(120,120,120,220,213,199)
ENDPROC
*
PROCEDURE Col_FonRo
 SET COLOR TO RGB(155,0,0,220,213,199), RGB(155,0,0,220,213,199)
ENDPROC
*
PROCEDURE Col_FonVe
 SET COLOR TO RGB(0,128,0,220,213,199)
ENDPROC
*
PROCEDURE Col_FonAz
 SET COLOR TO RGB(0,0,128,220,213,199)
ENDPROC
*
PROCEDURE Col_Boton
 SET COLOR TO RGB(0,0,0,224,226,209)
ENDPROC
*
PROCEDURE Col_Beige
 SET COLOR TO RGB(0,0,0,255,217,179)
ENDPROC
*
PROCEDURE Col_BeiRo
 SET COLOR TO RGB(155,0,0,255,217,179)
ENDPROC
*
PROCEDURE Col_BeiAz
 SET COLOR TO RGB(0,0,128,255,217,179)
ENDPROC
*
PROCEDURE Col_BeiVe
 SET COLOR TO RGB(0,128,0,255,217,179)
ENDPROC
*
PROCEDURE Col_NarBe
 SET COLOR TO RGB(0,0,0,255,184,149)
ENDPROC
*
PROCEDURE Col_BeiFu
 SET COLOR TO RGB(128,0,128,255,217,179)
ENDPROC
*
PROCEDURE Col_BeiPl
 SET COLOR TO RGB(128,128,128,255,217,179)
ENDPROC
*
PROCEDURE Tab_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtAb
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb1_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB1
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb2_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB2
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb3_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB3
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb4_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB4
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb5_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB5
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb6_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB6
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb7_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB7
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb8_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB8
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb9_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB9
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Tb0_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtB0
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbA_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBa
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbB_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBb
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbC_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBc
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbD_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBd
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbE_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBe
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbF_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBf
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbG_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBg
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbH_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBh
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE TbI_0000a
 IF LASTKEY()=k_Enter
      STORE k_Enter TO mkEy
      DEACTIVATE POPUP vtBi
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Res_0000a
 DO CASE
      CASE mrEs<>"3" .AND. maNc<>1024
           DO paR_fico
      CASE mrEs<>"4" .AND. maNc<>1280
           DO paR_fico
      CASE mrEs<>"5" .AND. maNc<>1360
           DO paR_fico
      CASE mrEs<>"5" .AND. maNc<>1366
           DO paR_fico
      CASE mrEs<>"6" .AND. mrEs<>"9" .AND. maNc<>1050
           DO paR_fico
      CASE mrEs<>"7" .AND. mrEs<>"8" .AND. maNc<>900
           DO paR_fico
      CASE mrEs<>"0" .AND. maNc<>1080
           DO paR_fico
 ENDCASE
 IF mkEy=k_Alt_d
      DO p_A_d
 ENDIF
ENDPROC
*
PROCEDURE Res_0001a
 STORE mrEs TO mrS1
 DO paNtalla_1
 DO paNtalla_3
ENDPROC
*
PROCEDURE P_A_D
 PRIVATE pmSj, puSu, ppAn, pfI0, pcO0, piTe, ppA1
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_d TO mkEy
 STORE (mwFi-030)/2 TO pfI0
 STORE (mwCo-100)/2 TO pcO0
 STORE SPACE(80) TO pmSj
 STORE SPACE(10) TO puSu
 STORE 1 TO piTe
 SAVE SCREEN TO ppAn
 Define Window pPA1 at pFI0,pCO0 to pFI0+24,pCO0+100 in Screen Title "MENSAJES" System MDI Close Float Grow NoMinimize NoZoom Style "NT" Font "&mLetAri",8  Color Scheme 9 Icon File "ICON02.ICO"
 ACTIVATE WINDOW ppA1
 DO coLbln
 @0.5,20 Say "Mensajes en Windows 2000" Font "&mLetRom",14 Style "BT"
 @4.0,01 Say "Nombre de PC:"            Font "&mLetRom",11 Style "BT"
 @6.0,01 Say "Mensaje:"                 Font "&mLetRom",11 Style "BT"
 @4.0,24 Edit pUSU                      Font "&mLetRom",12 Style "BQ" Size 1,15,10
 @6.0,24 Edit pMSJ                      Font "&mLetRom",12 Style "BQ" Size 1,52,80
 READ TIMEOUT 0.01
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL ENTER DO P_ENTER
 DO WHILE .T.
      STORE k_Enter TO mkEy
      DO CASE
           CASE piTe=1
                @4,24 Edit pUSU Font "&mLetRom",12 Style "BQ" Size 1,18,15
           CASE piTe=2
                @6,24 Edit pMSJ Font "&mLetRom",12 Style "BQ" Size 1,52,80
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Esc .AND. piTe=2
                STORE 01 TO piTe
                STORE 99 TO mkEy
           CASE mkEy=k_Enter
                DO CASE
                     CASE piTe=1
                          STORE piTe+1 TO piTe
                          STORE 99 TO mkEy
                     CASE piTe=2
                          STORE UPPER(ALLTRIM(puSu)) TO puSu
                          STORE ALLTRIM(pmSj) TO pmSj
                          STORE 99 TO mkEy
                          Run Net Send &pUSU &pMSJ
                          EXIT
                ENDCASE
      ENDCASE
 ENDDO
 = INKEY(0.01)
 DEACTIVATE WINDOW ppA1
 RESTORE SCREEN FROM ppAn
ENDPROC
*
PROCEDURE RutinaHlp
 PRIVATE pwCo
 @wRow("mPAN_HLP")-1,27 Say "ESC: Salir de la Ayuda" Font "&mLetAri",9 Style "BT" Color &mColBlR
 STORE WCOLS("mPAN_HLP") TO pwCo
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      IF mkEy=k_Clic
           DO clP_hlp
           DO CASE
                CASE mfIl=-1 .AND. mcCc<>-1 .AND. mcCc>=pwCo-3.8 .AND.  ;
                     mcCc<=pwCo-0.4
                     STORE k_Esc TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
           = INKEY(0.01)
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                EXIT
           CASE mkEy=k_F10
                DO reTorna
      ENDCASE
 ENDDO
 = INKEY(0.01)
 STORE 99 TO mkEy
 RELEASE pwCo
ENDPROC
*
PROCEDURE PresionT
 PARAMETER poPc, pbMp, pfIl, pcOl, pnOm
 DO CASE
      CASE poPc="1"
           STORE "BMP\B_"+pbMp+".JPG" TO pnOm
      CASE poPc="2"
           STORE "BMP\I_"+pbMp+".JPG" TO pnOm
      CASE poPc="3"
           STORE "BMP\N_"+pbMp+".JPG" TO pnOm
      CASE poPc="4"
           STORE "BMP\"+pbMp+".JPG" TO pnOm
 ENDCASE
 If !File("&pNOM")
      DO CASE
           CASE poPc="1"
                STORE "BMP\B_"+pbMp+".BMP" TO pnOm
           CASE poPc="2"
                STORE "BMP\I_"+pbMp+".BMP" TO pnOm
           CASE poPc="3"
                STORE "BMP\N_"+pbMp+".BMP" TO pnOm
           CASE poPc="4"
                STORE "BMP\"+pbMp+".BMP" TO pnOm
      ENDCASE
 ENDIF
 STORE pnOm TO pbMp
 @pFIL,pCOL Say "&pBMP" BitMap Style "T"
ENDPROC
*
PROCEDURE Presiona
 PARAMETER poPc, pbMp, pfIl, pcOl, pnOm
 DO CASE
      CASE poPc="1"
           STORE "BMP\B_"+pbMp+".JPG" TO pnOm
      CASE poPc="2"
           STORE "BMP\I_"+pbMp+".JPG" TO pnOm
      CASE poPc="3"
           STORE "BMP\N_"+pbMp+".JPG" TO pnOm
      CASE poPc="4"
           STORE "BMP\"+pbMp+".JPG" TO pnOm
 ENDCASE
 If !File("&pNOM")
      DO CASE
           CASE poPc="1"
                STORE "BMP\B_"+pbMp+".BMP" TO pnOm
           CASE poPc="2"
                STORE "BMP\I_"+pbMp+".BMP" TO pnOm
           CASE poPc="3"
                STORE "BMP\N_"+pbMp+".BMP" TO pnOm
           CASE poPc="4"
                STORE "BMP\"+pbMp+".BMP" TO pnOm
      ENDCASE
 ENDIF
 STORE pnOm TO pbMp
 @pFIL,pCOL Say "&pBMP" BitMap Style "Q"
ENDPROC
*
PROCEDURE Sube
 PARAMETER plI1, pcO1, plI2, pcO2, plIm
 SCROLL plI1, pcO1, plI2, pcO2-1, plIm
 RELEASE plI1, pcO1, plI2, pcO2, plIm
ENDPROC
*
PROCEDURE Baja
 PARAMETER plI1, pcO1, plI2, pcO2, plIm
 SCROLL plI1, pcO1, plI2, pcO2-1, (plIm*-1)
 RELEASE plI1, pcO1, plI2, pcO2, plIm
ENDPROC
*
PROCEDURE Pre_Docum
 PARAMETER pfRa
 PRIVATE pbOt, poPc
 STORE "N" TO moPc
 pbOt = 0036
 poPc = MESSAGEBOX(ALLTRIM(pfRa), pbOt, " ")
 DO CASE
      CASE poPc=6
           STORE "S" TO moPc
      CASE poPc=7
           STORE "N" TO moPc
 ENDCASE
ENDPROC
*
PROCEDURE Grabar
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1"
           WAIT WINDOW NOCLEAR NOWAIT "G R A B A N D O..."
      CASE ptIp="2"
           WAIT WINDOW NOCLEAR NOWAIT "B O R R A N D O..."
      CASE ptIp="3"
           WAIT WINDOW NOCLEAR NOWAIT "I M P R I M I E N D O..."
      CASE ptIp="4"
           WAIT WINDOW NOCLEAR NOWAIT "A N U L A N D O..."
      CASE ptIp="5"
           WAIT WINDOW NOCLEAR NOWAIT "P R O C E S A N D O..."
      CASE ptIp="6"
           WAIT WINDOW NOCLEAR NOWAIT "A C T I V A N D O..."
 ENDCASE
ENDPROC
*
PROCEDURE Nuevo_Rg
 APPEND BLANK
ENDPROC
*
PROCEDURE Reg_Lock
 PARAMETER pvAr
 PRIVATE poPc, ptIt, ptXt, ptX1, ptX2, poP1, ptPo
 STORE 99 TO mkEy
 STORE 00 TO poP1
 ptIt = "Registro en Uso..."
 ptX1 = "Cada Reintento durará 10 segundos hasta"
 ptX2 = "que se desbloquee el o los Registros..."+CHR(13)
 ptX2 = ptX2+pvAr+CHR(13)
 ptXt = ptX1+CHR(13)+ptX2+CHR(13)+"¿Desea seguir reintentando la Grabación?"
 piCo = 0037
 DO WHILE .T.
      poPc = MESSAGEBOX(ptXt, piCo, ptIt)
      IF poPc=02
           STORE k_Esc TO mkEy
           EXIT
      ENDIF
      DO WHILE .T.
           ptPo = RLOCK()
           IF  .NOT. ptPo
                mkEy = INKEY(0.01)
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                LOOP
           ENDIF
           STORE 01 TO poP1
           EXIT
      ENDDO
      IF poP1=01 .OR. mkEy=k_Esc
           EXIT
      ENDIF
 ENDDO
 RELEASE poPc, ptIt, ptXt, ptX1, ptX2, poP1
ENDPROC
*
PROCEDURE Ver_Lock
 IF mwEr="H"
      RETURN
 ENDIF
 IF RLOCK()
      UNLOCK
 ENDIF
ENDPROC
*
PROCEDURE Cuadro
 PARAMETER piFi, piCo, puFi, puCo
 PRIVATE piFf, piCc, puFf, puCc
 STORE piFi-0.3 TO piFf
 STORE puFi+0.4 TO puFf
 STORE piCo-0.6 TO piCc
 STORE puCo+0.6 TO puCc
 @ piFf, piCc TO puFf, puCc PATTERN 1 PEN 0, 0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ piFf, piCc TO puFf, puCc PEN 2 COLOR RGB(0,0,0,0,0,0)
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ piFf, piCc TO piFf, puCc PEN 2 COLOR RGB(155,155,155,155,155,155)
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ piFf, piCc TO puFf-0.1, piCc PEN 2 COLOR RGB(155,155,155,155,155,155)
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RELEASE piFf, piCc, puFf, puCc
ENDPROC
*
PROCEDURE Carg_Tmps
 PRIVATE pcDx
 STORE "0000" TO mtM1, mtM3
 STORE "0001" TO mtM2
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "NIV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "ITE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 35
 afIl[x, 4] = 0
 DO WHILE .T.
      STORE "M001"+mtM1+meX1 TO mdBf
      STORE "M001"+mtM1+mcDx TO pcDx
      If .not.File("&mDBF") .and. .not.File("&pCDX")
           EXIT
      ENDIF
      IF mtM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
      mtM1 = STRTRAN(STR(VAL(mtM1)+1, 4, 0), " ", "0")
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON niV+STR(itE, 1, 0) TAG meNu0
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "NIV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "ITE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "REC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CO2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "PRG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NV1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NV2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NV3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 170
 afIl[x, 4] = 0
 DO WHILE .T.
      STORE "M001"+mtM2+meX1 TO mdBf
      STORE "M001"+mtM2+mcDx TO pcDx
      If .not.File("&mDBF") .and. .not.File("&pCDX")
           EXIT
      ENDIF
      IF mtM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file3 WITH "1", "S"
           RETURN
      ENDIF
      mtM2 = STRTRAN(STR(VAL(mtM2)+1, 4, 0), " ", "0")
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON niV+STR(itE, 1, 0)+STR(reC, 2, 0) TAG meNu1
 CLOSE INDEXES
 CLOSE DATABASES
 DO WHILE .T.
      STORE "MMNU"+mtM3+mcDx TO pcDx
      If .not.File("&pCDX")
           EXIT
      ENDIF
      IF mtM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file3 WITH "1", "S"
           DO deL_file3 WITH "2", "S"
           RETURN
      ENDIF
      mtM3 = STRTRAN(STR(VAL(mtM3)+1, 4, 0), " ", "0")
 ENDDO
 RELEASE pcDx
ENDPROC
*
PROCEDURE Carg_Mnus
 WAIT WINDOW NOWAIT "CARGANDO..."
 SELECT meNu0
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE niV TO vnIv
      STORE itE TO viTe
      STORE noM TO vnOm
      SELECT meNu0_tmp
      APPEND BLANK
      REPLACE itE WITH viTe
      DO prO_0000a WITH vnIv
      REPLACE niV WITH mfRa
      DO prO_0000a WITH vnOm
      REPLACE noM WITH mfRa
      SELECT meNu0
      SKIP
 ENDDO
 SELECT meNu1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE niV TO vnIv
      STORE itE TO viTe
      STORE reC TO vrEc
      STORE noM TO vnOm
      STORE nv1 TO vnV1
      STORE nv2 TO vnV2
      STORE nv3 TO vnV3
      STORE SUBSTR(prG, 1, 1) TO vcO1
      STORE SUBSTR(prG, 2, 6) TO vpRg
      STORE SUBSTR(prG, 8, 1) TO vcO2
      STORE SPACE(2) TO vcM1
      SELECT mnUprg
      SEEK vcO1+vpRg+vcO2+vnV1+vnV2+STR(vnV3, 2, 0)
      IF  .NOT. EOF()
           STORE ALLTRIM(cm1) TO vcM1
      ENDIF
      SELECT meNu1_tmp
      APPEND BLANK
      REPLACE itE WITH viTe
      REPLACE reC WITH vrEc
      DO prO_0000a WITH vnIv
      REPLACE niV WITH mfRa
      DO prO_0000a WITH vnOm
      REPLACE noM WITH mfRa
      DO prO_0000a WITH vcO1
      REPLACE co1 WITH mfRa
      DO prO_0000a WITH vpRg
      REPLACE prG WITH mfRa
      DO prO_0000a WITH vcO2
      REPLACE co2 WITH mfRa
      DO prO_0000a WITH vnV1
      REPLACE nv1 WITH mfRa
      DO prO_0000a WITH vnV2
      REPLACE nv2 WITH mfRa
      REPLACE nv3 WITH vnV3
      DO prO_0000a WITH vcM1
      REPLACE cm1 WITH mfRa
      SELECT meNu1
      SKIP
 ENDDO
 WAIT CLEAR
 RETURN
ENDPROC
*
PROCEDURE Del_File1
 DO q1_0000a
 DO q2_0000a
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 SET READBORDER OFF
ENDPROC
*
PROCEDURE Del_File2
 PARAMETER poPc, pcDx
 DO CASE
      CASE poPc="1A"
           STORE "TM01A"+ntM1+meXt TO mdBf
      CASE poPc="1"
           STORE "TM01"+ntM1+meXt TO mdBf
      CASE poPc="2"
           STORE "TM01"+ntM2+meXt TO mdBf
      CASE poPc="3"
           STORE "TM01"+ntM3+meXt TO mdBf
      CASE poPc="4"
           STORE "TM01"+ntM4+meXt TO mdBf
      CASE poPc="5"
           STORE "TM01"+ntM5+meXt TO mdBf
      CASE poPc="6"
           STORE "TM01"+ntM6+meXt TO mdBf
      CASE poPc="7"
           STORE "TM01"+ntM7+meXt TO mdBf
      CASE poPc="8"
           STORE "TM01"+ntM8+meXt TO mdBf
      CASE poPc="9"
           STORE "TM01"+ntM9+meXt TO mdBf
      CASE poPc="0"
           STORE "TM01"+ntM0+meXt TO mdBf
      CASE poPc="A"
           STORE "TM01"+ntMa+meXt TO mdBf
      CASE poPc="B"
           STORE "TM01"+ntMb+meXt TO mdBf
      CASE poPc="C"
           STORE "TM01"+ntMc+meXt TO mdBf
      CASE poPc="D"
           STORE "TM01"+ntMd+meXt TO mdBf
      CASE poPc="E"
           STORE "TM01"+ntMe+meXt TO mdBf
      CASE poPc="F"
           STORE "TM01"+ntMf+meXt TO mdBf
      CASE poPc="G"
           STORE "TM01"+ntMg+meXt TO mdBf
      CASE poPc="H"
           STORE "TM01"+ntMh+meXt TO mdBf
      CASE poPc="I"
           STORE "TM01"+ntMi+meXt TO mdBf
      CASE poPc="J"
           STORE "TM01"+ntMj+meXt TO mdBf
      CASE poPc="K"
           STORE "TM01"+ntMk+meXt TO mdBf
      CASE poPc="L"
           STORE "TM01"+ntMl+meXt TO mdBf
      CASE poPc="M"
           STORE "TM01"+ntMm+meXt TO mdBf
      CASE poPc="N"
           STORE "TM01"+ntMn+meXt TO mdBf
      CASE poPc="O"
           STORE "TM01"+ntMo+meXt TO mdBf
      CASE poPc="P"
           STORE "TM01"+ntMp+meXt TO mdBf
      CASE poPc="Q"
           STORE "TM01"+ntMq+meXt TO mdBf
      CASE poPc="R"
           STORE "TM01"+ntMr+meXt TO mdBf
      CASE poPc="S"
           STORE "TM01"+ntMs+meXt TO mdBf
      CASE poPc="T"
           STORE "TM01"+ntMt+meXt TO mdBf
      CASE poPc="U"
           STORE "TM01"+ntMu+meXt TO mdBf
      CASE poPc="V"
           STORE "TM01"+ntMv+meXt TO mdBf
      CASE poPc="W"
           STORE "TM01"+ntMw+meXt TO mdBf
      CASE poPc="X"
           STORE "TM01"+ntMx+meXt TO mdBf
      CASE poPc="Y"
           STORE "TM01"+ntMy+meXt TO mdBf
      CASE poPc="Z"
           STORE "TM01"+ntMz+meXt TO mdBf
 ENDCASE
 Delete File &mDBF
 IF pcDx="N"
      RETURN
 ENDIF
 DO CASE
      CASE poPc="1A"
           STORE "TM01A"+ntM1+mcDx TO mdBf
      CASE poPc="1"
           STORE "TM01"+ntM1+mcDx TO mdBf
      CASE poPc="2"
           STORE "TM01"+ntM2+mcDx TO mdBf
      CASE poPc="3"
           STORE "TM01"+ntM3+mcDx TO mdBf
      CASE poPc="4"
           STORE "TM01"+ntM4+mcDx TO mdBf
      CASE poPc="5"
           STORE "TM01"+ntM5+mcDx TO mdBf
      CASE poPc="6"
           STORE "TM01"+ntM6+mcDx TO mdBf
      CASE poPc="7"
           STORE "TM01"+ntM7+mcDx TO mdBf
      CASE poPc="8"
           STORE "TM01"+ntM8+mcDx TO mdBf
      CASE poPc="9"
           STORE "TM01"+ntM9+mcDx TO mdBf
      CASE poPc="0"
           STORE "TM01"+ntM0+mcDx TO mdBf
      CASE poPc="A"
           STORE "TM01"+ntMa+mcDx TO mdBf
      CASE poPc="B"
           STORE "TM01"+ntMb+mcDx TO mdBf
      CASE poPc="C"
           STORE "TM01"+ntMc+mcDx TO mdBf
      CASE poPc="D"
           STORE "TM01"+ntMd+mcDx TO mdBf
      CASE poPc="E"
           STORE "TM01"+ntMe+mcDx TO mdBf
      CASE poPc="F"
           STORE "TM01"+ntMf+mcDx TO mdBf
      CASE poPc="G"
           STORE "TM01"+ntMg+mcDx TO mdBf
      CASE poPc="H"
           STORE "TM01"+ntMh+mcDx TO mdBf
      CASE poPc="I"
           STORE "TM01"+ntMi+mcDx TO mdBf
      CASE poPc="J"
           STORE "TM01"+ntMj+mcDx TO mdBf
      CASE poPc="K"
           STORE "TM01"+ntMk+mcDx TO mdBf
      CASE poPc="L"
           STORE "TM01"+ntMl+mcDx TO mdBf
      CASE poPc="M"
           STORE "TM01"+ntMm+mcDx TO mdBf
      CASE poPc="N"
           STORE "TM01"+ntMn+mcDx TO mdBf
      CASE poPc="O"
           STORE "TM01"+ntMo+mcDx TO mdBf
      CASE poPc="P"
           STORE "TM01"+ntMp+mcDx TO mdBf
      CASE poPc="Q"
           STORE "TM01"+ntMq+mcDx TO mdBf
      CASE poPc="R"
           STORE "TM01"+ntMr+mcDx TO mdBf
      CASE poPc="S"
           STORE "TM01"+ntMs+mcDx TO mdBf
      CASE poPc="T"
           STORE "TM01"+ntMt+mcDx TO mdBf
      CASE poPc="U"
           STORE "TM01"+ntMu+mcDx TO mdBf
      CASE poPc="V"
           STORE "TM01"+ntMv+mcDx TO mdBf
      CASE poPc="W"
           STORE "TM01"+ntMw+mcDx TO mdBf
      CASE poPc="X"
           STORE "TM01"+ntMx+mcDx TO mdBf
      CASE poPc="Y"
           STORE "TM01"+ntMy+mcDx TO mdBf
      CASE poPc="Z"
           STORE "TM01"+ntMz+mcDx TO mdBf
 ENDCASE
 Delete File &mDBF
ENDPROC
*
PROCEDURE Del_File3
 PARAMETER poPc, pcDx
 DO CASE
      CASE poPc="1A"
           STORE "M001A"+mtM1+meX1 TO mdBf
      CASE poPc="1"
           STORE "M001"+mtM1+meX1 TO mdBf
      CASE poPc="2"
           STORE "M001"+mtM2+meX1 TO mdBf
      CASE poPc="3"
           STORE "M001"+ntM3+meX1 TO mdBf
      CASE poPc="4"
           STORE "M001"+ntM4+meX1 TO mdBf
      CASE poPc="5"
           STORE "M001"+ntM5+meX1 TO mdBf
      CASE poPc="6"
           STORE "M001"+ntM6+meX1 TO mdBf
      CASE poPc="Z"
           STORE " " TO mdBf
 ENDCASE
 IF LEN(ALLTRIM(mdBf))<>0
      Delete File &mDBF
 ENDIF
 IF pcDx="N"
      RETURN
 ENDIF
 DO CASE
      CASE poPc="1A"
           STORE "M001A"+mtM1+mcDx TO mdBf
      CASE poPc="1"
           STORE "M001"+mtM1+mcDx TO mdBf
      CASE poPc="2"
           STORE "M001"+mtM2+mcDx TO mdBf
      CASE poPc="Z"
           STORE "MMNU"+mtM3+mcDx TO mdBf
      CASE poPc="3"
           STORE "M001"+ntM3+mcDx TO mdBf
      CASE poPc="4"
           STORE "M001"+ntM4+mcDx TO mdBf
      CASE poPc="5"
           STORE "M001"+ntM5+mcDx TO mdBf
      CASE poPc="6"
           STORE "M001"+ntM6+mcDx TO mdBf
 ENDCASE
 Delete File &mDBF
 RETURN
ENDPROC
*
PROCEDURE Del_Filet
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file3 WITH "1", "S"
 DO deL_file3 WITH "2", "S"
 DO deL_file3 WITH "Z", "S"
 RETURN
ENDPROC
*
PROCEDURE Opc_0000a
 PRIVATE ptEc, pnOm
 STORE teCla TO ptEc
 STORE noMbre TO pnOm
 DO prO_0000a WITH ptEc
 STORE mfRa TO ptEc
 DO prO_0000a WITH pnOm
 STORE mfRa TO pnOm
 DO CASE
      CASE moPp="*"
           DEFINE BAR x OF mpOp_otrome PROMPT "\-"
           DO coLblr
           @12,01 Say "Tipo de Cambio:"                                   Font "&mLetRom",13 Style "BQ" Size 1,40
           @14,01 Say "Clave Despacho:"                                   Font "&mLetRom",13 Style "BQ" Size 1,40
           @16,01 Say "Acceso Sunat hasta el:"                            Font "&mLetRom",13 Style "BQ" Size 1,40
           @18,01 Say "Acceso Reniec hasta el:"                           Font "&mLetRom",13 Style "BQ" Size 1,40
           @12,41 Say mTC1                                                Font "&mLetRom",13 Style "BQ" Pict "99.999"
           @14,41 Say Substr(Str(mTC2,5,3),1,1)+Substr(Str(mTC2,5,3),3,3) Font "&mLetRom",13 Style "BQ"
           @16,41 Say mFHA                                                Font "&mLetRom",13 Style "BQ"
           @18,41 Say mFHR                                                Font "&mLetRom",13 Style "BQ"
      CASE ptEc="A"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+A, "Ctrl A"
      CASE ptEc="B"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+B, "Ctrl B"
      CASE ptEc="C"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+C, "Ctrl C"
      CASE ptEc="D"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+D, "Ctrl D"
      CASE ptEc="E"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+E, "Ctrl E"
      CASE ptEc="F"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+F, "Ctrl F"
      CASE ptEc="G"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+G, "Ctrl G"
      CASE ptEc="H"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+H, "Ctrl H"
      CASE ptEc="I"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+I, "Ctrl I"
      CASE ptEc="J"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+J, "Ctrl J"
      CASE ptEc="K"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+K, "Ctrl K"
      CASE ptEc="L"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+L, "Ctrl L"
      CASE ptEc="M"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+M, "Ctrl M"
      CASE ptEc="N"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+N, "Ctrl N"
      CASE ptEc="O"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+O, "Ctrl O"
      CASE ptEc="P"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+P, "Ctrl P"
      CASE ptEc="Q"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+Q, "Ctrl Q"
      CASE ptEc="R"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+R, "Ctrl R"
      CASE ptEc="S"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+S, "Ctrl S"
      CASE ptEc="T"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+T, "Ctrl T"
      CASE ptEc="U"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+U, "Ctrl U"
      CASE ptEc="V"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+V, "Ctrl V"
      CASE ptEc="W"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+W, "Ctrl W"
      CASE ptEc="X"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+X, "Ctrl X"
      CASE ptEc="Y"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+Y, "Ctrl Y"
      CASE ptEc="Z"
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm KEY CTRL+Z, "Ctrl Z"
      OTHERWISE
           DEFINE BAR x OF mpOp_otrome PROMPT pnOm
 ENDCASE
 RELEASE ptEc, pnOm
ENDPROC
*
PROCEDURE PAC2112A_R
 DO CASE
      CASE mcIa="NV"
           STORE 01 TO vtIm
      CASE mcIa="NS" .OR. mcIa="NP"
           STORE 02 TO vtIm
      CASE mcIa="MO"
           STORE 03 TO vtIm
      OTHERWISE
           STORE 04 TO vtIm
 ENDCASE
 DO CASE
      CASE wtPo="1"
           DO CASE
                CASE msTp=1
                     STORE 3 TO vuLt
                OTHERWISE
                     STORE 2 TO vuLt
           ENDCASE
      CASE mcAj=1
           DO CASE
                CASE msTp=1
                     STORE 3 TO vuLt
                OTHERWISE
                     STORE 1 TO vuLt
           ENDCASE
      OTHERWISE
           DO CASE
                CASE msTp=1
                     STORE 1 TO vuLt
                OTHERWISE
                     STORE 1 TO vuLt
           ENDCASE
 ENDCASE
 IF mcIa="MB" .OR. mcIa="TO" .OR. mcIa="UN" .OR. mcIa="LI" .OR. mcIa="DS"
      STORE "S" TO vpEq
 ELSE
      STORE "N" TO vpEq
 ENDIF
ENDPROC
*
PROCEDURE Sel_0000a
 PARAMETER psEl
 DO CASE
      CASE psEl=1
           SELECT 1
      CASE psEl=2
           SELECT 2
      CASE psEl=3
           SELECT 3
      CASE psEl=4
           SELECT 4
      CASE psEl=5
           SELECT 5
      CASE psEl=6
           SELECT 6
      CASE psEl=7
           SELECT 7
      CASE psEl=8
           SELECT 8
      CASE psEl=9
           SELECT 9
      CASE psEl=10
           SELECT 10
      CASE psEl=11
           SELECT 11
      CASE psEl=12
           SELECT 12
      CASE psEl=13
           SELECT 13
      CASE psEl=14
           SELECT 14
      CASE psEl=15
           SELECT 15
      CASE psEl=16
           SELECT 16
      CASE psEl=17
           SELECT 17
      CASE psEl=18
           SELECT 18
      CASE psEl=19
           SELECT 19
      CASE psEl=20
           SELECT 20
      CASE psEl=21
           SELECT 21
      CASE psEl=22
           SELECT 22
      CASE psEl=23
           SELECT 23
      CASE psEl=24
           SELECT 24
      CASE psEl=25
           SELECT 25
      CASE psEl=26
           SELECT 26
      CASE psEl=27
           SELECT 27
      CASE psEl=28
           SELECT 28
      CASE psEl=29
           SELECT 29
      CASE psEl=30
           SELECT 30
      CASE psEl=31
           SELECT 31
      CASE psEl=32
           SELECT 32
      CASE psEl=33
           SELECT 33
      CASE psEl=34
           SELECT 34
      CASE psEl=35
           SELECT 35
      CASE psEl=36
           SELECT 36
      CASE psEl=37
           SELECT 37
      CASE psEl=38
           SELECT 38
      CASE psEl=39
           SELECT 39
      CASE psEl=40
           SELECT 40
      CASE psEl=41
           SELECT 41
      CASE psEl=42
           SELECT 42
      CASE psEl=43
           SELECT 43
      CASE psEl=44
           SELECT 44
      CASE psEl=45
           SELECT 45
      CASE psEl=46
           SELECT 46
      CASE psEl=47
           SELECT 47
      CASE psEl=48
           SELECT 48
      CASE psEl=49
           SELECT 49
      CASE psEl=50
           SELECT 50
      CASE psEl=51
           SELECT 51
      CASE psEl=52
           SELECT 52
      CASE psEl=53
           SELECT 53
      CASE psEl=54
           SELECT 54
      CASE psEl=55
           SELECT 55
      CASE psEl=56
           SELECT 56
      CASE psEl=57
           SELECT 57
      CASE psEl=58
           SELECT 58
      CASE psEl=59
           SELECT 59
      CASE psEl=60
           SELECT 60
      CASE psEl=61
           SELECT 61
      CASE psEl=62
           SELECT 62
      CASE psEl=63
           SELECT 63
      CASE psEl=64
           SELECT 64
      CASE psEl=65
           SELECT 65
      CASE psEl=66
           SELECT 66
      CASE psEl=67
           SELECT 67
      CASE psEl=68
           SELECT 68
      CASE psEl=69
           SELECT 69
      CASE psEl=70
           SELECT 70
      CASE psEl=71
           SELECT 71
      CASE psEl=72
           SELECT 72
      CASE psEl=73
           SELECT 73
      CASE psEl=74
           SELECT 74
      CASE psEl=75
           SELECT 75
      CASE psEl=76
           SELECT 76
      CASE psEl=77
           SELECT 77
      CASE psEl=78
           SELECT 78
      CASE psEl=79
           SELECT 79
      CASE psEl=80
           SELECT 80
      CASE psEl=81
           SELECT 81
      CASE psEl=82
           SELECT 82
      CASE psEl=83
           SELECT 83
      CASE psEl=84
           SELECT 84
      CASE psEl=85
           SELECT 85
      CASE psEl=86
           SELECT 86
      CASE psEl=87
           SELECT 87
      CASE psEl=88
           SELECT 88
      CASE psEl=89
           SELECT 89
 ENDCASE
ENDPROC
*
PROCEDURE Use_0000a
 PARAMETER psEl
 DO CASE
      CASE psEl=1
           SELECT 1
      CASE psEl=2
           SELECT 2
      CASE psEl=3
           SELECT 3
      CASE psEl=4
           SELECT 4
      CASE psEl=5
           SELECT 5
      CASE psEl=6
           SELECT 6
      CASE psEl=7
           SELECT 7
      CASE psEl=8
           SELECT 8
      CASE psEl=9
           SELECT 9
      CASE psEl=10
           SELECT 10
      CASE psEl=11
           SELECT 11
      CASE psEl=12
           SELECT 12
      CASE psEl=13
           SELECT 13
      CASE psEl=14
           SELECT 14
      CASE psEl=15
           SELECT 15
      CASE psEl=16
           SELECT 16
      CASE psEl=17
           SELECT 17
      CASE psEl=18
           SELECT 18
      CASE psEl=19
           SELECT 19
      CASE psEl=20
           SELECT 20
      CASE psEl=21
           SELECT 21
      CASE psEl=22
           SELECT 22
      CASE psEl=23
           SELECT 23
      CASE psEl=24
           SELECT 24
      CASE psEl=25
           SELECT 25
      CASE psEl=26
           SELECT 26
      CASE psEl=27
           SELECT 27
      CASE psEl=28
           SELECT 28
      CASE psEl=29
           SELECT 29
      CASE psEl=30
           SELECT 30
      CASE psEl=31
           SELECT 31
      CASE psEl=32
           SELECT 32
      CASE psEl=33
           SELECT 33
      CASE psEl=34
           SELECT 34
      CASE psEl=35
           SELECT 35
      CASE psEl=36
           SELECT 36
      CASE psEl=37
           SELECT 37
      CASE psEl=38
           SELECT 38
      CASE psEl=39
           SELECT 39
      CASE psEl=40
           SELECT 40
      CASE psEl=41
           SELECT 41
      CASE psEl=42
           SELECT 42
      CASE psEl=43
           SELECT 43
      CASE psEl=44
           SELECT 44
      CASE psEl=45
           SELECT 45
      CASE psEl=46
           SELECT 46
      CASE psEl=47
           SELECT 47
      CASE psEl=48
           SELECT 48
      CASE psEl=49
           SELECT 49
      CASE psEl=50
           SELECT 50
      CASE psEl=51
           SELECT 51
      CASE psEl=52
           SELECT 52
      CASE psEl=53
           SELECT 53
      CASE psEl=54
           SELECT 54
      CASE psEl=55
           SELECT 55
      CASE psEl=56
           SELECT 56
      CASE psEl=57
           SELECT 57
      CASE psEl=58
           SELECT 58
      CASE psEl=59
           SELECT 59
      CASE psEl=60
           SELECT 60
      CASE psEl=61
           SELECT 61
      CASE psEl=62
           SELECT 62
      CASE psEl=63
           SELECT 63
      CASE psEl=64
           SELECT 64
      CASE psEl=65
           SELECT 65
      CASE psEl=66
           SELECT 66
      CASE psEl=67
           SELECT 67
      CASE psEl=68
           SELECT 68
      CASE psEl=69
           SELECT 69
      CASE psEl=70
           SELECT 70
      CASE psEl=71
           SELECT 71
      CASE psEl=72
           SELECT 72
      CASE psEl=73
           SELECT 73
      CASE psEl=74
           SELECT 74
      CASE psEl=75
           SELECT 75
      CASE psEl=76
           SELECT 76
      CASE psEl=77
           SELECT 77
      CASE psEl=78
           SELECT 78
      CASE psEl=79
           SELECT 79
      CASE psEl=80
           SELECT 80
      CASE psEl=81
           SELECT 81
      CASE psEl=82
           SELECT 82
      CASE psEl=83
           SELECT 83
      CASE psEl=84
           SELECT 84
      CASE psEl=85
           SELECT 85
      CASE psEl=86
           SELECT 86
      CASE psEl=87
           SELECT 87
      CASE psEl=88
           SELECT 88
      CASE psEl=89
           SELECT 89
 ENDCASE
 USE
ENDPROC
*
PROCEDURE Pro_Virtual
 PARAMETER ppRg_prod
 PRIVATE pcOd, pdEs, peSt, psW0, ppAn_vit
 STORE 1 TO meRr
 STORE "FA012111.DLL" TO mdBf
 Use &mDBF Excl Alias Virtual_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF meRr=1705
      STORE 0 TO psW0
      Use &mDBF Share Alias Virtual_Prod
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      STORE 1 TO psW0
 ENDIF
 STORE 00 TO meRr
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF psW0=1
      SELECT prOductos
      GOTO BOTTOM
      SELECT viRtual_prod
      GOTO TOP
      REPLACE f2111est WITH "@" ALL
      UNLOCK ALL
      SAVE SCREEN TO ppAn_vit
      SELECT prOductos
      GOTO TOP
      DO WHILE  .NOT. EOF()
           @ 1, 1 SAY "Grabando: "+f2111cod FONT "Arial", 8 STYLE "NQ"  ;
             SIZE 1, 50
           IF ppRg_prod=1 .AND. (f2111vta=2 .OR. f2111est="9")
                SKIP
                LOOP
           ENDIF
           STORE f2111cod TO pcOd
           STORE f2111des TO pdEs
           STORE f2111est TO peSt
           SELECT viRtual_prod
           SEEK ALLTRIM(pcOd)+"*"
           IF EOF()
                DO nuEvo_rg
                REPLACE f2111cod WITH pcOd
           ENDIF
           IF ALLTRIM(UPPER(f2111des))<>ALLTRIM(UPPER(pdEs))
                REPLACE f2111des WITH pdEs
           ENDIF
           REPLACE f2111est WITH peSt
           UNLOCK
           SELECT prOductos
           SKIP
      ENDDO
      SELECT viRtual_prod
      SET ORDER TO
      @ 1, 1 SAY "Borrando: "+f2111cod FONT "Arial", 8 STYLE "NQ" SIZE 1, 50
      REPLACE f2111cod WITH " " FOR f2111est="@"
      REPLACE f2111des WITH " " FOR f2111est="@"
      DELETE FOR f2111est="@"
      PACK
      RESTORE SCREEN FROM ppAn_vit
      UNLOCK ALL
      FLUSH
 ENDIF
 Use &mDBF Share Alias Virtual_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 RELEASE pcOd, pdEs, peSt, psW0, ppAn_vit
ENDPROC
*
PROCEDURE Vir_000
 RETURN
 PRIVATE phOr, phR1, phR2, phR3, phR4
 STORE TIME() TO phOr
 STORE SUBSTR(phOr, 1, 2) TO phR1
 STORE SUBSTR(phOr, 4, 2) TO phR2
 STORE SUBSTR(mhOr, 1, 2) TO phR3
 STORE SUBSTR(mhOr, 4, 2) TO phR4
 IF (phR1>phR3 .OR. VAL(phR2)>VAL(phR4)+1) .AND. (mcIa="RA" .OR. mcIa="RJ")
      CLOSE DATABASES
      RUN shutdown -s -t 10 /c
      QUIT
 ENDIF
 RELEASE phOr, phR1, phR2, phR3, phR4
ENDPROC
*
PROCEDURE Ord_0000a
 PARAMETER pfIl, ptPo, poRd, paSc
 IF pfIl<>"TMP"
      DO abR_0000a IN PUX0000A WITH pfIl, ptPo
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE 1 TO meRr
 IF paSc="A"
      Set Order to &pORD Ascending
 ELSE
      Set Order to &pORD Descending
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 0 TO meRr
ENDPROC
*
PROCEDURE Tit_0000a
 PARAMETER ptIt
 PRIVATE pfRa
 IF mwFi-3<=WROWS("")
      SET COLOR TO RGB(253,242,47,0,0,0)
      DO CASE
           CASE mfEl="1"
                @mWFI-2.0,105 Say pTIT                       Font "&mLetRom",16 Style "BTI"
                DO coLneb
                @ mwFi-3, 0 SAY " FACTURACION ELECTRONICA " FONT  ;
                  "Algerian", 26 STYLE "BQ"
           CASE mfEl="3"
                @mWFI-2.0,115 Say pTIT                       Font "&mLetRom",16 Style "BTI"
                DO coLneb
                @ mwFi-3, 0 SAY " FACTURACION ELECTRONICA SOL" FONT  ;
                  "Algerian", 26 STYLE "BQ"
           CASE mrEs="3"
                @mWFI-3.0,0 Say pTIT                         Font "&mLetRom",26 Style "BTI"
           CASE mrEs="4"
                @mWFI-3.0,0 Say pTIT                         Font "&mLetRom",28 Style "BTI"
           OTHERWISE
                @mWFI-3.0,0 Say pTIT                         Font "&mLetRom",28 Style "BTI"
      ENDCASE
 ENDIF
 RELEASE pfRa
ENDPROC
*
PROCEDURE Pagina
 PUBLIC pfIl, ptAb
 PRIVATE pcOl, poPc, pnUm, piN1, piN2, piN9
 STORE (mwFi/2)-10 TO pfIl
 STORE (mwCo/2)-30 TO pcOl
 STORE PRTINFO(1) TO piN1
 STORE PRTINFO(2) TO piN2
 STORE 99 TO mkEy
 STORE 00 TO poPc, piN9
 STORE 01 TO miPg, pnUm
 STORE 99999 TO muPg
 STORE mrEs TO mrS2
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
 @pFIL+09.7,pCOL+10 Say "Desde Página:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+11.4,pCOL+10 Say "Hasta Página:"         Font "&mLetRom",11 Style "BQ"
 @pFIL+14.0,pCOL+39 Say "No.Líneas:"            Font "&mLetAri",8  Style "NQ"
 @pFIL+14.0,pCOL+49 Say mPAG                    Font "&mLetAri",8  Style "NQ" Size 1,4 Pict "999"
 DO coLblz
 @pFIL+00.6,pCOL+09 Say "Opciones de Impresión" Font "&mLetRom",16 Style "NT"
 @pFIL+03.2,pCOL+15 Say "Color de las Letras"   Font "&mLetRom",11 Style "BT"
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 DO WHILE .T.
      IF PRTINFO(9)<>piN9
           DO pg_col_1
           @ pfIl+5, pcOl+13 TO pfIl+8.7, pcOl+45 PATTERN 1 PEN 0, 0  ;
             COLOR RGB(100,100,100,192,192,192)
      ENDIF
      IF piN9=2
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color RGB(0,0,0,192,192,192),,,,,,,,RGB(0,0,130,192,192,192)
      ELSE
           @pFIL+5,pCOL+15 Get mCOL Font "&mLetAri",9 Style "NQ" Default mCOL Function "*RVT &pTAB[1];&pTAB[2];&pTAB[3];&pTAB[4]" Color ,,,,,,,,,RGB(100,100,100,192,192,192)
      ENDIF
      @pFIL+09.8,pCOL+33 Get mIPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
      @pFIL+11.5,pCOL+33 Get mUPG Font "&mLetAri",9 Style "NQ" Pict "999999" Range 1,999999 Size 1,9 Color ,&mColBlN
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
 RELEASE pfIl, ptAb, pcOl, poPc, pnUm, piN1, piN2, piN9
ENDPROC
*
PROCEDURE Lin_0000a
 PARAMETER pnUm, plIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      @pLIN,mCLN Say Replicate("_",pNUM) Font "&mLetRom",11 Style "NT"
 ENDIF
ENDPROC
*
PROCEDURE Pg_Col_1
 DIMENSION ptAb[4]
 STORE "Letras Negras" TO ptAb[1]
 STORE PRTINFO(9) TO piN9
 STORE 01 TO mcOl
 IF piN9=2
      STORE "Combinación de Colores" TO ptAb[2]
      STORE "Letras Azules" TO ptAb[3]
      STORE "Letras Verdes" TO ptAb[4]
 ELSE
      STORE "\\Combinación de Colores" TO ptAb[2]
      STORE "\\Letras Azules" TO ptAb[3]
      STORE "\\Letras Verdes" TO ptAb[4]
 ENDIF
ENDPROC
*
PROCEDURE Pg_Col_2
 DIMENSION ptAb[4]
 STORE "Letras Negras" TO ptAb[1]
 STORE PRTINFO(9) TO piN9
 STORE 01 TO mcOl
 IF piN9=2
      STORE "Comb-Colores" TO ptAb[2]
      STORE "Letras Azules" TO ptAb[3]
      STORE "Letras Verdes" TO ptAb[4]
 ELSE
      STORE "\\Comb-Colores" TO ptAb[2]
      STORE "\\Letras Azules" TO ptAb[3]
      STORE "\\Letras Verdes" TO ptAb[4]
 ENDIF
ENDPROC
*
PROCEDURE Pg_Col_3
 DIMENSION ptAb[4]
 STORE "Negras" TO ptAb[1]
 STORE PRTINFO(9) TO piN9
 STORE 01 TO mcOl
 IF piN9=2
      STORE "Colores" TO ptAb[2]
      STORE "Azules" TO ptAb[3]
      STORE "Verdes" TO ptAb[4]
 ELSE
      STORE "\\Colores" TO ptAb[2]
      STORE "\\Azules" TO ptAb[3]
      STORE "\\Verdes" TO ptAb[4]
 ENDIF
ENDPROC
*
PROCEDURE Pg_Col_4
 DIMENSION ptAb[4]
 STORE "Negra" TO ptAb[1]
 STORE PRTINFO(9) TO piN9
 STORE 01 TO mcOl
 IF piN9=2
      STORE "Color" TO ptAb[2]
      STORE "Azul" TO ptAb[3]
      STORE "Verde" TO ptAb[4]
 ELSE
      STORE "\\Color" TO ptAb[2]
      STORE "\\Azul" TO ptAb[3]
      STORE "\\Verde" TO ptAb[4]
 ENDIF
ENDPROC
*
PROCEDURE Col_Prt
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl=2
           DO coLblvo
      CASE mcOl=3
           DO coLblz
      CASE mcOl=4
           DO coLblvo
 ENDCASE
ENDPROC
*
PROCEDURE Col_Pr1
 DO CASE
      CASE mcOl=1
           DO coLbln
      CASE mcOl=2
           DO coLbln
      CASE mcOl=3
           DO coLblzc
      CASE mcOl=4
           DO coLblvo
 ENDCASE
ENDPROC
*
PROCEDURE Npg_0000a
 STORE INT(mwFi-1) TO mpAg
 STORE INT((mwCo-47-ptAm)/2) TO mcLn
 STORE mcLn-4 TO mcLn
ENDPROC
*
PROCEDURE Ipr_0000a
 PRIVATE ptAb, pnUm, pnU1, psW0, ppRn
 DIMENSION ptAb[33, 2]
 pnUm = APRINTERS(ptAb)
 IF pnUm=0
      STORE "No hay impresoras instaladas..." TO mmSj
      DO poNmsj
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 IF mvIs=1
      STORE "PdfCreator" TO mpRn
 ELSE
      STORE mpRf(15,1) TO mpRn
 ENDIF
 STORE 1 TO pnU1
 STORE 0 TO psW0
 DO WHILE pnU1<=pnUm
      IF ALLTRIM(UPPER(ptAb(pnU1,1)))=ALLTRIM(UPPER(mpRn))
           STORE 1 TO psW0
      ENDIF
      STORE pnU1+1 TO pnU1
 ENDDO
 IF psW0=0
      STORE "Impresora "+ALLTRIM(mpRn)+" no instalada..." TO mmSj
      DO poNmsj
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 STORE ALLTRIM(mpRn) TO ppRn
 STORE "VE-"+mpRn TO mpRn
 IF mvIs=1
      STORE "1" TO mpRt
 ELSE
      STORE mpRf(15,2) TO mpRt
 ENDIF
 Set Printer Font "&mLetAri",8 Style "N"
 Set Printer to Name "&pPRN"
 SET DEVICE TO PRINTER
 SET ESCAPE ON
 ON ESCAPE DO P_ESC
 RELEASE ptAb, pnUm, pnU1, psW0, ppRn
ENDPROC
*
PROCEDURE Ipr_0001a
 PARAMETER ptDo
 PRIVATE ptAb, pnUm, pnU1, psW0, ppRn, ppR1
 DIMENSION ptAb[33, 2]
 pnUm = APRINTERS(ptAb)
 IF pnUm=0
      STORE "No hay impresoras instaladas..." TO mmSj
      DO poNmsj
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE ptDo="FA" .OR. ptDo="TF"
           STORE mpRf(01,1) TO mpRn
      CASE ptDo="BO" .OR. ptDo="TB"
           STORE mpRf(02,1) TO mpRn
      CASE ptDo="PE"
           STORE mpRf(03,1) TO mpRn
      CASE ptDo="RE"
           STORE mpRf(04,1) TO mpRn
      CASE ptDo="DE"
           STORE mpRf(05,1) TO mpRn
      CASE ptDo="D1"
           STORE mpRf(06,1) TO mpRn
      CASE ptDo="D2"
           STORE mpRf(07,1) TO mpRn
      CASE ptDo="D3"
           STORE mpRf(08,1) TO mpRn
      CASE ptDo="D4"
           STORE mpRf(09,1) TO mpRn
      CASE ptDo="D5"
           STORE mpRf(10,1) TO mpRn
      CASE ptDo="D6"
           STORE mpRf(11,1) TO mpRn
      CASE ptDo="D7"
           STORE mpRf(12,1) TO mpRn
      CASE ptDo="D8"
           STORE mpRf(13,1) TO mpRn
      CASE ptDo="D9"
           STORE mpRf(14,1) TO mpRn
      CASE ptDo="VE"
           STORE mpRf(15,1) TO mpRn
      CASE ptDo="HO"
           STORE mpRf(16,1) TO mpRn
      CASE ptDo="LE"
           STORE mpRf(17,1) TO mpRn
      CASE ptDo="ET"
           STORE mpRf(18,1) TO mpRn
      CASE ptDo="NP"
           STORE mpRf(19,1) TO mpRn
      CASE ptDo="CT"
           STORE mpRf(20,1) TO mpRn
      CASE ptDo="ND"
           STORE mpRf(21,1) TO mpRn
      CASE ptDo="NC"
           STORE mpRf(22,1) TO mpRn
      CASE ptDo="GI"
           STORE mpRf(23,1) TO mpRn
      CASE ptDo="GS"
           STORE mpRf(24,1) TO mpRn
      CASE ptDo="PC"
           STORE mpRf(25,1) TO mpRn
      CASE ptDo="BP"
           STORE mpRf(26,1) TO mpRn
      CASE ptDo="FE"
           STORE mpRf(27,1) TO mpRn
      CASE ptDo="BE"
           STORE mpRf(28,1) TO mpRn
      CASE ptDo="N1"
           STORE mpRf(29,1) TO mpRn
      CASE ptDo="N2"
           STORE mpRf(30,1) TO mpRn
      CASE ptDo="ER"
           STORE mpRf(31,1) TO mpRn
      CASE ptDo="FC"
           STORE mpRf(32,1) TO mpRn
      CASE ptDo="BC"
           STORE mpRf(33,1) TO mpRn
      CASE ptDo="N3"
           STORE mpRf(34,1) TO mpRn
      CASE ptDo="N4"
           STORE mpRf(35,1) TO mpRn
      OTHERWISE
           STORE mpRf(15,1) TO mpRn
 ENDCASE
 STORE STRTRAN(ALLTRIM(mpRn), " ", "?") TO ppRn
 STORE mpRn TO ppR1
 STORE 1 TO pnU1
 STORE 0 TO psW0
 DO WHILE pnU1<=pnUm
      IF ALLTRIM(UPPER(ptAb(pnU1,1)))=ALLTRIM(UPPER(mpRn))
           STORE 1 TO psW0
      ENDIF
      STORE pnU1+1 TO pnU1
 ENDDO
 IF psW0=0
      STORE "Impresora "+ALLTRIM(mpRn)+" no instalada..." TO mmSj
      DO poNmsj
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 STORE ptDo+"-"+mpRn TO mpRn
 STORE ppR1 TO ppRn
 Set Printer Font "&mLetAri",8 Style "N"
 Set Printer to Name "&pPRN"
 DO CASE
      CASE mvIs=1
           STORE "1" TO mpRt
      CASE ptDo="FA" .OR. ptDo="TF"
           STORE mpRf(01,2) TO mpRt
      CASE ptDo="BO" .OR. ptDo="TB"
           STORE mpRf(02,2) TO mpRt
      CASE ptDo="PE"
           STORE mpRf(03,2) TO mpRt
      CASE ptDo="RE"
           STORE mpRf(04,2) TO mpRt
      CASE ptDo="DE"
           STORE mpRf(05,2) TO mpRt
      CASE ptDo="D1"
           STORE mpRf(06,2) TO mpRt
      CASE ptDo="D2"
           STORE mpRf(07,2) TO mpRt
      CASE ptDo="D3"
           STORE mpRf(08,2) TO mpRt
      CASE ptDo="D4"
           STORE mpRf(09,2) TO mpRt
      CASE ptDo="D5"
           STORE mpRf(10,2) TO mpRt
      CASE ptDo="D6"
           STORE mpRf(11,2) TO mpRt
      CASE ptDo="D7"
           STORE mpRf(12,2) TO mpRt
      CASE ptDo="D8"
           STORE mpRf(13,2) TO mpRt
      CASE ptDo="D9"
           STORE mpRf(14,2) TO mpRt
      CASE ptDo="VE"
           STORE mpRf(15,2) TO mpRt
      CASE ptDo="HO"
           STORE mpRf(16,2) TO mpRt
      CASE ptDo="LE"
           STORE mpRf(17,2) TO mpRt
      CASE ptDo="ET"
           STORE mpRf(18,2) TO mpRt
      CASE ptDo="NP"
           STORE mpRf(19,2) TO mpRt
      CASE ptDo="CT"
           STORE mpRf(20,2) TO mpRt
      CASE ptDo="ND"
           STORE mpRf(21,2) TO mpRt
      CASE ptDo="NC"
           STORE mpRf(22,2) TO mpRt
      CASE ptDo="GI"
           STORE mpRf(23,2) TO mpRt
      CASE ptDo="GS"
           STORE mpRf(24,2) TO mpRt
      CASE ptDo="PC"
           STORE mpRf(25,2) TO mpRt
      CASE ptDo="BP"
           STORE mpRf(26,2) TO mpRt
      CASE ptDo="FE"
           STORE mpRf(27,2) TO mpRt
      CASE ptDo="BE"
           STORE mpRf(28,2) TO mpRt
      CASE ptDo="N1"
           STORE mpRf(29,2) TO mpRt
      CASE ptDo="N2"
           STORE mpRf(30,2) TO mpRt
      CASE ptDo="ER"
           STORE mpRf(31,2) TO mpRt
      CASE ptDo="FC"
           STORE mpRf(32,2) TO mpRt
      CASE ptDo="BC"
           STORE mpRf(33,2) TO mpRt
      CASE ptDo="N3"
           STORE mpRf(34,2) TO mpRt
      CASE ptDo="N4"
           STORE mpRf(35,2) TO mpRt
      OTHERWISE
           STORE mpRf(15,2) TO mpRt
 ENDCASE
 DO nlI_0000a WITH PRTINFO(1), PRTINFO(2)
 SET DEVICE TO PRINTER
 SET ESCAPE ON
 ON ESCAPE DO P_ESC
 RELEASE ptAb, pnUm, pnU1, psW0, ppRn, ppR1
ENDPROC
*
PROCEDURE Fpr_0000a
 ON ESCAPE
 SET ESCAPE OFF
 SET PRINTER TO
 SET DEVICE TO SCREEN
 RESTORE SCREEN FROM mpAn_prn
 STORE 0 TO mvIs
 FLUSH
ENDPROC
*
PROCEDURE Fpr_0001a
 ON ESCAPE
 SET ESCAPE OFF
 SET PRINTER TO
 SET DEVICE TO SCREEN
 RESTORE SCREEN FROM mpAn_prn
 STORE 0 TO mvIs
 FLUSH
ENDPROC
*
PROCEDURE Nli_0000a
 PARAMETER poP1, poP2
 STORE 38 TO mpAg
 DO CASE
      CASE poP1=1 .AND. mpRt="1"
           STORE 60 TO mpAg
      CASE poP1=1 .AND. mpRt="2"
           STORE 60 TO mpAg
      CASE poP2<3
           STORE ROUND((79.01432), 0) TO mpAg
      CASE poP2=3
           STORE ROUND((122.1696), 0) TO mpAg
      CASE poP2=4
           STORE ROUND((79.184), 0) TO mpAg
      CASE poP2=5
           STORE ROUND((100.6768), 0) TO mpAg
      CASE poP2=6
           STORE ROUND((61.0848), 0) TO mpAg
      CASE poP2=7
           STORE ROUND((75.5076), 0) TO mpAg
      CASE poP2=8
           STORE ROUND((118.776), 0) TO mpAg
      CASE poP2=9
           STORE ROUND((83.9916), 0) TO mpAg
      CASE poP2=10
           STORE ROUND((83.9916), 0) TO mpAg
      CASE poP2=11
           STORE ROUND((59.388), 0) TO mpAg
      CASE poP2=12
           STORE ROUND((102.9392), 0) TO mpAg
      CASE poP2=13
           STORE ROUND((72.6796), 0) TO mpAg
      CASE poP2=15
           STORE ROUND((77.77), 0) TO mpAg
      CASE poP2=16
           STORE ROUND((97.2832), 0) TO mpAg
      CASE poP2=17
           STORE ROUND((121.8868), 0) TO mpAg
      CASE poP2=18
           STORE ROUND((78.9012), 0) TO mpAg
      CASE poP2=39
           STORE ROUND((79.01432), 0) TO mpAg
      CASE poP2=40
           STORE ROUND((84.84), 0) TO mpAg
      CASE poP2=41
           STORE ROUND((93.324), 0) TO mpAg
      CASE poP2=119 .OR. poP2=129
           STORE ROUND((39.4506), 0) TO mpAg
      CASE poP2=256
           STORE ROUND((86.5368), 0) TO mpAg
      CASE poP2=262
           STORE ROUND((78.9012), 0) TO mpAg
      CASE poP2=264
           STORE ROUND((86.254), 0) TO mpAg
 ENDCASE
ENDPROC
*
PROCEDURE Dli_0000a
 PARAMETER poP1, poP2
 SET COLOR TO RGB(0,0,0,192,192,192)
 STORE 00 TO mmAl
 DO CASE
      CASE poP1=0
           @pFIL+14,pCOL+4 Say "Impresión vertical "   Font "&mLetAri",8 Style "NQ" Size 1,19.8
      CASE poP1=1
           @pFIL+14,pCOL+4 Say "Impresión horizontal " Font "&mLetAri",8 Style "NQ" Size 1,19.8
 ENDCASE
 DO CASE
      CASE poP2=1
           @pFIL+15.1,pCOL+4 Say "Papel Carta, 216 x 279 mm"                    Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=2
           @pFIL+15.1,pCOL+4 Say "Papel Carta, 216 x 279 mm"                    Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=3
           @pFIL+15.1,pCOL+4 Say "Papel Tabloide, 279 x 432 mm"                 Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=4
           @pFIL+15.1,pCOL+4 Say "Papel Doble Carta, 432 x 280 mm"              Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=5
           @pFIL+15.1,pCOL+4 Say "Papel Oficio, 216 x 356 mm"                   Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=6
           @pFIL+15.1,pCOL+4 Say "Papel Estamento, 140 x 216 mm"                Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=7
           @pFIL+15.1,pCOL+4 Say "Papel Ejecutivo, 184 x 267 mm"                Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=8
           @pFIL+15.1,pCOL+4 Say "Papel A3, 297 x 420 mm"                       Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=9
           @pFIL+15.1,pCOL+4 Say "Papel A4, 210 x 297 mm"                       Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=10
           @pFIL+15.1,pCOL+4 Say "Papel A4, pequeño 210 x 297 mm"               Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=11
           @pFIL+15.1,pCOL+4 Say "Papel A5, 148 x 210 mm"                       Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=12
           @pFIL+15.1,pCOL+4 Say "Papel B4, 257 x 364 mm"                       Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=13
           @pFIL+15.1,pCOL+4 Say "Papel B5, 182 x 257 mm"                       Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=15
           @pFIL+15.1,pCOL+4 Say "Papel Cuarto, 215 x 275 mm"                   Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=16
           @pFIL+15.1,pCOL+4 Say "Papel 254 x 344 mm"                           Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=17
           @pFIL+15.1,pCOL+4 Say "Papel 279 x 431 mm"                           Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=18
           @pFIL+15.1,pCOL+4 Say "Papel Nota, 216 x 279 mm"                     Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=39
           @pFIL+15.1,pCOL+4 Say "Papel Continuo USA estándar, 310 x 279.4 mm"  Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=40
           @pFIL+15.1,pCOL+4 Say "Papel Continuo alemán estándar, 220 x 300 mm" Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=41
           @pFIL+15.1,pCOL+4 Say "Papel Continuo alemán oficio, 220 x 330 mm"   Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=119 .OR. poP2=129
           @pFIL+15.1,pCOL+4 Say "Papel Personalizado "+Str(pOP2,3,0)           Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=256
           @pFIL+15.1,pCOL+4 Say "Papel Personalizado "+Str(pOP2,3,0)           Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=262
           @pFIL+15.1,pCOL+4 Say "Papel Continuo ancho"                         Font "&mLetAri",8 Style "NQ" Size 1,50
      CASE poP2=264
           @pFIL+15.1,pCOL+4 Say "Papel Continuo 210 x 305"                     Font "&mLetAri",8 Style "NQ" Size 1,50
      OTHERWISE
           @pFIL+15.1,pCOL+4 Say "Tamaño personalizado"                         Font "&mLetAri",8 Style "NQ" Size 1,50
 ENDCASE
 DO coLplp
 @pFIL+16.5,pCOL+4 Say mPRN Font "&mLetAri",8 Style "NQ" Size 1,50
 SET COLOR TO RGB(0,0,0,192,192,192)
ENDPROC
*
PROCEDURE P_A_DEL
 CLEAR GETS
 CLEAR READ
 STORE k_Alt_del TO mkEy
ENDPROC
*
PROCEDURE P1_0000a
 ON KEY LABEL F1 DO P_F1
 ON KEY LABEL F2 DO P_F2
 ON KEY LABEL F3 DO P_F3
 ON KEY LABEL F4 DO P_F4
 ON KEY LABEL F5 DO P_F5
 ON KEY LABEL F7 DO P_F7
 ON KEY LABEL F6 DO P_F6
 ON KEY LABEL F8 DO P_F8
 ON KEY LABEL F9 DO P_F9
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 ON KEY LABEL ENTER DO P_ENTER
 ON KEY LABEL DNARROW DO P_DOWN
 ON KEY LABEL UPARROW DO P_UP
 ON KEY LABEL CTRL+O DO P_C_O
 ON KEY LABEL CTRL+HOME DO P_C_HOME
 ON KEY LABEL CTRL+END DO P_C_END
 ON KEY LABEL CTRL+RIGHTARROW DO P_C_RIGHT
 ON KEY LABEL CTRL+LEFTARROW DO P_C_LEFT
 ON KEY LABEL CTRL+DEL DO P_C_DEL
 ON KEY LABEL CTRL+P DO P_C_P
 ON KEY LABEL ALT+DEL DO P_A_DEL
 ON KEY LABEL ALT+C DO P_A_C
 ON KEY LABEL ALT+D DO P_A_D
 ON KEY LABEL ALT+Z DO P_A_Z
 ON KEY LABEL ALT+S DO P_A_S
 ON KEY LABEL LEFTMOUSE DO P_MOUSE
ENDPROC
*
PROCEDURE Q1_0000a
 ON KEY LABEL F1
 ON KEY LABEL F2
 ON KEY LABEL F3
 ON KEY LABEL F4
 ON KEY LABEL F5
 ON KEY LABEL F7
 ON KEY LABEL F6
 ON KEY LABEL F8
 ON KEY LABEL F9
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 ON KEY LABEL ENTER
 ON KEY LABEL DNARROW
 ON KEY LABEL UPARROW
 ON KEY LABEL CTRL+O
 ON KEY LABEL CTRL+HOME
 ON KEY LABEL CTRL+END
 ON KEY LABEL CTRL+RIGHTARROW
 ON KEY LABEL CTRL+LEFTARROW
 ON KEY LABEL CTRL+DEL
 ON KEY LABEL CTRL+P
 ON KEY LABEL ALT+DEL
 ON KEY LABEL ALT+C
 ON KEY LABEL ALT+D
 ON KEY LABEL ALT+Z
 ON KEY LABEL ALT+S
 ON KEY LABEL LEFTMOUSE
ENDPROC
*
PROCEDURE P2_0000a
 ON KEY LABEL F1 DO P_F1
 ON KEY LABEL F2 DO P_F2
 ON KEY LABEL F3 DO P_F3
 ON KEY LABEL F4 DO P_F4
 ON KEY LABEL F5 DO P_F5
 ON KEY LABEL F6 DO P_F6
 ON KEY LABEL F7 DO P_F7
 ON KEY LABEL F8 DO P_F8
 ON KEY LABEL F9 DO P_F9
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 ON KEY LABEL PGUP DO P_PGUP
 ON KEY LABEL PGDN DO P_PGDN
 ON KEY LABEL ENTER DO P_ENTER
 ON KEY LABEL DNARROW DO P_DOWN
 ON KEY LABEL UPARROW DO P_UP
 ON KEY LABEL CTRL+P DO P_C_P
 ON KEY LABEL CTRL+HOME DO P_C_HOME
 ON KEY LABEL CTRL+END DO P_C_END
 ON KEY LABEL CTRL+RIGHTARROW DO P_C_RIGHT
 ON KEY LABEL CTRL+LEFTARROW DO P_C_LEFT
 ON KEY LABEL CTRL+DEL DO P_C_DEL
 ON KEY LABEL CTRL+INS DO P_C_INS
 ON KEY LABEL ALT+DEL DO P_A_DEL
 ON KEY LABEL ALT+C DO P_A_C
 ON KEY LABEL ALT+S DO P_A_S
 ON KEY LABEL ALT+D DO P_A_D
 ON KEY LABEL ALT+Z DO P_A_Z
 ON KEY LABEL LEFTMOUSE DO P_MOUSE
ENDPROC
*
PROCEDURE Q2_0000a
 ON KEY LABEL F1
 ON KEY LABEL F2
 ON KEY LABEL F3
 ON KEY LABEL F4
 ON KEY LABEL F5
 ON KEY LABEL F6
 ON KEY LABEL F7
 ON KEY LABEL F8
 ON KEY LABEL F9
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 ON KEY LABEL PGUP
 ON KEY LABEL PGDN
 ON KEY LABEL ENTER
 ON KEY LABEL DNARROW
 ON KEY LABEL UPARROW
 ON KEY LABEL CTRL+P
 ON KEY LABEL CTRL+HOME
 ON KEY LABEL CTRL+END
 ON KEY LABEL CTRL+RIGHTARROW
 ON KEY LABEL CTRL+LEFTARROW
 ON KEY LABEL CTRL+DEL
 ON KEY LABEL CTRL+INS
 ON KEY LABEL ALT+DEL
 ON KEY LABEL ALT+C
 ON KEY LABEL ALT+D
 ON KEY LABEL ALT+S
 ON KEY LABEL ALT+Z
 ON KEY LABEL LEFTMOUSE
ENDPROC
*
PROCEDURE P3_0000a
 ON KEY LABEL F1 DO P_F1
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL TAB DO P_TAB
 ON KEY LABEL ALT+D DO P_A_D
 ON KEY LABEL LEFTMOUSE DO P_MOUSE
ENDPROC
*
PROCEDURE Q3_0000a
 ON KEY LABEL F1
 ON KEY LABEL ESC
 ON KEY LABEL TAB
 ON KEY LABEL ALT+D
 ON KEY LABEL LEFTMOUSE
ENDPROC
*
PROCEDURE P4_0000a
 ON KEY LABEL ESC DO P_ESC
ENDPROC
*
PROCEDURE Q4_0000a
 ON KEY LABEL ESC
ENDPROC
*
PROCEDURE PonMsj
 PRIVATE ptAm, ppAn_msj
 = INKEY(0.01)
 IF mwEr="T"
      SAVE SCREEN TO ppAn_msj
      DO coLbln
      @2,10 Say "  "+AllTrim(mMSJ)+"  " Font "&mLetRom",12 Style "BQI"
      mkEy = INKEY(1, "HM")
      RESTORE SCREEN FROM ppAn_msj
 ELSE
      WAIT WINDOW NOWAIT ALLTRIM(mmSj)
 ENDIF
 STORE SPACE(100) TO mmSj
 RELEASE ptAm, ppAn_msj
 RETURN
ENDPROC
*
PROCEDURE Ayuda
 DO CASE
      CASE mrEs="3"
           Define Window mPAN_SIS At -.4,-.6 Size mWFI,mWCO-.6 in Desktop Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",8 Style "NT" Color Scheme 9 System MDI
           Define Window mPAN_HLP At 3.5,108 Size mWFI-14,77   in Windows mPAN_SIS Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",10 Style "NT" Fill File "BMP\MNU_PS14.JPG" Color Scheme 9 Title "AYUDA DEL TECLADO" System MDI Icon File "ICON02.ICO"
      OTHERWISE
           Define Window mPAN_SIS At -.4,-.6 Size mWFI,mWCO-.6 in Desktop Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",8 Style "NT" Color Scheme 9 System MDI
           Define Window mPAN_HLP At .5,80 Size mWFI-9.5,77 in Windows mPAN_SIS Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",11 Style "NT" Fill File "BMP\MNU_PS14.JPG" Color Scheme 9 Title "AYUDA DEL TECLADO" System MDI Icon File "ICON02.ICO"
 ENDCASE
ENDPROC
*
PROCEDURE Marcos
 IF mrEs>"5"
      STORE INT((269.2)) TO muCo
 ENDIF
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 IF mrEs="5" .AND. maNc=1360 .AND. mcO0<=2 .AND. mcO0>1
      STORE 1 TO mcO0
      STORE muCo+1 TO muCo
 ENDIF
ENDPROC
*
PROCEDURE Marcos2
 IF mrEs>"5"
      STORE INT((269.2)) TO vuCo
 ENDIF
 STORE (mwFi-vuFi)/2 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0
 IF mrEs="5" .AND. maNc=1360 .AND. vcO0<=2 .AND. vcO0>1
      STORE 1 TO vcO0
      STORE vuCo+1 TO vuCo
 ENDIF
ENDPROC
*
PROCEDURE ReduceMemory
 DECLARE INTEGER SetProcessWorkingSetSize IN kernel32 AS  ;
         SetProcessWorkingSetSize INTEGER, INTEGER, INTEGER
 DECLARE INTEGER GetCurrentProcess IN kernel32 AS GetCurrentProcess
 npRoc = geTcurrentprocess()
 bb = seTprocessworkingsetsize(npRoc,-1,-1)
ENDPROC
*
PROCEDURE ChangeRes
 LPARAMETER paNc, paLt
 LOCAL laNc, laLt, lnModenum, lcDevmode
 pnUm = 0
 pdEv = REPLICATE(CHR(0), 156)
 laNc = IIF(EMPTY(paNc), 800, paNc)
 laLt = IIF(EMPTY(paLt), 600, paLt)
 DECLARE INTEGER EnumDisplaySettings IN Win32API STRING, INTEGER, STRING @
 DECLARE INTEGER ChangeDisplaySettings IN Win32API STRING @, INTEGER
 DO WHILE enUmdisplaysettings(.NULL.,pnUm,@pdEv)<>0
      pnUm = pnUm+1
 ENDDO
 pdEv = STUFF(pdEv, 41, 4, loNgtostr(1572864))
 pdEv = STUFF(pdEv, 109, 4, loNgtostr(paNc))
 pdEv = STUFF(pdEv, 113, 4, loNgtostr(paLt))
 chAngedisplaysettings(@pdEv,1)
ENDPROC
*
FUNCTION LongToStr
 LPARAMETER lnLongval
 LOCAL lnCnt, lcRetstr
 lcRetstr = ''
 FOR lnCnt = 24 TO 0 STEP -8
      lcRetstr = CHR(INT(lnLongval/(2^lnCnt)))+lcRetstr
      lnLongval = MOD(lnLongval, (2^lnCnt))
 ENDFOR
 RETURN lcRetstr
ENDFUNC
*
PROCEDURE Mensaje
 PARAMETER pfRa
 PRIVATE ppAn_msj
 @ 1, 1 SAY pfRa FONT "Arial", 8 STYLE "NQ" SIZE 1, 80
ENDPROC
*
PROCEDURE CambRes1
 PARAMETER poPc
 DO CASE
      CASE poPc=1
           chAngeres(640,480)
           STORE "1" TO mrEs
      CASE poPc=2
           chAngeres(800,600)
           STORE "2" TO mrEs
      CASE poPc=3
           chAngeres(1024,768)
           STORE "3" TO mrEs
      CASE poPc=4
           chAngeres(1280,600)
           STORE "4" TO mrEs
      CASE poPc=5
           chAngeres(1366,768)
           STORE "5" TO mrEs
 ENDCASE
 STORE 99 TO mkEy
ENDPROC
*
