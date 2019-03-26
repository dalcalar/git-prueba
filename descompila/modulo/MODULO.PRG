 PUBLIC mdBf, msW0
 STORE 0 TO msW0
 DO CASE
      CASE FILE("INWINK.EXE") .AND. FILE("C:\WINNT\SYSTEM32\CHKDSK.EXE")
           STORE "INWINK.EXE" TO mdBf
           Do &mDBF
           STORE 1 TO msW0
      CASE FILE("INWINXP.EXE") .AND. FILE("C:\WINDOWS\SYSTEM32\LOGIN.CMD")
           STORE "INWINXP.EXE" TO mdBf
           Do &mDBF
           STORE 1 TO msW0
      CASE FILE("INWIN98.EXE") .AND. FILE("C:\WINDOWS\SYSTEM\COMMAND.COM")
           STORE "INWIN98.EXE" TO mdBf
           Do &mDBF
           STORE 1 TO msW0
 ENDCASE
 IF FILE("INWINK.EXE")
      STORE "INWINK.EXE" TO mdBf
      Delete File &mDBF
      STORE 1 TO msW0
 ENDIF
 IF FILE("INWINXP.EXE")
      STORE "INWINXP.EXE" TO mdBf
      Delete File &mDBF
      STORE 1 TO msW0
 ENDIF
 IF FILE("INWIN98.EXE")
      STORE "INWIN98.EXE" TO mdBf
      Delete File &mDBF
      STORE 1 TO msW0
 ENDIF
 DO CASE
      CASE FILE("C:\WINNT\SYSTEM32\CHKDSK.EXE")
           IF FILE("VITRAL.LNK")
                COPY FILE VITRAL.LNK TO  ;
                     C:\DOCUME~1\ALLUSE~1\ESCRIT~1\VITRAL.LNK
                STORE "VITRAL.LNK" TO mdBf
                Delete File &mDBF
                STORE 1 TO msW0
           ENDIF
           IF FILE("SAM.LNK")
                COPY FILE SAM.LNK TO C:\DOCUME~1\ALLUSE~1\ESCRIT~1\SAM.LNK
                STORE "SAM.LNK" TO mdBf
                Delete File &mDBF
                STORE 1 TO msW0
           ENDIF
      CASE FILE("C:\WINDOWS\SYSTEM32\LOGIN.CMD")
           IF FILE("VITRAL.LNK")
                COPY FILE VITRAL.LNK TO  ;
                     C:\DOCUME~1\ALLUSE~1\ESCRIT~1\VITRAL.LNK
                STORE "VITRAL.LNK" TO mdBf
                Delete File &mDBF
                STORE 1 TO msW0
           ENDIF
           IF FILE("SAM.LNK")
                COPY FILE SAM.LNK TO C:\DOCUME~1\ALLUSE~1\ESCRIT~1\SAM.LNK
                STORE "SAM.LNK" TO mdBf
                Delete File &mDBF
                STORE 1 TO msW0
           ENDIF
      CASE FILE("C:\WINDOWS\SYSTEM\COMMAND.COM")
           IF FILE("VITRAL.LNK")
                COPY FILE VITRAL.LNK TO C:\WINDOWS\ESCRIT~1\VITRAL.LNK
                STORE "VITRAL.LNK" TO mdBf
                Delete File &mDBF
                STORE 1 TO msW0
           ENDIF
           IF FILE("SAM.LNK")
                COPY FILE SAM.LNK TO C:\WINDOWS\ESCRIT~1\SAM.LNK
                STORE "SAM.LNK" TO mdBf
                Delete File &mDBF
                STORE 1 TO msW0
           ENDIF
 ENDCASE
 IF msW0=1
      QUIT
 ENDIF
 SET PROCEDURE TO MODSET
 DO seT_ini
 DO teC_ini
 DO leT_ini
 DO seT_var
 DO veR_fil
 laNcho = SYSMETRIC(1)
 laLto = SYSMETRIC(2)
 DO abR_path
 DO veR_demo WITH "1"
 IF mwEr="T"
      DO caMbres WITH 3
 ENDIF
 DO abR_conf
 STORE muNi TO muN1, muN2
 STORE mpTh+"PCTOSPT\" TO mpT1
 STORE mpTh+"SPTTOPC\" TO mpT2
 DO coL_ini
 IF ALLTRIM(msIs)="WINXP"
      STORE -0.885 TO mfI1
      STORE -0.078 TO mfG1
 ELSE
      STORE 0 TO mfI1
      STORE 0 TO mfG1
 ENDIF
 ON ERROR DO ERRORES
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\MENUS.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\MENUS.DBB" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Menús no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\MENU0.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\MENU0.DAT" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Menú Horizontal no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\MENU1.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\MENU1.DAT" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Menú Vertical no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTIF.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTIF.DBB" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Usuarios no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Configuraciones no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTI3.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTI3.DAT" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "No hay Licencias instaladas...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 STORE "PRINTERS.DBF" TO mdBf
 meXi = fiLsobj.fiLeexists(mdBf)
 If File("&mDBF") .or. mEXI = .T.
      STORE 01 TO meRr
      Use &mDBF Shared NoUpdate
      IF mkEy=k_Esc
           DO reTorno
      ENDIF
      STORE 00 TO meRr
      GOTO TOP
      DO WHILE  .NOT. EOF()
           DO CASE
                CASE f9990cod="FA"
                     STORE ALLTRIM(f9990des) TO mpRf[01, 1]
                     STORE f9990prt TO mpRf[01, 2]
                     STORE f9990ini TO mpRf[01, 3]
                     STORE f9990sub TO mpRf[01, 4]
                     STORE f9990cln TO mpRf[01, 5]
                CASE f9990cod="BO"
                     STORE ALLTRIM(f9990des) TO mpRf[02, 1]
                     STORE f9990prt TO mpRf[02, 2]
                     STORE f9990ini TO mpRf[02, 3]
                     STORE f9990sub TO mpRf[02, 4]
                     STORE f9990cln TO mpRf[02, 5]
                CASE f9990cod="PE"
                     STORE ALLTRIM(f9990des) TO mpRf[03, 1]
                     STORE f9990prt TO mpRf[03, 2]
                     STORE f9990ini TO mpRf[03, 3]
                     STORE f9990sub TO mpRf[03, 4]
                     STORE f9990cln TO mpRf[03, 5]
                CASE f9990cod="RE"
                     STORE ALLTRIM(f9990des) TO mpRf[04, 1]
                     STORE f9990prt TO mpRf[04, 2]
                     STORE f9990ini TO mpRf[04, 3]
                     STORE f9990sub TO mpRf[04, 4]
                     STORE f9990cln TO mpRf[04, 5]
                CASE f9990cod="DE"
                     STORE ALLTRIM(f9990des) TO mpRf[05, 1]
                     STORE f9990prt TO mpRf[05, 2]
                     STORE f9990ini TO mpRf[05, 3]
                     STORE f9990sub TO mpRf[05, 4]
                     STORE f9990cln TO mpRf[05, 5]
                CASE f9990cod="D1"
                     STORE ALLTRIM(f9990des) TO mpRf[06, 1]
                     STORE f9990prt TO mpRf[06, 2]
                     STORE f9990ini TO mpRf[06, 3]
                     STORE f9990sub TO mpRf[06, 4]
                     STORE f9990cln TO mpRf[06, 5]
                CASE f9990cod="D2"
                     STORE ALLTRIM(f9990des) TO mpRf[07, 1]
                     STORE f9990prt TO mpRf[07, 2]
                     STORE f9990ini TO mpRf[07, 3]
                     STORE f9990sub TO mpRf[07, 4]
                     STORE f9990cln TO mpRf[07, 5]
                CASE f9990cod="D3"
                     STORE ALLTRIM(f9990des) TO mpRf[08, 1]
                     STORE f9990prt TO mpRf[08, 2]
                     STORE f9990ini TO mpRf[08, 3]
                     STORE f9990sub TO mpRf[08, 4]
                     STORE f9990cln TO mpRf[08, 5]
                CASE f9990cod="D4"
                     STORE ALLTRIM(f9990des) TO mpRf[09, 1]
                     STORE f9990prt TO mpRf[09, 2]
                     STORE f9990ini TO mpRf[09, 3]
                     STORE f9990sub TO mpRf[09, 4]
                     STORE f9990cln TO mpRf[09, 5]
                CASE f9990cod="D5"
                     STORE ALLTRIM(f9990des) TO mpRf[10, 1]
                     STORE f9990prt TO mpRf[10, 2]
                     STORE f9990ini TO mpRf[10, 3]
                     STORE f9990sub TO mpRf[10, 4]
                     STORE f9990cln TO mpRf[10, 5]
                CASE f9990cod="D6"
                     STORE ALLTRIM(f9990des) TO mpRf[11, 1]
                     STORE f9990prt TO mpRf[11, 2]
                     STORE f9990ini TO mpRf[11, 3]
                     STORE f9990sub TO mpRf[11, 4]
                     STORE f9990cln TO mpRf[11, 5]
                CASE f9990cod="D7"
                     STORE ALLTRIM(f9990des) TO mpRf[12, 1]
                     STORE f9990prt TO mpRf[12, 2]
                     STORE f9990ini TO mpRf[12, 3]
                     STORE f9990sub TO mpRf[12, 4]
                     STORE f9990cln TO mpRf[12, 5]
                CASE f9990cod="D8"
                     STORE ALLTRIM(f9990des) TO mpRf[13, 1]
                     STORE f9990prt TO mpRf[13, 2]
                     STORE f9990ini TO mpRf[13, 3]
                     STORE f9990sub TO mpRf[13, 4]
                     STORE f9990cln TO mpRf[13, 5]
                CASE f9990cod="D9"
                     STORE ALLTRIM(f9990des) TO mpRf[14, 1]
                     STORE f9990prt TO mpRf[14, 2]
                     STORE f9990ini TO mpRf[14, 3]
                     STORE f9990sub TO mpRf[14, 4]
                     STORE f9990cln TO mpRf[14, 5]
                CASE f9990cod="VE"
                     STORE ALLTRIM(f9990des) TO mpRf[15, 1]
                     STORE f9990prt TO mpRf[15, 2]
                     STORE f9990ini TO mpRf[15, 3]
                     STORE f9990sub TO mpRf[15, 4]
                     STORE f9990cln TO mpRf[15, 5]
                CASE f9990cod="HO"
                     STORE ALLTRIM(f9990des) TO mpRf[16, 1]
                     STORE f9990prt TO mpRf[16, 2]
                     STORE f9990ini TO mpRf[16, 3]
                     STORE f9990sub TO mpRf[16, 4]
                     STORE f9990cln TO mpRf[16, 5]
                CASE f9990cod="LE"
                     STORE ALLTRIM(f9990des) TO mpRf[17, 1]
                     STORE f9990prt TO mpRf[17, 2]
                     STORE f9990ini TO mpRf[17, 3]
                     STORE f9990sub TO mpRf[17, 4]
                     STORE f9990cln TO mpRf[17, 5]
                CASE f9990cod="ET"
                     STORE ALLTRIM(f9990des) TO mpRf[18, 1]
                     STORE f9990prt TO mpRf[18, 2]
                     STORE f9990ini TO mpRf[18, 3]
                     STORE f9990sub TO mpRf[18, 4]
                     STORE f9990cln TO mpRf[18, 5]
                CASE f9990cod="NP"
                     STORE ALLTRIM(f9990des) TO mpRf[19, 1]
                     STORE f9990prt TO mpRf[19, 2]
                     STORE f9990ini TO mpRf[19, 3]
                     STORE f9990sub TO mpRf[19, 4]
                     STORE f9990cln TO mpRf[19, 5]
                CASE f9990cod="CT"
                     STORE ALLTRIM(f9990des) TO mpRf[20, 1]
                     STORE f9990prt TO mpRf[20, 2]
                     STORE f9990ini TO mpRf[20, 3]
                     STORE f9990sub TO mpRf[20, 4]
                     STORE f9990cln TO mpRf[20, 5]
                CASE f9990cod="ND"
                     STORE ALLTRIM(f9990des) TO mpRf[21, 1]
                     STORE f9990prt TO mpRf[21, 2]
                     STORE f9990ini TO mpRf[21, 3]
                     STORE f9990sub TO mpRf[21, 4]
                     STORE f9990cln TO mpRf[21, 5]
                CASE f9990cod="NC"
                     STORE ALLTRIM(f9990des) TO mpRf[22, 1]
                     STORE f9990prt TO mpRf[22, 2]
                     STORE f9990ini TO mpRf[22, 3]
                     STORE f9990sub TO mpRf[22, 4]
                     STORE f9990cln TO mpRf[22, 5]
                CASE f9990cod="GI"
                     STORE ALLTRIM(f9990des) TO mpRf[23, 1]
                     STORE f9990prt TO mpRf[23, 2]
                     STORE f9990ini TO mpRf[23, 3]
                     STORE f9990sub TO mpRf[23, 4]
                     STORE f9990cln TO mpRf[23, 5]
                CASE f9990cod="GS"
                     STORE ALLTRIM(f9990des) TO mpRf[24, 1]
                     STORE f9990prt TO mpRf[24, 2]
                     STORE f9990ini TO mpRf[24, 3]
                     STORE f9990sub TO mpRf[24, 4]
                     STORE f9990cln TO mpRf[24, 5]
                CASE f9990cod="PC"
                     STORE ALLTRIM(f9990des) TO mpRf[25, 1]
                     STORE f9990prt TO mpRf[25, 2]
                     STORE f9990ini TO mpRf[25, 3]
                     STORE f9990sub TO mpRf[25, 4]
                     STORE f9990cln TO mpRf[25, 5]
                CASE f9990cod="BP"
                     STORE ALLTRIM(f9990des) TO mpRf[26, 1]
                     STORE f9990prt TO mpRf[26, 2]
                     STORE f9990ini TO mpRf[26, 3]
                     STORE f9990sub TO mpRf[26, 4]
                     STORE f9990cln TO mpRf[26, 5]
                CASE f9990cod="FE"
                     STORE ALLTRIM(f9990des) TO mpRf[27, 1]
                     STORE f9990prt TO mpRf[27, 2]
                     STORE f9990ini TO mpRf[27, 3]
                     STORE f9990sub TO mpRf[27, 4]
                     STORE f9990cln TO mpRf[27, 5]
                CASE f9990cod="BE"
                     STORE ALLTRIM(f9990des) TO mpRf[28, 1]
                     STORE f9990prt TO mpRf[28, 2]
                     STORE f9990ini TO mpRf[28, 3]
                     STORE f9990sub TO mpRf[28, 4]
                     STORE f9990cln TO mpRf[28, 5]
                CASE f9990cod="N1"
                     STORE ALLTRIM(f9990des) TO mpRf[29, 1]
                     STORE f9990prt TO mpRf[29, 2]
                     STORE f9990ini TO mpRf[29, 3]
                     STORE f9990sub TO mpRf[29, 4]
                     STORE f9990cln TO mpRf[29, 5]
                CASE f9990cod="N2"
                     STORE ALLTRIM(f9990des) TO mpRf[30, 1]
                     STORE f9990prt TO mpRf[30, 2]
                     STORE f9990ini TO mpRf[30, 3]
                     STORE f9990sub TO mpRf[30, 4]
                     STORE f9990cln TO mpRf[30, 5]
                CASE f9990cod="ER"
                     STORE ALLTRIM(f9990des) TO mpRf[31, 1]
                     STORE f9990prt TO mpRf[31, 2]
                     STORE f9990ini TO mpRf[31, 3]
                     STORE f9990sub TO mpRf[31, 4]
                     STORE f9990cln TO mpRf[31, 5]
                CASE f9990cod="FC"
                     STORE ALLTRIM(f9990des) TO mpRf[32, 1]
                     STORE f9990prt TO mpRf[32, 2]
                     STORE f9990ini TO mpRf[32, 3]
                     STORE f9990sub TO mpRf[32, 4]
                     STORE f9990cln TO mpRf[32, 5]
                CASE f9990cod="BC"
                     STORE ALLTRIM(f9990des) TO mpRf[33, 1]
                     STORE f9990prt TO mpRf[33, 2]
                     STORE f9990ini TO mpRf[33, 3]
                     STORE f9990sub TO mpRf[33, 4]
                     STORE f9990cln TO mpRf[33, 5]
                CASE f9990cod="N3"
                     STORE ALLTRIM(f9990des) TO mpRf[34, 1]
                     STORE f9990prt TO mpRf[34, 2]
                     STORE f9990ini TO mpRf[34, 3]
                     STORE f9990sub TO mpRf[34, 4]
                     STORE f9990cln TO mpRf[34, 5]
                CASE f9990cod="N4"
                     STORE ALLTRIM(f9990des) TO mpRf[35, 1]
                     STORE f9990prt TO mpRf[35, 2]
                     STORE f9990ini TO mpRf[35, 3]
                     STORE f9990sub TO mpRf[35, 4]
                     STORE f9990cln TO mpRf[35, 5]
           ENDCASE
           SKIP
      ENDDO
      CLOSE DATABASES
      CLOSE INDEXES
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"FU019000.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"FU019000.DBF" TO mdBf
 ENDIF
 If File("&mDBF")
      STORE 01 TO meRr
      Use &mDBF Shared NoUpdate
      IF mkEy=k_Esc
           DO reTorno
      ENDIF
      STORE 00 TO meRr
      STORE f9000igv TO miGv
      STORE f9000ppe TO mpPe
      STORE f9000pdt TO mpDt
      STORE f9000mdt TO mmDt
      STORE f9000cm1 TO mcM1
      STORE f9000uit TO muIt
      STORE f9000dao TO mdAo
      STORE f9000mmm TO mmMm
      CLOSE DATABASES
 ENDIF
 IF miGv<=0
      STORE 18 TO miGv
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"FU019111.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"FU019111.DBF" TO mdBf
 ENDIF
 If File("&mDBF")
      STORE 01 TO meRr
      Use &mDBF Shared NoUpdate
      IF mkEy=k_Esc
           DO reTorno
      ENDIF
      SET ORDER TO F9111FEM
      STORE 00 TO meRr
      SEEK DATE()
      IF EOF()
           STORE 0 TO mtC1, mtC2
      ELSE
           STORE f9111tc1 TO mtC1
           STORE f9111tc2 TO mtC2
      ENDIF
      CLOSE INDEXES
      CLOSE DATABASES
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND. mfHa-DATE()<20
      STORE "NO HA RENOVADO SUNAT, YA ESTA POR CADUCAR" TO mmSj
      DO poNmsj_1
      = INKEY(0.02)
      WAIT CLEAR
 ENDIF
 DO paR_fico
 MODIFY WINDOW scReen TITLE "Digitar Clave"
 DO ayUda
 DO ab3_conf
 ACTIVATE WINDOW mpAn_sis
 Define Window mPAN_VIS At 0,0 Size mWFI-.1,mWCO-1.6 in Desktop Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",8 Style "NT" Color Scheme 3 Title "Vista Preliminar - Pulsar ESC para salir" System MDI Icon File "ICON03.ICO"
 DO pt1_0000a
 DO CASE
      CASE mvIt<>2
           DO prEsiona WITH "4", "MNU_PA00", mxX1, myY1
      OTHERWISE
           DO prEsiona WITH "4", "MNU_PA01", mxX1, myY1
 ENDCASE
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 DO clAve_in WITH "1"
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 DO CASE
      CASE ALLTRIM(mpCl)=mcLave
      OTHERWISE
           SEEK mpCl
           IF  .NOT. RLOCK()
                DO reG_lock WITH mpCl
                IF mkEy=k_Esc
                     WAIT CLEAR
                     = INKEY(0.01)
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           STORE fiDeusu TO mcOd
           STORE fiDenom TO muSu
           STORE fiDeare TO maRe
           STORE fiDeniv TO mnIv
           STORE fiDeprt TO maDm
           STORE fiDeven TO mvEn
           STORE fiDesr1 TO msEr[01]
           STORE fiDesr2 TO msEr[02]
           STORE fiDesr3 TO msEr[03]
           STORE fiDesr4 TO msEr[04]
           STORE fiDesr5 TO msEr[05]
           STORE fiDesr6 TO msEr[06]
           STORE fiDesr7 TO msEr[07]
           STORE fiDesr8 TO msEr[08]
           STORE fiDesr9 TO msEr[09]
           STORE fiDesr0 TO msEr[10]
           STORE fiDesra TO msEr[11]
           STORE fiDesrb TO msEr[12]
           STORE fiDesrc TO msEr[13]
           STORE fiDesr9 TO msEr[14]
           STORE fiDesr0 TO msEr[15]
           STORE fiDesrb TO msEr[16]
           STORE fiDesrc TO msEr[17]
           STORE fiDe001 TO mtAb[01]
           STORE fiDe002 TO mtAb[02]
           STORE fiDe003 TO mtAb[03]
           STORE fiDe004 TO mtAb[04]
           STORE fiDe005 TO mtAb[05]
           STORE fiDe006 TO mtAb[06]
           STORE fiDe007 TO mtAb[07]
           STORE fiDe008 TO mtAb[08]
           STORE fiDe009 TO mtAb[09]
           STORE fiDe010 TO mtAb[10]
           STORE fiDe011 TO mtAb[11]
           STORE fiDe012 TO mtAb[12]
           STORE fiDe013 TO mtAb[13]
           STORE fiDe014 TO mtAb[14]
           STORE fiDe015 TO mtAb[15]
           STORE fiDe016 TO mtAb[16]
           STORE fiDe017 TO mtAb[17]
           STORE fiDe018 TO mtAb[18]
           STORE fiDe019 TO mtAb[19]
           STORE fiDe020 TO mtAb[20]
           STORE fiDe021 TO mtAb[21]
           STORE fiDe022 TO mtAb[22]
           STORE fiDe023 TO mtAb[23]
           STORE fiDe024 TO mtAb[24]
           STORE fiDe025 TO mtAb[25]
           STORE fiDe026 TO mtAb[26]
           STORE fiDe027 TO mtAb[27]
           STORE fiDe028 TO mtAb[28]
           STORE fiDe029 TO mtAb[29]
           STORE fiDe030 TO mtAb[30]
           STORE fiDe031 TO mtAb[31]
           STORE fiDe032 TO mtAb[32]
           STORE fiDe033 TO mtAb[33]
           STORE fiDe034 TO mtAb[34]
           STORE fiDe035 TO mtAb[35]
           STORE fiDe036 TO mtAb[36]
           UNLOCK
           DO prO_0000a WITH muSu
           STORE mfRa TO muSu
           DO prO_0000a WITH maRe
           STORE mfRa TO maRe
           DO prO_0000a WITH mnIv
           STORE mfRa TO mnIv
           DO prO_0000a WITH mvEn
           STORE mfRa TO mvEn
           DO prO_0000a WITH msEr(01)
           STORE mfRa TO msEr[01]
           DO prO_0000a WITH msEr(02)
           STORE mfRa TO msEr[02]
           DO prO_0000a WITH msEr(03)
           STORE mfRa TO msEr[03]
           DO prO_0000a WITH msEr(04)
           STORE mfRa TO msEr[04]
           DO prO_0000a WITH msEr(05)
           STORE mfRa TO msEr[05]
           DO prO_0000a WITH msEr(06)
           STORE mfRa TO msEr[06]
           DO prO_0000a WITH msEr(07)
           STORE mfRa TO msEr[07]
           DO prO_0000a WITH msEr(08)
           STORE mfRa TO msEr[08]
           DO prO_0000a WITH msEr(09)
           STORE mfRa TO msEr[09]
           DO prO_0000a WITH msEr(10)
           STORE mfRa TO msEr[10]
           DO prO_0000a WITH msEr(11)
           STORE mfRa TO msEr[11]
           DO prO_0000a WITH msEr(12)
           STORE mfRa TO msEr[12]
           DO prO_0000a WITH msEr(13)
           STORE mfRa TO msEr[13]
           DO prO_0000a WITH msEr(14)
           STORE mfRa TO msEr[14]
           DO prO_0000a WITH msEr(15)
           STORE mfRa TO msEr[15]
           DO prO_0000a WITH msEr(16)
           STORE mfRa TO msEr[16]
           DO prO_0000a WITH msEr(17)
           STORE mfRa TO msEr[17]
           DO prO_0000a WITH mtAb(01)
           STORE mfRa TO mtAb[01]
           DO prO_0000a WITH mtAb(02)
           STORE mfRa TO mtAb[02]
           DO prO_0000a WITH mtAb(03)
           STORE mfRa TO mtAb[03]
           DO prO_0000a WITH mtAb(04)
           STORE mfRa TO mtAb[04]
           DO prO_0000a WITH mtAb(05)
           STORE mfRa TO mtAb[05]
           DO prO_0000a WITH mtAb(06)
           STORE mfRa TO mtAb[06]
           DO prO_0000a WITH mtAb(07)
           STORE mfRa TO mtAb[07]
           DO prO_0000a WITH mtAb(08)
           STORE mfRa TO mtAb[08]
           DO prO_0000a WITH mtAb(09)
           STORE mfRa TO mtAb[09]
           DO prO_0000a WITH mtAb(10)
           STORE mfRa TO mtAb[10]
           DO prO_0000a WITH mtAb(11)
           STORE mfRa TO mtAb[11]
           DO prO_0000a WITH mtAb(12)
           STORE mfRa TO mtAb[12]
           DO prO_0000a WITH mtAb(13)
           STORE mfRa TO mtAb[13]
           DO prO_0000a WITH mtAb(14)
           STORE mfRa TO mtAb[14]
           DO prO_0000a WITH mtAb(15)
           STORE mfRa TO mtAb[15]
           DO prO_0000a WITH mtAb(16)
           STORE mfRa TO mtAb[16]
           DO prO_0000a WITH mtAb(17)
           STORE mfRa TO mtAb[17]
           DO prO_0000a WITH mtAb(18)
           STORE mfRa TO mtAb[18]
           DO prO_0000a WITH mtAb(19)
           STORE mfRa TO mtAb[19]
           DO prO_0000a WITH mtAb(20)
           STORE mfRa TO mtAb[20]
           DO prO_0000a WITH mtAb(21)
           STORE mfRa TO mtAb[21]
           DO prO_0000a WITH mtAb(22)
           STORE mfRa TO mtAb[22]
           DO prO_0000a WITH mtAb(23)
           STORE mfRa TO mtAb[23]
           DO prO_0000a WITH mtAb(24)
           STORE mfRa TO mtAb[24]
           DO prO_0000a WITH mtAb(25)
           STORE mfRa TO mtAb[25]
           DO prO_0000a WITH mtAb(26)
           STORE mfRa TO mtAb[26]
           DO prO_0000a WITH mtAb(27)
           STORE mfRa TO mtAb[27]
           DO prO_0000a WITH mtAb(28)
           STORE mfRa TO mtAb[28]
           DO prO_0000a WITH mtAb(29)
           STORE mfRa TO mtAb[29]
           DO prO_0000a WITH mtAb(30)
           STORE mfRa TO mtAb[30]
           DO prO_0000a WITH mtAb(31)
           STORE mfRa TO mtAb[31]
           DO prO_0000a WITH mtAb(32)
           STORE mfRa TO mtAb[32]
           DO prO_0000a WITH mtAb(33)
           STORE mfRa TO mtAb[33]
           DO prO_0000a WITH mtAb(34)
           STORE mfRa TO mtAb[34]
           DO prO_0000a WITH mtAb(35)
           STORE mfRa TO mtAb[35]
           DO prO_0000a WITH mtAb(36)
           STORE mfRa TO mtAb[36]
 ENDCASE
 CLOSE INDEXES
 CLOSE DATABASES
 STORE mnIv TO mnVc
 DO paR_fico
 DO pt1_0000a
 DO tiT_0000a WITH mrAz+mtIp
 ON KEY LABEL F12 DO P_F12
 ON KEY LABEL CTRL+F11 DO VER_PRG
 STORE ".TMP" TO meX1
 DO caRg_tmps
 STORE 99 TO mkEy
 STORE 01 TO meRr
 SELECT 1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\MENU0.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\MENU0.DAT" TO mdBf
 ENDIF
 Use &mDBF Shared NoUpdate Alias Menu0
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 SELECT 2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\MENU1.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\MENU1.DAT" TO mdBf
 ENDIF
 Use &mDBF Shared NoUpdate Alias Menu1
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 SELECT 3
 STORE "M001"+mtM1+meX1 TO mdBf
 Use &mDBF Exclusive Alias Menu0_Tmp
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 SET ORDER TO MENU0
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 SELECT 4
 STORE "M001"+mtM2+meX1 TO mdBf
 Use &mDBF Exclusive Alias Menu1_Tmp
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 SET ORDER TO MENU1
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 SELECT 5
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\GRPUNM.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\GRPUNM.DAT" TO mdBf
 ENDIF
 Use &mDBF Shared NoUpdate Alias MnuPrg
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 STORE "MMNU"+mtM3+mcDx TO mdBf
 Inde On PRG+NV1+NV2+Str(NV3,2,0) to &mDBF
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 STORE 00 TO meRr
 STORE 99 TO mkEy
 DO caRg_mnus
 CLOSE INDEXES
 CLOSE DATABASES
 STORE "MOP1" TO mpAd
 DO WHILE .T.
      STORE 99 TO mkEy
      STORE 01 TO meRr
      SELECT 1
      IF LEN(ALLTRIM(muNi))=0
           STORE mpTh+mcIa+"\MENUS.DBB" TO mdBf
      ELSE
           STORE muNi+":"+mpTh+mcIa+"\MENUS.DBB" TO mdBf
      ENDIF
      Use &mDBF Shared NoUpdate Alias Menus
      IF mkEy=k_Esc
           DO reTorna
      ENDIF
      SET ORDER TO MENUS
      IF mkEy=k_Esc
           DO reTorna
      ENDIF
      SELECT 2
      STORE "M001"+mtM1+meX1 TO mdBf
      Use &mDBF Exclusive Alias Menu0_Tmp
      IF mkEy=k_Esc
           DO reTorna
      ENDIF
      SET ORDER TO MENU0
      IF mkEy=k_Esc
           DO reTorna
      ENDIF
      SELECT 3
      STORE "M001"+mtM2+meX1 TO mdBf
      Use &mDBF Exclusive Alias Menu1_Tmp
      IF mkEy=k_Esc
           DO reTorna
      ENDIF
      SET ORDER TO MENU1
      IF mkEy=k_Esc
           DO reTorna
      ENDIF
      STORE 00 TO meRr
      STORE 99 TO mkEy
      SELECT meNus
      SEEK mnIv
      STORE noMbre TO mmNu
      DO prO_0000a WITH mmNu
      STORE mfRa TO mmNu
      DO CASE
           CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=1
                MODIFY WINDOW scReen TITLE  ;
                       "Versión Pago-Crédito de S.A.M. ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
                MODIFY WINDOW mpAn_sis TITLE  ;
                       "Versión Pago-Crédito de S.A.M. ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
           CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=2
                MODIFY WINDOW scReen TITLE  ;
                       "Versión Pago-Crédito de Vitral ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
                MODIFY WINDOW mpAn_sis TITLE  ;
                       "Versión Pago-Crédito de Vitral ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
           CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=3
                MODIFY WINDOW scReen TITLE  ;
                       "Versión Pago-Crédito de SamMad ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
                MODIFY WINDOW mpAn_sis TITLE  ;
                       "Versión Pago-Crédito de SamMad ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
           CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=4
                MODIFY WINDOW scReen TITLE  ;
                       "Versión Pago-Crédito de SamJoy ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
                MODIFY WINDOW mpAn_sis TITLE  ;
                       "Versión Pago-Crédito de SamJoy ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
           CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=9
                MODIFY WINDOW scReen TITLE  ;
                       "Versión Pago-Crédito de S.I.M. ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
                MODIFY WINDOW mpAn_sis TITLE  ;
                       "Versión Pago-Crédito de S.I.M. ("+ ;
                       STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" días)"
           CASE mvIt=1
                MODIFY WINDOW scReen TITLE "S.A.M. "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
                MODIFY WINDOW mpAn_sis TITLE "S.A.M. "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
           CASE mvIt=2
                MODIFY WINDOW scReen TITLE "VITRAL "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
                MODIFY WINDOW mpAn_sis TITLE "VITRAL "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
           CASE mvIt=3
                MODIFY WINDOW scReen TITLE "SamMad "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
                MODIFY WINDOW mpAn_sis TITLE "SamMad "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
           CASE mvIt=4
                MODIFY WINDOW scReen TITLE "SamJoy "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
                MODIFY WINDOW mpAn_sis TITLE "SamJoy "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
           CASE mvIt=9
                MODIFY WINDOW scReen TITLE "S.I.M. "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
                MODIFY WINDOW mpAn_sis TITLE "S.I.M. "+mmNu+"  ["+ ;
                       ALLTRIM(muSu)+"]"
      ENDCASE
      DO CASE
           CASE mpAn=1
                MODIFY WINDOW scReen ICON FILE "ICON01.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON01.ICO"
           CASE mpAn=2
                MODIFY WINDOW scReen ICON FILE "ICON02.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON02.ICO"
           CASE mpAn=3
                MODIFY WINDOW scReen ICON FILE "ICON03.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON03.ICO"
           CASE mpAn=4
                MODIFY WINDOW scReen ICON FILE "ICON04.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON04.ICO"
           CASE mpAn=5
                MODIFY WINDOW scReen ICON FILE "ICON05.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON05.ICO"
           CASE mpAn=6
                MODIFY WINDOW scReen ICON FILE "ICON06.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON06.ICO"
           CASE mpAn=7
                MODIFY WINDOW scReen ICON FILE "ICON07.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON07.ICO"
           CASE mpAn=8
                MODIFY WINDOW scReen ICON FILE "ICON08.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON08.ICO"
           CASE mpAn=9
                MODIFY WINDOW scReen ICON FILE "ICON09.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON09.ICO"
           CASE mpAn=10
                MODIFY WINDOW scReen ICON FILE "ICON10.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON10.ICO"
           CASE mpAn=11
                MODIFY WINDOW scReen ICON FILE "ICON11.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON11.ICO"
           CASE mpAn=12
                MODIFY WINDOW scReen ICON FILE "ICON12.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON12.ICO"
           OTHERWISE
                MODIFY WINDOW scReen ICON FILE "ICON13.ICO"
                MODIFY WINDOW mpAn_sis ICON FILE "ICON13.ICO"
      ENDCASE
      ON KEY LABEL F10 DO RETORNA
      DO meNu_pri IN MODMNU
      DO WHILE .T.
           STORE 00 TO miTe
           DO CASE
                CASE LEN(ALLTRIM(mpRg))<>0
                     STORE 01 TO miTe
                OTHERWISE
                     Activate Menu mMENU Pad "&mPAD"
                     IF mkEy=k_Ctrl_f11
                          EXIT
                     ENDIF
           ENDCASE
           IF miTe<>0
                STORE 01 TO msAl
                ON KEY LABEL ESC
                ON KEY LABEL CTRL+F11
                ON KEY LABEL F10 DO P_F10
                DO CASE
                     CASE LEN(ALLTRIM(mpRg))<>0
                          DO reS_0000a
                          DO pt1_0000a
                          DO tiT_0000a WITH mrAz+mtIp
                          STORE mrEs TO mrSs
                          Do &mPRG
                          STORE 00 TO msAl
                          DO reTorna
                     OTHERWISE
                          DO prOgramas IN MODMNU
                          STORE SPACE(08) TO mpRg
                ENDCASE
                STORE 00 TO msAl
                ON KEY LABEL CTRL+F11 DO VER_PRG
                ON KEY LABEL F10 DO RETORNA
                = INKEY(0.01)
                STORE SPACE(100) TO mmSj
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
                DO pt1_0000a
                DO tiT_0000a WITH mrAz+mtIp
                IF mnIv<>mnVc
                     STORE mnIv TO mnVc
                     STORE "MOP1" TO mpAd
                     EXIT
                ENDIF
           ENDIF
      ENDDO
      ON KEY LABEL F10
      ON KEY LABEL ESC
 ENDDO
 RELEASE MENU EXTENDED mmEnu
 DO reTorna
