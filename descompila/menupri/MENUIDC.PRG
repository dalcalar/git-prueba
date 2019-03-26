 SET PROCEDURE TO MODSET
 DO seT_ini
 DO teC_ini
 DO leT_ini
 DO seT_var
 DO veR_fil
 DO siN_demo
 DO abR_path
 DO abR_conf
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
 MODIFY WINDOW scReen TITLE "MENÚS PERSONALIZADOS ("+ALLTRIM(STR(maNc, 4,  ;
        0))+"x"+ALLTRIM(STR(mlAr, 4, 0))+") ["+mrEs+"]" ICON FILE "ICON04.ICO"
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE mrEs TO mrSs
 DO prEsiona WITH "4", "MNU_PA00", mxX1, myY1
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 DO clAve_in WITH "2"
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
 PUBLIC ntM3, ntM4, ntM5, ntM6, meX1
 STORE ".TMP" TO meX1
 STORE 01 TO meRr
 STORE 00 TO mdUe
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 DO caRg_tmps
 STORE mpAt+mcIa+"\GRPUNM.DAT" TO mdBf
 Use &mDBF Share NoUpdate Alias MnuPrg
 IF mkEy=k_Esc
      DO deL_filet IN MODSET
      DO reTorno
 ENDIF
 STORE "MMNU"+mtM3+mcDx TO mdBf
 Inde On PRG+NV1+NV2+Str(NV3,2,0) to &mDBF
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 CLOSE DATABASES
 CLOSE INDEXES
 DO caR2_tmps
 DIMENSION afIl[7, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM4DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CO2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4PRO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NV1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NV2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NV3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 PRIVATE pcDx
 DO WHILE .T.
      STORE "M001"+ntM4+meX1 TO mdBf
      STORE "M001"+ntM4+mcDx TO pcDx
      If .not.File("&mDBF") .and. .not.File("&pCDX")
           EXIT
      ENDIF
      IF ntM4="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file3 IN MODSET WITH "1", "S"
           DO deL_file3 IN MODSET WITH "2", "S"
           DO deL_file3 IN MODSET WITH "3", "S"
           DO deL_file3 IN MODSET WITH "Z", "S"
           DO reTorno
      ENDIF
      ntM4 = STRTRAN(STR(VAL(ntM4)+1, 4, 0), " ", "0")
 ENDDO
 RELEASE pcDx
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 DIMENSION afIl[8, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM4DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CO2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4PRO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NV1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NV2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NV3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 PRIVATE pcDx
 DO WHILE .T.
      STORE "M001"+ntM5+meX1 TO mdBf
      STORE "M001"+ntM5+mcDx TO pcDx
      If .not.File("&mDBF") .and. .not.File("&pCDX")
           EXIT
      ENDIF
      IF ntM5="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file3 IN MODSET WITH "1", "S"
           DO deL_file3 IN MODSET WITH "2", "S"
           DO deL_file3 IN MODSET WITH "3", "S"
           DO deL_file3 IN MODSET WITH "4", "N"
           DO deL_file3 IN MODSET WITH "Z", "S"
           DO reTorno
      ENDIF
      ntM5 = STRTRAN(STR(VAL(ntM5)+1, 4, 0), " ", "0")
 ENDDO
 RELEASE pcDx
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "CODIGO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NOMBRE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "TECLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 PRIVATE pcDx
 DO WHILE .T.
      STORE "M001"+ntM6+meX1 TO mdBf
      STORE "M001"+ntM6+mcDx TO pcDx
      If .not.File("&mDBF") .and. .not.File("&pCDX")
           EXIT
      ENDIF
      IF ntM6="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file3 IN MODSET WITH "1", "S"
           DO deL_file3 IN MODSET WITH "2", "S"
           DO deL_file3 IN MODSET WITH "3", "S"
           DO deL_file3 IN MODSET WITH "4", "N"
           DO deL_file3 IN MODSET WITH "5", "N"
           DO deL_file3 IN MODSET WITH "Z", "S"
           DO reTorno
      ENDIF
      ntM6 = STRTRAN(STR(VAL(ntM6)+1, 4, 0), " ", "0")
 ENDDO
 RELEASE pcDx
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON coDigo TAG meNus
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 STORE mpAt+mcIa+"\MENUS.DBB" TO mdBf
 Use &mDBF Share Alias Menus
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO MENUS
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 2
 STORE mpAt+mcIa+"\IDENTIF.DBB" TO mdBf
 Use &mDBF Share Alias Identif
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO FIDEUSU
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 3
 STORE mpAt+mcIa+"\MENU0.DAT" TO mdBf
 Use &mDBF Share Alias Menu0
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 4
 STORE mpAt+mcIa+"\MENU1.DAT" TO mdBf
 Use &mDBF Share Alias Menu1
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 5
 STORE "M001"+mtM1+meX1 TO mdBf
 Use &mDBF Exclusive Alias Menu0_Tmp
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO MENU0
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 6
 STORE "M001"+mtM2+meX1 TO mdBf
 Use &mDBF Exclusive Alias Menu1_Tmp
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO MENU1
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 7
 STORE mpAt+mcIa+"\GRPUNM.DAT" TO mdBf
 Use &mDBF Share NoUpdate Alias MnuPrg
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 STORE "MMNU"+mtM3+mcDx TO mdBf
 Set Index to &mDBF
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 8
 STORE "M001"+ntM3+meX1 TO mdBf
 Use &mDBF Exclusive Alias PrgMnu_Tmp
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO PRG
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 9
 STORE "M001"+ntM4+meX1 TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 10
 STORE "M001"+ntM5+meX1 TO mdBf
 Use &mDBF Exclusive Alias Copia
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 11
 STORE "M001"+ntM6+meX1 TO mdBf
 Use &mDBF Share Alias Menus_Tmp
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO MENUS
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 PUBLIC vtB1, viTe, viT1, vnIv, cnIv, xnIv, vnOm, vlEt, vmN1, vmN2, vmN3,  ;
        vmN4, vmN5
 PUBLIC vmN6, vmN7, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs,  ;
        cfFs, vrEc
 PUBLIC irEc, urEc, frEc, crEc, vcLn, vfBi, vcBi, voPc, viOm, vpRg, vdEs,  ;
        vnV1, vnV2
 PUBLIC vnV3, vnUm, vcO0, vcOd, vcM1, vtEc, vcO1, vcO2, vcDg, icDg, ucDg,  ;
        ccDg, vcD1
 PUBLIC icD1, ucD1, ccD1, vcD2, icD2, ucD2, ccD2, vnO1, inO1, unO1, cnO1,  ;
        vpR1, ipR1
 PUBLIC upR1, cpR1, vnB1, inB1, unB1, cnB1, vnB2, inB2, unB2, cnB2, vnB3,  ;
        inB3, unB3
 PUBLIC cnB3
 PUBLIC vpAn_11, vpAn_12
 STORE 1 TO msAl
 DO caRg_mnus
 DO caRg_prgs
 SELECT meNus
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF()
      STORE coDigo TO vcOd
      STORE noMbre TO vnOm
      STORE teCla TO vtEc
      DO prO_0000a WITH vnOm
      STORE mfRa TO vnOm
      DO prO_0000a WITH vtEc
      STORE mfRa TO vtEc
      SELECT meNus_tmp
      APPEND BLANK
      REPLACE coDigo WITH vcOd
      REPLACE noMbre WITH vnOm
      REPLACE teCla WITH vtEc
      SELECT meNus
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 STORE 00 TO frEc, viT1
 STORE 01 TO viTe, vrEc, irEc, urEc, voPc
 STORE SPACE(30) TO vnOm
 STORE SPACE(01) TO vnIv, vlEt
 STORE SPACE(35) TO vmN1, vmN2, vmN3, vmN4, vmN5, vmN6, vmN7
 ON KEY LABEL F10 DO P_F10
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 DO p1_0000a
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
           CASE mkEy=k_F2 .AND. viTe=01
                = INKEY(0.01)
                SELECT meNus_tmp
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Menús registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                SET NEAR ON
                SEEK vnIv
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     DO muE_0000a
                     DO diS_0000a
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F12
                DO p00_0000a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F4 .AND. viTe>=04
                DO deT_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_F4 .AND. viTe>01
                STORE 04 TO ciTe
                STORE viTe+1 TO viTe
                DO WHILE viTe<ciTe .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                STORE 01 TO vnUm
                DO deT_0000a
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=10
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viTe=4)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<4
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=10
                               STORE "N" TO moPc
                               DO prE_docum WITH  ;
                                  "¿Está seguro de GRABAR las Opciones de este Menú?"
                               IF moPc$"Ss"
                                    DO grA_0000a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    DO muE_0000a
                               ENDIF
                               STORE 01 TO viTe
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe<04
                               STORE 04 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe>=04
                               STORE 10 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy<>99
                                    STORE "N" TO moPc
                                    DO prE_docum WITH  ;
                                       "¿Está seguro de GRABAR las Opciones de este Menú?"
                                    IF moPc$"Ss"
                                         DO grA_0000a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO muE_0000a
                                    ENDIF
                                    STORE 01 TO viTe
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=4 .OR. viTe=5
                          STORE 1 TO viTe
                     CASE viTe=6 .OR. viTe=7
                          STORE 2 TO viTe
                     CASE viTe=8 .OR. viTe=9 .OR. viTe=10
                          STORE 3 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                DO veR_0000a
                STORE viTe+1 TO viTe
                DO WHILE viTe<10 .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                DO veR_0000a
                STORE viTe+1 TO viTe
                DO WHILE viTe<10 .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99 .AND. viTe<10
                     STORE 10 TO viTe
                     DO veR_0000a
                ENDIF
                IF mkEy<>99
                     STORE "N" TO moPc
                     DO prE_docum WITH  ;
                        "¿Está seguro de GRABAR las Opciones de este Menú?"
                     IF moPc$"Ss"
                          DO grA_0000a
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO muE_0000a
                     ENDIF
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      IF viTe<>viT1
           DO CASE
                CASE viTe=1 .AND. viT1<>1
                     @mFI0+6.9,mCO0+(((vCLN*6)-39))/2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH \\Grabar;\\Eliminar;Salir" Size 1.6,16,1
                CASE viTe<>1 .AND. viT1=1
                     @mFI0+6.9,mCO0+(((vCLN*6)-39))/2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Grabar;Eliminar;Salir"     Size 1.6,16,1
           ENDCASE
           DO CASE
                CASE (viT1>=4 .OR. viT1=0) .AND. viTe<4
                     @mFI0+8.8,mCO0+2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH \\Ver Detalle de Menu" Size 1.6,22,1 Color ,,1
                CASE viTe>=4 .AND. viT1<4
                     @mFI0+8.8,mCO0+2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Ver Detalle de Menu"   Size 1.6,22,1 Color ,,1
           ENDCASE
           READ TIMEOUT 0.01
           STORE viTe TO viT1
      ENDIF
      DO CASE
           CASE viTe=1
                STORE 0 TO vnUm
                @mFI0+0.5,mCO0+17 Get vNIV Font "&mLetRom",11 Style "BQ" Pict "!" Size 1,1.8 Color ,&mColBlN
           CASE mrEs="1"
                DO CASE
                     CASE viTe=2
                          STORE 0 TO vnUm
                          @mFI0+0.6,mCO0+054 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,35,30
                     CASE viTe=3
                          STORE 0 TO vnUm
                          @mFI0+0.6,mCO0+120 Get  vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1 Pict "!" Color ,&mColBlN
                     CASE viTe=4
                          STORE 1 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*0) Edit vMN1 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                     CASE viTe=5
                          STORE 2 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*1) Edit vMN2 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                     CASE viTe=6
                          STORE 3 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*2) Edit vMN3 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                     CASE viTe=7
                          STORE 4 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*3) Edit vMN4 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                     CASE viTe=8
                          STORE 5 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*4) Edit vMN5 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                     CASE viTe=9
                          STORE 6 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*5) Edit vMN6 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                     CASE viTe=10
                          STORE 7 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*6) Edit vMN7 Font "&mLetAri",8 Style "NQ" Size 1,16,35
                ENDCASE
           CASE mrEs="2"
                DO CASE
                     CASE viTe=2
                          STORE 0 TO vnUm
                          @mFI0+0.6,mCO0+054 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,35,30
                     CASE viTe=3
                          STORE 0 TO vnUm
                          @mFI0+0.6,mCO0+130 Get  vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1 Pict "!" Color ,&mColBlN
                     CASE viTe=4
                          STORE 1 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*0) Edit vMN1 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                     CASE viTe=5
                          STORE 2 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*1) Edit vMN2 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                     CASE viTe=6
                          STORE 3 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*2) Edit vMN3 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                     CASE viTe=7
                          STORE 4 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*3) Edit vMN4 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                     CASE viTe=8
                          STORE 5 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*4) Edit vMN5 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                     CASE viTe=9
                          STORE 6 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*5) Edit vMN6 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                     CASE viTe=10
                          STORE 7 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*6) Edit vMN7 Font "&mLetRom",11 Style "BQ" Size 1,17,35
                ENDCASE
           CASE mrEs>"2"
                DO CASE
                     CASE viTe=2
                          STORE 0 TO vnUm
                          @mFI0+0.6,mCO0+054 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,35,30
                     CASE viTe=3
                          STORE 0 TO vnUm
                          @mFI0+0.6,mCO0+140 Get  vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1 Pict "!" Color ,&mColBlN
                     CASE viTe=4
                          STORE 1 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*0) Edit vMN1 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                     CASE viTe=5
                          STORE 2 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*1) Edit vMN2 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                     CASE viTe=6
                          STORE 3 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*2) Edit vMN3 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                     CASE viTe=7
                          STORE 4 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*3) Edit vMN4 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                     CASE viTe=8
                          STORE 5 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*4) Edit vMN5 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                     CASE viTe=9
                          STORE 6 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*5) Edit vMN6 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                     CASE viTe=10
                          STORE 7 TO vnUm
                          @mFI0+4.4,mCO0+2+(vCLN*6) Edit vMN7 Font "&mLetRom",11 Style "BQ" Size 1,22,35
                ENDCASE
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_0000a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vnIv))=0
           STORE "Nivel no puede estar vacío..." TO mmSj
      CASE viTe=1
           SELECT meNus_tmp
           SEEK vnIv
           IF EOF()
                STORE SPACE(01) TO vlEt
                STORE SPACE(30) TO vnOm
                STORE SPACE(35) TO vmN1, vmN2, vmN3, vmN4, vmN5, vmN6, vmN7
           ELSE
                SELECT meNu0_tmp
                SEEK vnIv
                IF EOF()
                     STORE SPACE(35) TO vmN1, vmN2, vmN3, vmN4, vmN5,  ;
                           vmN6, vmN7
                     SELECT meNus_tmp
                     STORE coDigo TO vnIv
                     STORE noMbre TO vnOm
                     STORE teCla TO vlEt
                ELSE
                     DO muE_0000a
                ENDIF
           ENDIF
           DO diS_0000a
      CASE viTe=2 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre del Menú no puede estar vacío..." TO mmSj
      CASE viTe=4 .AND. LEN(ALLTRIM(vmN1))=0 .AND. LEN(ALLTRIM(vmN2))<>0
           STORE "Descripción de la Opción no puede estar vacía..." TO mmSj
      CASE viTe=5 .AND. LEN(ALLTRIM(vmN2))=0 .AND. LEN(ALLTRIM(vmN1))<>0  ;
           .AND. LEN(ALLTRIM(vmN3))<>0
           STORE "Descripción de la Opción no puede estar vacía..." TO mmSj
      CASE viTe=6 .AND. LEN(ALLTRIM(vmN3))=0 .AND. LEN(ALLTRIM(vmN2))<>0  ;
           .AND. LEN(ALLTRIM(vmN4))<>0
           STORE "Descripción de la Opción no puede estar vacía..." TO mmSj
      CASE viTe=7 .AND. LEN(ALLTRIM(vmN4))=0 .AND. LEN(ALLTRIM(vmN3))<>0  ;
           .AND. LEN(ALLTRIM(vmN5))<>0
           STORE "Descripción de la Opción no puede estar vacía..." TO mmSj
      CASE viTe=8 .AND. LEN(ALLTRIM(vmN5))=0 .AND. LEN(ALLTRIM(vmN4))<>0  ;
           .AND. LEN(ALLTRIM(vmN6))<>0
           STORE "Descripción de la Opción no puede estar vacía..." TO mmSj
      CASE viTe=9 .AND. LEN(ALLTRIM(vmN6))=0 .AND. LEN(ALLTRIM(vmN5))<>0  ;
           .AND. LEN(ALLTRIM(vmN7))<>0
           STORE "Descripción de la Opción no puede estar vacía..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_0000a
 STORE SPACE(35) TO vmN1, vmN2, vmN3, vmN4, vmN5, vmN6, vmN7
 SELECT meNus_tmp
 STORE coDigo TO vnIv
 STORE noMbre TO vnOm
 STORE teCla TO vlEt
 SELECT meNu0_tmp
 SEEK vnIv
 DO WHILE  .NOT. EOF() .AND. niV=vnIv
      DO CASE
           CASE itE=1
                STORE noM TO vmN1
           CASE itE=2
                STORE noM TO vmN2
           CASE itE=3
                STORE noM TO vmN3
           CASE itE=4
                STORE noM TO vmN4
           CASE itE=5
                STORE noM TO vmN5
           CASE itE=6
                STORE noM TO vmN6
           CASE itE=7
                STORE noM TO vmN7
      ENDCASE
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Dis_0000a
 DO coLbln
 @mFI0+0.5,mCO0+17 Say vNIV Font "&mLetRom",11 Style "BQ" Size 1,1.8
 DO CASE
      CASE mrEs="1"
           @mFI0+0.6,mCO0+054        Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,35  Pict "@S30"
           @mFI0+0.6,mCO0+120        Say vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="2"
           @mFI0+0.6,mCO0+054        Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,35  Pict "@S30"
           @mFI0+0.6,mCO0+130        Say vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs>"2"
           @mFI0+0.6,mCO0+054        Say vNOM Font "&mLetRom",11 Style "NQ" Size 1,35  Pict "@S30"
           @mFI0+0.6,mCO0+140        Say vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
 ENDCASE
