 SET PROCEDURE TO MODSET
 DO seT_ini
 DO teC_ini
 DO leT_ini
 DO seT_var
 DO veR_fil
 DO siN_demo
 DO abR_path
 STORE 1 TO mvIt
 STORE 0 TO mhLp
 DO ab1_conf
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
 DO coL_ini
 DO paR_fico
 DO reS_0000a
 DO paN_0000a
 MODIFY WINDOW scReen TITLE "ENCRIPTACIÓN ("+ALLTRIM(STR(maNc, 4, 0))+"x"+ ;
        ALLTRIM(STR(mlAr, 4, 0))+") ["+mrEs+"]" ICON FILE "ICON04.ICO"
 RELEASE pfRa
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE mrEs TO mrSs
 DO prEsiona WITH "4", "MNU_PA01", mxX1, myY1
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 DO clAve_in WITH "3"
 CLOSE INDEXES
 CLOSE DATABASES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh TO mpAt
 ELSE
      STORE muNi+":"+mpTh TO mpAt
 ENDIF
 SET CENTURY ON
 STORE 99 TO mkEy
 SELECT 1
 STORE mpAt+mcIa+"\MENUS.DBB" TO mdBf
 Use &mDBF Exclusive Alias Menus
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 SELECT 2
 STORE mpAt+mcIa+"\IDENTI1.DBB" TO mdBf
 Use &mDBF Exclusive Alias Identi1
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 SELECT 3
 STORE mpAt+mcIa+"\IDENTI3.DAT" TO mdBf
 Use &mDBF Exclusive Alias Identi3
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 SELECT 4
 STORE mpAt+mcIa+"\IDENTIF.DBB" TO mdBf
 Use &mDBF Exclusive Alias Identif
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 SELECT 5
 STORE mpAt+mcIa+"\MENU0.DAT" TO mdBf
 Use &mDBF Exclusive Alias Menu0
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 SELECT 6
 STORE mpAt+mcIa+"\MENU1.DAT" TO mdBf
 Use &mDBF Exclusive Alias Menu1
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 SELECT 7
 STORE mpAt+mcIa+"\GRPUNM.DAT" TO mdBf
 Use &mDBF Exclusive Alias MnuPrg
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 SELECT 1
 PACK
 REINDEX
 SELECT 2
 PACK
 REINDEX
 SELECT 3
 PACK
 REINDEX
 SELECT 4
 PACK
 REINDEX
 SELECT 5
 PACK
 REINDEX
 SELECT 6
 PACK
 REINDEX
 SELECT 7
 PACK
 REINDEX
 PUBLIC vcOd, vnOm, vtEc, vaRe, vnIv, vvEn, vsR1, vsR2, vsR3, vsR4, vsR5,  ;
        vsR6, vsR7
 PUBLIC v001, v002, v003, v004, v005, v006, v007, v008, v009, v010, v011,  ;
        v012, v013
 PUBLIC v014, v015, v016, v017, v018, v019, v020, v021, v022, v023, v024,  ;
        v025, v026
 PUBLIC v027, v028, v029, v030, v031, v032, v033, v034, v035, v036, vpRg,  ;
        vnV1, vnV2
 PUBLIC vcM1, vcIa, vtIp, vrAz, vrZ1, vdIr, vtEl, vwEb, veMa, vcOr, vpEd,  ;
        vsLd, vcLv
 PUBLIC vtPo, vnUm, viNi, vfEm, vfR1, vfE1, vfR2, vfE2, vfR3, vfE3, vfR4,  ;
        vfE4, vfR5
 PUBLIC vfE5, voP1, voP2, voP3, voP4, voP5, voP6, voP7, vnI1, vnI2
 STORE 01 TO msAl
 STORE 02 TO voP1, voP2, voP3, voP4, voP5, voP6, voP7
 STORE 99 TO mkEy
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      DO paN_0000a
      IF mrEs<>mrSs
           DO p00_0000a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_0000a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Tab
                IF voP1=1
                     DO e_Menus
                ENDIF
                IF voP2=1
                     DO e_Identi1
                ENDIF
                IF voP3=1
                     DO e_Identi3
                ENDIF
                IF voP4=1
                     DO e_Identif
                ENDIF
                IF voP5=1
                     DO e_Menu0
                ENDIF
                IF voP6=1
                     DO e_Menu1
                ENDIF
                IF voP7=1
                     DO e_Mnuprg
                ENDIF
                = INKEY(0.05)
                EXIT
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 WAIT CLEAR
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE e_Menus
 DO coL_fondo
 @mFI0+4,mCO0+40 Say "Encriptando Menus" Font "&mLetRom",12 Style "BQI"
 SELECT meNus
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE noMbre TO vnOm
      STORE teCla TO vtEc
      DO prO_0000a WITH vnOm
      REPLACE noMbre WITH mfRa
      DO prO_0000a WITH vtEc
      REPLACE teCla WITH mfRa
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE e_Identi1
 DO coL_fondo
 @mFI0+6,mCO0+40 Say "Encriptando Identi1" Font "&mLetRom",12 Style "BQI"
 SELECT idEnti1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF FSIZE("CIA")>0
           STORE ciA TO vcIa
           DO prO_0000a WITH vcIa
           REPLACE ciA WITH mfRa
      ENDIF
      IF FSIZE("TIP")>0
           STORE tiP TO vtIp
           DO prO_0000a WITH vtIp
           REPLACE tiP WITH mfRa
      ENDIF
      IF FSIZE("RAZ")>0
           STORE raZ TO vrAz
           DO prO_0000a WITH vrAz
           REPLACE raZ WITH mfRa
      ENDIF
      IF FSIZE("RZ1")>0
           STORE rz1 TO vrZ1
           DO prO_0000a WITH vrZ1
           REPLACE rz1 WITH mfRa
      ENDIF
      IF FSIZE("DIR")>0
           STORE diR TO vdIr
           DO prO_0000a WITH vdIr
           REPLACE diR WITH mfRa
      ENDIF
      IF FSIZE("VIN")>0
           STORE viN TO vvIn
           DO prO_0000a WITH vvIn
           REPLACE viN WITH mfRa
      ENDIF
      IF FSIZE("CIM")>0
           STORE ciM TO vcIm
           DO prO_0000a WITH vcIm
           REPLACE ciM WITH mfRa
      ENDIF
      IF FSIZE("EMP")>0
           STORE emP TO veMp
           DO prO_0000a WITH veMp
           REPLACE emP WITH mfRa
      ENDIF
      IF FSIZE("TRA")>0
           STORE trA TO vtRa
           DO prO_0000a WITH vtRa
           REPLACE trA WITH mfRa
      ENDIF
      IF FSIZE("ALM")>0
           STORE alM TO vaLm
           DO prO_0000a WITH vaLm
           REPLACE alM WITH mfRa
      ENDIF
      IF FSIZE("RUC")>0
           STORE ruC TO vrUc
           DO prO_0000a WITH vrUc
           REPLACE ruC WITH mfRa
      ENDIF
      IF FSIZE("TEL")>0
           STORE teL TO vtEl
           DO prO_0000a WITH vtEl
           REPLACE teL WITH mfRa
      ENDIF
      IF FSIZE("WEB")>0
           STORE weB TO vwEb
           DO prO_0000a WITH vwEb
           REPLACE weB WITH mfRa
      ENDIF
      IF FSIZE("EMA")>0
           STORE emA TO veMa
           DO prO_0000a WITH veMa
           REPLACE emA WITH mfRa
      ENDIF
      IF FSIZE("SLD")>0
           STORE slD TO vsLd
           DO prO_0000a WITH vsLd
           REPLACE slD WITH mfRa
      ENDIF
      IF FSIZE("PAL")>0
           STORE paL TO vpAl
           DO prO_0000a WITH vpAl
           REPLACE paL WITH mfRa
      ENDIF
      IF FSIZE("ING")>0
           STORE inG TO viNg
           DO prO_0000a WITH viNg
           REPLACE inG WITH mfRa
      ENDIF
      IF FSIZE("LL0")>0
           STORE ll0 TO vlL0
           DO prO_0000a WITH vlL0
           REPLACE ll0 WITH mfRa
      ENDIF
      IF FSIZE("LLZ")>0
           STORE llZ TO vlLz
           DO prO_0000a WITH vlLz
           REPLACE llZ WITH mfRa
      ENDIF
      IF FSIZE("COR")>0
           STORE coR TO vcOr
           DO prO_0000a WITH vcOr
           REPLACE coR WITH mfRa
      ENDIF
      IF FSIZE("PED")>0
           STORE peD TO vpEd
           DO prO_0000a WITH vpEd
           REPLACE peD WITH mfRa
      ENDIF
      IF FSIZE("COM")>0
           STORE coM TO vcOm
           DO prO_0000a WITH vcOm
           REPLACE coM WITH mfRa
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE e_Identi3
 DO coL_fondo
 @mFI0+8,mCO0+40 Say "Encriptando Identi3" Font "&mLetRom",12 Style "BQI"
 SELECT idEnti3
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF FSIZE("CIA")>0
           STORE ciA TO vcIa
           DO prO_0000a WITH vcIa
           REPLACE ciA WITH mfRa
      ENDIF
      IF FSIZE("CLV")>0
           STORE clV TO vcLv
           DO prO_0000a WITH vcLv
           REPLACE clV WITH mfRa
      ENDIF
      IF FSIZE("TPO")>0
           STORE tpO TO vtPo
           DO prO_0000a WITH vtPo
           REPLACE tpO WITH mfRa
      ENDIF
      IF FSIZE("NUM")>0
           STORE nuM TO vnUm
           DO prO_0000a WITH vnUm
           REPLACE nuM WITH mfRa
      ENDIF
      IF FSIZE("INI")>0
           STORE inI TO viNi
           DO prO_0000a WITH viNi
           REPLACE inI WITH mfRa
      ENDIF
      IF FSIZE("FEM")>0
           STORE feM TO vfEm
           DO prO_0000a WITH vfEm
           REPLACE feM WITH mfRa
      ENDIF
      IF FSIZE("FR1")>0
           STORE fr1 TO vfR1
           DO prO_0000a WITH vfR1
           REPLACE fr1 WITH mfRa
      ENDIF
      IF FSIZE("FE1")>0
           STORE fe1 TO vfE1
           DO prO_0000a WITH vfE1
           REPLACE fe1 WITH mfRa
      ENDIF
      IF FSIZE("FR2")>0
           STORE fr2 TO vfR2
           DO prO_0000a WITH vfR2
           REPLACE fr2 WITH mfRa
      ENDIF
      IF FSIZE("FE2")>0
           STORE fe2 TO vfE2
           DO prO_0000a WITH vfE2
           REPLACE fe2 WITH mfRa
      ENDIF
      IF FSIZE("FR3")>0
           STORE fr3 TO vfR3
           DO prO_0000a WITH vfR3
           REPLACE fr3 WITH mfRa
      ENDIF
      IF FSIZE("FE3")>0
           STORE fe3 TO vfE3
           DO prO_0000a WITH vfE3
           REPLACE fe3 WITH mfRa
      ENDIF
      IF FSIZE("FR4")>0
           STORE fr4 TO vfR4
           DO prO_0000a WITH vfR4
           REPLACE fr4 WITH mfRa
      ENDIF
      IF FSIZE("FE4")>0
           STORE fe4 TO vfE4
           DO prO_0000a WITH vfE4
           REPLACE fe4 WITH mfRa
      ENDIF
      IF FSIZE("FR5")>0
           STORE fr5 TO vfR5
           DO prO_0000a WITH vfR5
           REPLACE fr5 WITH mfRa
      ENDIF
      IF FSIZE("FE5")>0
           STORE fe5 TO vfE5
           DO prO_0000a WITH vfE5
           REPLACE fe5 WITH mfRa
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE e_Identif
 DO coL_fondo
 @mFI0+10,mCO0+40 Say "Encriptando Identif" Font "&mLetRom",12 Style "BQI"
 SELECT idEntif
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF FSIZE("FIDENOM")>0
           STORE fiDenom TO vnOm
           DO prO_0000a WITH vnOm
           REPLACE fiDenom WITH mfRa
      ENDIF
      IF FSIZE("FIDEARE")>0
           STORE fiDeare TO vaRe
           DO prO_0000a WITH vaRe
           REPLACE fiDeare WITH mfRa
      ENDIF
      IF FSIZE("FIDENIV")>0
           STORE fiDeniv TO vnIv
           DO prO_0000a WITH vnIv
           REPLACE fiDeniv WITH mfRa
      ENDIF
      IF FSIZE("FIDEVEN")>0
           STORE fiDeven TO vvEn
           DO prO_0000a WITH vvEn
           REPLACE fiDeven WITH mfRa
      ENDIF
      IF FSIZE("FIDESR1")>0
           STORE fiDesr1 TO vsR1
           DO prO_0000a WITH vsR1
           REPLACE fiDesr1 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR2")>0
           STORE fiDesr2 TO vsR2
           DO prO_0000a WITH vsR2
           REPLACE fiDesr2 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR3")>0
           STORE fiDesr3 TO vsR3
           DO prO_0000a WITH vsR3
           REPLACE fiDesr3 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR4")>0
           STORE fiDesr4 TO vsR4
           DO prO_0000a WITH vsR4
           REPLACE fiDesr4 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR5")>0
           STORE fiDesr5 TO vsR5
           DO prO_0000a WITH vsR5
           REPLACE fiDesr5 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR6")>0
           STORE fiDesr6 TO vsR6
           DO prO_0000a WITH vsR6
           REPLACE fiDesr6 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR7")>0
           STORE fiDesr7 TO vsR7
           DO prO_0000a WITH vsR7
           REPLACE fiDesr7 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR8")>0
           STORE fiDesr8 TO vsR8
           DO prO_0000a WITH vsR8
           REPLACE fiDesr8 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR9")>0
           STORE fiDesr9 TO vsR9
           DO prO_0000a WITH vsR9
           REPLACE fiDesr9 WITH mfRa
      ENDIF
      IF FSIZE("FIDESR0")>0
           STORE fiDesr0 TO vsR0
           DO prO_0000a WITH vsR0
           REPLACE fiDesr0 WITH mfRa
      ENDIF
      IF FSIZE("FIDESRA")>0
           STORE fiDesra TO vsRa
           DO prO_0000a WITH vsRa
           REPLACE fiDesra WITH mfRa
      ENDIF
      IF FSIZE("FIDESRB")>0
           STORE fiDesrb TO vsRb
           DO prO_0000a WITH vsRb
           REPLACE fiDesrb WITH mfRa
      ENDIF
      IF FSIZE("FIDESRC")>0
           STORE fiDesrc TO vsRc
           DO prO_0000a WITH vsRc
           REPLACE fiDesrc WITH mfRa
      ENDIF
      IF FSIZE("FIDESRD")>0
           STORE fiDesrd TO vsRd
           DO prO_0000a WITH vsRd
           REPLACE fiDesrd WITH mfRa
      ENDIF
      IF FSIZE("FIDESRE")>0
           STORE fiDesre TO vsRe
           DO prO_0000a WITH vsRe
           REPLACE fiDesre WITH mfRa
      ENDIF
      IF FSIZE("FIDESRF")>0
           STORE fiDesrf TO vsRf
           DO prO_0000a WITH vsRf
           REPLACE fiDesrf WITH mfRa
      ENDIF
      IF FSIZE("FIDESRG")>0
           STORE fiDesrg TO vsRg
           DO prO_0000a WITH vsRg
           REPLACE fiDesrg WITH mfRa
      ENDIF
      IF FSIZE("FIDE001")>0
           STORE fiDe001 TO v001
           DO prO_0000a WITH v001
           REPLACE fiDe001 WITH mfRa
      ENDIF
      IF FSIZE("FIDE002")>0
           STORE fiDe002 TO v002
           DO prO_0000a WITH v002
           REPLACE fiDe002 WITH mfRa
      ENDIF
      IF FSIZE("FIDE003")>0
           STORE fiDe003 TO v003
           DO prO_0000a WITH v003
           REPLACE fiDe003 WITH mfRa
      ENDIF
      IF FSIZE("FIDE004")>0
           STORE fiDe004 TO v004
           DO prO_0000a WITH v004
           REPLACE fiDe004 WITH mfRa
      ENDIF
      IF FSIZE("FIDE005")>0
           STORE fiDe005 TO v005
           DO prO_0000a WITH v005
           REPLACE fiDe005 WITH mfRa
      ENDIF
      IF FSIZE("FIDE006")>0
           STORE fiDe006 TO v006
           DO prO_0000a WITH v006
           REPLACE fiDe006 WITH mfRa
      ENDIF
      IF FSIZE("FIDE007")>0
           STORE fiDe007 TO v007
           DO prO_0000a WITH v007
           REPLACE fiDe007 WITH mfRa
      ENDIF
      IF FSIZE("FIDE008")>0
           STORE fiDe008 TO v008
           DO prO_0000a WITH v008
           REPLACE fiDe008 WITH mfRa
      ENDIF
      IF FSIZE("FIDE009")>0
           STORE fiDe009 TO v009
           DO prO_0000a WITH v009
           REPLACE fiDe009 WITH mfRa
      ENDIF
      IF FSIZE("FIDE010")>0
           STORE fiDe010 TO v010
           DO prO_0000a WITH v010
           REPLACE fiDe010 WITH mfRa
      ENDIF
      IF FSIZE("FIDE011")>0
           STORE fiDe011 TO v011
           DO prO_0000a WITH v011
           REPLACE fiDe011 WITH mfRa
      ENDIF
      IF FSIZE("FIDE012")>0
           STORE fiDe012 TO v012
           DO prO_0000a WITH v012
           REPLACE fiDe012 WITH mfRa
      ENDIF
      IF FSIZE("FIDE013")>0
           STORE fiDe013 TO v013
           DO prO_0000a WITH v013
           REPLACE fiDe013 WITH mfRa
      ENDIF
      IF FSIZE("FIDE014")>0
           STORE fiDe014 TO v014
           DO prO_0000a WITH v014
           REPLACE fiDe014 WITH mfRa
      ENDIF
      IF FSIZE("FIDE015")>0
           STORE fiDe015 TO v015
           DO prO_0000a WITH v015
           REPLACE fiDe015 WITH mfRa
      ENDIF
      IF FSIZE("FIDE016")>0
           STORE fiDe016 TO v016
           DO prO_0000a WITH v016
           REPLACE fiDe016 WITH mfRa
      ENDIF
      IF FSIZE("FIDE017")>0
           STORE fiDe017 TO v017
           DO prO_0000a WITH v017
           REPLACE fiDe017 WITH mfRa
      ENDIF
      IF FSIZE("FIDE018")>0
           STORE fiDe018 TO v018
           DO prO_0000a WITH v018
           REPLACE fiDe018 WITH mfRa
      ENDIF
      IF FSIZE("FIDE019")>0
           STORE fiDe019 TO v019
           DO prO_0000a WITH v019
           REPLACE fiDe019 WITH mfRa
      ENDIF
      IF FSIZE("FIDE020")>0
           STORE fiDe020 TO v020
           DO prO_0000a WITH v020
           REPLACE fiDe020 WITH mfRa
      ENDIF
      IF FSIZE("FIDE021")>0
           STORE fiDe021 TO v021
           DO prO_0000a WITH v021
           REPLACE fiDe021 WITH mfRa
      ENDIF
      IF FSIZE("FIDE022")>0
           STORE fiDe022 TO v022
           DO prO_0000a WITH v022
           REPLACE fiDe022 WITH mfRa
      ENDIF
      IF FSIZE("FIDE023")>0
           STORE fiDe023 TO v023
           DO prO_0000a WITH v023
           REPLACE fiDe023 WITH mfRa
      ENDIF
      IF FSIZE("FIDE024")>0
           STORE fiDe024 TO v024
           DO prO_0000a WITH v024
           REPLACE fiDe024 WITH mfRa
      ENDIF
      IF FSIZE("FIDE025")>0
           STORE fiDe025 TO v025
           DO prO_0000a WITH v025
           REPLACE fiDe025 WITH mfRa
      ENDIF
      IF FSIZE("FIDE026")>0
           STORE fiDe026 TO v026
           DO prO_0000a WITH v026
           REPLACE fiDe026 WITH mfRa
      ENDIF
      IF FSIZE("FIDE027")>0
           STORE fiDe027 TO v027
           DO prO_0000a WITH v027
           REPLACE fiDe027 WITH mfRa
      ENDIF
      IF FSIZE("FIDE028")>0
           STORE fiDe028 TO v028
           DO prO_0000a WITH v028
           REPLACE fiDe028 WITH mfRa
      ENDIF
      IF FSIZE("FIDE029")>0
           STORE fiDe029 TO v029
           DO prO_0000a WITH v029
           REPLACE fiDe029 WITH mfRa
      ENDIF
      IF FSIZE("FIDE030")>0
           STORE fiDe030 TO v030
           DO prO_0000a WITH v030
           REPLACE fiDe030 WITH mfRa
      ENDIF
      IF FSIZE("FIDE031")>0
           STORE fiDe031 TO v031
           DO prO_0000a WITH v031
           REPLACE fiDe031 WITH mfRa
      ENDIF
      IF FSIZE("FIDE032")>0
           STORE fiDe032 TO v032
           DO prO_0000a WITH v032
           REPLACE fiDe032 WITH mfRa
      ENDIF
      IF FSIZE("FIDE033")>0
           STORE fiDe033 TO v033
           DO prO_0000a WITH v033
           REPLACE fiDe033 WITH mfRa
      ENDIF
      IF FSIZE("FIDE034")>0
           STORE fiDe034 TO v034
           DO prO_0000a WITH v034
           REPLACE fiDe034 WITH mfRa
      ENDIF
      IF FSIZE("FIDE035")>0
           STORE fiDe035 TO v035
           DO prO_0000a WITH v035
           REPLACE fiDe035 WITH mfRa
      ENDIF
      IF FSIZE("FIDE036")>0
           STORE fiDe036 TO v036
           DO prO_0000a WITH v036
           REPLACE fiDe036 WITH mfRa
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE e_Menu0
 DO coL_fondo
 @mFI0+12,mCO0+40 Say "Encriptando Menu0" Font "&mLetRom",12 Style "BQI"
 SELECT meNu0
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF FSIZE("NIV")>0
           STORE niV TO vnIv
           DO prO_0000a WITH vnIv
           REPLACE niV WITH mfRa
      ENDIF
      IF FSIZE("NOM")>0
           STORE noM TO vnOm
           DO prO_0000a WITH vnOm
           REPLACE noM WITH mfRa
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE e_Menu1
 DO coL_fondo
 @mFI0+14,mCO0+40 Say "Encriptando Menu1" Font "&mLetRom",12 Style "BQI"
 SELECT meNu1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF FSIZE("NIV")>0
           STORE niV TO vnIv
           DO prO_0000a WITH vnIv
           REPLACE niV WITH mfRa
      ENDIF
      IF FSIZE("NOM")>0
           STORE noM TO vnOm
           DO prO_0000a WITH vnOm
           REPLACE noM WITH mfRa
      ENDIF
      IF FSIZE("PRG")>0
           STORE prG TO vpRg
           DO prO_0000a WITH vpRg
           REPLACE prG WITH mfRa
      ENDIF
      IF FSIZE("NV1")>0
           STORE nv1 TO vnV1
           DO prO_0000a WITH vnV1
           REPLACE nv1 WITH mfRa
      ENDIF
      IF FSIZE("NV2")>0
           STORE nv2 TO vnV2
           DO prO_0000a WITH vnV2
           REPLACE nv2 WITH mfRa
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE e_MnuPrg
 DO coL_fondo
 @mFI0+16,mCO0+40 Say "Encriptando Grpunm..." Font "&mLetRom",12 Style "BQI"
 SELECT mnUprg
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF FSIZE("COD")>0
           STORE coD TO vcOd
           DO prO_0000a WITH vcOd
           REPLACE coD WITH mfRa
      ENDIF
      IF FSIZE("PRG")>0
           STORE prG TO vpRg
           DO prO_0000a WITH vpRg
           REPLACE prG WITH mfRa
      ENDIF
      IF FSIZE("NOM")>0
           STORE noM TO vnOm
           DO prO_0000a WITH vnOm
           REPLACE noM WITH mfRa
      ENDIF
      IF FSIZE("NV1")>0
           STORE nv1 TO vnV1
           DO prO_0000a WITH vnV1
           REPLACE nv1 WITH mfRa
      ENDIF
      IF FSIZE("NV2")>0
           STORE nv2 TO vnV2
           DO prO_0000a WITH vnV2
           REPLACE nv2 WITH mfRa
      ENDIF
      IF FSIZE("CM1")>0
           STORE cm1 TO vcM1
           DO prO_0000a WITH vcM1
           REPLACE cm1 WITH mfRa
      ENDIF
      IF FSIZE("NI1")>0
           STORE ni1 TO vnI1
           DO prO_0000a WITH vnI1
           REPLACE ni1 WITH mfRa
      ENDIF
      IF FSIZE("NI2")>0
           STORE ni2 TO vnI2
           DO prO_0000a WITH vnI2
           REPLACE ni2 WITH mfRa
      ENDIF
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_0000a
 PARAMETER ptPo
 IF ptPo="1"
      @0,0 Say "&mPTA" BitMap Style "Q" Stretch
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE mrEs TO mrSs
 ENDIF
 STORE 22 TO muFi
 STORE 78 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO coL_fondo
 @ mfI0, mcO0 TO mfI0+muFi+0.3, mcO0+muCo PATTERN 1
 @mFI0+01,mCO0+04 Say "OPCIONES" Font "&mLetRom",12 Style "BQU"
 @mFI0+04,mCO0+04 Say "Menus"    Font "&mLetRom",12 Style "BQ"
 @mFI0+06,mCO0+04 Say "Identi1"  Font "&mLetRom",12 Style "BQ"
 @mFI0+08,mCO0+04 Say "Identi3"  Font "&mLetRom",12 Style "BQ"
 @mFI0+10,mCO0+04 Say "Identif"  Font "&mLetRom",12 Style "BQ"
 @mFI0+12,mCO0+04 Say "Menu0"    Font "&mLetRom",12 Style "BQ"
 @mFI0+14,mCO0+04 Say "Menu1"    Font "&mLetRom",12 Style "BQ"
 @mFI0+16,mCO0+04 Say "Grpunm"   Font "&mLetRom",12 Style "BQ"
 @mFI0+20,mCO0+09 Say "Pulsar TAB para EMPEZAR o ESC para salir" Font "&mLetRom",11 Style "BTI" Color 1
 @mFI0+04,mCO0+17 Get vOP1       Font "&mLetRom",12 Style "NQ" Default vOP1 Function "*RHT Si;No"
 @mFI0+06,mCO0+17 Get vOP2       Font "&mLetRom",12 Style "NQ" Default vOP2 Function "*RHT Si;No"
 @mFI0+08,mCO0+17 Get vOP3       Font "&mLetRom",12 Style "NQ" Default vOP3 Function "*RHT Si;No"
 @mFI0+10,mCO0+17 Get vOP4       Font "&mLetRom",12 Style "NQ" Default vOP4 Function "*RHT Si;No"
 @mFI0+12,mCO0+17 Get vOP5       Font "&mLetRom",12 Style "NQ" Default vOP5 Function "*RHT Si;No"
 @mFI0+14,mCO0+17 Get vOP6       Font "&mLetRom",12 Style "NQ" Default vOP6 Function "*RHT Si;No"
 @mFI0+16,mCO0+17 Get vOP7       Font "&mLetRom",12 Style "NQ" Default vOP7 Function "*RHT Si;No"
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Clp_0000a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mfI0+3.678 .AND. mfIl<=mfI0+5.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP1<>1
           STORE 1 TO voP1
           @mFI0+4,mCO0+17 Get vOP1 Font "&mLetRom",12 Style "NQ" Default vOP1 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.678 .AND. mfIl<=mfI0+5.678 .AND. mcCc>=mcO0+23.8  ;
           .AND. mcCc<=mcO0+32.8 .AND. voP1<>2
           STORE 2 TO voP1
           @mFI0+4,mCO0+17 Get vOP1 Font "&mLetRom",12 Style "NQ" Default vOP1 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.678 .AND. mfIl<=mfI0+7.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP2<>1
           STORE 1 TO voP2
           @mFI0+6,mCO0+17 Get vOP2 Font "&mLetRom",12 Style "NQ" Default vOP2 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.678 .AND. mfIl<=mfI0+7.678 .AND. mcCc>=mcO0+23.8  ;
           .AND. mcCc<=mcO0+32.8 .AND. voP2<>2
           STORE 2 TO voP2
           @mFI0+6,mCO0+17 Get vOP2 Font "&mLetRom",12 Style "NQ" Default vOP2 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.678 .AND. mfIl<=mfI0+9.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP3<>1
           STORE 1 TO voP3
           @mFI0+8,mCO0+17 Get vOP3 Font "&mLetRom",12 Style "NQ" Default vOP3 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.678 .AND. mfIl<=mfI0+9.678 .AND. mcCc>=mcO0+23.8  ;
           .AND. mcCc<=mcO0+32.8 .AND. voP3<>2
           STORE 2 TO voP3
           @mFI0+8,mCO0+17 Get vOP3 Font "&mLetRom",12 Style "NQ" Default vOP3 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.678 .AND. mfIl<=mfI0+11.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP4<>1
           STORE 1 TO voP4
           @mFI0+10,mCO0+17 Get vOP4 Font "&mLetRom",12 Style "NQ" Default vOP4 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.678 .AND. mfIl<=mfI0+11.678 .AND. mcCc>=mcO0+23.8  ;
           .AND. mcCc<=mcO0+32.8 .AND. voP4<>2
           STORE 2 TO voP4
           @mFI0+10,mCO0+17 Get vOP4 Font "&mLetRom",12 Style "NQ" Default vOP4 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.678 .AND. mfIl<=mfI0+13.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP5<>1
           STORE 1 TO voP5
           @mFI0+12,mCO0+17 Get vOP5 Font "&mLetRom",12 Style "NQ" Default vOP5 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.678 .AND. mfIl<=mfI0+13.678 .AND. mcCc>=mcO0+ ;
           23.8 .AND. mcCc<=mcO0+32.8 .AND. voP5<>2
           STORE 2 TO voP5
           @mFI0+12,mCO0+17 Get vOP5 Font "&mLetRom",12 Style "NQ" Default vOP5 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.678 .AND. mfIl<=mfI0+15.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP6<>1
           STORE 1 TO voP6
           @mFI0+14,mCO0+17 Get vOP6 Font "&mLetRom",12 Style "NQ" Default vOP6 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.678 .AND. mfIl<=mfI0+15.678 .AND. mcCc>=mcO0+ ;
           23.8 .AND. mcCc<=mcO0+32.8 .AND. voP6<>2
           STORE 2 TO voP6
           @mFI0+14,mCO0+17 Get vOP6 Font "&mLetRom",12 Style "NQ" Default vOP6 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+15.678 .AND. mfIl<=mfI0+17.678 .AND. mcCc>=mcO0+16  ;
           .AND. mcCc<=mcO0+23.8 .AND. voP7<>1
           STORE 1 TO voP7
           @mFI0+16,mCO0+17 Get vOP7 Font "&mLetRom",12 Style "NQ" Default vOP7 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+15.678 .AND. mfIl<=mfI0+17.678 .AND. mcCc>=mcO0+ ;
           23.8 .AND. mcCc<=mcO0+32.8 .AND. voP7<>2
           STORE 2 TO voP7
           @mFI0+16,mCO0+17 Get vOP7 Font "&mLetRom",12 Style "NQ" Default vOP7 Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Compila
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
ENDPROC
*
PROCEDURE Del_Files
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 RELEASE vcOd, vnOm, vtEc, vaRe, vnIv, vvEn, vsR1, vsR2, vsR3, vsR4, vsR5,  ;
         vsR6, vsR7
 RELEASE v001, v002, v003, v004, v005, v006, v007, v008, v009, v010, v011,  ;
         v012, v013
 RELEASE v014, v015, v016, v017, v018, v019, v020, v021, v022, v023, v024,  ;
         v025, v026
 RELEASE v027, v028, v029, v030, v031, v032, v033, v034, v035, v036, vpRg,  ;
         vnV1, vnV2
 RELEASE vcM1, vcIa, vtIp, vrAz, vrZ1, vdIr, vtEl, vwEb, veMa, vcOr, vpEd,  ;
         vsLd, vcLv
 RELEASE vtPo, vnUm, viNi, vfEm, vfR1, vfE1, vfR2, vfE2, vfR3, vfE3, vfR4,  ;
         vfE4, vfR5
 RELEASE vfE5, voP1, voP2, voP3, voP4, voP5, voP6, voP7, vnI1, vnI2
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Retorna
 CLOSE ALL
 DO deL_files
 RELEASE ALL
 QUIT
ENDPROC
*