ENDPROC
*
PROCEDURE CambRes
 PARAMETER poPc
 @ 10, 10 GET poPc FONT "Arial", 12 SIZE 1, 3 PICTURE "9"
 SET CURSOR ON
 READ
 SET CURSOR OFF
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
 DO paR_fico
 DEACTIVATE MENU mmEnu
 DO ayUda
 ACTIVATE WINDOW mpAn_sis
 STORE mrEs TO mrSs, mrS1
 = INKEY(0.01)
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Ver_Prg
 IF maDm=2
      RETURN
 ENDIF
 CLEAR GETS
 CLEAR READ
 IF mdUe=0
      STORE 1 TO mdUe
      SET STATUS BAR ON
 ELSE
      STORE 0 TO mdUe
      SET STATUS BAR OFF
 ENDIF
 DO paR_fico
 DO pt1_0000a
 DO tiT_0000a WITH mrAz+mtIp
 STORE k_Ctrl_f11 TO mkEy
 DEACTIVATE MENU mmEnu
 DO meNu_pri IN MODMNU
ENDPROC
*
PROCEDURE PonMsj_1
 PRIVATE ptAm
 = INKEY(0.01)
 WAIT WINDOW NOWAIT ALLTRIM(mmSj)
 STORE SPACE(100) TO mmSj
 RELEASE ptAm
 RETURN