ENDPROC
*
PROCEDURE Gra_0000a
 = INKEY(0.01)
 DO grAbar WITH "1"
 STORE vnIv TO xnIv
 SELECT meNus_tmp
 SEEK vnIv
 IF EOF()
      APPEND BLANK
      REPLACE coDigo WITH vnIv
 ENDIF
 REPLACE noMbre WITH vnOm
 REPLACE teCla WITH vlEt
 SELECT meNus
 SEEK vnIv
 IF EOF()
      APPEND BLANK
      REPLACE coDigo WITH vnIv
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vnIv
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 DO prO_0000a WITH vnOm
 REPLACE noMbre WITH mfRa
 DO prO_0000a WITH vlEt
 REPLACE teCla WITH mfRa
 UNLOCK
 STORE 1 TO vnUm
 DO WHILE .T.
      IF vnUm>7
           EXIT
      ENDIF
      SELECT meNu0_tmp
      DO CASE
           CASE (vnUm=1 .AND. LEN(ALLTRIM(vmN1))<>0) .OR. (vnUm=2 .AND.  ;
                LEN(ALLTRIM(vmN2))<>0) .OR. (vnUm=3 .AND.  ;
                LEN(ALLTRIM(vmN3))<>0) .OR. (vnUm=4 .AND.  ;
                LEN(ALLTRIM(vmN4))<>0) .OR. (vnUm=5 .AND.  ;
                LEN(ALLTRIM(vmN5))<>0) .OR. (vnUm=6 .AND.  ;
                LEN(ALLTRIM(vmN6))<>0) .OR. (vnUm=7 .AND.  ;
                LEN(ALLTRIM(vmN7))<>0)
                SEEK vnIv+STR(vnUm, 1, 0)
                IF EOF()
                     APPEND BLANK
                     REPLACE niV WITH vnIv
                     REPLACE itE WITH vnUm
                     SELECT meNu0
                     APPEND BLANK
                     REPLACE itE WITH vnUm
                     DO prO_0000a WITH vnIv
                     REPLACE niV WITH mfRa
                     STORE xnIv TO vnIv
                ELSE
                     SELECT meNu0
                     GOTO TOP
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF()
                          STORE niV TO cnIv
                          DO prO_0000a WITH cnIv
                          STORE mfRa TO cnIv
                          IF cnIv=vnIv .AND. itE=vnUm
                               RLOCK()
                               EXIT
                          ENDIF
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                ENDIF
                SELECT meNu0_tmp
                DO CASE
                     CASE vnUm=1
                          REPLACE noM WITH vmN1
                          SELECT meNu0
                          DO prO_0000a WITH vmN1
                          REPLACE noM WITH mfRa
                     CASE vnUm=2
                          REPLACE noM WITH vmN2
                          SELECT meNu0
                          DO prO_0000a WITH vmN2
                          REPLACE noM WITH mfRa
                     CASE vnUm=3
                          REPLACE noM WITH vmN3
                          SELECT meNu0
                          DO prO_0000a WITH vmN3
                          REPLACE noM WITH mfRa
                     CASE vnUm=4
                          REPLACE noM WITH vmN4
                          SELECT meNu0
                          DO prO_0000a WITH vmN4
                          REPLACE noM WITH mfRa
                     CASE vnUm=5
                          REPLACE noM WITH vmN5
                          SELECT meNu0
                          DO prO_0000a WITH vmN5
                          REPLACE noM WITH mfRa
                     CASE vnUm=6
                          REPLACE noM WITH vmN6
                          SELECT meNu0
                          DO prO_0000a WITH vmN6
                          REPLACE noM WITH mfRa
                     CASE vnUm=7
                          REPLACE noM WITH vmN7
                          SELECT meNu0
                          DO prO_0000a WITH vmN7
                          REPLACE noM WITH mfRa
                ENDCASE
           CASE (vnUm=1 .AND. LEN(ALLTRIM(vmN1))=0) .OR. (vnUm=2 .AND.  ;
                LEN(ALLTRIM(vmN2))=0) .OR. (vnUm=3 .AND.  ;
                LEN(ALLTRIM(vmN3))=0) .OR. (vnUm=4 .AND.  ;
                LEN(ALLTRIM(vmN4))=0) .OR. (vnUm=5 .AND.  ;
                LEN(ALLTRIM(vmN5))=0) .OR. (vnUm=6 .AND.  ;
                LEN(ALLTRIM(vmN6))=0) .OR. (vnUm=7 .AND. LEN(ALLTRIM(vmN7))=0)
                SEEK vnIv+STR(vnUm, 1, 0)
                IF  .NOT. EOF()
                     REPLACE niV WITH SPACE(01)
                     DELETE
                     PACK
                     REINDEX
                     SELECT meNu0
                     GOTO TOP
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF()
                          STORE niV TO cnIv
                          DO prO_0000a WITH cnIv
                          STORE mfRa TO cnIv
                          IF cnIv=vnIv .AND. itE=vnUm
                               RLOCK()
                               REPLACE niV WITH SPACE(01)
                               DELETE
                               UNLOCK
                          ENDIF
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                     UNLOCK ALL
                     DO WHILE .T.
                          SELECT meNu1_tmp
                          SEEK vnIv+STR(vnUm, 1, 0)
                          IF EOF()
                               EXIT
                          ENDIF
                          REPLACE niV WITH SPACE(01)
                          DELETE
                     ENDDO
                     PACK
                     REINDEX
                     SELECT meNu1
                     GOTO TOP
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF()
                          STORE niV TO cnIv
                          DO prO_0000a WITH cnIv
                          STORE mfRa TO cnIv
                          IF cnIv=vnIv .AND. itE=vnUm
                               RLOCK()
                               REPLACE niV WITH SPACE(01)
                               DELETE
                               UNLOCK
                          ENDIF
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                     UNLOCK ALL
                ENDIF
      ENDCASE
      STORE vnUm+1 TO vnUm
 ENDDO
 UNLOCK ALL
 WAIT CLEAR
