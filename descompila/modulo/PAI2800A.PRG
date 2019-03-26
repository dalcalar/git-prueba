 SET CENTURY ON
 PUBLIC wsW0, ntM7, ntM8
 STORE "0006" TO ntM7
 STORE "0007" TO ntM8
 STORE 01 TO wsW0
 DO tmP_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM7SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM7+meXt TO mdBf
 DO WHILE .T.
      ntM7 = STRTRAN(STR(VAL(ntM7)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM7+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM7="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM7ser+ftM7doc TAG ftM7doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[20, 4]
 STORE 1 TO x
 afIl[x, 1] = "ITEM"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CORTADO"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DESCRIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "CANTID"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "BASE1"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "LARGO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "ANCHO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "STOCK1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "BASE2"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "LARGO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "ANCHO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "STOCK2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "BASE3"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "LARGO3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "ANCHO3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "STOCK3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "BASE4"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "LARGO4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "ANCHO4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "STOCK4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE "TM01"+ntM8+meXt TO mdBf
 DO WHILE .T.
      ntM8 = STRTRAN(STR(VAL(ntM8)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM8+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM8="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(coRtado)+"*" TAG coRtado
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2700w IN PAI2700W
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO abR_2800a
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT 41
 STORE "TM01"+ntM8+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Cortado
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SET ORDER TO CORTADO
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SELECT 42
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 STORE 00 TO meRr
 DO vaR_2700w IN PAI2700W
 PUBLIC vpEd, vtIp, vnTi, vtB1, vtB2, vfB1, vfB2, vfB3, vfB4, vcB1, vcB2,  ;
        vcB3, vcB4
 PUBLIC vcL0, vcO0, vsW2, vsW3, vaNo, iaNo, uaNo, xaNo, vmEs, imEs, umEs,  ;
        xmEs, vdIa
 PUBLIC idIa, udIa, xdIa, itDo, utDo, xtDo, isEr, usEr, xsEr, idOc, udOc,  ;
        xdOc, vnOm
 PUBLIC inOm, unOm, xnOm, vfAc, ifAc, ufAc, xfAc, vtP1, vtI1, ciTe, vtD1,  ;
        vsE1, vdO1
 PUBLIC vcOs, xcOs, vlIn, vpAg, vcLn, clAr, caNc, vcM1, icM1, ucM1, ccM1,  ;
        xcM1, vcD1
 PUBLIC vcD2, vcD3, xcAn
 STORE SPACE(04) TO vaLm
 STORE SPACE(07) TO vpEd
 STORE SPACE(15) TO vcOd
 STORE SPACE(70) TO vcM1, vdEs, vnAl
 STORE "GS" TO vtDo
 STORE 1 TO vsW3
 STORE 0 TO vsTo
 SELECT tiPos
 GOTO TOP
 STORE f9218tip TO vtIp
 STORE f9218nti TO vnTi
 STORE f9218tpo TO vtPp
 SET READBORDER ON
 DO p00_2800a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2800a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2800a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2800a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2800a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F2 .AND. viTe=2 .AND. vtPp=5
                SAVE SCREEN TO vpAn_11
                SELECT tmP_cortado
                ZAP
                REINDEX
                SELECT deT_fact
                SET ORDER TO F1301DOC
                GOTO TOP
                SELECT caB_fact
                SET ORDER TO F1300FEM
                GOTO TOP
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
                IF  .NOT. EOF() .AND. f1300fem=vfEm
                     DO WHILE  .NOT. EOF() .AND. f1300fem=vfEm
                          IF f1300est$"89" .OR. (f1300tdo<>"FA" .AND.  ;
                             f1300tdo<>"BO" .AND. f1300tdo<>"NP")
                               SKIP
                               LOOP
                          ENDIF
                          STORE f1300tdo TO itDo
                          STORE f1300ser TO isEr
                          STORE f1300doc TO idOc
                          @iFIL-3,mCO0+15 Say iTDO+":"+iSER+"-"+iDOC Font "&mLetRom",14 Style "BQ" Size 1,30
                          SELECT deT_fact
                          GOTO TOP
                          SEEK itDo+isEr+idOc
                          DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+ ;
                             f1301doc=itDo+isEr+idOc
                               STORE f1301cod TO icDg
                               STORE f1301des TO idCc
                               STORE f1301can TO xcAn
                               @iFIL,mCO0+15 Say iCDG Font "&mLetRom",13 Style "NQ" Size 1,30
                               SELECT prOductos
                               SEEK ALLTRIM(icDg)+"*"
                               IF  .NOT. EOF()
                                    STORE f2111tip TO ctPo
                                    SELECT tiP_prod
                                    SEEK ctPo
                                    IF EOF()
                                         STORE 1 TO vtPo
                                    ELSE
                                         STORE f9211tpo TO vtPo
                                    ENDIF
                                    IF vtPo<>5
                                         SELECT deT_fact
                                         SKIP
                                         LOOP
                                    ENDIF
                                    SELECT tmP_cortado
                                    SEEK ALLTRIM(icDg)+"*"
                                    IF EOF()
                                         APPEND BLANK
                                         REPLACE coRtado WITH icDg
                                         REPLACE deScrip WITH idCc
                                         REPLACE caNtid WITH 0
                                    ENDIF
                                    REPLACE caNtid WITH caNtid+xcAn
                               ENDIF
                               SELECT deT_fact
                               SKIP
                          ENDDO
                          SELECT caB_fact
                          SKIP
                     ENDDO
                     SELECT prOductos
                     SET ORDER TO F2111BAS
                     SELECT tmP_cortado
                     GOTO TOP
                     DO WHILE  .NOT. EOF()
                          STORE coRtado TO icDg
                          STORE 1 TO viTe
                          SELECT prOductos
                          SEEK ALLTRIM(icDg)+"*"
                          DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2111bas)+ ;
                             "*"=ALLTRIM(icDg)+"*"
                               IF f2111est="9" .OR. ALLTRIM(f2111bas)+"*"= ;
                                  ALLTRIM(f2111cod)+"*" .OR. (f2111sto<=0  ;
                                  .AND. f2111cst=1)
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f2111cod TO ucDg
                               STORE f2111la1 TO vlA1
                               STORE f2111an1 TO vaN1
                               STORE f2111sto TO vsTo
                               SELECT tmP_cortado
                               DO CASE
                                    CASE viTe=1
                                         REPLACE baSe1 WITH ucDg
                                         REPLACE laRgo1 WITH vlA1
                                         REPLACE anCho1 WITH vaN1
                                         REPLACE stOck1 WITH vsTo
                                    CASE viTe=2
                                         REPLACE baSe2 WITH ucDg
                                         REPLACE laRgo2 WITH vlA1
                                         REPLACE anCho2 WITH vaN1
                                         REPLACE stOck2 WITH vsTo
                                    CASE viTe=3
                                         REPLACE baSe3 WITH ucDg
                                         REPLACE laRgo3 WITH vlA1
                                         REPLACE anCho3 WITH vaN1
                                         REPLACE stOck3 WITH vsTo
                                    CASE viTe=4
                                         REPLACE baSe4 WITH ucDg
                                         REPLACE laRgo4 WITH vlA1
                                         REPLACE anCho4 WITH vaN1
                                         REPLACE stOck4 WITH vsTo
                               ENDCASE
                               STORE viTe+1 TO viTe
                               SELECT prOductos
                               SKIP
                          ENDDO
                          SELECT tmP_cortado
                          SKIP
                     ENDDO
                     SELECT prOductos
                     SET ORDER TO F2111COD
                     SELECT tmP_cortado
                     DELETE FOR LEN(ALLTRIM(baSe1))=0 .AND.  ;
                            LEN(ALLTRIM(baSe2))=0 .AND.  ;
                            LEN(ALLTRIM(baSe3))=0 .AND. LEN(ALLTRIM(baSe4))=0
                     PACK
                     GOTO TOP
                     STORE 1 TO viTe
                     DO WHILE  .NOT. EOF()
                          REPLACE itEm WITH viTe
                          STORE viTe+1 TO viTe
                          SKIP
                     ENDDO
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                SELECT tmP_cortado
                GOTO TOP
                IF  .NOT. BOF() .AND.  .NOT. EOF()
                     DO q1_0000a
                     ON KEY LABEL ENTER DO P_ENTER
                     COMPILE PAC2111X
                     DO paC2111x
                     DO p1_0000a
                     RESTORE SCREEN FROM vpAn_11
                ELSE
                     STORE "No hay Productos cortados en esta fecha..." TO mmSj
                     DO poNmsj
                ENDIF
                STORE 02 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_F3
                DO alM_2700a IN PAI2700A
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_F7
                DO tiP_2800a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_c
                STORE viTe TO ciTe
                DO cp1_2800a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Alt_z
                STORE viTe TO ciTe
                DO cp2_2800a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Alt_s
                STORE viTe TO ciTe
                DO cp3_2800a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=3
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down
                DO veR_2800a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=3
                               DO deT_2800a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 3 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_2800a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                STORE 3 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_2800a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy<>99
                     DO deT_2800a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+31 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA..."                             Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+25 Say "CAMPO DE 5 DÍGITOS, SI NO SE USA PUEDE ESTAR VACÍO..."                   Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+1.0,mCO0+21.5 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
           CASE viTe=2
                @mFI0+2.5,mCO0+21.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74,70
           CASE viTe=3
                @mFI0+4.0,mCO0+21.5 Get  vPED Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "!9999!!" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2800a
 PRIVATE plE1, plE2
 DO CASE
      CASE viTe=1 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. (AT(CHR(10), vcM1)<>0 .OR. AT(CHR(13), vcM1)<>0)
           DO coLbln
           IF AT(CHR(10), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(10), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(10), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(10), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(10), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(10), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(10), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(10), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(10), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(13), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(13), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(13), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(13), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(13), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(13), vcM1)+1, 100) TO vcM1
           ENDIF
           IF AT(CHR(13), vcM1)<>0
                STORE SUBSTR(vcM1, 1, AT(CHR(13), vcM1))+SUBSTR(vcM1,  ;
                      AT(CHR(13), vcM1)+1, 100) TO vcM1
           ENDIF
           @mFI0+2.5,mCO0+21.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S70"
      CASE viTe=2 .AND. AT("TRANSF", UPPER(ALLTRIM(vnTi)))<>0
           STORE SPACE(mtMa) TO vcD1, vcD2, vcD3
           STORE 0 TO plE1, plE2
           IF UPPER(SUBSTR(vcM1, 1, 3))="DE "
                STORE "De "+ALLTRIM(SUBSTR(vcM1, 4, 100)) TO vcM1
                STORE 4 TO plE1
           ENDIF
           DO CASE
                CASE AT(" A ", UPPER(vcM1))<>0
                     IF plE1=0
                          STORE "De "+ALLTRIM(SUBSTR(vcM1, 1, 100)) TO vcM1
                          STORE 4 TO plE1
                     ENDIF
                     STORE SUBSTR(vcM1, plE1, 100) TO vcD3
                     STORE AT(" A ", UPPER(vcD3)) TO plE2
                     STORE ALLTRIM(SUBSTR(vcD3, 1, plE2)) TO vcD1
                     STORE ALLTRIM(SUBSTR(vcD3, plE2+3, 100)) TO vcD2
                     SELECT prOductos
                     SEEK ALLTRIM(vcD1)+"*"
                     IF EOF()
                          STORE ALLTRIM(vcM1)+" Codigo no existe" TO vcM1
                     ENDIF
                     SEEK ALLTRIM(vcD2)+"*"
                     IF EOF()
                          STORE ALLTRIM(vcM1)+" Base no existe" TO vcM1
                     ENDIF
                CASE AT(" A", UPPER(ALLTRIM(vcM1)))<>0
                     IF plE1=0
                          STORE "De "+ALLTRIM(SUBSTR(vcM1, 1, 100)) TO vcM1
                          STORE 4 TO plE1
                     ENDIF
                     STORE SUBSTR(vcM1, plE1, 100) TO vcD3
                     IF AT(" A", UPPER(ALLTRIM(vcD3)))=0
                          STORE ALLTRIM(vcM1)+" a " TO vcM1
                          STORE SUBSTR(vcM1, plE1, 100) TO vcD3
                     ENDIF
                     STORE AT(" A", UPPER(vcD3)) TO plE2
                     STORE ALLTRIM(SUBSTR(vcD3, 1, plE2)) TO vcD1
                     STORE ALLTRIM(SUBSTR(vcD3, plE2+2, 100)) TO vcD2
                     SELECT prOductos
                     SEEK ALLTRIM(vcD1)+"*"
                     IF EOF()
                          STORE ALLTRIM(vcM1)+" Codigo no existe" TO vcM1
                     ENDIF
                     IF LEN(ALLTRIM(vcD2))<>0
                          SEEK ALLTRIM(vcD2)+"*"
                          IF EOF()
                               STORE ALLTRIM(vcM1)+" Base no existe" TO vcM1
                          ENDIF
                     ELSE
                          STORE f2111bas TO vcD2
                          STORE ALLTRIM(vcM1)+" "+vcD2 TO vcM1
                     ENDIF
                OTHERWISE
                     IF plE1=0
                          STORE "De "+ALLTRIM(SUBSTR(vcM1, 1, 100)) TO vcM1
                          STORE 4 TO plE1
                     ENDIF
                     STORE SUBSTR(vcM1, plE1, 100) TO vcD3
                     IF AT(" A", UPPER(ALLTRIM(vcD3)))=0
                          STORE ALLTRIM(vcM1)+" a " TO vcM1
                          STORE SUBSTR(vcM1, plE1, 100) TO vcD3
                     ENDIF
                     STORE AT(" A", UPPER(vcD3)) TO plE2
                     STORE ALLTRIM(SUBSTR(vcD3, 1, plE2)) TO vcD1
                     STORE ALLTRIM(SUBSTR(vcD3, plE2+2, 100)) TO vcD2
                     SELECT prOductos
                     SEEK ALLTRIM(vcD1)+"*"
                     IF EOF()
                          STORE ALLTRIM(vcM1)+" Codigo no existe" TO vcM1
                     ENDIF
                     IF LEN(ALLTRIM(vcD2))<>0
                          SEEK ALLTRIM(vcD2)+"*"
                          IF EOF()
                               STORE ALLTRIM(vcM1)+" Base no existe" TO vcM1
                          ENDIF
                     ELSE
                          STORE f2111bas TO vcD2
                          STORE ALLTRIM(vcM1)+" "+vcD2 TO vcM1
                     ENDIF
           ENDCASE
           DO coLbln
           @mFI0+2.5,mCO0+21.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74 Pict "@S70"
      CASE viTe=2
           STORE SPACE(mtMa) TO vcD1, vcD2
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
 RELEASE plE1, plE2
ENDPROC
*
PROCEDURE Det_2800a
 DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO q1_0000a
 DO p2_0000a
 DO paI2800b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 SET READBORDER ON
 IF vsW3<>1
      STORE 1 TO vsW3
      IF wsW0=1
           DO p00_2800a IN PAI2800A WITH "1"
      ELSE
           DO p00_2800a IN PAM2800A WITH "1"
      ENDIF
      STORE irEc TO vrEc
      STORE ifIl TO vfIl
 ELSE
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mkEy=k_Tab
           SELECT teMporal
           SET ORDER TO FTM1COD
           IF wsW0=1
                DO grA_2800a IN PAI2800A
           ELSE
                DO grA_2800a IN PAM2800A
           ENDIF
           WAIT CLEAR
           UNLOCK ALL
           = INKEY(0.01)
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SELECT teMporal
           SET ORDER TO
           STORE 99 TO mkEy
           STORE 01 TO viTe
      CASE wsW0=1
           STORE 01 TO viTe
      CASE wsW0=2
           STORE 03 TO viTe
 ENDCASE
 DO p1_0000a
 STORE 0 TO viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_2800a
 PRIVATE ptX1, ptX2, poPc, pnUm
 = INKEY(0.01)
 STORE "GS" TO vtDo
 STORE msEr(03) TO vsEr
 SELECT nuMeracion
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtDo
      REPLACE f9999ser WITH vsEr
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vtDo+vsEr
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO vdOc
 STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 ptX2 = "DOCUMENTO No.:"+vsEr+"-"+vdOc
 SELECT caB_sali
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vdOc
      RETURN
 ENDIF
 ptX1 = "¿Desea Grabar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      RETURN
 ENDIF
 DO grAbar WITH "1"
 DO CASE
      CASE vtPp=2
           STORE "D" TO veSt
      OTHERWISE
           STORE "O" TO veSt
 ENDCASE
 STORE "1" TO vtP1
 STORE "2" TO vtI1
 STORE SUBSTR(DTOC(vfEm), 1, 2) TO vdIa
 STORE SUBSTR(DTOC(vfEm), 4, 2) TO vmEs
 STORE SUBSTR(DTOC(vfEm), 7, 4) TO vaNo
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      WAIT WINDOW NOWAIT "Verificando Producto: "+ftM1cod+"..."
      STORE ftM1cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal
           SKIP
           LOOP
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT prO_tot
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           DO nuEvo_rg
           REPLACE f2118cod WITH vcOd
           REPLACE f2118sto WITH 0
           REPLACE f2118caj WITH 0
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118orp WITH 0
           REPLACE f2118vcp WITH 0
           REPLACE f2118vcs WITH 0
           REPLACE f2118prm WITH 0
           UNLOCK
           SEEK ALLTRIM(vcOd)+"*"
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
 STORE "NP" TO vtD1
 WAIT WINDOW NOWAIT "Verificando NP..."
 SELECT tmP_np
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM7ser TO vsE1
      STORE ftM7doc TO vdO1
      SELECT caB_fact
      SEEK vtD1+vsE1+vdO1
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD1+vsE1+vdO1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT tmP_np
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 REPLACE f9999num WITH vdOc
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caB_sali
 DO nuEvo_rg
 REPLACE f2800tdo WITH vtDo
 REPLACE f2800ser WITH vsEr
 REPLACE f2800doc WITH vdOc
 REPLACE f2800tip WITH vtIp
 REPLACE f2800nti WITH vnTi
 REPLACE f2800tpp WITH vtPp
 REPLACE f2800fem WITH vfEm
 REPLACE f2800ped WITH vpEd
 REPLACE f2800cm1 WITH vcM1
 REPLACE f2800alm WITH vaLm
 REPLACE f2800est WITH "1"
 REPLACE f2800usu WITH muSu
 REPLACE f2800maq WITH mmAq
 REPLACE f2800dat WITH DATE()
 REPLACE f2800tim WITH TIME()
 UNLOCK
 WAIT WINDOW NOWAIT "Anulando NP..."
 STORE "NP" TO vtD1
 SELECT tmP_np
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM7ser TO vsE1
      STORE ftM7doc TO vdO1
      SELECT caB_fact
      SEEK vtD1+vsE1+vdO1
      IF  .NOT. EOF()
           REPLACE f1300est WITH "9"
           UNLOCK
      ENDIF
      SELECT deT_fact
      DO WHILE .T.
           SEEK vtD1+vsE1+vdO1
           IF EOF()
                EXIT
           ENDIF
           STORE f1301ite TO vrEc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD1+vsE1+vdO1+STR(vrEc, 2, 0)
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f1301tdo WITH SPACE(02)
           REPLACE f1301ser WITH SPACE(03)
           REPLACE f1301doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
      SELECT itE_fact
      DO WHILE .T.
           SEEK vtD1+vsE1+vdO1
           IF EOF()
                EXIT
           ENDIF
           STORE f1302cod TO vcOd
           STORE f1302rcc TO vrCc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD1+vsE1+vdO1+ALLTRIM(vcOd)+"*"+ ;
                   STR(vrCc, 3, 0)
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f1302tdo WITH SPACE(02)
           REPLACE f1302ser WITH SPACE(03)
           REPLACE f1302doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
      SELECT seR_fact
      DO WHILE .T.
           SEEK vtD1+vsE1+vdO1
           IF EOF()
                EXIT
           ENDIF
           STORE f1303ped TO vpEd
           STORE f1303sec TO vsEc
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD1+vsE1+vdO1+ALLTRIM(vcOd)+"*"+ ;
                   ALLTRIM(vpEd)+vsEc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f1303tdo WITH SPACE(02)
           REPLACE f1303ser WITH SPACE(03)
           REPLACE f1303doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
      SELECT coN_fact
      DO WHILE .T.
           SEEK vtD1+vsE1+vdO1
           IF EOF()
                EXIT
           ENDIF
           STORE f1304cod TO vcOd
           STORE f1304cdg TO vcDg
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtD1+vsE1+vdO1+ALLTRIM(vcOd)+"*"+ ;
                   ALLTRIM(vcDg)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f1304tdo WITH SPACE(02)
           REPLACE f1304ser WITH SPACE(03)
           REPLACE f1304doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDDO
      SELECT tmP_np
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1can=0
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOWAIT "Grabando: "+ftM1cod
      STORE ftM1cod TO vcOd
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuv TO vcUv
      STORE ftM1nuv TO vnUv
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1med TO vmEd
      STORE ftM1can TO vcAn
      STORE ftM1caj TO vcAj
      STORE ftM1cos TO vcOs
      STORE ftM1pie TO vpIe
      STORE ftM1la1 TO vlA1
      STORE ftM1an1 TO vaN1
      STORE ftM1la2 TO vlA2
      STORE ftM1an2 TO vaN2
      STORE ftM1esp TO veSp
      STORE ftM1tpo TO vtPo
      STORE vrEc+1 TO vrEc
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT deT_sali
      DO orD_0000a WITH "2801", "A", "F2801COD", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"+vtDo+vsEr+vdOc
      DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF EOF()
           SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF  .NOT. EOF()
                DO WHILE .T.
                     STORE vrEc+1 TO vrEc
                     SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
                     IF EOF()
                          EXIT
                     ENDIF
                     IF vrEc=10000
                          STORE "Límite de Ítems ha sobrepasado 9999..."  ;
                                TO mmSj
                          DO poNmsj
                          = INKEY(0)
                          STORE k_Esc TO mkEy
                          RETURN
                     ENDIF
                ENDDO
           ENDIF
           DO nuEvo_rg
           REPLACE f2801tdo WITH vtDo
           REPLACE f2801ser WITH vsEr
           REPLACE f2801doc WITH vdOc
           REPLACE f2801ite WITH vrEc
           REPLACE f2801cod WITH vcOd
           REPLACE f2801des WITH vdEs
           REPLACE f2801dcr WITH vdCr
           REPLACE f2801cuv WITH vcUv
           REPLACE f2801nuv WITH vnUv
           REPLACE f2801cuc WITH vcUc
           REPLACE f2801nuc WITH vnUc
           REPLACE f2801med WITH vmEd
           REPLACE f2801can WITH vcAn
           REPLACE f2801caj WITH vcAj
           REPLACE f2801cos WITH vcOs
           REPLACE f2801pie WITH vpIe
           REPLACE f2801la1 WITH vlA1
           REPLACE f2801an1 WITH vaN1
           REPLACE f2801la2 WITH vlA2
           REPLACE f2801an2 WITH vaN2
           REPLACE f2801esp WITH veSp
           REPLACE f2801tpo WITH vtPo
           UNLOCK
           SELECT kaRdex
           DO nuEvo_rg
           REPLACE f2990cod WITH vcOd
           REPLACE f2990ano WITH vaNo
           REPLACE f2990mes WITH vmEs
           REPLACE f2990dia WITH vdIa
           REPLACE f2990tpp WITH vtP1
           REPLACE f2990tpo WITH vtI1
           REPLACE f2990tra WITH "1"
           REPLACE f2990can WITH vcAn
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990caj WITH vcAj
           ENDIF
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990cos WITH vcOs
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH vtDo
           REPLACE f2990ser WITH vsEr
           REPLACE f2990doc WITH vdOc
           REPLACE f2990sr1 WITH SPACE(03)
           REPLACE f2990rem WITH SPACE(07)
           REPLACE f2990td1 WITH SPACE(02)
           REPLACE f2990srf WITH SPACE(03)
           REPLACE f2990fac WITH SPACE(20)
           REPLACE f2990ped WITH vpEd
           REPLACE f2990sor WITH SPACE(03)
           REPLACE f2990ord WITH SPACE(07)
           REPLACE f2990emi WITH vfEm
           REPLACE f2990fem WITH vfEm
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           REPLACE f2990nom WITH ALLTRIM(vcM1)
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH vtIp
           UNLOCK
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
           ELSE
                STORE 0 TO vsLd, vsLc
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+vtI1+vtP1+vtDo+vsEr+vdOc
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
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
           DO grA_stock IN PAI2700A WITH vcOd
      ENDIF
      SELECT teMporal_4
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
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
                STORE ftM4ca3 TO vcA3
                STORE ftM4ca4 TO vcA4
                STORE ftM4por TO vpOr
                STORE ftM4mm1 TO vmM1
                STORE ftM4mm2 TO vmM2
                STORE ftM4mm3 TO vmM3
                STORE ftM4mm4 TO vmM4
                STORE ftM4cx1 TO vcX1
                STORE ftM4cx2 TO vcX2
                STORE ftM4cx3 TO vcX3
                STORE ftM4cx4 TO vcX4
                STORE ftM4cy1 TO vcY1
                STORE ftM4cy2 TO vcY2
                STORE ftM4cy3 TO vcY3
                STORE ftM4cy4 TO vcY4
                STORE ftM4pie TO vtPi
                STORE ftM4cm1 TO vcMm
                STORE ftM4cm2 TO vcMp
                SELECT itE_sali
                DO nuEvo_rg
                REPLACE f2802tdo WITH vtDo
                REPLACE f2802ser WITH vsEr
                REPLACE f2802doc WITH vdOc
                REPLACE f2802cod WITH vcOd
                REPLACE f2802rcc WITH vrCc
                REPLACE f2802opc WITH voPc
                REPLACE f2802un1 WITH vuN1
                REPLACE f2802un2 WITH vuN2
                REPLACE f2802mla WITH vmLa
                REPLACE f2802man WITH vmAn
                REPLACE f2802p11 WITH vp11
                REPLACE f2802p12 WITH vp12
                REPLACE f2802p21 WITH vp21
                REPLACE f2802p22 WITH vp22
                REPLACE f2802ctd WITH vcTd
                REPLACE f2802ca1 WITH vcA1
                REPLACE f2802ca2 WITH vcA2
                REPLACE f2802ca3 WITH vcA3
                REPLACE f2802ca4 WITH vcA4
                REPLACE f2802por WITH vpOr
                REPLACE f2802mm1 WITH vmM1
                REPLACE f2802mm2 WITH vmM2
                REPLACE f2802mm3 WITH vmM3
                REPLACE f2802mm4 WITH vmM4
                REPLACE f2802cx1 WITH vcX1
                REPLACE f2802cx2 WITH vcX2
                REPLACE f2802cx3 WITH vcX3
                REPLACE f2802cx4 WITH vcX4
                REPLACE f2802cy1 WITH vcY1
                REPLACE f2802cy2 WITH vcY2
                REPLACE f2802cy3 WITH vcY3
                REPLACE f2802cy4 WITH vcY4
                REPLACE f2802pie WITH vtPi
                REPLACE f2802cm1 WITH vcMm
                REPLACE f2802cm2 WITH vcMp
                UNLOCK
                SELECT teMporal_4
                SKIP
           ENDDO
      ENDIF
      SELECT teMporal_6
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM6cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE ftM6ped TO vpD1
           STORE ftM6sec TO vsEc
           STORE ftM6pla TO vpLa
           STORE ftM6mot TO vmOt
           SELECT seR_sali
           SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF EOF()
                DO nuEvo_rg
                REPLACE f2803tdo WITH vtDo
                REPLACE f2803ser WITH vsEr
                REPLACE f2803doc WITH vdOc
                REPLACE f2803cod WITH vcOd
                REPLACE f2803ped WITH vpD1
                REPLACE f2803sec WITH vsEc
                REPLACE f2803pla WITH vpLa
                REPLACE f2803plo WITH vpLa
                REPLACE f2803mot WITH vmOt
                UNLOCK
                SELECT kaRdex_series
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH vpD1
                REPLACE f2991sec WITH vsEc
                REPLACE f2991ano WITH vaNo
                REPLACE f2991mes WITH vmEs
                REPLACE f2991dia WITH vdIa
                REPLACE f2991tpp WITH vtP1
                REPLACE f2991tpo WITH vtI1
                REPLACE f2991tdo WITH vtDo
                REPLACE f2991ser WITH vsEr
                REPLACE f2991doc WITH vdOc
                REPLACE f2991pla WITH vpLa
                REPLACE f2991mot WITH vmOt
                REPLACE f2991est WITH veSt
                UNLOCK
                DO grA_serie IN PAI2700A
           ENDIF
           SELECT teMporal_6
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 UNLOCK ALL
 DO prE_docum WITH "¿Desea imprimir Guía de Salida?"
 IF moPc$"Ss"
      DO q1_0000a
      DO paI2800z
      DO p1_0000a
      = INKEY(0.01)
      STORE 99 TO mkEy
 ENDIF
 SELECT teMporal
 ZAP
 REINDEX
 SELECT tmP_prod
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT tmP_np
 ZAP
 REINDEX
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE DATE() TO vfEm
 STORE SPACE(07) TO vpEd
 STORE SPACE(70) TO vcM1
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, vsW3
 STORE 00 TO frEc, urEc, crEc, cfIl
 DO diS_2800a
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2700a IN PAI2700A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Dis_2800a
 DO coLbln
 @mFI0+1.0,mCO0+21.5 Say vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @mFI0+2.5,mCO0+21.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,74   Pict "@S70"
 @mFI0+4.0,mCO0+21.5 Say vPED Font "&mLetAri",9 Style "NQ" Size 1,9.7  Pict "!9999!!"
 DO coL_beige
 @mFI0+1.0,mCO0+81.5 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
ENDPROC
*
PROCEDURE Tip_2800a
 = INKEY(0.01)
 SELECT tiPos
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9218", "U", "F9218NTI", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(vnTi)
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9218tip<>vtIp
      DO CASE
           CASE vtPp=1 .AND. f9218tpo<>vtPp
                SELECT teMporal_6
                GOTO TOP
                IF  .NOT. EOF()
                     STORE "No se puede cambiar de Tipo porque hay Series Ingresadas..."  ;
                           TO mmSj
                     DO poNmsj
                ELSE
                     SELECT tiPos
                     STORE f9218tip TO vtIp
                     STORE f9218nti TO vnTi
                     STORE f9218tpo TO vtPp
                ENDIF
           CASE vtPp>1 .AND. f9218tpo=1
                SELECT teMporal_6
                GOTO TOP
                IF  .NOT. EOF()
                     STORE "No se puede cambiar de Tipo porque hay Series Ingresadas..."  ;
                           TO mmSj
                     DO poNmsj
                ELSE
                     SELECT tiPos
                     STORE f9218tip TO vtIp
                     STORE f9218nti TO vnTi
                     STORE f9218tpo TO vtPp
                ENDIF
           OTHERWISE
                STORE f9218tip TO vtIp
                STORE f9218nti TO vnTi
                STORE f9218tpo TO vtPp
      ENDCASE
      DO coL_beige
      @mFI0+1,mCO0+81.5 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S30"
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "9218", "U", "F9218TIP", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P00_2800a
 PARAMETER ptPo
 DO p01_2700a IN PAI2700A WITH ptPo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Define Popup vTB1 from mFI0+2.2,mCO0+61.8 to fFIL+6.5,mCO0+116.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9218NTI Scroll Color Scheme 3 Footer "TIPOS DE SALIDA"
 Define Popup vTB2 from mFI0+5.2,mCO0+69.8 to fFIL+6.5,mCO0+120.2 Font "&mLetCou",11 Style "NQ" Prompt Field F9214NOM Scroll Color Scheme 3 Footer "ALMACENES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 DO tiT_0000a WITH "Guías de Salidas de Almacén nuevas"
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 IF vsW3=1
      DO p02_2800a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p03_2700a IN PAI2700A
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P02_2800a
 DO cuAdro WITH mfI0+0.3, mcO0, mfI0+5.6, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 @ mfI0+0.4, mcO0+01.1 TO mfI0+5.5, mcO0+muCo-2 PATTERN 1
 @ mfI0+0.4, mcO0+1.1 TO mfI0+0.4, mcO0+muCo-2 COLOR RGB(128,128,128,0,0,0)
 @ mfI0+0.4, mcO0+1.1 TO mfI0+5.5, mcO0+1.1 COLOR RGB(128,128,128,0,0,0)
 @mFI0+1.1,mCO0+03.1 Say "Fecha"          Font "&mLetAri",9 Style "BQ"
 @mFI0+1.1,mCO0+64.1 Say "Tipo de Salida" Font "&mLetAri",9 Style "BQ"
 @mFI0+2.5,mCO0+03.1 Say "Observaciones"  Font "&mLetAri",9 Style "BQ"
 @mFI0+4.0,mCO0+03.1 Say "Pedido"         Font "&mLetAri",9 Style "BT"
 @mFI0+4.0,mCO0+70.1 Say "Almacen"        Font "&mLetAri",9 Style "BQ"
 @mFI0+1.0,mCO0+81.5 Edit vNTI            Font "&mLetAri",9 Style "NQ" Size 1,30.7,30
 @mFI0+4.0,mCO0+81.5 Edit vNAL            Font "&mLetAri",9 Style "NQ" Size 1,30.7,70
 DO coLbln
 @mFI0+1.0,mCO0+21.5 Get  vFEM            Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
 @mFI0+2.5,mCO0+21.5 Edit vCM1            Font "&mLetAri",9 Style "NQ" Size 1,74,70
 @mFI0+4.0,mCO0+21.5 Get  vPED            Font "&mLetAri",9 Style "NQ" Size 1,9.7 Pict "!9999!!" Color ,&mColBlN
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vaLm))=0
      DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cp1_2800a
 SELECT caB_fact
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos de Ventas registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO orD_0000a WITH "1300", "V", "F1300DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "No hay Documentos registrados..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f1300est<>"9" .AND. f1300tdo="NP"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay NP registradas..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE f1300tdo TO vtDo
 STORE f1300ser TO vsEr
 STORE f1300doc TO vdOc
 DO pvC1300w WITH "PAI2800A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_fact
 SET FILTER TO
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Tab
      WAIT WINDOW NOWAIT "Grabando los NP...Esperar..."
      SELECT teMporal
      ZAP
      REINDEX
      SELECT tmP_prod
      ZAP
      REINDEX
      SELECT teMporal_3
      ZAP
      SELECT teMporal_4
      ZAP
      REINDEX
      SELECT teMporal_5
      ZAP
      REINDEX
      SELECT teMporal_6
      ZAP
      REINDEX
      SELECT tmP_np
      GOTO TOP
      STORE "NP" TO vtD1
      STORE ifIl TO vfIl, ufIl
      STORE 00 TO irEc, vrEc, urEc, frEc
      DO WHILE  .NOT. EOF()
           STORE ftM7ser TO vsE1
           STORE ftM7doc TO vdO1
           SELECT deT_fact
           GOTO TOP
           SEEK vtD1+vsE1+vdO1
           DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtD1+ ;
              vsE1+vdO1
                STORE f1301cod TO vcOd
                STORE f1301des TO vdEs
                STORE f1301dcr TO vdCr
                STORE f1301cuv TO vcUv
                STORE f1301nuv TO vnUv
                STORE f1301cuc TO vcUc
                STORE f1301nuc TO vnUc
                STORE f1301med TO vmEd
                STORE f1301can TO vcAn
                STORE f1301pie TO vpIe
                STORE f1301la1 TO vlA1
                STORE f1301la2 TO vlA2
                STORE f1301an1 TO vaN1
                STORE f1301an2 TO vaN2
                STORE f1301esp TO veSp
                STORE 0 TO vcOs
                STORE VAL(f1301ref) TO vcAj
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE SPACE(02) TO ctPo
                     STORE 1 TO vtPo
                ELSE
                     STORE f2111tip TO ctPo
                     SELECT tiP_prod
                     SEEK ctPo
                     IF EOF()
                          STORE 1 TO vtPo
                     ELSE
                          STORE f9211tpo TO vtPo
                     ENDIF
                ENDIF
                SELECT teMporal
                SET ORDER TO FTM1COD
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SET ORDER TO
                     STORE 1 TO viOm
                     DO grA_2700b IN PAI2700B
                ELSE
                     SET ORDER TO
                     GOTO TOP
                     STORE 0 TO vrEc
                     DO WHILE  .NOT. EOF()
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM1cod)+"*"
                               STORE RECNO() TO vrEc
                               EXIT
                          ENDIF
                          SKIP
                     ENDDO
                     IF vrEc=0
                          STORE 1 TO viOm
                          DO grA_2700b IN PAI2700B
                     ELSE
                          STORE vcAn+ftM1can TO vcAn
                          STORE vcAj+ftM1caj TO vcAj
                          STORE vpIe+ftM1pie TO vpIe
                          STORE 2 TO viOm
                          DO grA_2700b IN PAI2700B
                     ENDIF
                ENDIF
                SELECT deT_fact
                SKIP
           ENDDO
           SELECT itE_fact
           GOTO TOP
           SEEK vtD1+vsE1+vdO1
           DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtD1+ ;
              vsE1+vdO1
                STORE f1302cod TO vcOd
                STORE f1302opc TO voPc
                STORE f1302un1 TO vuN1
                STORE f1302un2 TO vuN2
                STORE f1302mla TO vmLa
                STORE f1302man TO vmAn
                STORE f1302p11 TO vp11
                STORE f1302p12 TO vp12
                STORE f1302p21 TO vp21
                STORE f1302p22 TO vp22
                STORE f1302ctd TO vcTd
                STORE f1302ca1 TO vcA1
                STORE f1302ca2 TO vcA2
                STORE f1302ca3 TO vcA3
                STORE f1302ca4 TO vcA4
                STORE f1302por TO vpOr
                STORE f1302mm1 TO vmM1
                STORE f1302mm2 TO vmM2
                STORE f1302mm3 TO vmM3
                STORE f1302mm4 TO vmM4
                STORE f1302cx1 TO vcX1
                STORE f1302cx2 TO vcX2
                STORE f1302cx3 TO vcX3
                STORE f1302cx4 TO vcX4
                STORE f1302cy1 TO vcY1
                STORE f1302cy2 TO vcY2
                STORE f1302cy3 TO vcY3
                STORE f1302cy4 TO vcY4
                STORE f1302pie TO vtPi
                STORE f1302cm1 TO vcMm
                STORE f1302cm2 TO vcMp
                SELECT teMporal_4
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE 1 TO vrCc
                ELSE
                     SET NEAR ON
                     SEEK ALLTRIM(vcOd)+"*ZZZ"
                     SET NEAR OFF
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                     STORE ftM4rec+1 TO vrCc
                ENDIF
                APPEND BLANK
                REPLACE ftM4cod WITH vcOd
                REPLACE ftM4rec WITH vrCc
                REPLACE ftM4opc WITH voPc
                REPLACE ftM4un1 WITH vuN1
                REPLACE ftM4un2 WITH vuN2
                REPLACE ftM4mla WITH vmLa
                REPLACE ftM4man WITH vmAn
                REPLACE ftM4p11 WITH vp11
                REPLACE ftM4p12 WITH vp12
                REPLACE ftM4p21 WITH vp21
                REPLACE ftM4p22 WITH vp22
                REPLACE ftM4can WITH vcTd
                REPLACE ftM4ca1 WITH vcA1
                REPLACE ftM4ca2 WITH vcA2
                REPLACE ftM4ca3 WITH vcA3
                REPLACE ftM4ca4 WITH vcA4
                REPLACE ftM4por WITH vpOr
                REPLACE ftM4mm1 WITH vmM1
                REPLACE ftM4mm2 WITH vmM2
                REPLACE ftM4mm3 WITH vmM3
                REPLACE ftM4mm4 WITH vmM4
                REPLACE ftM4cx1 WITH vcX1
                REPLACE ftM4cx2 WITH vcX2
                REPLACE ftM4cx3 WITH vcX3
                REPLACE ftM4cx4 WITH vcX4
                REPLACE ftM4cy1 WITH vcY1
                REPLACE ftM4cy2 WITH vcY2
                REPLACE ftM4cy3 WITH vcY3
                REPLACE ftM4cy4 WITH vcY4
                REPLACE ftM4pie WITH vtPi
                REPLACE ftM4cm1 WITH vcMm
                REPLACE ftM4cm2 WITH vcMp
                SELECT itE_fact
                SKIP
           ENDDO
           SELECT tmP_np
           SKIP
      ENDDO
      WAIT CLEAR
      SELECT teMporal
      GOTO TOP
      DO paN_2700b IN PAI2700B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 1 TO vrEc, irEc
      STORE ifIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Cp2_2800a
 SELECT caB_cpra
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos de Compras registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO orD_0000a WITH "2400", "A", "F2400DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "No hay Documentos registrados..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f2400est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Compras registradas..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE f2400tdo TO vtDo
 STORE f2400ser TO vsEr
 STORE f2400doc TO vdOc
 DO paC2400w WITH "PAI2800A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_cpra
 SET FILTER TO
 DO orD_0000a WITH "2400", "A", "F2400DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Tab
      WAIT WINDOW NOWAIT "Grabando...Esperar..."
      SELECT teMporal
      ZAP
      REINDEX
      SELECT tmP_prod
      ZAP
      REINDEX
      SELECT teMporal_3
      ZAP
      SELECT teMporal_4
      ZAP
      REINDEX
      SELECT teMporal_5
      ZAP
      REINDEX
      SELECT teMporal_6
      ZAP
      REINDEX
      SELECT tmP_np
      GOTO TOP
      STORE "CO" TO vtD1
      STORE ifIl TO vfIl, ufIl
      STORE 00 TO irEc, vrEc, urEc, frEc
      DO WHILE  .NOT. EOF()
           STORE ftM7ser TO vsE1
           STORE ftM7doc TO vdO1
           SELECT deT_cpra
           GOTO TOP
           SEEK vtD1+vsE1+vdO1
           DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtD1+ ;
              vsE1+vdO1
                STORE f2401cod TO vcOd
                STORE f2401des TO vdEs
                STORE f2401dcr TO vdCr
                STORE f2401cuv TO vcUv
                STORE f2401nuv TO vnUv
                STORE f2401cuc TO vcUc
                STORE f2401nuc TO vnUc
                STORE f2401med TO vmEd
                STORE f2401can TO vcAn
                STORE f2401pie TO vpIe
                STORE f2401la1 TO vlA1
                STORE f2401la2 TO vlA2
                STORE f2401an1 TO vaN1
                STORE f2401an2 TO vaN2
                STORE f2401esp TO veSp
                STORE 0 TO vcOs
                STORE f2401caj TO vcAj
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE SPACE(02) TO ctPo
                     STORE 1 TO vtPo
                ELSE
                     STORE f2111tip TO ctPo
                     SELECT tiP_prod
                     SEEK ctPo
                     IF EOF()
                          STORE 1 TO vtPo
                     ELSE
                          STORE f9211tpo TO vtPo
                     ENDIF
                ENDIF
                SELECT teMporal
                SET ORDER TO FTM1COD
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SET ORDER TO
                     STORE 1 TO viOm
                     DO grA_2700b IN PAI2700B
                ELSE
                     SET ORDER TO
                     GOTO TOP
                     STORE 0 TO vrEc
                     DO WHILE  .NOT. EOF()
                          IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM1cod)+"*"
                               STORE RECNO() TO vrEc
                               EXIT
                          ENDIF
                          SKIP
                     ENDDO
                     IF vrEc=0
                          STORE 1 TO viOm
                          DO grA_2700b IN PAI2700B
                     ELSE
                          STORE vcAn+ftM1can TO vcAn
                          STORE vcAj+ftM1caj TO vcAj
                          STORE vpIe+ftM1pie TO vpIe
                          STORE 2 TO viOm
                          DO grA_2700b IN PAI2700B
                     ENDIF
                ENDIF
                SELECT deT_cpra
                SKIP
           ENDDO
           SELECT itE_cpra
           GOTO TOP
           SEEK vtD1+vsE1+vdO1
           DO WHILE  .NOT. EOF() .AND. f2402tdo+f2402ser+f2402doc=vtD1+ ;
              vsE1+vdO1
                STORE f2402cod TO vcOd
                STORE f2402opc TO voPc
                STORE f2402un1 TO vuN1
                STORE f2402un2 TO vuN2
                STORE f2402mla TO vmLa
                STORE f2402man TO vmAn
                STORE f2402p11 TO vp11
                STORE f2402p12 TO vp12
                STORE f2402p21 TO vp21
                STORE f2402p22 TO vp22
                STORE f2402ctd TO vcTd
                STORE f2402ca1 TO vcA1
                STORE f2402ca2 TO vcA2
                STORE f2402ca3 TO vcA3
                STORE f2402ca4 TO vcA4
                STORE f2402por TO vpOr
                STORE f2402mm1 TO vmM1
                STORE f2402mm2 TO vmM2
                STORE f2402mm3 TO vmM3
                STORE f2402mm4 TO vmM4
                STORE f2402cx1 TO vcX1
                STORE f2402cx2 TO vcX2
                STORE f2402cx3 TO vcX3
                STORE f2402cx4 TO vcX4
                STORE f2402cy1 TO vcY1
                STORE f2402cy2 TO vcY2
                STORE f2402cy3 TO vcY3
                STORE f2402cy4 TO vcY4
                STORE f2402pie TO vtPi
                STORE f2402cm1 TO vcMm
                STORE f2402cm2 TO vcMp
                SELECT teMporal_4
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE 1 TO vrCc
                ELSE
                     SET NEAR ON
                     SEEK ALLTRIM(vcOd)+"*ZZZ"
                     SET NEAR OFF
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                     STORE ftM4rec+1 TO vrCc
                ENDIF
                APPEND BLANK
                REPLACE ftM4cod WITH vcOd
                REPLACE ftM4rec WITH vrCc
                REPLACE ftM4opc WITH voPc
                REPLACE ftM4un1 WITH vuN1
                REPLACE ftM4un2 WITH vuN2
                REPLACE ftM4mla WITH vmLa
                REPLACE ftM4man WITH vmAn
                REPLACE ftM4p11 WITH vp11
                REPLACE ftM4p12 WITH vp12
                REPLACE ftM4p21 WITH vp21
                REPLACE ftM4p22 WITH vp22
                REPLACE ftM4can WITH vcTd
                REPLACE ftM4ca1 WITH vcA1
                REPLACE ftM4ca2 WITH vcA2
                REPLACE ftM4ca3 WITH vcA3
                REPLACE ftM4ca4 WITH vcA4
                REPLACE ftM4por WITH vpOr
                REPLACE ftM4mm1 WITH vmM1
                REPLACE ftM4mm2 WITH vmM2
                REPLACE ftM4mm3 WITH vmM3
                REPLACE ftM4mm4 WITH vmM4
                REPLACE ftM4cx1 WITH vcX1
                REPLACE ftM4cx2 WITH vcX2
                REPLACE ftM4cx3 WITH vcX3
                REPLACE ftM4cx4 WITH vcX4
                REPLACE ftM4cy1 WITH vcY1
                REPLACE ftM4cy2 WITH vcY2
                REPLACE ftM4cy3 WITH vcY3
                REPLACE ftM4cy4 WITH vcY4
                REPLACE ftM4pie WITH vtPi
                REPLACE ftM4cm1 WITH vcMm
                REPLACE ftM4cm2 WITH vcMp
                SELECT itE_cpra
                SKIP
           ENDDO
           SELECT tmP_np
           SKIP
      ENDDO
      WAIT CLEAR
      SELECT tmP_np
      ZAP
      SELECT teMporal
      GOTO TOP
      DO paN_2700b IN PAI2700B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 1 TO vrEc, irEc
      STORE ifIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Cp3_2800a
 SELECT caB_sali
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos de Salida registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO orD_0000a WITH "2800", "A", "F2800DOC", "D"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "No hay Documentos registrados..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f2800est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Documentos registrados..." TO mmSj
      SET FILTER TO
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 STORE f2800tdo TO vtDo
 STORE f2800ser TO vsEr
 STORE f2800doc TO vdOc
 DO paC2800w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_sali
 SET FILTER TO
 DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Enter
      WAIT WINDOW NOWAIT "Grabando...Esperar..."
      SELECT teMporal
      ZAP
      REINDEX
      SELECT tmP_prod
      ZAP
      REINDEX
      SELECT teMporal_3
      ZAP
      SELECT teMporal_4
      ZAP
      REINDEX
      SELECT teMporal_5
      ZAP
      REINDEX
      SELECT teMporal_6
      ZAP
      REINDEX
      STORE "GS" TO vtD1
      STORE vsEr TO vsE1
      STORE vdOc TO vdO1
      STORE ifIl TO vfIl, ufIl
      STORE 00 TO irEc, vrEc, urEc, frEc
      SELECT deT_sali
      GOTO TOP
      SEEK vtD1+vsE1+vdO1
      DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtD1+vsE1+vdO1
           STORE f2801cod TO vcOd
           STORE f2801des TO vdEs
           STORE f2801dcr TO vdCr
           STORE f2801cuv TO vcUv
           STORE f2801nuv TO vnUv
           STORE f2801cuc TO vcUc
           STORE f2801nuc TO vnUc
           STORE f2801med TO vmEd
           STORE f2801can TO vcAn
           STORE f2801pie TO vpIe
           STORE f2801la1 TO vlA1
           STORE f2801la2 TO vlA2
           STORE f2801an1 TO vaN1
           STORE f2801an2 TO vaN2
           STORE f2801esp TO veSp
           STORE 0 TO vcOs
           STORE f2801caj TO vcAj
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE SPACE(02) TO ctPo
                STORE 1 TO vtPo
           ELSE
                STORE f2111tip TO ctPo
                SELECT tiP_prod
                SEEK ctPo
                IF EOF()
                     STORE 1 TO vtPo
                ELSE
                     STORE f9211tpo TO vtPo
                ENDIF
           ENDIF
           SELECT teMporal
           SET ORDER TO FTM1COD
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SET ORDER TO
                STORE 1 TO viOm
                DO grA_2700b IN PAI2700B
           ELSE
                SET ORDER TO
                GOTO TOP
                STORE 0 TO vrEc
                DO WHILE  .NOT. EOF()
                     IF ALLTRIM(vcOd)+"*"=ALLTRIM(ftM1cod)+"*"
                          STORE RECNO() TO vrEc
                          EXIT
                     ENDIF
                     SKIP
                ENDDO
                IF vrEc=0
                     STORE 1 TO viOm
                     DO grA_2700b IN PAI2700B
                ELSE
                     STORE vcAn+ftM1can TO vcAn
                     STORE vcAj+ftM1caj TO vcAj
                     STORE vpIe+ftM1pie TO vpIe
                     STORE 2 TO viOm
                     DO grA_2700b IN PAI2700B
                ENDIF
           ENDIF
           SELECT deT_sali
           SKIP
      ENDDO
      SELECT itE_sali
      GOTO TOP
      SEEK vtD1+vsE1+vdO1
      DO WHILE  .NOT. EOF() .AND. f2802tdo+f2802ser+f2802doc=vtD1+vsE1+vdO1
           STORE f2802cod TO vcOd
           STORE f2802opc TO voPc
           STORE f2802un1 TO vuN1
           STORE f2802un2 TO vuN2
           STORE f2802mla TO vmLa
           STORE f2802man TO vmAn
           STORE f2802p11 TO vp11
           STORE f2802p12 TO vp12
           STORE f2802p21 TO vp21
           STORE f2802p22 TO vp22
           STORE f2802ctd TO vcTd
           STORE f2802ca1 TO vcA1
           STORE f2802ca2 TO vcA2
           STORE f2802ca3 TO vcA3
           STORE f2802ca4 TO vcA4
           STORE f2802por TO vpOr
           STORE f2802mm1 TO vmM1
           STORE f2802mm2 TO vmM2
           STORE f2802mm3 TO vmM3
           STORE f2802mm4 TO vmM4
           STORE f2802cx1 TO vcX1
           STORE f2802cx2 TO vcX2
           STORE f2802cx3 TO vcX3
           STORE f2802cx4 TO vcX4
           STORE f2802cy1 TO vcY1
           STORE f2802cy2 TO vcY2
           STORE f2802cy3 TO vcY3
           STORE f2802cy4 TO vcY4
           STORE f2802pie TO vtPi
           STORE f2802cm1 TO vcMm
           STORE f2802cm2 TO vcMp
           SELECT teMporal_4
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 1 TO vrCc
           ELSE
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*ZZZ"
                SET NEAR OFF
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
                STORE ftM4rec+1 TO vrCc
           ENDIF
           APPEND BLANK
           REPLACE ftM4cod WITH vcOd
           REPLACE ftM4rec WITH vrCc
           REPLACE ftM4opc WITH voPc
           REPLACE ftM4un1 WITH vuN1
           REPLACE ftM4un2 WITH vuN2
           REPLACE ftM4mla WITH vmLa
           REPLACE ftM4man WITH vmAn
           REPLACE ftM4p11 WITH vp11
           REPLACE ftM4p12 WITH vp12
           REPLACE ftM4p21 WITH vp21
           REPLACE ftM4p22 WITH vp22
           REPLACE ftM4can WITH vcTd
           REPLACE ftM4ca1 WITH vcA1
           REPLACE ftM4ca2 WITH vcA2
           REPLACE ftM4ca3 WITH vcA3
           REPLACE ftM4ca4 WITH vcA4
           REPLACE ftM4por WITH vpOr
           REPLACE ftM4mm1 WITH vmM1
           REPLACE ftM4mm2 WITH vmM2
           REPLACE ftM4mm3 WITH vmM3
           REPLACE ftM4mm4 WITH vmM4
           REPLACE ftM4cx1 WITH vcX1
           REPLACE ftM4cx2 WITH vcX2
           REPLACE ftM4cx3 WITH vcX3
           REPLACE ftM4cx4 WITH vcX4
           REPLACE ftM4cy1 WITH vcY1
           REPLACE ftM4cy2 WITH vcY2
           REPLACE ftM4cy3 WITH vcY3
           REPLACE ftM4cy4 WITH vcY4
           REPLACE ftM4pie WITH vtPi
           REPLACE ftM4cm1 WITH vcMm
           REPLACE ftM4cm2 WITH vcMp
           SELECT itE_sali
           SKIP
      ENDDO
      WAIT CLEAR
      SELECT teMporal
      GOTO TOP
      DO paN_2700b IN PAI2700B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 1 TO vrEc, irEc
      STORE ifIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Abr_2800a
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "2802", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2802DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "2803", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Sali
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2803DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "1302", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 36
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "2402", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Cpra
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2402DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 39
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Salidas de Almacén vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 40
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_NP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM7DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2800a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2
           DO coL_beige
           STORE SPACE(02) TO vaLm
           STORE SPACE(70) TO vnAl
           @mFI0+4,mCO0+81.5 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,30.7 Pict "@S33"
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.914 .AND. mfIl<=mfI0+2.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+33.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.414 .AND. mfIl<=mfI0+3.628 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+94.6 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2800a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+3.985 .AND. mfIl<=mfI0+5.128 .AND. mcCc>=mcO0+2.6  ;
           .AND. mcCc<=mcO0+31.8 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2800a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2800a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "En este programa, sólo se pueden crear Salidas de Almacén nuevas.  Los"
 @ pfIl+01, 01 SAY  ;
   "Tipos de Salida tienen que estar registrados en el Sistema previamente."
 @ pfIl+03, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 19 SAY ":" STYLE "BT"
 @ pfIl+06, 19 SAY ":" STYLE "BT"
 @ pfIl+07, 19 SAY ":" STYLE "BT"
 @ pfIl+08, 19 SAY ":" STYLE "BT"
 @ pfIl+09, 19 SAY ":" STYLE "BT"
 @ pfIl+10, 19 SAY ":" STYLE "BT"
 @ pfIl+11, 19 SAY ":" STYLE "BT"
 @ pfIl+12, 19 SAY ":" STYLE "BT"
 @ pfIl+13, 19 SAY ":" STYLE "BT"
 @ pfIl+14, 19 SAY ":" STYLE "BT"
 @ pfIl+15, 19 SAY ":" STYLE "BT"
 @ pfIl+16, 19 SAY ":" STYLE "BT"
 @ pfIl+17, 19 SAY ":" STYLE "BT"
 @ pfIl+18, 19 SAY ":" STYLE "BT"
 @ pfIl+19, 19 SAY ":" STYLE "BT"
 @ pfIl+20, 19 SAY ":" STYLE "BT"
 @ pfIl+05, 01 SAY "F10" STYLE "BT"
 @ pfIl+06, 01 SAY "ESC" STYLE "BT"
 @ pfIl+07, 01 SAY "F1" STYLE "BT"
 @ pfIl+08, 01 SAY "F3" STYLE "BT"
 @ pfIl+09, 01 SAY "F7" STYLE "BT"
 @ pfIl+10, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+11, 01 SAY "CTRL <-" STYLE "BT"
 @ pfIl+12, 01 SAY "CTRL HOME" STYLE "BT"
 @ pfIl+13, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl+14, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+15, 01 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+16, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+17, 01 SAY "TAB" STYLE "BT"
 @ pfIl+18, 01 SAY "ALT C" STYLE "BT"
 @ pfIl+19, 01 SAY "ALT Z" STYLE "BT"
 @ pfIl+20, 01 SAY "ALT S" STYLE "BT"
 @ pfIl+05, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 21 SAY "Ayuda del Programa"
 @ pfIl+08, 21 SAY "Seleccionar Almacen"
 @ pfIl+09, 21 SAY "Seleccionar Tipo de Salida"
 @ pfIl+10, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 @ pfIl+11, 21 SAY "Ir al campo izquierdo"
 @ pfIl+12, 21 SAY "Ir al Primer campo"
 @ pfIl+13, 21 SAY "Ir al Último campo"
 @ pfIl+14, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 @ pfIl+15, 21 SAY "Ir al campo superior"
 @ pfIl+16, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+17, 21 SAY "Pasar al Detalle"
 @ pfIl+18, 21 SAY "Copiar Notas de Pedido"
 @ pfIl+19, 21 SAY "Copiar Compras"
 @ pfIl+20, 21 SAY "Copiar GS"
 IF viTe=1
      @ pfIl+06, 21 SAY "Regresar al primer campo"
 ELSE
      @ pfIl+06, 21 SAY "Regresar al Menú Principal"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1 IN PAI2800A
 DO bvA_2700w IN PAI2700W
 PUBLIC vpEd, vtIp, vnTi, vtB1, vtB2, vfB1, vfB2, vfB3, vfB4, vcB1, vcB2,  ;
        vcB3, vcB4
 PUBLIC vcL0, vcO0, vsW2, vsW3, vaNo, iaNo, uaNo, xaNo, vmEs, imEs, umEs,  ;
        xmEs, vdIa
 PUBLIC idIa, udIa, xdIa, itDo, utDo, xtDo, isEr, usEr, xsEr, idOc, udOc,  ;
        xdOc, vnOm
 PUBLIC inOm, unOm, xnOm, vfAc, ifAc, ufAc, xfAc, vtP1, vtI1, ciTe, vtD1,  ;
        vsE1, vdO1
 PUBLIC vcOs, xcOs, vlIn, vpAg, vcLn, clAr, caNc, vcM1, icM1, ucM1, ccM1,  ;
        xcM1, vcD1
 PUBLIC vcD2, vcD3, xcAn
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
 DO deL_file2 WITH "1", "S"
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "N"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "S"
 DO deL_file2 WITH "8", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8
ENDPROC
*