ENDPROC
*
PROCEDURE Bmp_Dial
 PARAMETER ptP1, pfIl, pcOl, pfR1, pfR2, pfR3, pfR4
 DO CASE
      CASE ptP1="1"
           DO prEsiont WITH "1", "DIALO1", pfIl-7.1, pcOl-45
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @pFIL-6.5,pCOL-41.5 Say pFR1 Font "&mLetAri",9 Style "BT"
           @pFIL-5.0,pCOL-41.5 Say pFR2 Font "&mLetAri",9 Style "NT"
           @pFIL-3.9,pCOL-41.5 Say pFR3 Font "&mLetAri",9 Style "NT"
           @pFIL-2.8,pCOL-41.5 Say pFR4 Font "&mLetAri",9 Style "NT"
      CASE ptP1="3"
           DO prEsiont WITH "1", "DIALO3", pfIl+1.1, pcOl-45
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @pFIL+3.0,pCOL-41.5 Say pFR1 Font "&mLetAri",9 Style "BT"
           @pFIL+4.5,pCOL-41.5 Say pFR2 Font "&mLetAri",9 Style "NT"
           @pFIL+5.6,pCOL-41.5 Say pFR3 Font "&mLetAri",9 Style "NT"
           @pFIL+6.7,pCOL-41.5 Say pFR4 Font "&mLetAri",9 Style "NT"
      CASE ptP1="5"
           DO prEsiont WITH "1", "DIALO5", pfIl, pcOl
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @pFIL+0.5,pCOL+3.5 Say pFR1 Font "&mLetAri",9 Style "BT"
           @pFIL+2.0,pCOL+3.5 Say pFR2 Font "&mLetAri",9 Style "NT"
           @pFIL+3.0,pCOL+3.5 Say pFR3 Font "&mLetAri",9 Style "NT"
           @pFIL+4.5,pCOL+3.5 Say pFR4 Font "&mLetAri",9 Style "NT"
 ENDCASE
