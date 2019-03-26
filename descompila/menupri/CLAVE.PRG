 PARAMETER pcLa
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
 MODIFY WINDOW scReen TITLE "CAMBIO DE CLAVE ("+ALLTRIM(STR(maNc, 4, 0))+ ;
        "x"+ALLTRIM(STR(mlAr, 4, 0))+") ["+mrEs+"]" ICON FILE "ICON04.ICO"
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
 DO CASE
      CASE ALLTRIM(mpCl)=mcLave
           STORE "  " TO mcOd
      OTHERWISE
           SEEK mpCl
           STORE fiDeusu TO mcOd
           UNLOCK
 ENDCASE
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
 PUBLIC meX1
 STORE "0000" TO mtM1
 STORE ".TMP" TO meX1
 STORE 01 TO meRr
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FIDEUSU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FIDENOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE "M001"+mtM1+meX1 TO mdBf
 DO WHILE .T.
      mtM1 = STRTRAN(STR(VAL(mtM1)+1, 4, 0), " ", "0")
      STORE "M001"+mtM1+meX1 TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF mtM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO reTorno
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON fiDeusu TAG fiDeusu
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
 STORE mpAt+"FU019113.DBF" TO mdBf
 Use &mDBF Share Alias Vendedores
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 4
 STORE "M001"+mtM1+meX1 TO mdBf
 Use &mDBF Exclusive Alias Identif_Tmp
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SET ORDER TO FIDEUSU
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 PUBLIC vcOd, ccOd, vtB1, vtB2, voPc, vnOm, cnOm, vcLa, vaRe, vnIv, vpRt,  ;
        vvEn, vnVe
 PUBLIC vsR1, vsR2, vsR3, vsR4, vsR5, vsR6, vsR7, vsR8, vsR9, vsR0, vsRa,  ;
        vsRb, vsRc
 PUBLIC vsRd, vsRe, vsRf, vsRg, v001, v002, v003, v004, v005, v006, v007,  ;
        v008, v009
 PUBLIC v010, v011, v012, v013, v014, v015, v016, v017, v018, v019, v020,  ;
        v021, v022
 PUBLIC v023, v024, v025, v026, v027, v028, v029, v030, v031, v032, v033,  ;
        v034, v035
 PUBLIC v036, vlIn, ilIn, ulIn, vcLn, ccLn, vrEc, viTe, ciTe, vfB1, vfB2,  ;
        vfB3, vcB1
 PUBLIC vcB2, vcB3, ciTx
 STORE 1 TO msAl
 SELECT idEntif
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF pcLa="2"
           IF fiDeprt=1 .AND. (LEN(ALLTRIM(mcOd))=0 .OR. fiDeusu<>mcOd)
                SKIP
                LOOP
           ENDIF
      ENDIF
      STORE fiDeusu TO ccOd
      STORE fiDenom TO cnOm
      DO prO_0000a WITH cnOm
      STORE mfRa TO cnOm
      SELECT idEntif_tmp
      APPEND BLANK
      REPLACE fiDeusu WITH ccOd
      REPLACE fiDenom WITH cnOm
      SELECT idEntif
      SKIP
 ENDDO
 STORE 0 TO voPc
 STORE 2 TO vpRt
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 STORE 1 TO viTe
 STORE 0 TO voPc
 ON KEY LABEL F10 DO P_F10
 DO p1_0000a
 DO coLsc7
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
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT idEntif_tmp
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Usuarios registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                SET NEAR ON
                SEEK vcOd
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                IF mkEy=k_Enter
                     STORE fiDeusu TO vcOd
                     SELECT idEntif
                     SEEK vcOd
                     DO muE_0000a
                     DO diS_0000a
                     STORE 99 TO mkEy
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
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=57
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viTe=2 .OR. (viTe>=4  ;
                .AND. viTe<=9) .OR. viTe=21 .OR. viTe=34 .OR. viTe=46)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_F5 .AND. viTe=2
                DO coLbln
                IF LEN(vcLa)=4
                     @mFI0+2.5,vCLN+10 Say vCLA Font "&mLetRom",11 Style "BQ" Size 1,5.2
                ELSE
                     @mFI0+2.5,vCLN+10 Say vCLA Font "&mLetRom",11 Style "BQ" Size 1,8.2
                ENDIF
                mkEy = INKEY(0.2, "HM")
                IF LEN(vcLa)=4
                     @mFI0+2.5,vCLN+10 Say vCLA Font "&mLetRom",11 Style "BQ" Size 1,5.2 Color RGB(255,255,255,255,255,255)
                ELSE
                     @mFI0+2.5,vCLN+10 Say vCLA Font "&mLetRom",11 Style "BQ" Size 1,8.2 Color RGB(255,255,255,255,255,255)
                ENDIF
           CASE mkEy=k_Enter
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=57
                               STORE 01 TO viTe
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe>=46 .AND. viTe<=57
                          CASE viTe=02
                               STORE viTe+2 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=03
                               STORE viTe+7 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=09
                               STORE viTe+12 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=15
                               STORE viTe+11 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=20
                               STORE viTe+13 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe>=22 .AND. viTe<=45
                               STORE viTe+12 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=3 .OR. viTe=4
                          STORE viTe-2 TO viTe
                     CASE viTe=10 .OR. viTe=16
                          STORE 3 TO viTe
                     CASE viTe=21
                          STORE 9 TO viTe
                     CASE viTe>=22 .AND. viTe<=33
                          STORE 15 TO ciTe
                     CASE viTe>=34 .AND. viTe<=57
                          STORE viTe-12 TO ciTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=57
                          CASE viTe>=04 .AND. viTe<=14
                               STORE viTe+6 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=15
                               STORE viTe+5 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE viTe>=10 .AND. viTe<=20
                          STORE viTe-6 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO veR_0000a
                STORE viTe+1 TO viTe
                DO WHILE viTe<57 .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                DO veR_0000a
                STORE viTe+1 TO viTe
                DO WHILE viTe<57 .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99 .AND. viTe<57
                     STORE 57 TO viTe
                     DO veR_0000a
                ENDIF
                IF mkEy<>99
                     DO grA_0000a
                     IF mkEy=k_Esc
                          EXIT
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
      DO CASE
           CASE viTe=1
                @mFI0+00.5,vCLN+00 Edit vNOM Font "&mLetRom",11 Style "BQ" Size 1,45,30
           CASE viTe=2 .AND. LEN(vcLa)=4
                @mFI0+02.5,vCLN+10 Get  vCLA Font "&mLetRom",11 Style "BQ" Size 1,5.1 Color ,RGB(255,255,255,255,255,255) Pict "!!!!"
           CASE viTe=2
                @mFI0+02.5,vCLN+10 Get  vCLA Font "&mLetRom",11 Style "BQ" Size 1,8.1 Color ,RGB(255,255,255,255,255,255) Pict "!!!!!!"
           CASE viTe=3
                @mFI0+02.5,vCLN+52 Get  vVEN Font "&mLetRom",11 Style "BQ" Pict "99"  Size 1,2.6 Color ,&mColBlN
           CASE viTe=4
                @mFI0+04.0,vCLN+26 Get  vSR1 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=5
                @mFI0+05.5,vCLN+26 Get  vSR9 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=6
                @mFI0+07.0,vCLN+26 Get  vSRD Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=7
                @mFI0+08.5,vCLN+26 Get  vSR5 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=8
                @mFI0+10.0,vCLN+26 Get  vSRB Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=9
                @mFI0+11.5,vCLN+26 Get  vSRF Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=10
                @mFI0+04.0,vCLN+61 Get  vSR2 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=11
                @mFI0+05.5,vCLN+61 Get  vSR0 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=12
                @mFI0+07.0,vCLN+61 Get  vSRE Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=13
                @mFI0+08.5,vCLN+61 Get  vSR6 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=14
                @mFI0+10.0,vCLN+61 Get  vSRC Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=15
                @mFI0+11.5,vCLN+61 Get  vSRG Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=16
                @mFI0+04.0,vCLN+94 Get  vSR4 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=17
                @mFI0+05.5,vCLN+94 Get  vSRA Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=18
                @mFI0+07.0,vCLN+94 Get  vSR7 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=19
                @mFI0+08.5,vCLN+94 Get  vSR3 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=20
                @mFI0+10.0,vCLN+94 Get  vSR8 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
           CASE viTe=21
                @mFI0+13.5,vCLN+20 Get  vNIV Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,2   Color ,&mColBlN
           CASE viTe=22
                @mFI0+13.5,vCLN+48 Get  v001 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=23
                @mFI0+13.5,vCLN+52 Get  v002 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=24
                @mFI0+13.5,vCLN+56 Get  v003 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=25
                @mFI0+13.5,vCLN+60 Get  v004 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=26
                @mFI0+13.5,vCLN+64 Get  v005 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=27
                @mFI0+13.5,vCLN+68 Get  v006 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=28
                @mFI0+13.5,vCLN+72 Get  v007 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=29
                @mFI0+13.5,vCLN+76 Get  v008 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=30
                @mFI0+13.5,vCLN+80 Get  v009 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=31
                @mFI0+13.5,vCLN+84 Get  v010 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=32
                @mFI0+13.5,vCLN+88 Get  v011 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=33
                @mFI0+13.5,vCLN+92 Get  v012 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=34
                @mFI0+15.5,vCLN+48 Get  v013 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=35
                @mFI0+15.5,vCLN+52 Get  v014 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=36
                @mFI0+15.5,vCLN+56 Get  v015 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=37
                @mFI0+15.5,vCLN+60 Get  v016 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=38
                @mFI0+15.5,vCLN+64 Get  v017 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=39
                @mFI0+15.5,vCLN+68 Get  v018 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=40
                @mFI0+15.5,vCLN+72 Get  v019 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=41
                @mFI0+15.5,vCLN+76 Get  v020 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=42
                @mFI0+15.5,vCLN+80 Get  v021 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=43
                @mFI0+15.5,vCLN+84 Get  v022 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=44
                @mFI0+15.5,vCLN+88 Get  v023 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=45
                @mFI0+15.5,vCLN+92 Get  v024 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=46
                @mFI0+17.5,vCLN+48 Get  v025 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=47
                @mFI0+17.5,vCLN+52 Get  v026 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=48
                @mFI0+17.5,vCLN+56 Get  v027 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=49
                @mFI0+17.5,vCLN+60 Get  v028 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=50
                @mFI0+17.5,vCLN+64 Get  v029 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=51
                @mFI0+17.5,vCLN+68 Get  v030 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=52
                @mFI0+17.5,vCLN+72 Get  v031 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=53
                @mFI0+17.5,vCLN+76 Get  v032 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=54
                @mFI0+17.5,vCLN+80 Get  v033 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=55
                @mFI0+17.5,vCLN+84 Get  v034 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=56
                @mFI0+17.5,vCLN+88 Get  v035 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
           CASE viTe=57
                @mFI0+17.5,vCLN+92 Get  v036 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
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
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vcLa))=0
           STORE "Clave no puede estar vacía..." TO mmSj
      CASE viTe=2
           SELECT idEntif
           SET ORDER TO FIDECLA
           SEEK vcLa
           IF  .NOT. EOF() .AND. fiDeusu<>vcOd
                STORE "Clave ya registrada..." TO mmSj
           ELSE
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(fiDecla)+"*"= ;
                   ALLTRIM(vcLa)+"*"
                     IF fiDeusu<>vcOd
                          STORE "Clave ya registrada..." TO mmSj
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
           ENDIF
           SET ORDER TO FIDEUSU
           SEEK vcOd
      CASE viTe=4 .AND. LEN(ALLTRIM(vsR1))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=4 .AND. AT(" ", vsR1)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=4 .AND. vsR1="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=5 .AND. LEN(ALLTRIM(vsR9))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=5 .AND. AT(" ", vsR9)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=5 .AND. vsR9="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=6 .AND. LEN(ALLTRIM(vsRd))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=6 .AND. AT(" ", vsRd)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=6 .AND. vsRd="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=7 .AND. LEN(ALLTRIM(vsR5))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=7 .AND. AT(" ", vsR5)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=7 .AND. vsR5="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=8 .AND. LEN(ALLTRIM(vsRb))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=8 .AND. AT(" ", vsRb)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=8 .AND. vsRb="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=9 .AND. LEN(ALLTRIM(vsRf))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=9 .AND. AT(" ", vsRf)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=9 .AND. vsRf="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=10 .AND. LEN(ALLTRIM(vsR2))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=10 .AND. AT(" ", vsR2)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=10 .AND. vsR2="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=11 .AND. LEN(ALLTRIM(vsR0))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=11 .AND. AT(" ", vsR0)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=11 .AND. vsR0="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=12 .AND. LEN(ALLTRIM(vsRe))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=12 .AND. AT(" ", vsRe)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=12 .AND. vsRe="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=13 .AND. LEN(ALLTRIM(vsR6))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=13 .AND. AT(" ", vsR6)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=13 .AND. vsR6="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=14 .AND. LEN(ALLTRIM(vsRc))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=14 .AND. AT(" ", vsRc)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=14 .AND. vsRc="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=15 .AND. LEN(ALLTRIM(vsRg))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=15 .AND. AT(" ", vsRg)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=15 .AND. vsRg="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=16 .AND. LEN(ALLTRIM(vsR4))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=16 .AND. AT(" ", vsR4)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=16 .AND. vsR4="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=17 .AND. LEN(ALLTRIM(vsRa))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=17 .AND. AT(" ", vsRa)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=17 .AND. vsRa="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=18 .AND. LEN(ALLTRIM(vsR7))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=18 .AND. AT(" ", vsR7)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=18 .AND. vsR7="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=19 .AND. LEN(ALLTRIM(vsR3))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=19 .AND. AT(" ", vsR3)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=19 .AND. vsR3="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=20 .AND. LEN(ALLTRIM(vsR8))=0
           STORE "Serie no puede estar vacía..." TO mmSj
      CASE viTe=20 .AND. AT(" ", vsR8)<>0
           STORE "Serie no puede tener espacios vacíos..." TO mmSj
      CASE viTe=20 .AND. vsR8="000"
           STORE "Serie no puede ser 000..." TO mmSj
      CASE viTe=21 .AND. LEN(ALLTRIM(vnIv))=0
           STORE "Nivel no puede estar vacío..." TO mmSj
      CASE viTe=21
           SELECT meNus
           SEEK vnIv
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=22 .AND. LEN(ALLTRIM(v001))<>0 .AND. v001<>"*"
           SELECT meNus
           SEEK v001
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=23 .AND. LEN(ALLTRIM(v002))<>0 .AND. v002<>"*"
           SELECT meNus
           SEEK v002
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=24 .AND. LEN(ALLTRIM(v003))<>0 .AND. v003<>"*"
           SELECT meNus
           SEEK v003
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=25 .AND. LEN(ALLTRIM(v004))<>0 .AND. v004<>"*"
           SELECT meNus
           SEEK v004
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=26 .AND. LEN(ALLTRIM(v005))<>0 .AND. v005<>"*"
           SELECT meNus
           SEEK v005
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=27 .AND. LEN(ALLTRIM(v006))<>0 .AND. v006<>"*"
           SELECT meNus
           SEEK v006
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=28 .AND. LEN(ALLTRIM(v007))<>0 .AND. v007<>"*"
           SELECT meNus
           SEEK v007
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=29 .AND. LEN(ALLTRIM(v008))<>0 .AND. v008<>"*"
           SELECT meNus
           SEEK v008
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=30 .AND. LEN(ALLTRIM(v009))<>0
           SELECT meNus
           SEEK v009
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=31 .AND. LEN(ALLTRIM(v010))<>0
           SELECT meNus
           SEEK v010
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=32 .AND. LEN(ALLTRIM(v011))<>0
           SELECT meNus
           SEEK v011
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=33 .AND. LEN(ALLTRIM(v012))<>0
           SELECT meNus
           SEEK v012
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=34 .AND. LEN(ALLTRIM(v013))<>0
           SELECT meNus
           SEEK v013
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=35 .AND. LEN(ALLTRIM(v014))<>0
           SELECT meNus
           SEEK v014
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=36 .AND. LEN(ALLTRIM(v015))<>0
           SELECT meNus
           SEEK v015
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=37 .AND. LEN(ALLTRIM(v016))<>0
           SELECT meNus
           SEEK v016
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=38 .AND. LEN(ALLTRIM(v017))<>0
           SELECT meNus
           SEEK v017
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=39 .AND. LEN(ALLTRIM(v018))<>0
           SELECT meNus
           SEEK v018
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=40 .AND. LEN(ALLTRIM(v019))<>0
           SELECT meNus
           SEEK v019
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=41 .AND. LEN(ALLTRIM(v020))<>0
           SELECT meNus
           SEEK v020
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=42 .AND. LEN(ALLTRIM(v021))<>0
           SELECT meNus
           SEEK v021
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=43 .AND. LEN(ALLTRIM(v022))<>0
           SELECT meNus
           SEEK v022
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=44 .AND. LEN(ALLTRIM(v023))<>0
           SELECT meNus
           SEEK v023
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=45 .AND. LEN(ALLTRIM(v024))<>0
           SELECT meNus
           SEEK v024
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=46 .AND. LEN(ALLTRIM(v025))<>0
           SELECT meNus
           SEEK v025
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=47 .AND. LEN(ALLTRIM(v026))<>0
           SELECT meNus
           SEEK v026
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=48 .AND. LEN(ALLTRIM(v027))<>0
           SELECT meNus
           SEEK v027
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=49 .AND. LEN(ALLTRIM(v028))<>0
           SELECT meNus
           SEEK v028
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=50 .AND. LEN(ALLTRIM(v029))<>0
           SELECT meNus
           SEEK v029
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=51 .AND. LEN(ALLTRIM(v030))<>0
           SELECT meNus
           SEEK v030
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=52 .AND. LEN(ALLTRIM(v031))<>0
           SELECT meNus
           SEEK v031
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=53 .AND. LEN(ALLTRIM(v032))<>0
           SELECT meNus
           SEEK v032
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=54 .AND. LEN(ALLTRIM(v033))<>0
           SELECT meNus
           SEEK v033
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=55 .AND. LEN(ALLTRIM(v034))<>0
           SELECT meNus
           SEEK v034
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=56 .AND. LEN(ALLTRIM(v035))<>0
           SELECT meNus
           SEEK v035
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
      CASE viTe=57 .AND. LEN(ALLTRIM(v036))<>0
           SELECT meNus
           SEEK v036
           IF EOF()
                STORE "Nivel no se encuentra registrado..." TO mmSj
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Ven_0000a
 = INKEY(0.01)
 SELECT veNdedores
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Vendedores registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 01 TO meRr
 SET ORDER TO F9113NOM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO meRr
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnVe))
 SET NEAR OFF
 SET CONFIRM ON
 DO q1_0000a
 ACTIVATE POPUP vtB2 REST
 DO p1_0000a
 SET CONFIRM OFF
 STORE 01 TO meRr
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO meRr
 IF mkEy=k_Enter
      DO coLbln
      STORE f9113cod TO vvEn
      STORE f9113nom TO vnVe
      @mFI0+2.5,vCLN+52 Say vVEN Font "&mLetRom",11 Style "BQ" Size 1,2.6
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vvEn))=0
      DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Nue_0000a
 STORE 2 TO vpRt
 SELECT idEntif
 GOTO BOTTOM
 IF  .NOT. EOF() .AND. fiDeusu="999"
      STORE "Ya no se puede Crear mas Usuarios" TO mmSj
      DO poNmsj
 ELSE
      GOTO TOP
      IF BOF() .OR. EOF()
           STORE "1" TO vnIv
           STORE "24" TO vaRe
           STORE "001" TO vcOd, vsR1, vsR2, vsR3, vsR4, vsR5, vsR6, vsR7, vsR8
           STORE "001" TO vsR9, vsR0, vsRa, vsRb, vsRc, vsRd, vsRe, vsRf, vsRg
           STORE SPACE(02) TO vvEn
           STORE SPACE(50) TO vnVe
           STORE SPACE(01) TO v001, v002, v003, v004, v005, v006, v007,  ;
                 v008, v009
           STORE SPACE(01) TO v010, v011, v012, v013, v014, v015, v016,  ;
                 v017, v018
           STORE SPACE(01) TO v019, v020, v021, v022, v023, v024, v025,  ;
                 v026, v027
           STORE SPACE(01) TO v028, v029, v030, v031, v032, v033, v034,  ;
                 v035, v036
      ELSE
           GOTO BOTTOM
           STORE STRTRAN(STR(VAL(fiDeusu)+1, 3, 0), " ", "0") TO vcOd
      ENDIF
      STORE "." TO vnOm
      STORE "*"+vcOd TO vcLa
      DO grA_0000a
 ENDIF
