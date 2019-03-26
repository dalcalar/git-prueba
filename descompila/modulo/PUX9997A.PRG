 SET CENTURY ON
 PUBLIC afIl, x, ntM1
 STORE "0000" TO ntM1
 STORE 01 TO meRr
 DIMENSION afIl[10, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SR1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1REM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SR2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NPE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM1cod)+"*"+ALLTRIM(ftM1ped)+ftM1sec+ftM1tdo+ftM1ser+ ;
       ftM1doc TAG ftM1cod
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1203", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ser_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1203COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "1303", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ser_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1303COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Cab_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2603", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ser_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2603COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO prO_virtual
 SELECT 8
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT prOductos
 STORE 00 TO meRr
 PUBLIC viTe, vfB1, vfB2, vfB3, vfB4, vcB1, vcB2, vcB3, vcB4, vtDo, vsEr,  ;
        vdOc, vcOd
 PUBLIC vdEs, vdCr, vlA1, vlA2, vaN1, vaN2, vpEd, cpEd, vsEc, csEc, vtB1,  ;
        vsWw, vsWr
 PUBLIC vcDg, icDg, ucDg, ccDg, vdCc, idCc, udCc, cdCc, vpDd, ipDd, upDd,  ;
        vsCc, isCc
 PUBLIC usCc, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt,  ;
        vcL0, vtDo
 PUBLIC vsEr, vdOc, vtD1, vsR1, vdO1, vsRp, vnPe, vnUm, vpLa, vpLo, vmOt
 PUBLIC vpAn_11
 STORE SPACE(mtMa) TO vcOd
 STORE SPACE(04) TO vsEc, csEc
 STORE SPACE(07) TO vpEd, cpEd
 STORE SPACE(80) TO vdEs, vdCr
 STORE 00 TO vlA1, vlA2, vaN1, vaN2, veSp
 STORE 01 TO viTe
 STORE 99 TO mkEy
 SET READBORDER ON
 DO p00_9997a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9997a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9997a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vcOd))=0
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_F4) .AND. viTe=1
                = INKEY(0.01)
                DO CASE
                     CASE mkEy=k_F2
                          STORE 2 TO vsWw
                          STORE 1 TO vsWr
                          DO prEsiona WITH "2", "CONSU0", vfB1, vcB1
                     CASE mkEy=k_F3
                          STORE 2 TO vsWw, vsWr
                          DO prEsiona WITH "2", "BUSCA0", vfB2, vcB2
                     CASE mkEy=k_F4
                          STORE 1 TO vsWw, vsWr
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SAVE SCREEN TO vpAn_11
                DO paC2111w WITH "C"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
                DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCA0", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT prOductos
                SEEK ALLTRIM(vcDg)+"*"
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f2111cod TO vcOd
                     STORE f2111des TO vdEs
                     STORE f2111dcr TO vdCr
                     STORE f2111la1 TO vlA1
                     STORE f2111la2 TO vlA2
                     STORE f2111an1 TO vaN1
                     STORE f2111an2 TO vaN2
                     STORE f2111esp TO veSp
                     @mFI0+1.0,mCO0+26 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,18
                     DO coL_fondo
                     @mFI0+3.0,mCO0+26 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,86 Pict "@S70"
                     @mFI0+4.5,mCO0+26 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,86 Pict "@S70"
                     IF maRe="BN"
                          SET COLOR TO RGB(0,0,0,196,196,196)
                     ENDIF
                     @mFI0+6.0,mCO0+26 Say vLA1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"
                     @mFI0+6.0,mCO0+38 Say vAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"
                     @mFI0+6.0,mCO0+56 Say vLA2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
                     @mFI0+6.0,mCO0+68 Say vAN2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
                     @mFI0+6.0,mCO0+99 Say vESP Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "999.9"
                ELSE
                     IF mkEy<>99
                          RETURN
                     ENDIF
                ENDIF
           CASE mkEy=k_F2 .AND. (viTe=2 .OR. viTe=3)
                = INKEY(0.01)
                SELECT seRies
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE "No hay Series para este Código..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SET NEAR ON
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                     SET NEAR OFF
                     IF ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*" .OR.  ;
                        ALLTRIM(f2112ped)+"*"<>ALLTRIM(vpEd)+"*"
                          SET NEAR ON
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)
                          SET NEAR OFF
                     ENDIF
                     IF ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          SET NEAR ON
                          SEEK ALLTRIM(vcOd)+"*"
                          SET NEAR OFF
                     ENDIF
                     DO prEsiona WITH "2", "CONSUL", vfB3, vcB3
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_11
                     DO paC2112w WITH "PUX9997A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                     SELECT seRies
                     SET FILTER TO
                     DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Enter
                          DO coLbln
                          STORE f2112ped TO vpEd
                          STORE f2112sec TO vsEc
                          @mFI0+8,mCO0+36 Say vPED Font "&mLetAri",9 Style "NQ" Size 1,9.5 Pict "!999999"
                          @mFI0+8,mCO0+62 Say vSEC Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "9999"
                     ELSE
                          IF mkEy<>99
                               RETURN
                          ENDIF
                     ENDIF
                ENDIF
           CASE mkEy=k_F2 .AND. (viTe=4 .OR. viTe=5)
                = INKEY(0.01)
                SELECT seRies
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     STORE "No hay Series para este Código..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                ELSE
                     SET NEAR ON
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)+csEc
                     SET NEAR OFF
                     IF ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*" .OR.  ;
                        ALLTRIM(f2112ped)+"*"<>ALLTRIM(cpEd)+"*"
                          SET NEAR ON
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)
                          SET NEAR OFF
                     ENDIF
                     IF ALLTRIM(f2112cod)+"*"<>ALLTRIM(vcOd)+"*"
                          SET NEAR ON
                          SEEK ALLTRIM(vcOd)+"*"
                          SET NEAR OFF
                     ENDIF
                     DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     SAVE SCREEN TO vpAn_11
                     DO paC2112w WITH "PUX9997A"
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                     SELECT seRies
                     SET FILTER TO
                     DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Enter
                          DO coLbln
                          STORE f2112ped TO cpEd
                          STORE f2112sec TO csEc
                          @mFI0+9.5,mCO0+36 Say cPED Font "&mLetAri",9 Style "NQ" Size 1,9.5 Pict "!999999"
                          @mFI0+9.5,mCO0+62 Say cSEC Font "&mLetAri",9 Style "NQ" Size 1,5.4 Pict "9999"
                     ELSE
                          IF mkEy<>99
                               RETURN
                          ENDIF
                     ENDIF
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9997a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9997a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=01
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=5
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe<3 .OR. viTe=4)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_9997a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_9997a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=5
                               STORE 99 TO mkEy
                          CASE viTe=2
                               STORE 3 TO viTe
                               DO veR_9997a
                               IF mkEy<>99
                                    STORE 4 TO viTe
                               ENDIF
                          CASE viTe=3
                               STORE 4 TO viTe
                               DO veR_9997a
                               IF mkEy<>99
                                    STORE 5 TO viTe
                               ENDIF
                          CASE viTe=04
                               STORE 5 TO viTe
                               DO veR_9997a
                               IF mkEy<>99
                                    STORE 99 TO mkEy
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=2
                          STORE 1 TO viTe
                     CASE viTe=3
                          STORE 1 TO viTe
                     CASE viTe=4
                          STORE 2 TO viTe
                     CASE viTe=5
                          STORE 3 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                DO veR_9997a
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99
                     STORE 5 TO viTe
                ENDIF
           CASE mkEy=k_Tab
                DO veR_9997a
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99 .AND. viTe<5
                     STORE 5 TO viTe
                     DO veR_9997a
                ENDIF
                IF mkEy<>99
                     SAVE SCREEN TO vpAn_11
                     DO deT_9997a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 1 TO viTe
                     RESTORE SCREEN FROM vpAn_11
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
                @mFI0+1.0,mCO0+26 Get vCOD Font "&mLetRom",12 Style "BQ" Pict "!!!!!!!!!!!!!!!" Size 1,18 Color ,&mColBlN
           CASE viTe=2
                @mFI0+8.0,mCO0+36 Get vPED Font "&mLetAri",9  Style "NQ" Size 1,9.5 Pict "!999999" Color ,&mColBlN
           CASE viTe=3
                @mFI0+8.0,mCO0+62 Get vSEC Font "&mLetAri",9  Style "NQ" Size 1,5.4 Pict "9999"    Color ,&mColBlN
           CASE viTe=4
                @mFI0+9.5,mCO0+36 Get cPED Font "&mLetAri",9  Style "NQ" Size 1,9.5 Pict "!999999" Color ,&mColBlN
           CASE viTe=5
                @mFI0+9.5,mCO0+62 Get cSEC Font "&mLetAri",9  Style "NQ" Size 1,5.4 Pict "9999"    Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_9997a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Código no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. ALLTRIM(vcOd)=REPLICATE("0", LEN(ALLTRIM(vcOd)))
           STORE "Código no puede ser ceros..." TO mmSj
      CASE viTe=1
           SELECT prOductos
           SEEK UPPER(ALLTRIM(vcOd))+"*"
           IF EOF()
                STORE "Código no registrado..." TO mmSj
           ELSE
                STORE f2111des TO vdEs
                STORE f2111dcr TO vdCr
                STORE f2111la1 TO vlA1
                STORE f2111la2 TO vlA2
                STORE f2111an1 TO vaN1
                STORE f2111an2 TO vaN2
                STORE f2111esp TO veSp
                DO coLbln
                @mFI0+1,mCO0+26 Say vCOD Font "&mLetRom",12 Style "BQ" Size 1,18
                DO coL_fondo
                @mFI0+3.0,mCO0+26 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,86  Pict "@S70"
                @mFI0+4.5,mCO0+26 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,86  Pict "@S70"
                IF maRe="BN"
                     SET COLOR TO RGB(0,0,0,196,196,196)
                ENDIF
                @mFI0+6.0,mCO0+26 Say vLA1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"
                @mFI0+6.0,mCO0+38 Say vAN1 Font "&mLetAri",9 Style "NQ" Size 1,8.4 Pict "99.999"
                @mFI0+6.0,mCO0+56 Say vLA2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
                @mFI0+6.0,mCO0+68 Say vAN2 Font "&mLetAri",9 Style "NQ" Size 1,9.9 Pict "999.999"
                @mFI0+6.0,mCO0+99 Say vESP Font "&mLetAri",9 Style "NQ" Size 1,6.9 Pict "999.9"
           ENDIF
      CASE viTe=2 .AND. LEN(ALLTRIM(vpEd))=0
           STORE "Pedido no puede estar vacío..." TO mmSj
      CASE viTe=3 .AND. LEN(ALLTRIM(vsEc))=0
           STORE "Secuencia no puede estar vacía..." TO mmSj
      CASE viTe=3
           SELECT seRies
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
           DO CASE
                CASE EOF()
                     STORE "Serie no registrada..." TO mmSj
                CASE  .NOT. EOF() .AND. f2112est<>"V"
                     STORE "Serie no se encuentra Vendida..." TO mmSj
                OTHERWISE
                     SELECT seR_fact
                     SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
                     IF EOF()
                          STORE "Serie no se encuentra en ningún documento de Venta..."  ;
                                TO mmSj
                     ENDIF
           ENDCASE
      CASE viTe=4 .AND. LEN(ALLTRIM(cpEd))=0
           STORE "Pedido no puede estar vacío..." TO mmSj
      CASE viTe=5 .AND. LEN(ALLTRIM(csEc))=0
           STORE "Secuencia no puede estar vacía..." TO mmSj
      CASE viTe=5
           SELECT seRies
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)+csEc
           DO CASE
                CASE EOF()
                     STORE "Serie no registrada..." TO mmSj
                CASE  .NOT. EOF() .AND. f2112est<>"S"
                     STORE "Serie no se encuentra Disponible..." TO mmSj
           ENDCASE
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_9997a
 SELECT teMporal
 ZAP
 REINDEX
 SELECT seRies
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
 IF  .NOT. EOF() .AND. f2112est="V"
 ELSE
      STORE "Primera Serie no se encuentra en estado Vendido..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)+csEc
 IF  .NOT. EOF() .AND. f2112est="S"
 ELSE
      STORE "Segunda Serie no se encuentra en estado Disponible..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 SELECT seR_fact
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
 IF EOF()
      STORE "Primera Serie no se encuentra en ningún Documento de Venta..."  ;
            TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f1303cod)+"*"+ALLTRIM(f1303ped)+ ;
    f1303sec=ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
      STORE f1303tdo TO vtDo
      STORE f1303ser TO vsEr
      STORE f1303doc TO vdOc
      SELECT teMporal
      APPEND BLANK
      REPLACE ftM1cod WITH vcOd
      REPLACE ftM1ped WITH vpEd
      REPLACE ftM1sec WITH vsEc
      REPLACE ftM1tdo WITH vtDo
      REPLACE ftM1ser WITH vsEr
      REPLACE ftM1doc WITH vdOc
      SELECT seR_fact
      SKIP
 ENDDO
 SELECT seR_remi
 SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
 IF  .NOT. EOF()
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2603cod)+"*"+ALLTRIM(f2603ped)+ ;
         f2603sec=ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
           STORE f2603tdo TO vtDo
           STORE f2603ser TO vsEr
           STORE f2603doc TO vdOc
           SELECT caB_remi
           SEEK vtDo+vsEr+vdOc
           IF EOF() .OR. f2600est="9"
                SELECT seR_remi
           ELSE
                STORE f2600td1 TO vtD1
                STORE f2600sr1 TO vsR1
                STORE f2600do1 TO vdO1
                STORE f2600srp TO vsRp
                STORE f2600ped TO vnPe
                SELECT teMporal
                GOTO TOP
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc+vtD1+vsR1+vdO1
                IF  .NOT. EOF()
                     REPLACE ftM1sr1 WITH vsEr
                     REPLACE ftM1rem WITH vdOc
                ENDIF
                SELECT seR_ped
                SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc+"PE"+vsRp+vnPe
                IF  .NOT. EOF()
                     SELECT teMporal
                     REPLACE ftM1sr2 WITH vsRp
                     REPLACE ftM1npe WITH vnPe
                ENDIF
           ENDIF
           SELECT seR_remi
           SKIP
      ENDDO
 ENDIF
 SELECT teMporal
 GOTO TOP
 IF BOF()
      STORE "No hay Series en Documentos de ventas para hacer los cambios..."  ;
            TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 COUNT ALL TO vnUm
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      STORE ftM1tdo TO vtDo
      STORE ftM1ser TO vsEr
      STORE ftM1doc TO vdOc
      STORE ftM1sr1 TO vsR1
      STORE ftM1rem TO vrEm
      STORE ftM1sr2 TO vsR2
      STORE ftM1npe TO vnPe
      SELECT seRies
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc
      STORE f2112pla TO vpLa
      STORE f2112plo TO vpLo
      STORE f2112mot TO vmOt
      REPLACE f2112mot WITH SPACE(15)
      REPLACE f2112pla WITH f2112plo
      REPLACE f2112est WITH "S"
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(cpEd)+csEc
      REPLACE f2112pla WITH vpLa
      REPLACE f2112est WITH "V"
      IF f2112pla<>f2112plo
           IF f2112pla<f2112plo .AND. LEN(ALLTRIM(vmOt))<>0
                REPLACE f2112mot WITH vmOt
           ELSE
                STORE SPACE(15) TO vmOt
           ENDIF
      ENDIF
      SELECT seR_fact
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc+vtDo+vsEr+vdOc
      REPLACE f1303tdo WITH SPACE(02)
      REPLACE f1303ser WITH SPACE(03)
      REPLACE f1303doc WITH SPACE(07)
      REPLACE f1303cod WITH SPACE(mtMa)
      REPLACE f1303ped WITH SPACE(07)
      REPLACE f1303sec WITH SPACE(04)
      DELETE
      DO nuEvo_rg
      REPLACE f1303tdo WITH vtDo
      REPLACE f1303ser WITH vsEr
      REPLACE f1303doc WITH vdOc
      REPLACE f1303cod WITH vcOd
      REPLACE f1303ped WITH cpEd
      REPLACE f1303sec WITH csEc
      REPLACE f1303pla WITH vpLa
      REPLACE f1303mot WITH vmOt
      IF LEN(ALLTRIM(vrEm))<>0
           SELECT seR_remi
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc+"GR"+vsR1+vrEm
           REPLACE f2603cod WITH SPACE(mtMa)
           REPLACE f2603ped WITH SPACE(07)
           REPLACE f2603sec WITH SPACE(04)
           REPLACE f2603tdo WITH SPACE(02)
           REPLACE f2603ser WITH SPACE(03)
           REPLACE f2603doc WITH SPACE(07)
           DELETE
           DO nuEvo_rg
           REPLACE f2603tdo WITH "GR"
           REPLACE f2603ser WITH vsR1
           REPLACE f2603doc WITH vrEm
           REPLACE f2603cod WITH vcOd
           REPLACE f2603ped WITH cpEd
           REPLACE f2603sec WITH csEc
           REPLACE f2603pla WITH vpLa
           REPLACE f2603mot WITH vmOt
      ENDIF
      IF LEN(ALLTRIM(vnPe))<>0
           SELECT seR_ped
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+vsEc+"PE"+vsR2+vnPe
           REPLACE f1203cod WITH SPACE(mtMa)
           REPLACE f1203ped WITH SPACE(07)
           REPLACE f1203sec WITH SPACE(04)
           REPLACE f1203tdo WITH SPACE(02)
           REPLACE f1203ser WITH SPACE(03)
           REPLACE f1203doc WITH SPACE(07)
           DELETE
           DO nuEvo_rg
           REPLACE f1203tdo WITH "PE"
           REPLACE f1203ser WITH vsR2
           REPLACE f1203doc WITH vnPe
           REPLACE f1203cod WITH vcOd
           REPLACE f1203ped WITH cpEd
           REPLACE f1203sec WITH csEc
           REPLACE f1203pla WITH vpLa
      ENDIF
 ENDIF
 WAIT WINDOW NOCLEAR NOWAIT  ;
      "*** P R O C E S O   R E A L I Z A D O *** pulsar tecla..."
 = INKEY(0, "HM")
 WAIT CLEAR