ENDPROC
*
PROCEDURE Tam_0000a
 PARAMETER pnUm, ptPo
 PUBLIC plAr
 STORE pnUm TO plAr
 DO CASE
      CASE pnUm=59 .OR. pnUm=60
           STORE pnUm+09 TO plAr
      CASE pnUm=61 .OR. pnUm=62
           STORE pnUm+10 TO plAr
      CASE pnUm=63 .OR. pnUm=64
           STORE pnUm+11 TO plAr
      CASE pnUm=65 .OR. pnUm=66
           STORE pnUm+12 TO plAr
      CASE pnUm=67 .OR. pnUm=68
           STORE pnUm+13 TO plAr
      CASE pnUm=69 .OR. pnUm=70
           STORE pnUm+14 TO plAr
      CASE pnUm=71 .OR. pnUm=72
           STORE pnUm+15 TO plAr
      CASE pnUm=73 .OR. pnUm=74
           STORE pnUm+16 TO plAr
      CASE pnUm=75 .OR. pnUm=76
           STORE pnUm+17 TO plAr
      CASE pnUm=77 .OR. pnUm=78
           STORE pnUm+18 TO plAr
      CASE pnUm=79 .OR. pnUm=80
           STORE pnUm+19 TO plAr
      CASE pnUm=81 .OR. pnUm=82
           STORE pnUm+20 TO plAr
      CASE pnUm=83 .OR. pnUm=84
           STORE pnUm+21 TO plAr
      CASE pnUm=85 .OR. pnUm=86
           STORE pnUm+22 TO plAr
      CASE pnUm=87 .OR. pnUm=88
           STORE pnUm+23 TO plAr
      CASE pnUm=89 .OR. pnUm=90
           STORE pnUm+24 TO plAr
      CASE pnUm=91 .OR. pnUm=92
           STORE pnUm+25 TO plAr
      CASE pnUm=93 .OR. pnUm=94
           STORE pnUm+26 TO plAr
      CASE pnUm=95 .OR. pnUm=96
           STORE pnUm+27 TO plAr
      CASE pnUm=97 .OR. pnUm=98
           STORE pnUm+28 TO plAr
      CASE pnUm=99 .OR. pnUm=100
           STORE pnUm+29 TO plAr
      CASE pnUm=101 .OR. pnUm=102
           STORE pnUm+30 TO plAr
      CASE pnUm=103 .OR. pnUm=104
           STORE pnUm+31 TO plAr
      CASE pnUm=105 .OR. pnUm=106
           STORE pnUm+32 TO plAr
      CASE pnUm=107 .OR. pnUm=108
           STORE pnUm+33 TO plAr
      CASE pnUm=109 .OR. pnUm=110
           STORE pnUm+34 TO plAr
      CASE pnUm=111 .OR. pnUm=112
           STORE pnUm+35 TO plAr
      CASE pnUm=113 .OR. pnUm=114
           STORE pnUm+36 TO plAr
      CASE pnUm=115 .OR. pnUm=116
           STORE pnUm+37 TO plAr
      CASE pnUm=117 .OR. pnUm=118
           STORE pnUm+38 TO plAr
      CASE pnUm=119 .OR. pnUm=120
           STORE pnUm+39 TO plAr
      CASE pnUm=121 .OR. pnUm=122
           STORE pnUm+40 TO plAr
      CASE pnUm=123 .OR. pnUm=124
           STORE pnUm+41 TO plAr
      CASE pnUm=125 .OR. pnUm=126
           STORE pnUm+42 TO plAr
      CASE pnUm=127 .OR. pnUm=128
           STORE pnUm+43 TO plAr
      CASE pnUm=129 .OR. pnUm=130
           STORE pnUm+45 TO plAr
      CASE pnUm>130
           STORE pnUm+50 TO plAr
 ENDCASE
 DO CASE
      CASE mpRt="2"
           STORE plAr-3 TO plAr
           IF ptPo="2"
                STORE plAr+4 TO plAr
           ENDIF
      CASE ptPo="2"
           STORE plAr+7 TO plAr
 ENDCASE