ENDPROC
*
PROCEDURE Gra_0000a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT idEntif_tmp
 SEEK vcOd
 SELECT idEntif
 SEEK vcOd
 IF EOF()
      APPEND BLANK
      REPLACE fiDeusu WITH vcOd
      SELECT idEntif_tmp
      APPEND BLANK
      REPLACE fiDeusu WITH vcOd
      SELECT idEntif
 ELSE
      IF  .NOT. RLOCK()
           DO reG_lock WITH vcOd
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT idEntif_tmp
 REPLACE fiDenom WITH vnOm
 SELECT idEntif
 REPLACE fiDecla WITH vcLa
 REPLACE fiDeprt WITH vpRt
 DO prO_0000a WITH vnOm
 REPLACE fiDenom WITH mfRa
 DO prO_0000a WITH vaRe
 REPLACE fiDeare WITH mfRa
 DO prO_0000a WITH vnIv
 REPLACE fiDeniv WITH mfRa
 DO prO_0000a WITH vvEn
 REPLACE fiDeven WITH mfRa
 DO prO_0000a WITH vsR1
 REPLACE fiDesr1 WITH mfRa
 DO prO_0000a WITH vsR2
 REPLACE fiDesr2 WITH mfRa
 DO prO_0000a WITH vsR3
 REPLACE fiDesr3 WITH mfRa
 DO prO_0000a WITH vsR4
 REPLACE fiDesr4 WITH mfRa
 DO prO_0000a WITH vsR5
 REPLACE fiDesr5 WITH mfRa
 DO prO_0000a WITH vsR6
 REPLACE fiDesr6 WITH mfRa
 DO prO_0000a WITH vsR7
 REPLACE fiDesr7 WITH mfRa
 DO prO_0000a WITH vsR8
 REPLACE fiDesr8 WITH mfRa
 DO prO_0000a WITH vsR9
 REPLACE fiDesr9 WITH mfRa
 DO prO_0000a WITH vsR0
 REPLACE fiDesr0 WITH mfRa
 DO prO_0000a WITH vsRa
 REPLACE fiDesra WITH mfRa
 DO prO_0000a WITH vsRb
 REPLACE fiDesrb WITH mfRa
 DO prO_0000a WITH vsRc
 REPLACE fiDesrc WITH mfRa
 DO prO_0000a WITH vsRd
 REPLACE fiDesrd WITH mfRa
 DO prO_0000a WITH vsRe
 REPLACE fiDesre WITH mfRa
 DO prO_0000a WITH vsRf
 REPLACE fiDesrf WITH mfRa
 DO prO_0000a WITH vsRg
 REPLACE fiDesrg WITH mfRa
 DO prO_0000a WITH v001
 REPLACE fiDe001 WITH mfRa
 DO prO_0000a WITH v002
 REPLACE fiDe002 WITH mfRa
 DO prO_0000a WITH v003
 REPLACE fiDe003 WITH mfRa
 DO prO_0000a WITH v004
 REPLACE fiDe004 WITH mfRa
 DO prO_0000a WITH v005
 REPLACE fiDe005 WITH mfRa
 DO prO_0000a WITH v006
 REPLACE fiDe006 WITH mfRa
 DO prO_0000a WITH v007
 REPLACE fiDe007 WITH mfRa
 DO prO_0000a WITH v008
 REPLACE fiDe008 WITH mfRa
 DO prO_0000a WITH v009
 REPLACE fiDe009 WITH mfRa
 DO prO_0000a WITH v010
 REPLACE fiDe010 WITH mfRa
 DO prO_0000a WITH v011
 REPLACE fiDe011 WITH mfRa
 DO prO_0000a WITH v012
 REPLACE fiDe012 WITH mfRa
 DO prO_0000a WITH v013
 REPLACE fiDe013 WITH mfRa
 DO prO_0000a WITH v014
 REPLACE fiDe014 WITH mfRa
 DO prO_0000a WITH v015
 REPLACE fiDe015 WITH mfRa
 DO prO_0000a WITH v016
 REPLACE fiDe016 WITH mfRa
 DO prO_0000a WITH v017
 REPLACE fiDe017 WITH mfRa
 DO prO_0000a WITH v018
 REPLACE fiDe018 WITH mfRa
 DO prO_0000a WITH v019
 REPLACE fiDe019 WITH mfRa
 DO prO_0000a WITH v020
 REPLACE fiDe020 WITH mfRa
 DO prO_0000a WITH v021
 REPLACE fiDe021 WITH mfRa
 DO prO_0000a WITH v022
 REPLACE fiDe022 WITH mfRa
 DO prO_0000a WITH v023
 REPLACE fiDe023 WITH mfRa
 DO prO_0000a WITH v024
 REPLACE fiDe024 WITH mfRa
 DO prO_0000a WITH v025
 REPLACE fiDe025 WITH mfRa
 DO prO_0000a WITH v026
 REPLACE fiDe026 WITH mfRa
 DO prO_0000a WITH v027
 REPLACE fiDe027 WITH mfRa
 DO prO_0000a WITH v028
 REPLACE fiDe028 WITH mfRa
 DO prO_0000a WITH v029
 REPLACE fiDe029 WITH mfRa
 DO prO_0000a WITH v030
 REPLACE fiDe030 WITH mfRa
 DO prO_0000a WITH v031
 REPLACE fiDe031 WITH mfRa
 DO prO_0000a WITH v032
 REPLACE fiDe032 WITH mfRa
 DO prO_0000a WITH v033
 REPLACE fiDe033 WITH mfRa
 DO prO_0000a WITH v034
 REPLACE fiDe034 WITH mfRa
 DO prO_0000a WITH v035
 REPLACE fiDe035 WITH mfRa
 DO prO_0000a WITH v036
 REPLACE fiDe036 WITH mfRa
 UNLOCK
 WAIT CLEAR
 DO muE_0000a