ENDPROC
*
PROCEDURE Eli_0000a
 = INKEY(0.01)
 SELECT meNus
 SEEK vnIv
 IF EOF()
      STORE "Menú no registrados..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 REPLACE coDigo WITH " "
 DELETE
 UNLOCK
 SELECT meNu0_tmp
 DO WHILE .T.
      SEEK vnIv
      IF EOF()
           EXIT
      ENDIF
      REPLACE niV WITH SPACE(01)
      DELETE
 ENDDO
 SELECT meNu0
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF()
      STORE niV TO cnIv
      DO prO_0000a WITH cnIv
      STORE mfRa TO cnIv
      IF cnIv=vnIv
           RLOCK()
           REPLACE niV WITH SPACE(01)
           DELETE
           UNLOCK
      ENDIF
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 UNLOCK ALL
 SELECT meNu1_tmp
 DO WHILE .T.
      SEEK vnIv
      IF EOF()
           EXIT
      ENDIF
      REPLACE niV WITH SPACE(01)
      DELETE
 ENDDO
 SELECT meNu1
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF()
      STORE niV TO cnIv
      DO prO_0000a WITH cnIv
      STORE mfRa TO cnIv
      IF cnIv=vnIv
           RLOCK()
           REPLACE niV WITH SPACE(01)
           DELETE
           UNLOCK
      ENDIF
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 UNLOCK ALL
 STORE 99 TO mkEy
 WAIT CLEAR
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
 DO CASE
      CASE mrEs="1"
           STORE 28 TO muFi
           STORE 126 TO muCo
           STORE (mwFi-muFi)/2 TO mfI0
           STORE mfI0-0.3 TO mfI0
           STORE (mwCo-muCo)/2 TO mcO0, vcO0
           STORE mfI0+11 TO ifIl, ufIl, vfIl
           STORE ifIl+11 TO ffIl
           STORE 17.7 TO vcLn
           STORE mfI0+0.4 TO vfBi
           STORE mcO0+19.8 TO vcBi
      CASE mrEs="2"
           STORE 32 TO muFi
           STORE 157.6 TO muCo
           STORE (mwFi-muFi)/2 TO mfI0
           STORE mfI0-1 TO mfI0
           STORE (mwCo-muCo)/2 TO mcO0, vcO0
           STORE vcO0+01 TO vcO0
           STORE mfI0+12 TO ifIl, ufIl, vfIl
           STORE ifIl+17 TO ffIl
           STORE 22 TO vcLn
           STORE mfI0+0.45 TO vfBi
           STORE mcO0+19.8 TO vcBi
      CASE mrEs="3"
           STORE 44 TO muFi
           STORE 198 TO muCo
           STORE (mwFi-muFi)/2 TO mfI0
           STORE mfI0-1 TO mfI0
           STORE (mwCo-muCo)/2 TO mcO0, vcO0
           STORE vcO0+01 TO vcO0
           STORE mfI0+12 TO ifIl, ufIl, vfIl
           STORE ifIl+28 TO ffIl
           STORE 28 TO vcLn
           STORE mfI0+0.40 TO vfBi
           STORE mcO0+19.8 TO vcBi
      CASE mrEs>"3"
           STORE 222 TO muCo
           STORE (mwCo-muCo)/2 TO mcO0, vcO0
           STORE vcO0+1 TO vcO0
           DO CASE
                CASE mlAr=600
                     STORE 32 TO muFi
                CASE mlAr=720
                     STORE 40 TO muFi
                OTHERWISE
                     STORE 46 TO muFi
           ENDCASE
           STORE (mwFi-muFi)/2 TO mfI0
           STORE mfI0-1 TO mfI0
           STORE mfI0+12 TO ifIl, ufIl, vfIl
           DO CASE
                CASE mlAr=600
                     STORE ifIl+14 TO ffIl
                CASE mlAr=720
                     STORE ifIl+24 TO ffIl
                OTHERWISE
                     STORE ifIl+28 TO ffIl
           ENDCASE
           STORE 30 TO vcLn
           STORE mfI0+0.40 TO vfBi
           STORE mcO0+19.8 TO vcBi
 ENDCASE
 STORE ifIl-10 TO ifFs, ufFs, vfFs
 STORE ffIl+03 TO ffFs
 Define Popup vTB1 from mFI0+0.3,mCO0+24.6 to fFIL,mCO0+92 Font "&mLetCou",11 Style "NQU" Prompt Field CODIGO+" - "+NOMBRE                            Scroll Color Scheme 1 Footer "CONSULTA DE MENUS"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, ffIl+6.5, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLsc7
 DO cuAdro WITH mfI0+0.4, mcO0+1, mfI0+2, mcO0+25
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+0.5,mCO0+2 Say "NIVEL:" Font "&mLetRom",15 Style "BQ"
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 DO cuAdro WITH mfI0+0.4, mcO0+27, mfI0+2, mcO0+muCo-2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mrEs="1"
           @mFI0+0.7,mCO0+028 Say "Nombre del Menú:" Font "&mLetRom",11 Style "BQ"
           @mFI0+0.7,mCO0+097 Say "Tecla de Enlace:" Font "&mLetRom",11 Style "BQ"
           DO coL_fonaz
           @mFI0+2.9,mCO0+4+(vCLN*0) Say "Opción1"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+4+(vCLN*1) Say "Opción2"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+4+(vCLN*2) Say "Opción3"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+4+(vCLN*3) Say "Opción4"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+4+(vCLN*4) Say "Opción5"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+4+(vCLN*5) Say "Opción6"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+4+(vCLN*6) Say "Opción7"   Font "&mLetRom",12 Style "BQ"
      CASE mrEs="2"
           @mFI0+0.7,mCO0+028 Say "Nombre del Menú:" Font "&mLetRom",11 Style "BQ"
           @mFI0+0.7,mCO0+107 Say "Tecla de Enlace:" Font "&mLetRom",11 Style "BQ"
           DO coL_fonaz
           @mFI0+2.9,mCO0+6+(vCLN*0) Say "Opción1"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+6+(vCLN*1) Say "Opción2"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+6+(vCLN*2) Say "Opción3"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+6+(vCLN*3) Say "Opción4"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+6+(vCLN*4) Say "Opción5"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+6+(vCLN*5) Say "Opción6"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+6+(vCLN*6) Say "Opción7"   Font "&mLetRom",12 Style "BQ"
      CASE mrEs>"2"
           @mFI0+0.7,mCO0+028 Say "Nombre del Menú:" Font "&mLetRom",11 Style "BQ"
           @mFI0+0.7,mCO0+117 Say "Tecla de Enlace:" Font "&mLetRom",11 Style "BQ"
           DO coL_fonaz
           @mFI0+2.9,mCO0+8+(vCLN*0) Say "Opción1"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+8+(vCLN*1) Say "Opción2"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+8+(vCLN*2) Say "Opción3"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+8+(vCLN*3) Say "Opción4"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+8+(vCLN*4) Say "Opción5"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+8+(vCLN*5) Say "Opción6"   Font "&mLetRom",12 Style "BQ"
           @mFI0+2.9,mCO0+8+(vCLN*6) Say "Opción7"   Font "&mLetRom",12 Style "BQ"
 ENDCASE
 SET READBORDER ON
 DO coLbln
 @mFI0+0.5,mCO0+17 Get vNIV Font "&mLetRom",11 Style "BQ" Size 1,1.8 Pict "!" Color ,&mColBlN
 DO CASE
      CASE mrEs="1"
           @mFI0+0.6,mCO0+054        Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,35,30
           @mFI0+0.6,mCO0+120        Get  vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1 Pict "!" Color ,&mColBlN
           @mFI0+4.4,mCO0+2+(vCLN*0) Edit vMN1 Font "&mLetAri",8  Style "BQ" Size 1,16,35
           @mFI0+4.4,mCO0+2+(vCLN*1) Edit vMN2 Font "&mLetAri",8  Style "BQ" Size 1,16,35
           @mFI0+4.4,mCO0+2+(vCLN*2) Edit vMN3 Font "&mLetAri",8  Style "BQ" Size 1,16,35
           @mFI0+4.4,mCO0+2+(vCLN*3) Edit vMN4 Font "&mLetAri",8  Style "BQ" Size 1,16,35
           @mFI0+4.4,mCO0+2+(vCLN*4) Edit vMN5 Font "&mLetAri",8  Style "BQ" Size 1,16,35
           @mFI0+4.4,mCO0+2+(vCLN*5) Edit vMN6 Font "&mLetAri",8  Style "BQ" Size 1,16,35
           @mFI0+4.4,mCO0+2+(vCLN*6) Edit vMN7 Font "&mLetAri",8  Style "BQ" Size 1,16,35
      CASE mrEs="2"
           @mFI0+0.6,mCO0+054        Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,35,30
           @mFI0+0.6,mCO0+130        Get  vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1 Pict "!" Color ,&mColBlN
           @mFI0+4.4,mCO0+2+(vCLN*0) Edit vMN1 Font "&mLetRom",11 Style "BQ" Size 1,17,35
           @mFI0+4.4,mCO0+2+(vCLN*1) Edit vMN2 Font "&mLetRom",11 Style "BQ" Size 1,17,35
           @mFI0+4.4,mCO0+2+(vCLN*2) Edit vMN3 Font "&mLetRom",11 Style "BQ" Size 1,17,35
           @mFI0+4.4,mCO0+2+(vCLN*3) Edit vMN4 Font "&mLetRom",11 Style "BQ" Size 1,17,35
           @mFI0+4.4,mCO0+2+(vCLN*4) Edit vMN5 Font "&mLetRom",11 Style "BQ" Size 1,17,35
           @mFI0+4.4,mCO0+2+(vCLN*5) Edit vMN6 Font "&mLetRom",11 Style "BQ" Size 1,17,35
           @mFI0+4.4,mCO0+2+(vCLN*6) Edit vMN7 Font "&mLetRom",11 Style "BQ" Size 1,17,35
      CASE mrEs>"2"
           @mFI0+0.6,mCO0+054        Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,35,30
           @mFI0+0.6,mCO0+140        Get  vLET Font "&mLetRom",11 Style "NQ" Size 1,2.1 Pict "!" Color ,&mColBlN
           @mFI0+4.4,mCO0+2+(vCLN*0) Edit vMN1 Font "&mLetRom",11 Style "BQ" Size 1,22,35
           @mFI0+4.4,mCO0+2+(vCLN*1) Edit vMN2 Font "&mLetRom",11 Style "BQ" Size 1,22,35
           @mFI0+4.4,mCO0+2+(vCLN*2) Edit vMN3 Font "&mLetRom",11 Style "BQ" Size 1,22,35
           @mFI0+4.4,mCO0+2+(vCLN*3) Edit vMN4 Font "&mLetRom",11 Style "BQ" Size 1,22,35
           @mFI0+4.4,mCO0+2+(vCLN*4) Edit vMN5 Font "&mLetRom",11 Style "BQ" Size 1,22,35
           @mFI0+4.4,mCO0+2+(vCLN*5) Edit vMN6 Font "&mLetRom",11 Style "BQ" Size 1,22,35
           @mFI0+4.4,mCO0+2+(vCLN*6) Edit vMN7 Font "&mLetRom",11 Style "BQ" Size 1,22,35
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Det_0000a
 SAVE SCREEN TO vpAn_11
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO meNuidd
 DO q2_0000a
 DO p1_0000a
 SET READBORDER ON
 RESTORE SCREEN FROM vpAn_11