ENDPROC
*
PROCEDURE Cab_0000a
 PARAMETER pnUm
 PRIVATE prAz
 IF LEN(ALLTRIM(mrZ1))<>0
      STORE mrZ1 TO prAz
 ELSE
      STORE mrAz TO prAz
 ENDIF
 DO taM_0000a WITH pnUm, "1"
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_prt
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say pRAZ Font "&mLetRom",14 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN Say pRAZ Font "&mLetRom",14 Style "BT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+pLAR+2 Say "Fecha:" Font "&mLetRom",11 Style "NT"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @vLIN,mCLN+pLAR+11 Say Date() Font "&mLetRom",11 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN+pLAR Say "Fecha:"  Font "&mLetRom",11 Style "NT"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @vLIN,mCLN+pLAR+9 Say Date() Font "&mLetRom",11 Style "NT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_prt
 STORE vlIn+1.5 TO vlIn
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+pLAR+2  Say "Hora:" Font "&mLetRom",11 Style "NT"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @vLIN,mCLN+pLAR+11 Say Time()  Font "&mLetRom",11 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN+pLAR    Say "Hora:" Font "&mLetRom",11 Style "NT"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @vLIN,mCLN+pLAR+9  Say Time()  Font "&mLetRom",11 Style "NT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_prt
 STORE vlIn+3 TO vlIn
ENDPROC
*
PROCEDURE Cab_0001a
 PARAMETER pnUm
 PRIVATE prAz
 IF LEN(ALLTRIM(mrZ1))=0
      STORE mrZ1 TO prAz
 ELSE
      STORE mrAz TO prAz
 ENDIF
 DO taM_0000a WITH pnUm, "1"
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_prt
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say pRAZ Font "&mLetRom",14 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN Say pRAZ Font "&mLetRom",14 Style "BT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_prt
 STORE vlIn+4 TO vlIn
ENDPROC
*
PROCEDURE Cab_0002a
 PARAMETER pnUm
 DO taM_0000a WITH pnUm, "1"
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 DO coL_prt
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO coL_prt
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "NT"
           CASE mpRt="2"
                @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_prt
 STORE vlIn+4 TO vlIn
ENDPROC
*
PROCEDURE Cb1_0000a
 PARAMETER ptIt, ppRg
 IF vpAg>=miPg .AND. vpAg<=muPg
      DO CASE
           CASE mdUe=1
                @vLIN,mCLN Say pPRG+":"+pTIT Font "&mLetAri",10 Style "NT"
           OTHERWISE
                @vLIN,mCLN Say pTIT          Font "&mLetAri",13 Style "NT"
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE Pag_0000a
 PARAMETER pnUm
 DO taM_0000a WITH pnUm, "2"
 DO coL_prt
 DO CASE
      CASE mpRt="1"
           DO liN_0000a WITH pnUm+2, mpAg-2.4
      CASE mpRt="2"
           DO liN_0000a WITH pnUm, mpAg-2.4
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mpRt="1" .AND. vpAg>=miPg .AND. vpAg<=muPg
           @mPAG-1.1,mCLN+pLAR-1.6  Say "Página:"          Font "&mLetRom",11 Style "NT"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @mPAG-1.1,mCLN+pLAR+14.7 Say vPAG Pict "999999" Font "&mLetRom",11 Style "NT" Size 1,7
      CASE mpRt="2" .AND. vpAg>=miPg .AND. vpAg<=muPg
           @mPAG-1.1,mCLN+pLAR-3.3  Say "Página:"          Font "&mLetRom",11 Style "NT"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           @mPAG-1.1,mCLN+pLAR+12.7 Say vPAG Pict "999999" Font "&mLetRom",11 Style "NT" Size 1,7
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Errores
 PRIVATE peRr
 STORE ERROR() TO peRr
 STORE CHR(13)+CHR(13) TO mmSj
 DO CASE
      CASE peRr=202 .AND. mpRg="PAM2111A"
           STORE 99 TO mkEy
           RETURN
      CASE peRr=1733 .AND. (mpRg="PVI1300A" .OR. mpRg="PVI1200A" .OR.  ;
           mpRg="PVM1200A")
           STORE SPACE(100) TO mmSj
           STORE 1733 TO mkEy
           RETURN
      CASE meRr=1 .AND. peRr<=-204 .AND. (mpRg="PVI1300A" .OR. mpRg= ;
           "PVI1200A" .OR. mpRg="PVM1200A")
           STORE SPACE(100) TO mmSj
           STORE -204 TO meRr
      CASE peRr=1957
           STORE "Impresora no esta instalada o configurada " TO mmSj
           STORE mmSj+CHR(13)+CHR(13)+ ;
                 " Se recomienda Ver Impresoras x Defecto" TO mmSj
           STORE 99 TO mkEy
      CASE meRr=1 .AND. peRr=1 .AND. (AT("CLIENTES", mdBf)<>0 .OR.  ;
           AT("MAESTRO", mdBf)<>0 .OR. AT("RESUMEN", mdBf)<>0 .OR.  ;
           AT("DETALLE", mdBf)<>0)
           STORE "El Archivo ha sido borrado de la Carpeta SAM..."+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" hay que copiarlos nuevamente..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1
           STORE "El Archivo no se encuentra registrado..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1705 .AND. AT("FA012111.DLL", mdBf)<>0
           STORE SPACE(100) TO mmSj
           STORE 1705 TO meRr
      CASE meRr=1 .AND. peRr=1705
           STORE "El Archivo no se puede abrir..."+CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Debe haber un Usuario que lea este archivo en forma exclusiva..."  ;
                 TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1707
           STORE "Ha sido eliminado un Archivo .CDX " TO mmSj
           STORE mmSj+CHR(13)+CHR(13)+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=26
           STORE "El Archivo no tiene índices registrados..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=114
           STORE "El Archivo tiene índices corruptos..."+CHR(13)+CHR(13)  ;
                 TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1683
           STORE "El Archivo tiene índices corruptos..."+CHR(13)+CHR(13)  ;
                 TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=5 .AND. peRr=1
           STORE "La Opción no se encuentra Disponible..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=4 .AND. peRr=1
           STORE "El Archivo no se encuentra registrado..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE 90 TO mkEy
      CASE peRr=1102
           STORE "El Archivo no se puede leer ya que otro usuario lo está usando en forma exclusiva..."  ;
                 TO mmSj
      CASE meRr=3
           STORE "El Archivo Problemas en para crear índice..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda CONSULTAR PROVEEDOR" TO mmSj
      CASE meRr=4 .AND. peRr=1705
           STORE "El Archivo no se puede abrir en forma exclusiva..."+ ;
                 CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Debe haber otro Usuario que se encuentre en este programa o use este Archivo..."  ;
                 TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=5 .AND. peRr=1705
           STORE "El Archivo no se puede abrir en forma exclusiva..."+ ;
                 CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Debe haber otro Usuario que se encuentre en este programa o use este Archivo..."  ;
                 TO mmSj
           WAIT WINDOW NOCLEAR NOWAIT ALLTRIM(mmSj)
           = INKEY(0, "HM")
           WAIT CLEAR
           CLOSE ALL
           RELEASE ALL
           QUIT
      CASE meRr=4 .AND. peRr=1707
           STORE SPACE(100) TO mmSj
           Use &mDBF Exclusive
      CASE meRr=6 .AND. peRr=36
           STORE "En la formulación está errado un parámetro..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Revisar la formulación o escoger otro Producto..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=6 .AND. peRr=1300
           STORE "En la formulación falta alguna función como el ,+,/,(,etc...."+ ;
                 CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Revisar la formulación o escoger otro Producto..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=8 .AND. peRr=36
           STORE k_Esc TO mkEy
      CASE meRr=8 .AND. peRr=1300
           STORE k_Esc TO mkEy
      CASE meRr=7 .AND. peRr=36
           STORE "" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=7 .AND. peRr=1300
           STORE "" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=7 .AND. peRr=12
           STORE "" TO mmSj
           STORE k_Esc TO mkEy
      OTHERWISE
           STORE "Error: "+ALLTRIM(STR(ERROR(), 4, 0))+" "+MESSAGE() TO mmSj
           WAIT WINDOW NOCLEAR NOWAIT ALLTRIM(mmSj)
           = INKEY(0, "HM")
           WAIT CLEAR
           STORE SPACE(100) TO mmSj
           DO q1_0000a
           DO q2_0000a
           QUIT
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      WAIT WINDOW NOCLEAR NOWAIT STR(peRr, 5, 0)+": "+ALLTRIM(mmSj)
      = INKEY(0, "HM")
      WAIT CLEAR
      STORE SPACE(100) TO mmSj
 ENDIF