ENDPROC
*
PROCEDURE Eli_0000a
 = INKEY(0.01)
 SELECT idEntif_tmp
 SEEK vcOd
 DELETE
 PACK
 REINDEX
 SELECT idEntif
 SEEK vcOd
 IF EOF()
      STORE "Código de Usuario no registrado..." TO mmSj
      RETURN
 ENDIF
 DO grAbar WITH "2"
 IF  .NOT. RLOCK()
      DO reG_lock WITH vcOd
      IF mkEy=k_Esc
           WAIT CLEAR
           = INKEY(0.01)
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE fiDeusu WITH SPACE(04)
 DELETE
 UNLOCK
 STORE 99 TO mkEy
 WAIT CLEAR
ENDPROC
*
PROCEDURE Mue_0000a
 SELECT idEntif
 STORE fiDeusu TO vcOd
 STORE fiDecla TO vcLa
 STORE fiDeprt TO vpRt
 STORE fiDenom TO vnOm
 STORE fiDeare TO vaRe
 STORE fiDeniv TO vnIv
 STORE fiDeven TO vvEn
 STORE fiDesr1 TO vsR1
 STORE fiDesr2 TO vsR2
 STORE fiDesr3 TO vsR3
 STORE fiDesr4 TO vsR4
 STORE fiDesr5 TO vsR5
 STORE fiDesr6 TO vsR6
 STORE fiDesr7 TO vsR7
 STORE fiDesr8 TO vsR8
 STORE fiDesr9 TO vsR9
 STORE fiDesr0 TO vsR0
 STORE fiDesra TO vsRa
 STORE fiDesrb TO vsRb
 STORE fiDesrc TO vsRc
 STORE fiDesrd TO vsRd
 STORE fiDesre TO vsRe
 STORE fiDesrf TO vsRf
 STORE fiDesrg TO vsRg
 STORE fiDe001 TO v001
 STORE fiDe002 TO v002
 STORE fiDe003 TO v003
 STORE fiDe004 TO v004
 STORE fiDe005 TO v005
 STORE fiDe006 TO v006
 STORE fiDe007 TO v007
 STORE fiDe008 TO v008
 STORE fiDe009 TO v009
 STORE fiDe010 TO v010
 STORE fiDe011 TO v011
 STORE fiDe012 TO v012
 STORE fiDe013 TO v013
 STORE fiDe014 TO v014
 STORE fiDe015 TO v015
 STORE fiDe016 TO v016
 STORE fiDe017 TO v017
 STORE fiDe018 TO v018
 STORE fiDe019 TO v019
 STORE fiDe020 TO v020
 STORE fiDe021 TO v021
 STORE fiDe022 TO v022
 STORE fiDe023 TO v023
 STORE fiDe024 TO v024
 STORE fiDe025 TO v025
 STORE fiDe026 TO v026
 STORE fiDe027 TO v027
 STORE fiDe028 TO v028
 STORE fiDe029 TO v029
 STORE fiDe030 TO v030
 STORE fiDe031 TO v031
 STORE fiDe032 TO v032
 STORE fiDe033 TO v033
 STORE fiDe034 TO v034
 STORE fiDe035 TO v035
 STORE fiDe036 TO v036
 DO prO_0000a WITH vnOm
 STORE mfRa TO vnOm
 DO prO_0000a WITH vaRe
 STORE mfRa TO vaRe
 DO prO_0000a WITH vnIv
 STORE mfRa TO vnIv
 DO prO_0000a WITH vvEn
 STORE mfRa TO vvEn
 DO prO_0000a WITH vsR1
 STORE mfRa TO vsR1
 DO prO_0000a WITH vsR2
 STORE mfRa TO vsR2
 DO prO_0000a WITH vsR3
 STORE mfRa TO vsR3
 DO prO_0000a WITH vsR4
 STORE mfRa TO vsR4
 DO prO_0000a WITH vsR5
 STORE mfRa TO vsR5
 DO prO_0000a WITH vsR6
 STORE mfRa TO vsR6
 DO prO_0000a WITH vsR7
 STORE mfRa TO vsR7
 DO prO_0000a WITH vsR8
 STORE mfRa TO vsR8
 DO prO_0000a WITH vsR9
 STORE mfRa TO vsR9
 DO prO_0000a WITH vsR0
 STORE mfRa TO vsR0
 DO prO_0000a WITH vsRa
 STORE mfRa TO vsRa
 DO prO_0000a WITH vsRb
 STORE mfRa TO vsRb
 DO prO_0000a WITH vsRc
 STORE mfRa TO vsRc
 DO prO_0000a WITH vsRd
 STORE mfRa TO vsRd
 DO prO_0000a WITH vsRe
 STORE mfRa TO vsRe
 DO prO_0000a WITH vsRf
 STORE mfRa TO vsRf
 DO prO_0000a WITH vsRg
 STORE mfRa TO vsRg
 DO prO_0000a WITH v001
 STORE mfRa TO v001
 DO prO_0000a WITH v002
 STORE mfRa TO v002
 DO prO_0000a WITH v003
 STORE mfRa TO v003
 DO prO_0000a WITH v004
 STORE mfRa TO v004
 DO prO_0000a WITH v005
 STORE mfRa TO v005
 DO prO_0000a WITH v006
 STORE mfRa TO v006
 DO prO_0000a WITH v007
 STORE mfRa TO v007
 DO prO_0000a WITH v008
 STORE mfRa TO v008
 DO prO_0000a WITH v009
 STORE mfRa TO v009
 DO prO_0000a WITH v010
 STORE mfRa TO v010
 DO prO_0000a WITH v011
 STORE mfRa TO v011
 DO prO_0000a WITH v012
 STORE mfRa TO v012
 DO prO_0000a WITH v013
 STORE mfRa TO v013
 DO prO_0000a WITH v014
 STORE mfRa TO v014
 DO prO_0000a WITH v015
 STORE mfRa TO v015
 DO prO_0000a WITH v016
 STORE mfRa TO v016
 DO prO_0000a WITH v017
 STORE mfRa TO v017
 DO prO_0000a WITH v018
 STORE mfRa TO v018
 DO prO_0000a WITH v019
 STORE mfRa TO v019
 DO prO_0000a WITH v020
 STORE mfRa TO v020
 DO prO_0000a WITH v021
 STORE mfRa TO v021
 DO prO_0000a WITH v022
 STORE mfRa TO v022
 DO prO_0000a WITH v023
 STORE mfRa TO v023
 DO prO_0000a WITH v024
 STORE mfRa TO v024
 DO prO_0000a WITH v025
 STORE mfRa TO v025
 DO prO_0000a WITH v026
 STORE mfRa TO v026
 DO prO_0000a WITH v027
 STORE mfRa TO v027
 DO prO_0000a WITH v028
 STORE mfRa TO v028
 DO prO_0000a WITH v029
 STORE mfRa TO v029
 DO prO_0000a WITH v030
 STORE mfRa TO v030
 DO prO_0000a WITH v031
 STORE mfRa TO v031
 DO prO_0000a WITH v032
 STORE mfRa TO v032
 DO prO_0000a WITH v033
 STORE mfRa TO v033
 DO prO_0000a WITH v034
 STORE mfRa TO v034
 DO prO_0000a WITH v035
 STORE mfRa TO v035
 DO prO_0000a WITH v036
 STORE mfRa TO v036
 SELECT veNdedores
 SEEK vvEn
 IF EOF()
      STORE SPACE(50) TO vnVe
 ELSE
      STORE f9113nom TO vnVe
 ENDIF
 SELECT idEntif