ENDPROC
*
PROCEDURE Clp_0000a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mfI0+8.821 .AND. mfIl<=mfI0+10.321 .AND. viTe>=4 .AND.  ;
           mcCc>=mcO0+2 .AND. mcCc<=mcO0+28.2
           DO deT_0000a
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.893 .AND. mfIl<=mfI0+8.393 .AND. viTe>1 .AND.  ;
           mcCc>=(mcO0+(((vcLn*6)-39)/2)-0.8) .AND. mcCc<=(mcO0+(((vcLn* ;
           6)-39)/2)+19)
           STORE k_Tab TO mkEy
      CASE mfIl>=mfI0+6.893 .AND. mfIl<=mfI0+8.393 .AND. viTe>1 .AND.  ;
           mcCc>=(mcO0+(((vcLn*6)-39)/2)+20.4) .AND. mcCc<=(mcO0+(((vcLn* ;
           6)-39)/2)+20.4+19)
           STORE "N" TO moPc
           DO prE_docum WITH  ;
              "¿Está seguro de Eliminar las Opciones de este Menú?"
           IF moPc$"Ss"
                DO elI_0000a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 1 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.893 .AND. mfIl<=mfI0+8.393 .AND. mcCc>=(mcO0+ ;
           (((vcLn*6)-39)/2)+40.8) .AND. mcCc<=(mcO0+(((vcLn*6)-39)/2)+40.8+19)
           STORE 01 TO viTe
           STORE k_Esc TO mkEy
      CASE mfIl>=vfBi-0.05 .AND. mfIl<=vfBi+1.521 .AND. mcCc>=vcBi-0.30  ;
           .AND. mcCc<=vcBi+3.900
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=mfI0+0.393 .AND. mfIl<=mfI0+1.821 .AND. mcCc>=mcO0+01.8  ;
           .AND. mcCc<=mcO0+19.6 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.535 .AND. mfIl<=mfI0+2.035 .AND. viTe<>2 .AND.  ;
           ((mcCc>=mcO0+27.6 .AND. mcCc<=mcO0+96.4 .AND. mrEs="1") .OR.  ;
           (mcCc>=mcO0+27.6 .AND. mcCc<=mcO0+96.4 .AND. mrEs="2") .OR.  ;
           (mcCc>=mcO0+27.6 .AND. mcCc<=mcO0+96.4 .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+0.535 .AND. mfIl<=mfI0+2.035 .AND. viTe<>3 .AND.  ;
           ((mcCc>=mcO0+097.2 .AND. mcCc<=mcO0+123.2 .AND. mrEs="1") .OR.  ;
           (mcCc>=mcO0+107.2 .AND. mcCc<=mcO0+133.2 .AND. mrEs="2") .OR.  ;
           (mcCc>=mcO0+117.2 .AND. mcCc<=mcO0+143.2 .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>4 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*0) .AND. mcCc<=mcO0+17.6+(vcLn*0) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*0) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*0) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*0) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*0) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>5 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*1) .AND. mcCc<=mcO0+17.6+(vcLn*1) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*1) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*1) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*1) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*1) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=3
                STORE 4 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 05 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>6 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*2) .AND. mcCc<=mcO0+17.6+(vcLn*2) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*2) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*2) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*2) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*2) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=3
                STORE 4 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=4
                STORE 5 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 06 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>7 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*3) .AND. mcCc<=mcO0+17.6+(vcLn*3) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*3) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*3) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*3) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*3) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=3
                STORE 4 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=4
                STORE 5 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=5
                STORE 6 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 07 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>8 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*4) .AND. mcCc<=mcO0+17.6+(vcLn*4) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*4) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*4) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*4) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*4) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=3
                STORE 4 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=4
                STORE 5 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=5
                STORE 6 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=6
                STORE 7 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 08 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>9 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*5) .AND. mcCc<=mcO0+17.6+(vcLn*5) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*5) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*5) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*5) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*5) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=3
                STORE 4 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=4
                STORE 5 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=5
                STORE 6 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=6
                STORE 7 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=7
                STORE 8 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 09 TO viTe
                STORE 99 TO mkEy
           ENDIF
      CASE mfIl>=mfI0+4.364 .AND. mfIl<=mfI0+5.721 .AND. viTe<>10 .AND.  ;
           ((mcCc>=mcO0+1.6+(vcLn*6) .AND. mcCc<=mcO0+17.6+(vcLn*6) .AND.  ;
           mrEs="1") .OR. (mcCc>=mcO0+1.6+(vcLn*6) .AND. mcCc<=mcO0+22.4+ ;
           (vcLn*6) .AND. mrEs="2") .OR. (mcCc>=mcO0+1.6+(vcLn*6) .AND.  ;
           mcCc<=mcO0+28.4+(vcLn*6) .AND. mrEs>"2"))
           IF viTe=1
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=1
                STORE 2 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=2
                STORE 3 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=3
                STORE 4 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=4
                STORE 5 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=5
                STORE 6 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=6
                STORE 7 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=7
                STORE 8 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99 .AND. viTe=8
                STORE 9 TO viTe
                DO veR_0000a
           ENDIF
           IF mkEy<>99
                STORE 10 TO viTe
                STORE 99 TO mkEy
           ENDIF
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Car2_Tmps
 PRIVATE pcDx
 DIMENSION afIl[10, 4]
 STORE 1 TO x
 afIl[x, 1] = "COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
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
 afIl[x, 1] = "NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
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
 STORE x+1 TO x
 afIl[x, 1] = "SW0"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 DO WHILE .T.
      STORE "M001"+ntM3+meX1 TO mdBf
      STORE "M001"+ntM3+mcDx TO pcDx
      If .not.File("&mDBF") .and. .not.File("&pCDX")
           EXIT
      ENDIF
      IF ntM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file3 IN MODSET WITH "1", "S"
           DO deL_file3 IN MODSET WITH "2", "S"
           DO deL_file3 IN MODSET WITH "Z", "S"
           RETURN
      ENDIF
      ntM3 = STRTRAN(STR(VAL(ntM3)+1, 4, 0), " ", "0")
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON coD TAG coD
 INDEX ON co1+ALLTRIM(prG)+co2+nv1+nv2+STR(nv3, 2, 0)+coD TAG prG
 INDEX ON UPPER(ALLTRIM(noM))+co1+ALLTRIM(prG)+co2+nv1+nv2+STR(nv3, 2, 0)+ ;
       coD TAG noM
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE pcDx
ENDPROC
*
PROCEDURE Carg_Prgs
 WAIT WINDOW NOWAIT "CARGANDO..."
 SELECT mnUprg
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF()
      STORE SUBSTR(prG, 1, 1) TO vcO1
      STORE SUBSTR(prG, 2, 6) TO vpRg
      STORE SUBSTR(prG, 8, 1) TO vcO2
      STORE coD TO vcOd
      STORE noM TO vnOm
      STORE nv1 TO vnV1
      STORE nv2 TO vnV2
      STORE nv3 TO vnV3
      STORE cm1 TO vcM1
      SELECT prGmnu_tmp
      APPEND BLANK
      DO prO_0000a WITH vcO1
      REPLACE co1 WITH mfRa
      DO prO_0000a WITH vpRg
      REPLACE prG WITH mfRa
      DO prO_0000a WITH vcO2
      REPLACE co2 WITH mfRa
      DO prO_0000a WITH vcOd
      REPLACE coD WITH mfRa
      DO prO_0000a WITH vnOm
      REPLACE noM WITH mfRa
      DO prO_0000a WITH vnV1
      REPLACE nv1 WITH mfRa
      DO prO_0000a WITH vnV2
      REPLACE nv2 WITH mfRa
      DO prO_0000a WITH vcM1
      REPLACE cm1 WITH mfRa
      REPLACE nv3 WITH vnV3
      SELECT mnUprg
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 WAIT CLEAR
ENDPROC
*
PROCEDURE P1_0000a
 ON KEY LABEL F1 DO P_F1
 ON KEY LABEL F2 DO P_F2
 ON KEY LABEL F4 DO P_F4
 ON KEY LABEL F12 DO P_F12
 ON KEY LABEL LEFTMOUSE DO P_MOUSE
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL ENTER DO P_ENTER
 ON KEY LABEL TAB DO P_TAB
 ON KEY LABEL DNARROW DO P_DOWN
 ON KEY LABEL UPARROW DO P_UP
 ON KEY LABEL CTRL+HOME DO P_C_HOME
 ON KEY LABEL CTRL+END DO P_C_END
 ON KEY LABEL CTRL+RIGHTARROW DO P_C_RIGHT
 ON KEY LABEL CTRL+LEFTARROW DO P_C_LEFT