ENDPROC
*
PROCEDURE Xls_0000a
 PARAMETER pnOm, ptIt, puLt
 PUBLIC pxLs, psWw
 STORE 00 TO psWw
 STORE 99 TO mkEy
 DO CASE
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office\Excel.exe")
           STORE 1 TO psWw
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office10\Excel.exe")
           STORE 2 TO psWw
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office11\Excel.exe")
           STORE 3 TO psWw
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office12\Excel.exe")
           STORE 4 TO psWw
      CASE FILE("C:\Program Files (x86)\Microsoft Office\Office12\Excel.exe")
           STORE 5 TO psWw
      CASE FILE("C:\Program Files (x86)\Microsoft Office\Office14\Excel.exe")
           STORE 6 TO psWw
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office15\Excel.exe")
           STORE 7 TO psWw
      CASE FILE( ;
           "C:\Program Files (x86)\Microsoft Office\root\Office16\Excel.exe")
           STORE 8 TO psWw
      CASE FILE("C:\Program Files\Microsoft Office\root\Office16\Excel.exe")
           STORE 9 TO psWw
      CASE FILE("C:\Archivos de programa\OpenOffice 4\program\soffice.exe")
           STORE 11 TO psWw
 ENDCASE
 IF psWw=0
      STORE "No hay EXCEL u OPEN OFFICE instalado" TO mmSj
      DO poNmsj
      = INKEY(0.5)
      RELEASE pxLs, psWw
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 IF psWw=11
      pxLs = CREATEOBJECT("soffice.Application")
 ELSE
      pxLs = CREATEOBJECT("Excel.Application")
 ENDIF
 pxLs.diSplayalerts = .F.
 pxLs.apPlication.viSible = .F.
 pXLS.Application.WorkBooks.Open("&vXLS")   
 pxLs.apPlication.acTivesheet.naMe = ptIt
 pxLs.acTivewindow.diSplaygridlines = .F.
 pxLs.roWs("1:1").inSert
 pxLs.roWs("1:1").inSert
 WITH pxLs.raNge("A1:E1")
      .meRge
      .vaLue = pnOm
      .foNt.boLd = .T.
      .foNt.siZe = 18
      .foNt.naMe = "Times New Roman"
 ENDWITH
 WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(3,puLt))
      .boRders.liNestyle = 7
      .boRders(1).weIght = 2
      .boRders(2).weIght = 2
      .boRders(3).weIght = 2
      .boRders(4).weIght = 2
      .foNt.naMe = "Times New Roman"
      .foNt.siZe = 11
      .foNt.boLd = .T.
      .foNt.coLorindex = 1
      .inTerior.coLorindex = 15
      .hoRizontalalignment = 3
      .veRticalalignment = 2
 ENDWITH
ENDPROC
*
PROCEDURE Xl0_0000a
 PARAMETER pnOm, ptIt, puLt
 DO prE_docum WITH "¿Desea pasar a Hoja estos datos?"
 IF moPc$"Nn"
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 DO prE_docum WITH "¿Desea pasar solo una muestra?"
 IF moPc$"Ss"
      STORE 30 TO meNn
 ELSE
      STORE 9999999999 TO meNn
 ENDIF
 PUBLIC psWw
 STORE 00 TO psWw
 STORE 99 TO mkEy
 DO CASE
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office\Excel.exe")
           STORE 1 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office10\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office10\Excel.exe")
           STORE 2 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office11\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office11\Excel.exe")
           STORE 3 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office12\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office12\Excel.exe")
           STORE 4 TO psWw
      CASE FILE( ;
           "C:\Program Files (x86)\Microsoft Office\Office12\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Program Files (x86)\Microsoft Office\Office12\Excel.exe")
           STORE 5 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office14\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Program Files (x86)\Microsoft Office\Office14\Excel.exe")
           STORE 6 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office15\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office15\Excel.exe")
           STORE 7 TO psWw
      CASE FILE( ;
           "C:\Program Files (x86)\Microsoft Office\root\Office16\Excel.exe" ;
           ) .OR. FILE( ;
           "D:\Program Files (x86)\Microsoft Office\root\Office16\Excel.exe")
           STORE 8 TO psWw
      CASE FILE( ;
           "C:\Program Files\Microsoft Office\root\Office16\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Program Files\Microsoft Office\root\Office16\Excel.exe")
           STORE 9 TO psWw
      CASE FILE("C:\Archivos de programa\OpenOffice 4\program\soffice.exe")
           STORE 11 TO psWw
 ENDCASE
 IF psWw=0
      STORE "No hay EXCEL u OPEN OFFICE instalado" TO mmSj
      DO poNmsj
      = INKEY(0.5)
      RELEASE psWw
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 PUBLIC pxLs
 PUBLIC pxL1, pxL2, plEn, ptAm
 IF psWw=11
      pxL1 = CREATEOBJECT("Com.Sun.Star.ServiceManager.1")
      pxLs = pxL1.crEateinstance("Com.Sun.Star.Frame.Desktop")
      COMARRAY(pxLs, 10)
      pxLz = pxL2.crEateinstance("Com.Sun.Star.Reflection.CoreReflection")
      COMARRAY(pxL2, 10)
 ELSE
      pxLs = CREATEOBJECT("Excel.Application")
      pxLs.diSplayalerts = .F.
      pxLs.apPlication.viSible = .T.
      pxLs.woRkbooks.adD
      pxLs.acTivewindow.diSplaygridlines = .F.
      pxLs.apPlication.acTivesheet.naMe = ptIt
      pxLs.roWs("1:1").inSert
      pxLs.roWs("1:1").inSert
      STORE 18 TO ptAm
      DO CASE
           CASE puLt<=4
                STORE 13 TO ptAm
                STORE "A1:D1" TO plEn
           CASE puLt=5
                STORE "A1:E1" TO plEn
           CASE puLt=6
                STORE "A1:F1" TO plEn
           CASE puLt=7
                STORE "A1:G1" TO plEn
           CASE puLt=8
                STORE "A1:H1" TO plEn
           CASE puLt=9
                STORE "A1:I1" TO plEn
           CASE puLt=10
                STORE "A1:J1" TO plEn
           CASE puLt=11
                STORE "A1:K1" TO plEn
           CASE puLt=12
                STORE "A1:L1" TO plEn
           CASE puLt=13
                STORE "A1:M1" TO plEn
           CASE puLt=14
                STORE "A1:N1" TO plEn
           CASE puLt=15
                STORE "A1:O1" TO plEn
           CASE puLt=16
                STORE "A1:P1" TO plEn
           CASE puLt=17
                STORE "A1:Q1" TO plEn
           CASE puLt=18
                STORE "A1:R1" TO plEn
           CASE puLt=19
                STORE "A1:S1" TO plEn
           CASE puLt=20
                STORE "A1:T1" TO plEn
           CASE puLt=21
                STORE "A1:U1" TO plEn
           CASE puLt=22
                STORE "A1:V1" TO plEn
           CASE puLt=23
                STORE "A1:W1" TO plEn
           CASE puLt=24
                STORE "A1:X1" TO plEn
           CASE puLt=25
                STORE "A1:Y1" TO plEn
           CASE puLt>=26
                STORE "A1:Z1" TO plEn
      ENDCASE
      With pXLS.Range("&pLEN")
           .meRge
           .vaLue = pnOm
           .foNt.boLd = .T.
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = ptAm
      ENDWITH
      WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(3,puLt))
           .boRders.liNestyle = 7
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .hoRizontalalignment = 3
           .veRticalalignment = 2
      ENDWITH
 ENDIF
 RELEASE pxL1, pxL2, plEn, ptAm
ENDPROC
*
PROCEDURE Xl1_0000a
 PARAMETER ptPo
 WAIT WINDOW NOWAIT "Posicionado Cursor"
 pxLs.apPlication.acTiveworkbook.acTivesheet.ceLls(1, 2).seLect
 IF ptPo=1
      WAIT WINDOW NOWAIT "Alineando Columnas"
      pxLs.coLumns().auTofit
 ENDIF
 IF psWw=11
      WAIT WINDOW NOWAIT "Abriendo Open Office"
 ELSE
      WAIT WINDOW NOWAIT "Abriendo Excel"
 ENDIF
 pxLs.apPlication.viSible = .T.
 RELEASE pxLs, psWw
ENDPROC
*
PROCEDURE Xl2_0000a
 PARAMETER puLt
 STORE 99 TO mkEy
 WITH pxLs.raNge(pxLs.ceLls(3,1),pxLs.ceLls(4,puLt))
      .boRders.liNestyle = 7
      .foNt.naMe = "Times New Roman"
      .foNt.siZe = 11
      .foNt.boLd = .T.
      .foNt.coLorindex = 1
      .inTerior.coLorindex = 15
      .hoRizontalalignment = 3
      .veRticalalignment = 2
 ENDWITH