ENDPROC
*
PROCEDURE P00_9997a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 12 TO muFi
 STORE 115 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, vcL0
 STORE vcL0-05.5 TO vcL0
 STORE mfI0+1 TO vfB1, vfB2
 STORE mcO0+52 TO vcB1
 STORE vcB1+4 TO vcB2
 STORE mfI0+07.9 TO vfB3
 STORE mcO0+68.3 TO vcB3, vcB4
 STORE mfI0+09.4 TO vfB4
 STORE mfI0+04 TO ifFr, ufFr, vfFr
 STORE ifFr+12 TO ffFr
 STORE mfI0-04 TO ifFt, ufFt, vfFt
 STORE ifFt+22 TO ffFt
 DO CASE
      CASE mrEs="2"
           STORE vcL0-5 TO vcL0
           STORE ffFr+3 TO ffFr
           STORE ffFt+3 TO ffFt
      CASE mrEs>"2"
           STORE vcL0-5 TO vcL0
           STORE ifFr-6 TO ifFr
           STORE ufFt-6 TO ifFt
           STORE ffFr+7 TO ffFr
           STORE ffFt+7 TO ffFt
 ENDCASE
 DO CASE
      CASE mrEs="1"
           Define Popup vTB1 from mFI0-2,mCO0+15 to mFI0+mUFI+2,mCO0+mUCO-16 Font "&mLetCou",11 Style "NQU" Prompt Field FTM1TDO+":"+FTM1SER+"-"+FTM1DOC+"  GR:"+FTM1SR1+"-"+FTM1REM+"  PE:"+FTM1SR2+"-"+FTM1NPE Scroll Color Scheme 1 Footer "ESCOGER DOCUMENTO"
      CASE mrEs="2"
           Define Popup vTB1 from mFI0-2,mCO0+11 to mFI0+mUFI+2,mCO0+mUCO-11 Font "&mLetCou",12 Style "NQU" Prompt Field FTM1TDO+":"+FTM1SER+"-"+FTM1DOC+"  GR:"+FTM1SR1+"-"+FTM1REM+"  PE:"+FTM1SR2+"-"+FTM1NPE Scroll Color Scheme 1 Footer "ESCOGER DOCUMENTO"
      OTHERWISE
           Define Popup vTB1 from mFI0-2,mCO0+10 to mFI0+mUFI+2,mCO0+mUCO-11 Font "&mLetCou",13 Style "NQU" Prompt Field FTM1TDO+":"+FTM1SER+"-"+FTM1DOC+"  GR:"+FTM1SR1+"-"+FTM1REM+"  PE:"+FTM1SR2+"-"+FTM1NPE Scroll Color Scheme 1 Footer "ESCOGER DOCUMENTO"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Cambiar una Serie Vendida x una Disponible"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+1.0,mCO0+001 Say "PRODUCTO:"            Font "&mLetRom",12 Style "BQ"
 @mFI0+3.0,mCO0+001 Say "Descripción:"         Font "&mLetAri",9  Style "NQ"
 @mFI0+4.5,mCO0+001 Say "Descripción impresa:" Font "&mLetAri",9  Style "NQ"
 @mFI0+6.0,mCO0+001 Say "Medidas"              Font "&mLetAri",9  Style "NQ"
 @mFI0+6.0,mCO0+036 Say "x"                    Font "&mLetAri",9  Style "NQ"
 @mFI0+6.0,mCO0+048 Say "mts"                  Font "&mLetAri",9  Style "NQ"
 @mFI0+6.0,mCO0+080 Say "pulg"                 Font "&mLetAri",9  Style "NQ"
 @mFI0+6.0,mCO0+088 Say "Espesor"              Font "&mLetAri",9  Style "NQ"
 @mFI0+6.0,mCO0+108 Say "mm"                   Font "&mLetAri",9  Style "NQ"
 @mFI0+8.0,mCO0+001 Say "Serie Vendida:"       Font "&mLetAri",9  Style "BQ"
 @mFI0+8.0,mCO0+026 Say "Pedido:"              Font "&mLetAri",9  Style "NQ"
 @mFI0+8.0,mCO0+048 Say "Secuencia:"           Font "&mLetAri",9  Style "NQ"
 @mFI0+9.5,mCO0+001 Say "Serie Disponible:"    Font "&mLetAri",9  Style "BQ"
 @mFI0+9.5,mCO0+026 Say "Pedido:"              Font "&mLetAri",9  Style "NQ"
 @mFI0+9.5,mCO0+048 Say "Secuencia:"           Font "&mLetAri",9  Style "NQ"
 @mFI0+1.0,mCO0+026 Get  vCOD                  Font "&mLetRom",12 Style "BQ" Pict "!!!!!!!!!!!!!!!" Size 1,18 Color ,&mColBlN
 @mFI0+3.0,mCO0+026 Edit vDES                  Font "&mLetAri",9  Style "NQ" Size 1,86,70
 @mFI0+4.5,mCO0+026 Edit vDCR                  Font "&mLetAri",9  Style "NQ" Size 1,86,70
 @mFI0+8.0,mCO0+036 Get  vPED                  Font "&mLetAri",9  Style "NQ" Size 1,9.5 Pict "!999999" Color ,&mColBlN
 @mFI0+8.0,mCO0+062 Get  vSEC                  Font "&mLetAri",9  Style "NQ" Size 1,5.4 Pict "9999"    Color ,&mColBlN
 @mFI0+9.5,mCO0+036 Get  cPED                  Font "&mLetAri",9  Style "NQ" Size 1,9.5 Pict "!999999" Color ,&mColBlN
 @mFI0+9.5,mCO0+062 Get  cSEC                  Font "&mLetAri",9  Style "NQ" Size 1,5.4 Pict "9999"    Color ,&mColBlN
 IF maRe="BN"
      @mFI0+6,mCO0+26 Get vLA1                   Font "&mLetAri",9  Style "NQ" Size 1,8.4 Pict "99.999"  Color ,RGB(0,0,0,196,196,196)
      @mFI0+6,mCO0+38 Get vAN1                   Font "&mLetAri",9  Style "NQ" Size 1,8.4 Pict "99.999"  Color ,RGB(0,0,0,196,196,196)
      @mFI0+6,mCO0+56 Get vLA2                   Font "&mLetAri",9  Style "NQ" Size 1,9.9 Pict "999.999" Color ,RGB(0,0,0,196,196,196)
      @mFI0+6,mCO0+68 Get vAN2                   Font "&mLetAri",9  Style "NQ" Size 1,9.9 Pict "999.999" Color ,RGB(0,0,0,196,196,196)
      @mFI0+6,mCO0+99 Get vESP                   Font "&mLetAri",9  Style "NQ" Size 1,6.9 Pict "999.9"   Color ,RGB(0,0,0,196,196,196)
 ELSE
      @mFI0+6,mCO0+26 Get vLA1                   Font "&mLetAri",9  Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mCol_Fondo
      @mFI0+6,mCO0+38 Get vAN1                   Font "&mLetAri",9  Style "NQ" Size 1,8.4 Pict "99.999"  Color ,&mCol_Fondo
      @mFI0+6,mCO0+56 Get vLA2                   Font "&mLetAri",9  Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mCol_Fondo
      @mFI0+6,mCO0+68 Get vAN2                   Font "&mLetAri",9  Style "NQ" Size 1,9.9 Pict "999.999" Color ,&mCol_Fondo
      @mFI0+6,mCO0+99 Get vESP                   Font "&mLetAri",9  Style "NQ" Size 1,6.9 Pict "999.9"   Color ,&mCol_Fondo
 ENDIF
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCA0", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9997a
 = INKEY(0.01)
 DO CASE
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
PROCEDURE Hl1_9997a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, cambia una Serie de un Producto por otra en los archivos"
 @ pfIl+01, 02 SAY  ;
   "de Compras,  Entradas de Almacén,  Salidas de Almacén,  Guías de Remi-"
 @ pfIl+02, 02 SAY  ;
   "sión,  Facturas,  Pedidos de Ventas,  Lista de Precios de Proveedores y"
 @ pfIl+03, 02 SAY "Kardex."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+11, 23 SAY ":" STYLE "BT"
 @ pfIl+12, 23 SAY ":" STYLE "BT"
 @ pfIl+13, 23 SAY ":" STYLE "BT"
 @ pfIl+14, 23 SAY ":" STYLE "BT"
 @ pfIl+15, 23 SAY ":" STYLE "BT"
 @ pfIl+16, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 06 SAY "ESC" STYLE "BT"
 @ pfIl+08, 06 SAY "F10" STYLE "BT"
 @ pfIl+09, 06 SAY "F1" STYLE "BT"
 DO CASE
      CASE viTe=1
           @ pfIl+10, 06 SAY "F2" STYLE "BT"
           @ pfIl+11, 06 SAY "F3" STYLE "BT"
           @ pfIl+12, 06 SAY "F4" STYLE "BT"
           @ pfIl+13, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+14, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+15, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+16, 06 SAY "CTRL END" STYLE "BT"
      CASE viTe>1
           @ pfIl+17, 23 SAY ":" STYLE "BT"
           @ pfIl+10, 06 SAY "F2" STYLE "BT"
           @ pfIl+11, 06 SAY "ENTER" STYLE "BT"
           @ pfIl+12, 06 SAY "FLECHA ABAJO" STYLE "BT"
           @ pfIl+13, 06 SAY "FLECHA ARRIBA" STYLE "BT"
           @ pfIl+14, 06 SAY "CTRL ->" STYLE "BT"
           @ pfIl+15, 06 SAY "CTRL HOME" STYLE "BT"
           @ pfIl+16, 06 SAY "CTRL END" STYLE "BT"
           @ pfIl+17, 06 SAY "TAB" STYLE "BT"
 ENDCASE
 @ pfIl+07, 25 SAY "Regresar al Menú Principal"
 @ pfIl+08, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 25 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+10, 25 SAY "Consulta Productos ordenado alfabéticamente"
           @ pfIl+11, 25 SAY "Buscar palabra en descripción y consultar"
           @ pfIl+12, 25 SAY "Consulta Productos ordenado x código"
           @ pfIl+13, 25 SAY "Ir al siguiente campo"
           @ pfIl+14, 25 SAY "Ir al siguiente campo"
           @ pfIl+15, 25 SAY "Ir al siguiente campo"
           @ pfIl+16, 25 SAY "Ir al último campo"
      CASE viTe>1
           @ pfIl+10, 25 SAY "Consultar Series"
           @ pfIl+11, 25 SAY "Ir al siguiente campo"
           @ pfIl+12, 25 SAY "Ir al siguiente campo"
           @ pfIl+13, 25 SAY "Ir al campo superior"
           @ pfIl+14, 25 SAY "Ir al siguiente campo"
           @ pfIl+15, 25 SAY "Ir al primer campo"
           @ pfIl+16, 25 SAY "Ir al último campo"
           @ pfIl+17, 25 SAY "Procesar"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE viTe, vfB1, vfB2, vfB3, vfB4, vcB1, vcB2, vcB3, vcB4, vtDo, vsEr,  ;
         vdOc, vcOd
 RELEASE vdEs, vdCr, vlA1, vlA2, vaN1, vaN2, vpEd, cpEd, vsEc, csEc, vtB1,  ;
         vsWw, vsWr
 RELEASE vcDg, icDg, ucDg, ccDg, vdCc, idCc, udCc, cdCc, vpDd, ipDd, upDd,  ;
         vsCc, isCc
 RELEASE usCc, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt,  ;
         vcL0, vtDo
 RELEASE vsEr, vdOc, vtD1, vsR1, vdO1, vsRp, vnPe, vnUm, vpLa, vpLo, vmOt
 RELEASE vpAn_11
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
 RELEASE ntM1
ENDPROC
*