ENDPROC
*
PROCEDURE Dis_0000a
 DO coLbln
 IF LEN(vcLa)=4
      @mFI0+2.5,vCLN+10 Say vCLA Font "&mLetRom",11 Style "BQ" Size 1,5.1 Color RGB(255,255,255,255,255,255)
 ELSE
      @mFI0+2.5,vCLN+10 Say vCLA Font "&mLetRom",11 Style "BQ" Size 1,8.1 Color RGB(255,255,255,255,255,255)
 ENDIF
 @mFI0+00.5,mCO0+22 Say vCOD Font "&mLetRom",13 Style "BQ" Size 1,4.3
 @mFI0+00.5,vCLN+00 Say vNOM Font "&mLetRom",11 Style "BQ" Size 1,45,30
 @mFI0+02.5,vCLN+52 Say vVEN Font "&mLetRom",11 Style "BQ" Pict "99"  Size 1,2.6
 @mFI0+04.0,vCLN+26 Say vSR1 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+05.5,vCLN+26 Say vSR9 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+07.0,vCLN+26 Say vSRD Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+08.5,vCLN+26 Say vSR5 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+10.0,vCLN+26 Say vSRB Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+11.5,vCLN+26 Say vSRF Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+04.0,vCLN+61 Say vSR2 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+05.5,vCLN+61 Say vSR0 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+07.0,vCLN+61 Say vSRE Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+08.5,vCLN+61 Say vSR6 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+10.0,vCLN+61 Say vSRC Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+11.5,vCLN+61 Say vSRG Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+04.0,vCLN+94 Say vSR4 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+05.5,vCLN+94 Say vSRA Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+07.0,vCLN+94 Say vSR7 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+08.5,vCLN+94 Say vSR3 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+10.0,vCLN+94 Say vSR8 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1
 @mFI0+13.5,vCLN+20 Say vNIV Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,2
 @mFI0+13.5,vCLN+48 Say v001 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+52 Say v002 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+56 Say v003 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+60 Say v004 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+64 Say v005 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+68 Say v006 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+72 Say v007 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+76 Say v008 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+80 Say v009 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+84 Say v010 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+88 Say v011 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+13.5,vCLN+92 Say v012 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+48 Say v013 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+52 Say v014 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+56 Say v015 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+60 Say v016 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+64 Say v017 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+68 Say v018 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+72 Say v019 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+76 Say v020 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+80 Say v021 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+84 Say v022 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+88 Say v023 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+15.5,vCLN+92 Say v024 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+48 Say v025 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+52 Say v026 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+56 Say v027 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+60 Say v028 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+64 Say v029 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+68 Say v030 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+72 Say v031 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+76 Say v032 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+80 Say v033 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+84 Say v034 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+88 Say v035 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 @mFI0+17.5,vCLN+92 Say v036 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6
 IF pcLa="1"
      @mFI0+2.6,vCLN+76 Get vPRT Font "&mLetRom",11 Style "NQ" Default vPRT Function "*RHT Si;No"
 ENDIF
 READ TIMEOUT 0.01
 IF LEN(ALLTRIM(vnVe))<>0
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
 ELSE
      DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_0000a
 PARAMETER ptPo
 PRIVATE ptAm
 IF ptPo="1"
      @0,0 Say "&mPTA" BitMap Style "Q" Stretch
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE mrEs TO mrSs
 ENDIF
 DO CASE
      CASE mrEs="3"
           STORE 39 TO muFi
           STORE 176.4 TO muCo
           STORE 11 TO ptAm
      OTHERWISE
           STORE 236 TO muCo
           STORE 12 TO ptAm
           IF mlAr=600
                STORE 36 TO muFi
           ELSE
                STORE 42 TO muFi
           ENDIF
 ENDCASE
 STORE SPACE(03) TO vcOd
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+00.5 TO vfB1
 STORE mfI0+02.5 TO vfB2, vfB3
 STORE mcO0+74 TO vcLn
 STORE mfI0+22.5 TO vlIn, ilIn
 DO CASE
      CASE mrEs="3"
           STORE ilIn+14.0 TO ulIn
      OTHERWISE
           IF mlAr=600
                STORE ilIn+12 TO ulIn
           ELSE
                STORE ilIn+16 TO ulIn
           ENDIF
 ENDCASE
 STORE mcO0+04.0 TO ccLn
 STORE mcO0+28.9 TO vcB1
 STORE vcLn+55.8 TO vcB2
 STORE vcB2+4 TO vcB3
 Define Popup vTB1 from mFI0+2.5,mCO0-1  to uLIN,vCLN+4 Font "&mLetCou",pTAM Style "NQU" Prompt Field FIDEUSU+" - "+FIDENOM Scroll Color Scheme 1 Footer "CONSULTA DE USUARIOS"
 Define Popup vTB2 from mFI0+3.8,vCB2-55 to uLIN,vCB2   Font "&mLetAri",pTAM Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 10 Footer "CONSULTA DE VENDEDORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO coL_fondo
 @ mfI0-0.5, mcO0 TO mfI0+muFi+0.3, mcO0+muCo PATTERN 1
 @ vlIn-0.5, ccLn TO ulIn+1.2, mcO0+muCo-4 PATTERN 1 PEN 2 COLOR SCHEME 7
 DO coLneb
 @ vlIn-0.5, ccLn TO ulIn+1.2, mcO0+muCo-4 PEN 2
 DO coLsc7
 SELECT meNus
 GOTO TOP
 STORE 1 TO vrEc
 DO WHILE  .NOT. EOF()
      STORE coDigo TO ccOd
      STORE noMbre TO cnOm
      DO prO_0000a WITH cnOm
      STORE mfRa TO cnOm
      DO CASE
           CASE mrEs="3"
                @vLIN,cCLN+01 Say vREC Font "&mLetCou",9  Style "BT" Size 1,2  Pict "99" Color 1
                @vLIN,cCLN+08 Say cCOD Font "&mLetCou",9  Style "NQ" Size 1,1.5
                @vLIN,cCLN+12 Say cNOM Font "&mLetAri",10 Style "NQ" Size 1,25 Pict "@S27"
           OTHERWISE
                @vLIN,cCLN+01 Say vREC Font "&mLetCou",10 Style "BT" Size 1,2  Pict "99" Color 1
                @vLIN,cCLN+08 Say cCOD Font "&mLetCou",10 Style "NQ" Size 1,1.5
                @vLIN,cCLN+12 Say cNOM Font "&mLetAri",11 Style "NQ" Size 1,25 Pict "@S27"
      ENDCASE
      @vLIN,cCLN+04 Say "." Font "&mLetCou",10 Style "BT" Size 1,2 Color 1
      @vLIN,cCLN+10 Say ":" Font "&mLetCou",10 Style "BT" Size 1,2
      vrEc = vrEc+1
      vlIn = vlIn+1.4
      IF vlIn>ulIn-0.5
           STORE ilIn TO vlIn
           DO CASE
                CASE mrEs="3"
                     STORE ccLn+41.8 TO ccLn
                OTHERWISE
                     STORE ccLn+60 TO ccLn
           ENDCASE
      ENDIF
      SKIP
 ENDDO
 IF ptPo="0"
      SELECT idEntif_tmp
      GOTO TOP
      STORE fiDeusu TO vcOd
      SELECT idEntif
      SET ORDER TO FIDEUSU
      SEEK vcOd
      DO muE_0000a
 ELSE
      SELECT idEntif
      SEEK vcOd
 ENDIF
 DO coL_fonaz
 @mFI0+00.5,mCO0+1  Say "USUARIO:"           Font "&mLetRom",15 Style "BQ"
 @mFI0+00.5,vCLN-14 Say "Nombre:"            Font "&mLetRom",12 Style "BQU"
 @mFI0+04.0,vCLN-14 Say "Series:"            Font "&mLetRom",12 Style "BQU"
 @mFI0+13.5,vCLN-14 Say "Niveles:"           Font "&mLetRom",12 Style "BQU"
 DO coL_fonro
 @mFI0+13.5,vCLN    Say "Por Defecto"          Font "&mLetRom",12 Style "BQU"
 @mFI0+13.5,vCLN+27 Say "Otros Niveles"        Font "&mLetRom",12 Style "BQU"
 @mFI0+02.5,vCLN    Say "Clave:"               Font "&mLetRom",11 Style "BQ"
 @mFI0+02.5,vCLN+37 Say "Vendedor:"            Font "&mLetRom",11 Style "BQ"
 @mFI0+04.0,vCLN+00 Say "Factura/TF:"          Font "&mLetRom",11 Style "BQ"
 @mFI0+05.5,vCLN+00 Say "Factura Elect:"       Font "&mLetRom",11 Style "BQ"
 @mFI0+07.0,vCLN+00 Say "Factura Elect Sol:"   Font "&mLetRom",11 Style "BQ"
 @mFI0+08.5,vCLN+00 Say "Nota Crédito:"        Font "&mLetRom",11 Style "BQ"
 @mFI0+10.0,vCLN+00 Say "Nota Créd.Elect:"     Font "&mLetRom",11 Style "BQ"
 @mFI0+11.5,vCLN+00 Say "Nota Créd.El.SOL:"    Font "&mLetRom",11 Style "BQ"
 @mFI0+04.0,vCLN+36 Say "Boleta/TB:"           Font "&mLetRom",11 Style "BQ"
 @mFI0+05.5,vCLN+36 Say "Boleta Elect:"        Font "&mLetRom",11 Style "BQ"
 @mFI0+07.0,vCLN+36 Say "Boleta Elect Sol:"    Font "&mLetRom",11 Style "BQ"
 @mFI0+08.5,vCLN+36 Say "Nota Débito:"         Font "&mLetRom",11 Style "BQ"
 @mFI0+10.0,vCLN+36 Say "Nota Déb.Elect:"      Font "&mLetRom",11 Style "BQ"
 @mFI0+11.5,vCLN+36 Say "Nota Déb.El.SOL:"     Font "&mLetRom",11 Style "BQ"
 @mFI0+04.0,vCLN+71 Say "Guia.Remisión:"       Font "&mLetRom",11 Style "BQ"
 @mFI0+05.5,vCLN+71 Say "Guia Rem.Elect:"      Font "&mLetRom",11 Style "BQ"
 @mFI0+07.0,vCLN+71 Say "Letras"               Font "&mLetRom",11 Style "BQ"
 @mFI0+08.5,vCLN+71 Say "Cot/NP/Ped:"          Font "&mLetRom",11 Style "BQ"
 @mFI0+10.0,vCLN+71 Say "Percepión:"           Font "&mLetRom",11 Style "BQ"
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vnVe))<>0
      DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
 ELSE
      DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 DO coLbln
 @mFI0+00.5,vCLN Edit vNOM Font "&mLetRom",11 Style "BQ" Size 1,45,30
 IF LEN(vcLa)=4
      @mFI0+2.5,vCLN+10 Get vCLA Font "&mLetRom",11 Style "BQ" Size 1,5.1 Color ,RGB(255,255,255,255,255,255)
 ELSE
      @mFI0+2.5,vCLN+10 Get vCLA Font "&mLetRom",11 Style "BQ" Size 1,8.1 Color ,RGB(255,255,255,255,255,255)
 ENDIF
 @mFI0+00.5,mCO0+22 Get vCOD Font "&mLetRom",13 Style "BQ" Size 1,4.3            Color ,&mColBlN
 @mFI0+02.5,vCLN+52 Get vVEN Font "&mLetRom",11 Style "BQ" Pict "99"  Size 1,2.6 Color ,&mColBlN
 @mFI0+04.0,vCLN+26 Get vSR1 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+05.5,vCLN+26 Get vSR9 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+07.0,vCLN+26 Get vSRD Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+08.5,vCLN+26 Get vSR5 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+10.0,vCLN+26 Get vSRB Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+11.5,vCLN+26 Get vSRF Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+04.0,vCLN+61 Get vSR2 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+05.5,vCLN+61 Get vSR0 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+07.0,vCLN+61 Get vSRE Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+08.5,vCLN+61 Get vSR6 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+10.0,vCLN+61 Get vSRC Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+11.5,vCLN+61 Get vSRG Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+04.0,vCLN+94 Get vSR4 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+05.5,vCLN+94 Get vSRA Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+07.0,vCLN+94 Get vSR7 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+08.5,vCLN+94 Get vSR3 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+10.0,vCLN+94 Get vSR8 Font "&mLetRom",11 Style "BQ" Pict "999" Size 1,4.1 Color ,&mColBlN
 @mFI0+13.5,vCLN+20 Get vNIV Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,2   Color ,&mColBlN
 @mFI0+13.5,vCLN+48 Get v001 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+52 Get v002 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+56 Get v003 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+60 Get v004 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+64 Get v005 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+68 Get v006 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+72 Get v007 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+76 Get v008 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+80 Get v009 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+84 Get v010 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+88 Get v011 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+13.5,vCLN+92 Get v012 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+48 Get v013 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+52 Get v014 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+56 Get v015 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+60 Get v016 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+64 Get v017 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+68 Get v018 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+72 Get v019 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+76 Get v020 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+80 Get v021 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+84 Get v022 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+88 Get v023 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+15.5,vCLN+92 Get v024 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+48 Get v025 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+52 Get v026 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+56 Get v027 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+60 Get v028 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+64 Get v029 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+68 Get v030 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+72 Get v031 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+76 Get v032 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+80 Get v033 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+84 Get v034 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+88 Get v035 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 @mFI0+17.5,vCLN+92 Get v036 Font "&mLetRom",11 Style "BQ" Pict "!"   Size 1,1.6 Color ,&mColBlN
 DO coL_fondo
 IF pcLa="1"
      @mFI0+1.4,vCLN+76 Say "ADMIN:" Font "&mLetRom",11 Style "BQ"
      @mFI0+2.6,vCLN+76 Get  vPRT    Font "&mLetRom",11 Style "NQ" Default vPRT Function "*RHT Si;No"
 ENDIF
 @mFI0+19.8,vCLN+2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Nuevo;Grabar;Eliminar;Salir" Size 1.6,16,1
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Clp_0000a
 = INKEY(0.01)
 STORE 00 TO ciTx
 DO CASE
      CASE mfIl>=vfB1+mfG1 .AND. mfIl<=vfB1+mfG2 .AND. mcCc>=vcB1+mcG1  ;
           .AND. mcCc<=vcB1+mcG2
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           DO veN_0000a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           DO coLbln
           STORE 99 TO mkEy
           STORE SPACE(02) TO vvEn
           STORE SPACE(50) TO vnVe
           @mFI0+2.5,vCLN+52 Say vVEN Font "&mLetRom",11 Style "BQ" Size 1,2.6
           DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=mfI0+19.786 .AND. mfIl<=mfI0+21.5 .AND. mcCc>=vcLn+1.8  ;
           .AND. mcCc<=vcLn+21.2
           DO nuE_0000a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO diS_0000a
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+19.786 .AND. mfIl<=mfI0+21.5 .AND. mcCc>=vcLn+22.2  ;
           .AND. mcCc<=vcLn+41.4
           STORE k_Tab TO mkEy
      CASE mfIl>=mfI0+19.786 .AND. mfIl<=mfI0+21.5 .AND. mcCc>=vcLn+42.6  ;
           .AND. mcCc<=vcLn+61.8
           DO elI_0000a
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT idEntif
           SET NEAR ON
           SEEK vcOd
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_0000a
           DO diS_0000a
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+19.786 .AND. mfIl<=mfI0+21.5 .AND. mcCc>=vcLn+63  ;
           .AND. mcCc<=vcLn+82.2
           STORE 01 TO viTe
           STORE k_Esc TO mkEy
      CASE mfIl>=mfI0+2.392 .AND. mfIl<=mfI0+3.535 .AND. pcLa="1" .AND.  ;
           mcCc>=vcLn+75.4 .AND. mcCc<=vcLn+82.20 .AND. vpRt<>1
           STORE 01 TO vpRt
           @mFI0+2.6,vCLN+76 Get vPRT Font "&mLetRom",11 Style "NQ" Default vPRT Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.392 .AND. mfIl<=mfI0+3.535 .AND. pcLa="1" .AND.  ;
           mcCc>=vcLn+82.2 .AND. mcCc<=vcLn+91.00 .AND. vpRt<>2
           STORE 02 TO vpRt
           @mFI0+2.6,vCLN+76 Get vPRT Font "&mLetRom",11 Style "NQ" Default vPRT Function "*RHT Si;No"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.428 .AND. mfIl<=mfI0+1.786 .AND. mcCc>=vcLn .AND.  ;
           mcCc<=vcLn+54.00 .AND. viTe<>1
           STORE 1 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.857 .AND. LEN(vcLa)=4  ;
           .AND. mcCc>=vcLn+9.4 .AND. mcCc<=vcLn+16.60 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+2.428 .AND. mfIl<=mfI0+3.857 .AND. LEN(vcLa)=6  ;
           .AND. mcCc>=vcLn+9.4 .AND. mcCc<=vcLn+19.60 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+1.928 .AND. mfIl<=mfI0+3.357 .AND. mcCc>=vcLn+51.6  ;
           .AND. mcCc<=vcLn+55.5 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+3.928 .AND. mfIl<=mfI0+5.286 .AND. mcCc>=vcLn+25.6  ;
           .AND. mcCc<=vcLn+31.4 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+5.286 .AND. mfIl<=mfI0+6.928 .AND. mcCc>=vcLn+25.6  ;
           .AND. mcCc<=vcLn+31.4 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+6.928 .AND. mfIl<=mfI0+8.357 .AND. mcCc>=vcLn+25.6  ;
           .AND. mcCc<=vcLn+31.4 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+8.357 .AND. mfIl<=mfI0+9.957 .AND. mcCc>=vcLn+25.6  ;
           .AND. mcCc<=vcLn+31.4 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+9.928 .AND. mfIl<=mfI0+11.357 .AND. mcCc>=vcLn+25.6  ;
           .AND. mcCc<=vcLn+31.4 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+11.36 .AND. mfIl<=mfI0+12.857 .AND. mcCc>=vcLn+25.6  ;
           .AND. mcCc<=vcLn+31.4 .AND. viTe<>9
           STORE 9 TO ciTx
      CASE mfIl>=mfI0+3.928 .AND. mfIl<=mfI0+5.286 .AND. mcCc>=vcLn+60.8  ;
           .AND. mcCc<=vcLn+66.4 .AND. viTe<>10
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+5.286 .AND. mfIl<=mfI0+6.928 .AND. mcCc>=vcLn+60.8  ;
           .AND. mcCc<=vcLn+66.4 .AND. viTe<>11
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+6.928 .AND. mfIl<=mfI0+8.357 .AND. mcCc>=vcLn+60.8  ;
           .AND. mcCc<=vcLn+66.4 .AND. viTe<>12
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+8.357 .AND. mfIl<=mfI0+9.821 .AND. mcCc>=vcLn+60.8  ;
           .AND. mcCc<=vcLn+66.4 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+9.928 .AND. mfIl<=mfI0+11.357 .AND. mcCc>=vcLn+60.8  ;
           .AND. mcCc<=vcLn+66.4 .AND. viTe<>14
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+11.36 .AND. mfIl<=mfI0+12.857 .AND. mcCc>=vcLn+60.8  ;
           .AND. mcCc<=vcLn+66.4 .AND. viTe<>15
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+3.928 .AND. mfIl<=mfI0+5.286 .AND. mcCc>=vcLn+93.8  ;
           .AND. mcCc<=vcLn+99.4 .AND. viTe<>16
           STORE 16 TO ciTx
      CASE mfIl>=mfI0+5.286 .AND. mfIl<=mfI0+6.928 .AND. mcCc>=vcLn+93.8  ;
           .AND. mcCc<=vcLn+99.4 .AND. viTe<>17
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+6.928 .AND. mfIl<=mfI0+8.357 .AND. mcCc>=vcLn+93.8  ;
           .AND. mcCc<=vcLn+99.4 .AND. viTe<>18
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+8.357 .AND. mfIl<=mfI0+9.821 .AND. mcCc>=vcLn+93.8  ;
           .AND. mcCc<=vcLn+99.4 .AND. viTe<>19
           STORE 19 TO ciTx
      CASE mfIl>=mfI0+9.928 .AND. mfIl<=mfI0+11.357 .AND. mcCc>=vcLn+93.8  ;
           .AND. mcCc<=vcLn+99.4 .AND. viTe<>20
           STORE 20 TO ciTx
      CASE mfIl>=mfI0+13.5 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+19.6  ;
           .AND. mcCc<=vcLn+22.8 .AND. viTe<>21
           STORE 21 TO ciTx
      CASE mfIl>=mfI0+13.5 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+47.6  ;
           .AND. mcCc<=vcLn+50.4 .AND. viTe<>22
           STORE 22 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           51.6 .AND. mcCc<=vcLn+54.4 .AND. viTe<>23
           STORE 23 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           55.6 .AND. mcCc<=vcLn+58.4 .AND. viTe<>24
           STORE 24 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           59.6 .AND. mcCc<=vcLn+62.4 .AND. viTe<>25
           STORE 25 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           63.6 .AND. mcCc<=vcLn+66.4 .AND. viTe<>26
           STORE 26 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           67.6 .AND. mcCc<=vcLn+70.4 .AND. viTe<>27
           STORE 27 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           71.6 .AND. mcCc<=vcLn+74.4 .AND. viTe<>28
           STORE 28 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           75.6 .AND. mcCc<=vcLn+78.4 .AND. viTe<>29
           STORE 29 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           79.6 .AND. mcCc<=vcLn+82.4 .AND. viTe<>30
           STORE 30 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           83.6 .AND. mcCc<=vcLn+86.4 .AND. viTe<>31
           STORE 31 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           87.6 .AND. mcCc<=vcLn+90.4 .AND. viTe<>32
           STORE 32 TO ciTx
      CASE mfIl>=mfI0+13.428 .AND. mfIl<=mfI0+14.857 .AND. mcCc>=vcLn+ ;
           91.6 .AND. mcCc<=vcLn+94.4 .AND. viTe<>33
           STORE 33 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           47.6 .AND. mcCc<=vcLn+50.4 .AND. viTe<>34
           STORE 34 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           51.6 .AND. mcCc<=vcLn+54.4 .AND. viTe<>35
           STORE 35 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           55.6 .AND. mcCc<=vcLn+58.4 .AND. viTe<>36
           STORE 36 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           59.6 .AND. mcCc<=vcLn+62.4 .AND. viTe<>37
           STORE 37 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           63.6 .AND. mcCc<=vcLn+66.4 .AND. viTe<>38
           STORE 38 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           67.6 .AND. mcCc<=vcLn+70.4 .AND. viTe<>39
           STORE 39 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           71.6 .AND. mcCc<=vcLn+74.4 .AND. viTe<>40
           STORE 40 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           75.6 .AND. mcCc<=vcLn+78.4 .AND. viTe<>41
           STORE 41 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           79.6 .AND. mcCc<=vcLn+82.4 .AND. viTe<>42
           STORE 42 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           83.6 .AND. mcCc<=vcLn+86.4 .AND. viTe<>43
           STORE 43 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           87.6 .AND. mcCc<=vcLn+90.4 .AND. viTe<>44
           STORE 44 TO ciTx
      CASE mfIl>=mfI0+15.428 .AND. mfIl<=mfI0+16.857 .AND. mcCc>=vcLn+ ;
           91.6 .AND. mcCc<=vcLn+94.4 .AND. viTe<>45
           STORE 45 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           47.6 .AND. mcCc<=vcLn+50.4 .AND. viTe<>46
           STORE 46 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           51.6 .AND. mcCc<=vcLn+54.4 .AND. viTe<>47
           STORE 47 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           55.6 .AND. mcCc<=vcLn+58.4 .AND. viTe<>48
           STORE 48 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           59.6 .AND. mcCc<=vcLn+62.4 .AND. viTe<>49
           STORE 49 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           63.6 .AND. mcCc<=vcLn+66.4 .AND. viTe<>50
           STORE 50 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           67.6 .AND. mcCc<=vcLn+70.4 .AND. viTe<>51
           STORE 51 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           71.6 .AND. mcCc<=vcLn+74.4 .AND. viTe<>52
           STORE 52 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           75.6 .AND. mcCc<=vcLn+78.4 .AND. viTe<>53
           STORE 53 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           79.6 .AND. mcCc<=vcLn+82.4 .AND. viTe<>54
           STORE 54 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           83.6 .AND. mcCc<=vcLn+86.4 .AND. viTe<>55
           STORE 55 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           87.6 .AND. mcCc<=vcLn+90.4 .AND. viTe<>56
           STORE 56 TO ciTx
      CASE mfIl>=mfI0+17.428 .AND. mfIl<=mfI0+18.786 .AND. mcCc>=vcLn+ ;
           91.6 .AND. mcCc<=vcLn+94.4 .AND. viTe<>57
           STORE 57 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
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
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE P1_0000a
 ON KEY LABEL F2 DO P_F2
 ON KEY LABEL F5 DO P_F5
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
 ON KEY LABEL F2
 ON KEY LABEL F5
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
PROCEDURE Compila
 @ 0, 0 SAY "BMP\B_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_CONSUL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSUL.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_DESCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\N_DESCAR.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL1.JPG" BITMAP STYLE "Q"
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
PROCEDURE Set_Ini
 ZOOM WINDOW scReen MAX
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
 SET TYPEAHEAD TO 100
 SET KEYCOMP TO WINDOW
 SET REFRESH TO 20, 20
 SET REPROCESS TO 0 SECONDS
 SET CLOCK STATUS
 SET DATE French
 = CAPSLOCK(.F.)
 MODIFY WINDOW scReen FONT "Arial", 8 STYLE "NT" NOCLOSE TITLE "" ICON  ;
        FILE "ICON01.ICO"
ENDPROC
*
PROCEDURE Retorna
 CLOSE ALL
 DO deL_files
 RELEASE ALL
 QUIT
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 RELEASE vcOd, ccOd, vtB1, vtB2, voPc, vnOm, cnOm, vcLa, vaRe, vnIv, vpRt,  ;
         vvEn, vnVe
 RELEASE vsR1, vsR2, vsR3, vsR4, vsR5, vsR6, vsR7, vsR8, vsR9, vsR0, vsRa,  ;
         vsRb, vsRc
 RELEASE vsRd, vsRe, vsRf, vsRg, v001, v002, v003, v004, v005, v006, v007,  ;
         v008, v009
 RELEASE v010, v011, v012, v013, v014, v015, v016, v017, v018, v019, v020,  ;
         v021, v022
 RELEASE v023, v024, v025, v026, v027, v028, v029, v030, v031, v032, v033,  ;
         v034, v035
 RELEASE v036, vlIn, ilIn, ulIn, vcLn, ccLn, vrEc, viTe, ciTe, vfB1, vfB2,  ;
         vfB3, vcB1
 RELEASE vcB2, vcB3, ciTx
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
 RETURN
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 DO deL_file3 IN MODSET WITH "1", "S"
 RETURN
ENDPROC
*