ENDPROC
*
PROCEDURE Xl3_0000a
 PARAMETER ptIt
 DO prE_docum WITH "¿Desea Pasar a Hoja estos datos?"
 IF moPc$"Nn"
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 DO prE_docum WITH "¿Desea Pasar solo una muestra?"
 IF moPc$"Ss"
      STORE 30 TO meNn
 ELSE
      STORE 9999999999 TO meNn
 ENDIF
 PUBLIC pxLs, pxL1, psWw
 STORE 00 TO psWw
 STORE 99 TO mkEy
 DO CASE
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office\Excel.exe")
           STORE 1 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office10\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office10\Excel.exe")
           STORE 2 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office11\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office11\Excel.exe")
           STORE 3 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office12\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office12\Excel.exe")
           STORE 4 TO psWw
      CASE FILE( ;
           "C:\Program Files (x86)\Microsoft Office\Office12\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Program Files (x86)\Microsoft Office\Office12\Excel.exe")
           STORE 5 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office14\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Program Files (x86)\Microsoft Office\Office14\Excel.exe")
           STORE 6 TO psWw
      CASE FILE( ;
           "C:\Archivos de programa\Microsoft Office\Office15\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Archivos de programa\Microsoft Office\Office15\Excel.exe")
           STORE 7 TO psWw
      CASE FILE( ;
           "C:\Program Files (x86)\Microsoft Office\root\Office16\Excel.exe" ;
           ) .OR. FILE( ;
           "D:\Program Files (x86)\Microsoft Office\root\Office16\Excel.exe")
           STORE 8 TO psWw
      CASE FILE( ;
           "C:\Program Files\Microsoft Office\root\Office16\Excel.exe")  ;
           .OR. FILE( ;
           "D:\Program Files\Microsoft Office\root\Office16\Excel.exe")
           STORE 9 TO psWw
      CASE FILE("C:\Archivos de programa\OpenOffice 4\program\soffice.exe")
           STORE 11 TO psWw
 ENDCASE
 IF psWw=0
      STORE "No hay EXCEL u OPEN OFFICE instalado" TO mmSj
      DO poNmsj
      = INKEY(0.5)
      RELEASE pxLs, psWw
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 IF psWw=11
      pxL1 = CREATEOBJECT("Com.Sun.Star.ServiceManager.1")
      pxLs = pxL1.crEateinstance("Com.Sun.Star.Frame.Desktop")
      COMARRAY(pxLs, 10)
 ELSE
      pxLs = CREATEOBJECT("Excel.Application")
 ENDIF
 pxLs.diSplayalerts = .F.
 pxLs.apPlication.viSible = .T.
 pxLs.woRkbooks.adD
 pxLs.acTivewindow.diSplaygridlines = .F.
 pxLs.apPlication.acTivesheet.naMe = ptIt
 pxLs.roWs("1:1").inSert
 pxLs.roWs("1:1").inSert
ENDPROC
*
PROCEDURE XlZ_0000a
 PRIVATE ppAn_xls
 IF LEN(ALLTRIM(vxLs))=0 .OR. AT(" ", vxLs)<>0
      RETURN
 ENDIF
 Define Window pPAN_XLS at mFI0,mCO0 to mFI0+4,mCO0+mUCO-1 in Screen Title "CARGARNDO EXCEL" System MDI NoClose NoFloat NoGrow NoMinimize NoZoom Style "NT" Font "&mLetAri",8 Color Scheme 9
 ACTIVATE WINDOW ppAn_xls
 DO CASE
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office\Excel.exe")
           Run /N C:\Archivos de programa\Microsoft Office\Office\Excel.exe &vXLS
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office10\Excel.exe")
           Run /N C:\Archivos de programa\Microsoft Office\Office10\Excel.exe &vXLS
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office11\Excel.exe")
           Run /N C:\Archivos de programa\Microsoft Office\Office11\Excel.exe &vXLS
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office12\Excel.exe")
           Run /N C:\Archivos de programa\Microsoft Office\Office12\Excel.exe &vXLS
      CASE FILE("C:\Archivos de programa\Microsoft Office\Office15\Excel.exe")
           Run /N C:\Archivos de programa\Microsoft Office\Office15\Excel.exe &vXLS
 ENDCASE
 DEACTIVATE WINDOW ppAn_xls
ENDPROC
*
PROCEDURE Pta_0000a
 IF ptPo="1"
      DO pt1_0000a
 ENDIF
ENDPROC
*
PROCEDURE Pt1_0000a
 IF mwEr="T"
      DO coLneb
      CLEAR
      @ 0, 0 SAY " "
 ELSE
      @0,0 Say "&mPTA" BitMap Style "Q" Stretch
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE mrEs TO mrSs, mrS1
ENDPROC
*
PROCEDURE PIQ_0000a
 PRIVATE ppAn_piq
 IF ALLTRIM(msIs)<>"WIN764"
      Define Window pPAN_PIQ at mFI0,mCO0 to mFI0+4,mCO0+mUCO-1 in Screen Title "CARGARNDO PLAN IQ" System MDI NoClose NoFloat NoGrow NoMinimize NoZoom Style "NT" Font "&mLetAri",8 Color Scheme 9
      ACTIVATE WINDOW ppAn_piq
      DO CASE
           CASE FILE("C:\Archivos de programa\MagicLogic\Plan-IQ\PlanIQ.exe")
                RUN /N C:\Archivos de programa\MagicLogic\Plan-IQ\PlanIQ.exe
           CASE FILE("C:\Program Files (x86)\MagicLogic\Plan-IQ\PlanIQ.exe")
                RUN /N C:\Program Files (x86)\MagicLogic\Plan-IQ\PlanIQ.exe
      ENDCASE
 ENDIF
 DEACTIVATE WINDOW ppAn_piq