ENDPROC
*
PROCEDURE Q1_0000a
 ON KEY LABEL F1
 ON KEY LABEL F2
 ON KEY LABEL F4
 ON KEY LABEL F12
 ON KEY LABEL LEFTMOUSE
 ON KEY LABEL ESC
 ON KEY LABEL ENTER
 ON KEY LABEL TAB
 ON KEY LABEL DNARROW
 ON KEY LABEL UPARROW
 ON KEY LABEL CTRL+HOME
 ON KEY LABEL CTRL+END
 ON KEY LABEL CTRL+RIGHTARROW
 ON KEY LABEL CTRL+LEFTARROW
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
 ON KEY LABEL F12 DO P_F12
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
 ON KEY LABEL ALT+Z DO P_A_Z
 ON KEY LABEL ALT+D DO P_A_D
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
 ON KEY LABEL F12
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
 ON KEY LABEL ALT+Z
 ON KEY LABEL LEFTMOUSE
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 RELEASE vtB1, viTe, viT1, vnIv, cnIv, xnIv, vnOm, vlEt, vmN1, vmN2, vmN3,  ;
         vmN4, vmN5
 RELEASE vmN6, vmN7, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs, ufFs, ffFs,  ;
         cfFs, vrEc
 RELEASE irEc, urEc, frEc, crEc, vcLn, vfBi, vcBi, voPc, viOm, vpRg, vdEs,  ;
         vnV1, vnV2
 RELEASE vnV3, vnUm, vcO0, vcOd, vcM1, vtEc, vcO1, vcO2, vcDg, icDg, ucDg,  ;
         ccDg, vcD1
 RELEASE icD1, ucD1, ccD1, vcD2, icD2, ucD2, ccD2, vnO1, inO1, unO1, cnO1,  ;
         vpR1, ipR1
 RELEASE upR1, cpR1, vnB1, inB1, unB1, cnB1, vnB2, inB2, unB2, cnB2, vnB3,  ;
         inB3, unB3
 RELEASE cnB3
 RELEASE vpAn_11, vpAn_12
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
 DO deL_filet IN MODSET
 DO deL_file3 IN MODSET WITH "3", "S"
 DO deL_file3 IN MODSET WITH "4", "N"
 DO deL_file3 IN MODSET WITH "5", "N"
 DO deL_file3 IN MODSET WITH "6", "S"
 RELEASE ntM3, ntM4, ntM5, ntM6
ENDPROC
*
PROCEDURE Retorna
 CLOSE ALL
 DO deL_filet IN MODSET
 DO deL_files
 RELEASE ALL
 QUIT
ENDPROC
*
PROCEDURE Compila
 @ 0, 0 SAY "BMP\MNU_PA00.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PA01.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DESCAN.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU0.JPG" BITMAP STYLE "Q"
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
ENDPROC
*