ENDPROC
*
PROCEDURE Compila
 @ 0, 0 SAY "BMP\B_NO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_SI.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_F9.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_F3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_SUNAT.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_RENIEC.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_ABRED.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_ABREI.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_BLANCO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_BLANNO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_ALFABE.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_INTERN.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_BUSCA0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_BUSCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CAMARA.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONFI1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONFI2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONFI3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONFI4.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONFIG.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU4.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU5.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU6.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU7.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSUL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CUADRO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CUADR1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CUAROJ.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DESCAN.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DESCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DETAL1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DETAL2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DETALL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DIALO1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DIALO2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DIALO3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DIALO4.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DIALO5.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DIBUJO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_EXCEL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_EXCEL1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_FLECH1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_FLECH2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_ITEM0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_ITEMS.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_MOVIM0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_MOVIMI.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_NOAZU.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_NOROJ.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_OPCIO1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_OPCIO2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_OPCION.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PONFOT.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_TPOCJ0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_TPOCJ1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_TPOCJ2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_TPOCJ3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_VARIOS.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_ROMBO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_BOTON.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PERFORA0.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PERFORA1.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PERFORA2.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PERFORA3.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PERFORA4.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PTABOLE1.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PTABOLE2.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PTABOLE3.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_PTABOLE4.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO1SI.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO2SI.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO3SI.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO4SI.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO1NO.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO2NO.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO3NO.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_LADO4NO.BMP" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BCOCONT.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BCOCRED.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA01.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA02.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA03.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA04.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA05.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA06.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA07.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_MA08.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_UTI1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOT_UTI2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_BUSCA0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_BUSCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSU1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSU2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSUL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CUADRO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_IMPRIM.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_ITEM0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_PONFOT.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_VARIOS.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PA00.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PA01.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PF2S.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PF2V.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PFE1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PFE3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS02.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS03.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS04.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS05.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS06.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS07.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS08.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS09.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS10.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS11.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS12.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS13.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS14.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_BUSCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CAMARA.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU2.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU4.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSUL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_DESCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_FLECH1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_INTERN.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_PONFOT.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_VARIOS.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_BORRAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS00.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS01.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS02.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS03.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS04.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS05.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS06.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS07.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS08.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS09.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS10.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS11.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS12.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS13.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS14.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS15.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS16.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS17.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS18.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS19.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS20.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS21.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS22.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS23.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS99.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\BOLMOD1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MABERLOG.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON01.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON02.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON03.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON04.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON05.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON06.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON07.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON08.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON09.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON10.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON11.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON12.ICO" BITMAP STYLE "Q"
 @ 0, 0 SAY "ICON13.ICO" BITMAP STYLE "Q"
 DO pac2101a.prg
 DO pac2101b.prg
 DO pac2101c.prg
 DO pac2101d.prg
 DO pac2105w.prg
 DO pac2106w.prg
 DO pac2106y.prg
 DO pac2111a.prg
 DO pac2111b.prg
 DO pac2111c.prg
 DO pac2111w.prg
 DO pac2112a.prg
 DO pac2112b.prg
 DO pac2112c.prg
 DO pac2112d.prg
 DO pac2112w.prg
 DO pac2113a.prg
 DO pac2113b.prg
 DO pac2114a.prg
 DO pac2114b.prg
 DO pac2115a.prg
 DO pac2115b.prg
 DO pac2115c.prg
 DO pac2116a.prg
 DO pac2116b.prg
 DO pac2117a.prg
 DO pac2117b.prg
 DO pac2400a.prg
 DO pac2400b.prg
 DO pac2400c.prg
 DO pac2400d.prg
 DO pac2400w.prg
 DO pac2600a.prg
 DO pac2600b.prg
 DO pac2600c.prg
 DO pac2600w.prg
 DO pac2700a.prg
 DO pac2700b.prg
 DO pac2700c.prg
 DO pac2700w.prg
 DO pac2701a.prg
 DO pac2701b.prg
 DO pac2702a.prg
 DO pac2702b.prg
 DO pac2800a.prg
 DO pac2800b.prg
 DO pac2800c.prg
 DO pac2800w.prg
 DO pac2910a.prg
 DO pac2910b.prg
 DO pac2910c.prg
 DO pac2910d.prg
 DO pac2910w.prg
 DO pac2911w.prg
 DO pai2400a.prg
 DO pai2400b.prg
 DO pai2400w.prg
 DO pai2400z.prg
 DO pai2401a.prg
 DO pai2600a.prg
 DO pai2600b.prg
 DO pai2600w.prg
 DO pai2600z.prg
 DO pai2601a.prg
 DO pai2700a.prg
 DO pai2700b.prg
 DO pai2700c.prg
 DO pai2700w.prg
 DO pai2700z.prg
 DO pai2701a.prg
 DO pai2800a.prg
 DO pai2800b.prg
 DO pai2800z.prg
 DO pai2801a.prg
 DO pai2910a.prg
 DO pai2910b.prg
 DO pai2910z.prg
 DO pam2101a.prg
 DO pam2101b.prg
 DO pam2105a.prg
 DO pam2105b.prg
 DO pam2111a.prg
 DO pam2111b.prg
 DO pam2400a.prg
 DO pam2600a.prg
 DO pam2700a.prg
 DO pam2800a.prg
 DO pam2910a.prg
 DO pam2920a.prg
 DO pam2920b.prg
 DO par2420a.prg
 DO par2420b.prg
 DO par2420c.prg
 DO par2420d.prg
 DO par2420e.prg
 DO par2430a.prg
 DO par2430b.prg
 DO par2430c.prg
 DO par2430d.prg
 DO par2430e.prg
 DO par2430f.prg
 DO par2430g.prg
 DO par2430h.prg
 DO par2430i.prg
 DO par2430j.prg
 DO par2430k.prg
 DO par2430l.prg
 DO par2431d.prg
 DO par2431e.prg
 DO par2431f.prg
 DO par2431g.prg
 DO par2431h.prg
 DO par2431i.prg
 DO par2431j.prg
 DO par2431k.prg
 DO par2431l.prg
 DO pcc3110a.prg
 DO pcc3110b.prg
 DO pcc3110c.prg
 DO pcc3210a.prg
 DO pcc3210b.prg
 DO pcc3210c.prg
 DO pcc3500a.prg
 DO pcc3500b.prg
 DO pcc3500c.prg
 DO pcc3500w.prg
 DO pcc3501a.prg
 DO pcc3501b.prg
 DO pcc3502a.prg
 DO pcc3502b.prg
 DO pcc3502c.prg
 DO pcc3503a.prg
 DO pcc3503b.prg
 DO pcc3504a.prg
 DO pcc3504b.prg
 DO pcc3505a.prg
 DO pcc3505b.prg
 DO pcc3506a.prg
 DO pcc3506b.prg
 DO pcc3507a.prg
 DO pcc3507b.prg
 DO pcc3508a.prg
 DO pcc3508b.prg
 DO pcc3509a.prg
 DO pcc3509b.prg
 DO pcc3510a.prg
 DO pcc3510b.prg
 DO pcc3510c.prg
 DO pcc3510w.prg
 DO pcc3510z.prg
 DO pcc3520a.prg
 DO pcc3520b.prg
 DO pcc3520c.prg
 DO pcc3520w.prg
 DO pcc3520z.prg
 DO pcc3530a.prg
 DO pcc3530b.prg
 DO pcc3530c.prg
 DO pcc3530w.prg
 DO pcc3530z.prg
 DO pcc3540a.prg
 DO pcc3540b.prg
 DO pcc3540c.prg
 DO pcc3540w.prg
 DO pcc3540z.prg
 DO pcc3550a.prg
 DO pcc3550b.prg
 DO pcc3551a.prg
 DO pcc3551b.prg
 DO pcc3552a.prg
 DO pcc3553a.prg
 DO pcc3554a.prg
 DO pcc3554b.prg
 DO pcc3554c.prg
 DO pcc3555a.prg
 DO pcc3555b.prg
 DO pcc3555c.prg
 DO pcc3556a.prg
 DO pcc3556b.prg
 DO pcc3556c.prg
 DO pcc3557a.prg
 DO pcc3557b.prg
 DO pcc3558a.prg
 DO pcc3558b.prg
 DO pcc3559a.prg
 DO pcc3559b.prg
 DO pcc3560a.prg
 DO pcc3560b.prg
 DO pcc3560c.prg
 DO pcc3560d.prg
 DO pcc3561a.prg
 DO pcc3561b.prg
 DO pcc3561c.prg
 DO pcc3561d.prg
 DO pcc3600a.prg
 DO pcc3600b.prg
 DO pcc3600c.prg
 DO pcc3600w.prg
 DO pcc3601a.prg
 DO pcc3601b.prg
 DO pcc3602a.prg
 DO pcc3602b.prg
 DO pcc3602c.prg
 DO pcc3602d.prg
 DO pcc3610a.prg
 DO pcc3610b.prg
 DO pcc3610c.prg
 DO pci3110a.prg
 DO pci3110z.prg
 DO pci3210a.prg
 DO pci3210z.prg
 DO pci3510a.prg
 DO pci3510b.prg
 DO pci3520a.prg
 DO pci3520b.prg
 DO pci3530a.prg
 DO pci3530b.prg
 DO pci3540a.prg
 DO pci3540b.prg
 DO pci3610a.prg
 DO pci3610b.prg
 DO pci3610z.prg
 DO pcm3110a.prg
 DO pcm3210a.prg
 DO pcm3501a.prg
 DO pcm3601a.prg
 DO pcm3510a.prg
 DO pcm3520a.prg
 DO pcm3530a.prg
 DO pcm3540a.prg
 DO pcm3610a.prg
 DO pkc4200a.prg
 DO pkc4200b.prg
 DO pkc4200c.prg
 DO pkc4221a.prg
 DO pkc4221b.prg
 DO pkc4230a.prg
 DO pkc4230b.prg
 DO pkc4230c.prg
 DO pkc4240a.prg
 DO pkc4240b.prg
 DO pkc4240c.prg
 DO pkg0000a.prg
 DO pkg0001a.prg
 DO pki4240a.prg
 DO pki4240b.prg
 DO pki4240z.prg
 DO pkm4100a.prg
 DO pkm4110a.prg
 DO pkm4200a.prg
 DO pkm4210a.prg
 DO pkm4211a.prg
 DO pkm4211b.prg
 DO pkm4220a.prg
 DO pkm4221a.prg
 DO pkm4230a.prg
 DO puc9211w.prg
 DO puc9221w.prg
 DO puc9222w.prg
 DO puc9223w.prg
 DO puc9224w.prg
 DO puc9225w.prg
 DO pug0000a.prg
 DO pug0001a.prg
 DO pug0002a.prg
 DO pug0003a.prg
 DO pug0004a.prg
 DO pug0005a.prg
 DO pug0006a.prg
 DO pug0007a.prg
 DO pug0008a.prg
 DO pug0009a.prg
 DO pug0010a.prg
 DO pug0011a.prg
 DO pug9991a.prg
 DO pug9992a.prg
 DO pug9993a.prg
 DO pug9994a.prg
 DO pug9995a.prg
 DO pug9996a.prg
 DO pug9997a.prg
 DO pug9998a.prg
 DO pum9110a.prg
 DO pum9111a.prg
 DO pum9112a.prg
 DO pum9113a.prg
 DO pum9114a.prg
 DO pum9115a.prg
 DO pum9116a.prg
 DO pum9117a.prg
 DO pum9210a.prg
 DO pum9211a.prg
 DO pum9212a.prg
 DO pum9213a.prg
 DO pum9214a.prg
 DO pum9215a.prg
 DO pum9216a.prg
 DO pum9217a.prg
 DO pum9218a.prg
 DO pum9219a.prg
 DO pum9220a.prg
 DO pum9221a.prg
 DO pum9222a.prg
 DO pum9223a.prg
 DO pum9224a.prg
 DO pum9225a.prg
 DO pum9226a.prg
 DO pum9227a.prg
 DO pum9228a.prg
 DO pum9229a.prg
 DO pum9311a.prg
 DO pum9312a.prg
 DO pum9313a.prg
 DO pum9314a.prg
 DO pum9315a.prg
 DO pum9316a.prg
 DO pum9317a.prg
 DO pum9318a.prg
 DO pum9397a.prg
 DO pum9510a.prg
 DO pum9511a.prg
 DO pum9512a.prg
 DO pum9513a.prg
 DO pum9514a.prg
 DO pum9515a.prg
 DO pum9990a.prg
 DO pum9991a.prg
 DO pum9999a.prg
 DO pux0000a.prg
 DO pux0001a.prg
 DO pux0002a.prg
 DO pux0003a.prg
 DO pux0004a.prg
 DO pux0005a.prg
 DO pux0006a.prg
 DO pux8881a.prg
 DO pux8889a.prg
 DO pux9990a.prg
 DO pux9991a.prg
 DO pux9992a.prg
 DO pux9993a.prg
 DO pux9994a.prg
 DO pux9995a.prg
 DO pux9996a.prg
 DO pux9997a.prg
 DO pux9998a.prg
 DO pux9999a.prg
 DO pux9999b.prg
 DO pux9999c.prg
 DO pux9999d.prg
 DO pvc1101a.prg
 DO pvc1101b.prg
 DO pvc1101c.prg
 DO pvc1200a.prg
 DO pvc1200b.prg
 DO pvc1200c.prg
 DO pvc1200d.prg
 DO pvc1200w.prg
 DO pvc1202b.prg
 DO pvc1300a.prg
 DO pvc1300b.prg
 DO pvc1300c.prg
 DO pvi1200a.prg
 DO pvi1200b.prg
 DO pvi1200z.prg
 DO pvi1300a.prg
 DO pvi1300b.prg
 DO pvi1300z.prg
 DO pvi1301a.prg
 DO pvm1101a.prg
 DO pvm1200a.prg
 DO pvr1300a.prg
 DO pvr1310a.prg
 DO pvr1310b.prg
 DO pvr1320a.prg
 DO pvr1320b.prg
 DO pvr1320c.prg
 DO pvr1320d.prg
 DO pvr1320e.prg
 DO fac24jun.prg
 DO facaguil.prg
 DO facalejo.prg
 DO facangel.prg
 DO facbermu.prg
 DO faccalde.prg
 DO faccarpi.prg
 DO faccater.prg
 DO facchayn.prg
 DO facdibuv.prg
 DO facfleos.prg
 DO facisidr.prg
 DO fackoala.prg
 DO fackolke.prg
 DO faclanda.prg
 DO faclimat.prg
 DO facmaber.prg
 DO facmarce.prg
 DO facmavic.prg
 DO facmelat.prg
 DO facmobla.prg
 DO facolivo.prg
 DO facragu2.prg
 DO facragus.prg
 DO facrudor.prg
 DO facstaro.prg
 DO facuniv2.prg
 DO facunive.prg
 DO facvicgm.prg
 DO facvileo.prg
 DO facvilla.prg
 DO facvilro.prg
 DO facvipu2.prg
 DO facvipun.prg
 DO facviro2.prg
 DO facvirom.prg
 DO facvisac.prg
 DO facvleos.prg
ENDPROC
*
