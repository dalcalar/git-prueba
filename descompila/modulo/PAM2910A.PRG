 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[17, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MON"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SIG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TCA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 5
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FOB"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CFR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CIF"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE "TM01"+ntM1+meXt TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM1="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 DIMENSION afIl[7, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CDG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SIG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 6
 STORE "TM01"+ntM2+meXt TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON UPPER(ALLTRIM(ftM2cod))+"*"+STR(RECNO(), 4, 0) TAG ftM2cod
 INDEX ON UPPER(ALLTRIM(ftM2des))+UPPER(ALLTRIM(ftM2cod))+"*"+STR(RECNO(),  ;
       4, 0) TAG ftM2des
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_2910a IN PAI2910A
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC viTe, ciTe, viT1, viOm, vsWw, csWw, vsWr, vuCo, vcO0, vcL0, vfIl,  ;
        ifIl, ufIl
 PUBLIC ffIl, cfIl, vfFr, ifFr, ufFr, ffFr, cfFr, vrEc, irEc, urEc, frEc,  ;
        crEc, xrEc
 PUBLIC vtB1, vtB2, vtB3, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vcBi, vcB1,  ;
        vcB2, vcB3
 PUBLIC vcB4, vcB5, vtDo, vsEr, vdOc, vfPa, vpRv, cpRv, vsUc, vnPr, vdIr,  ;
        vdIs, vcM1
 PUBLIC vcM2, vmOn, cmOn, vsIg, vfEm, cfEm, vtCa, vtC1, ctC1, ctC2, ctC3,  ;
        ctC4, vcOd
 PUBLIC ccOd, vcDg, ccDg, vdEs, cdEs, vdCr, ccDr, vcUc, vnUc, cnUc, vfOb,  ;
        vcFr, vcIf
 PUBLIC vsTo, vcAn, vcAj, vcOn, vpRe, cpRe, vmNd, vsG1, csG1, vtOt, ttOt,  ;
        vtPo, vtPc
 PUBLIC vcDd, icDd, ucDd, ccDd, vdCc, idCc, udCc, ccDd, vrCc, irCc, urCc,  ;
        crCc, icLn
 PUBLIC ucLn, voRd
 PUBLIC vpAn_11
 STORE "OC" TO vtDo
 STORE msEr(03) TO vsEr
 STORE SPACE(03) TO csEr
 STORE SPACE(07) TO cdOc
 STORE SPACE(25) TO vdIs
 STORE SPACE(04) TO vpRv, cpRv
 STORE SPACE(02) TO vsUc, vmOn, ctDo
 STORE SPACE(70) TO vnPr, vdIr, vcM1, vcM2, vdEs, vdCr, vfPa
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, viTe, vtPo
 STORE 00 TO frEc, urEc, crEc, cfIl, viT1, vpRe, vtOt, ttOt
 STORE DATE() TO vfEm
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      GOTO BOTTOM
      IF  .NOT. EOF()
           STORE f9111tc1 TO ctC1
           STORE f9111tc2 TO ctC2
           STORE f9111tc3 TO ctC3
           STORE f9111tc4 TO ctC4
           DO nuEvo_rg
           REPLACE f9111fem WITH vfEm
           REPLACE f9111tc1 WITH ctC1
           REPLACE f9111tc2 WITH ctC2
           REPLACE f9111tc3 WITH ctC3
           REPLACE f9111tc4 WITH ctC4
           UNLOCK
           FLUSH
      ENDIF
 ENDIF
 SELECT moNedas
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE f9226cod TO vmOn
 STORE f9226sig TO vsIg
 STORE f9226tpo TO vtPc
 STORE f9226tca TO vtCa
 IF vtPc<3
      SELECT caMbio
      SEEK vfEm
      IF  .NOT. EOF()
           STORE f9111tc3 TO vtCa
      ENDIF
 ENDIF
 SELECT caBecera
 GOTO BOTTOM
 STORE f2910tdo TO vtDo
 STORE f2910ser TO vsEr
 STORE f2910doc TO vdOc
 SET READBORDER ON
 DO p00_2910a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2910a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2910a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .AND. viTe>2
                STORE 99 TO mkEy
           CASE (mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe<>02
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe=1
                = INKEY(0.01)
                SELECT caBecera
                DO orD_0000a WITH "2910", "A", "F2910DOC", "D"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO f2910est="1"
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     STORE "No hay Ordenes registradas..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB5 REST
                SET CONFIRM OFF
                DO p1_0000a
                SELECT caBecera
                DO orD_0000a WITH "2910", "A", "F2910DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_Enter
                     DO CASE
                          CASE f2910est="9"
                               STORE "Orden se encuentra anulada..." TO mmSj
                               DO poNmsj
                          CASE f2910est="2"
                               STORE "Orden se encuentra semi-despachada...No se puede modificar..."  ;
                                     TO mmSj
                               DO poNmsj
                          CASE f2910est="3"
                               STORE "Orden se encuentra Procesada...No se puede modificar..."  ;
                                     TO mmSj
                               DO poNmsj
                          OTHERWISE
                               DO muE_2910a
                     ENDCASE
                ENDIF
                DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. viTe=2
                = INKEY(0.01)
                SELECT prOveedores
                SET FILTER TO f2101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO AT(UPPER(ALLTRIM(vnPr)), UPPER(ALLTRIM(f2101nom)))<>0 .AND. f2101est<>"9"
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Proveedores que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
                DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET NEAR ON
                SEEK UPPER(ALLTRIM(vnPr))
                SET NEAR OFF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "2101", "A", "F2101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     STORE f2101cod TO vpRv
                     STORE f2101nom TO vnPr
                     SELECT caB_lista
                     SEEK vpRv
                     IF EOF()
                          STORE "Proveedor no tiene Lista de Precios ingresada..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          STORE SPACE(04) TO vpRv
                     ELSE
                          SET NEAR ON
                          SEEK vpRv+"ZZ"
                          SET NEAR OFF
                          IF EOF() .OR. f2105prv<>vpRv
                               IF EOF()
                                    GOTO BOTTOM
                               ELSE
                                    SKIP -1
                               ENDIF
                          ENDIF
                          STORE f2105fem TO cfEm
                          SELECT deT_lista
                          SEEK vpRv+SUBSTR(DTOC(cfEm), 7, 4)+ ;
                               SUBSTR(DTOC(cfEm), 4, 2)+SUBSTR(DTOC(cfEm),  ;
                               1, 2)
                          STORE f2106mon TO vmOn
                          SELECT moNedas
                          SEEK vmOn
                          STORE f9226cod TO vmOn
                          STORE f9226sig TO vsIg
                          STORE f9226tpo TO vtPc
                          STORE f9226tca TO vtCa
                          IF vtPc<3
                               SELECT caMbio
                               SEEK vfEm
                               IF  .NOT. EOF()
                                    STORE f9111tc3 TO vtCa
                               ENDIF
                          ENDIF
                          DO coL_beige
                          @mFI0+2.5,mCO0+90.5 Say vSIG Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S30"
                          @mFI0+4.0,mCO0+90.5 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999.99999"
                          SELECT suCursal
                          SEEK vpRv
                          IF  .NOT. EOF()
                               STORE f2102suc TO vsUc
                               STORE f2102dir TO vdIr
                               STORE f2102dis TO vdIs
                               DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
                          ELSE
                               STORE SPACE(02) TO vsUc
                               STORE SPACE(25) TO vdIs
                               STORE SPACE(70) TO vdIr
                               DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
                          ENDIF
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          DO coL_beige
                          @mFI0+1.0,mCO0+13.5 Say vNPR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
                          @mFI0+2.5,mCO0+13.5 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
                          @mFI0+4.0,mCO0+13.5 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                     ENDIF
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. viTe=2
                = INKEY(0.01)
                DO coLbln
                STORE SPACE(02) TO vsUc
                STORE SPACE(25) TO vdIs
                STORE SPACE(04) TO vpRv, cpRv
                STORE SPACE(70) TO vnPr, vdIr
                @mFI0+1.0,mCO0+13.5 Say vNPR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
                DO coL_beige
                @mFI0+2.5,mCO0+13.5 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
                @mFI0+4.0,mCO0+13.5 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
                DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2910a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2910a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Esc .AND. viTe>2
                STORE 02 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=6
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<>3
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. (viTe=1 .OR. viTe=3)
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_F5
                DO diR_2910a IN PAI2910A
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_2910a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=6
                               DO deT_2910a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Down
                DO veR_2910a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=6
                               DO deT_2910a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe=2
                               STORE 3 TO viTe
                               DO veR_2910a
                               IF mkEy<>99
                                    STORE 4 TO viTe
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=3
                          STORE 1 TO viTe
                     CASE viTe=4
                          STORE 2 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO veR_2910a
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<5
                     STORE 5 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99
                     STORE 6 TO viTe
                ENDIF
           CASE mkEy=k_Tab
                DO veR_2910a
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<5
                     STORE 5 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99 .AND. viTe<6
                     STORE 6 TO viTe
                     DO veR_2910a
                ENDIF
                IF mkEy<>99
                     DO deT_2910a
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
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,118
           DO CASE
                CASE viTe=01
                     @mMF2,mMC2+38 Say "NÚMERO DE DOCUMENTO ES DE 7 DÍGITOS..."                                  Font "&mLetRom",9 Style "BQ"
                CASE viTe=02
                     @mMF2,mMC2+40 Say "ESCOGER PROVEEDOR REGISTRADO..."                                         Font "&mLetRom",9 Style "BQ"
                CASE viTe=03
                     @mMF2,mMC2+19 Say "LA FECHA DE EMISIÓN DEBE SER VÁLIDA DIA/MES/AÑO..."                      Font "&mLetRom",9 Style "BQ"
                CASE viTe=04
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=05
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
                CASE viTe=06
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0-1.8,mCO0+13.2 Get vDOC Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999" Color ,&mColBlN
                SET CURSOR ON
                READ
                SET CURSOR OFF
           CASE viTe=2 .AND. LEN(ALLTRIM(vpRv))<>0
                DO coL_fondo
                @mFI0+1,mCO0+13.5 Say  vNPR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S55"
                mkEy = INKEY(0, "HM")
                DO coL_beige
                @mFI0+1,mCO0+13.5 Say  vNPR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S55"
           CASE viTe=2
                @mFI0+1,mCO0+13.5 Edit vNPR Font "&mLetAri",9 Style "NQ" Size 1,50,70
                SET CURSOR ON
                READ
                SET CURSOR OFF
           OTHERWISE
                DO CASE
                     CASE viTe=03
                          @mFI0+1.0,mCO0+90.5 Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2 Color ,&mColBlN
                     CASE viTe=04
                          @mFI0+6.0,mCO0+20.5 Edit vFPA Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     CASE viTe=05
                          @mFI0+7.5,mCO0+20.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                     CASE viTe=06
                          @mFI0+9.0,mCO0+20.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,90,70
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_2910a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vdOc))=0
           STORE "El número de Documento no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. vdOc="0000000"
           STORE "El número de Documento no puede ser 0000000..." TO mmSj
      CASE viTe=1 .AND. (vtDo+vsEr+vdOc<>ctDo+csEr+cdOc .OR.  ;
           LEN(ALLTRIM(cdOc))=0)
           SELECT caBecera
           SEEK vtDo+vsEr+vdOc
           DO CASE
                CASE EOF()
                     STORE "Esta Orden no se encuentra registrada..." TO mmSj
                CASE f2910est="9"
                     STORE "Esta Orden se encuentra anulada..." TO mmSj
                CASE f2910est="3"
                     STORE "Esta Orden se encuentra Procesada...No se puede modificar..."  ;
                           TO mmSj
                CASE f2910est="2"
                     STORE "Esta Orden se encuentra Semi-Despachada...No se puede modificar..."  ;
                           TO mmSj
                OTHERWISE
                     DO muE_2910a
                     STORE vtDo TO ctDo
                     STORE vsEr TO csEr
                     STORE vdOc TO cdOc
           ENDCASE
      CASE viTe=2 .AND. LEN(ALLTRIM(vnPr))=0
           STORE "Nombre de Proveedor no puede estar vacío..." TO mmSj
      CASE viTe=2 .AND. LEN(ALLTRIM(vpRv))=0
           STORE "Proveedor debe estar registrado en el Maestro de Proveedores..."  ;
                 TO mmSj
      CASE viTe=3 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. vtPc<3
           SELECT caMbio
           SEEK vfEm
           IF  .NOT. EOF()
                DO coL_beige
                STORE f9111tc3 TO vtCa
                @mFI0+4,mCO0+90.5 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999.99999"
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Mue_2910a
 SELECT caBecera
 STORE f2910tdo TO vtDo
 STORE f2910ser TO vsEr
 STORE f2910doc TO vdOc
 STORE f2910fem TO vfEm
 STORE f2910prv TO vpRv
 STORE f2910nom TO vnPr
 STORE f2910suc TO vsUc
 STORE f2910dir TO vdIr
 STORE f2910dis TO vdIs
 STORE f2910mon TO vmOn
 STORE f2910sig TO vsIg
 STORE f2910tca TO vtCa
 STORE f2910fpa TO vfPa
 STORE f2910cm1 TO vcM1
 STORE f2910cm2 TO vcM2
 STORE f2910tpo TO vtPo
 STORE f2910est TO veSt
 SELECT teMporal
 ZAP
 REINDEX
 SELECT deTalle
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 STORE 00 TO ttOt
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      STORE f2911cod TO vcOd
      STORE f2911cdg TO vcDg
      STORE f2911des TO vdEs
      STORE f2911dcr TO vdCr
      STORE f2911cuc TO vcUc
      STORE f2911nuc TO vnUc
      STORE f2911mon TO vmNd
      STORE f2911sig TO vsG1
      STORE f2911tca TO vtC1
      STORE f2911fob TO vfOb
      STORE f2911cfr TO vcFr
      STORE f2911cif TO vcIf
      STORE f2911can TO vcAn
      STORE f2911pre TO vpRe
      STORE f2911tot TO vtOt
      SELECT teMporal
      APPEND BLANK
      REPLACE ftM1cod WITH vcOd
      REPLACE ftM1cdg WITH vcDg
      REPLACE ftM1des WITH vdEs
      REPLACE ftM1dcr WITH vdCr
      REPLACE ftM1cuc WITH vcUc
      REPLACE ftM1nuc WITH vnUc
      REPLACE ftM1mon WITH vmNd
      REPLACE ftM1sig WITH vsG1
      REPLACE ftM1tca WITH vtC1
      REPLACE ftM1fob WITH vfOb
      REPLACE ftM1cfr WITH vcFr
      REPLACE ftM1cif WITH vcIf
      REPLACE ftM1can WITH vcAn
      REPLACE ftM1pre WITH vpRe
      REPLACE ftM1tot WITH vtOt
      STORE RECNO() TO frEc
      STORE ttOt+vtOt TO ttOt
      SELECT deTalle
      SKIP
 ENDDO
 DO coLbln
 @mFI0+1.0,mCO0+013.5 Say vNPR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
 @mFI0+1.0,mCO0+090.5 Say vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @mFI0+6.0,mCO0+020.5 Say vFPA Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 @mFI0+7.5,mCO0+020.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 @mFI0+9.0,mCO0+020.5 Say vCM2 Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 DO coL_beige
 @mFI0+2.5,mCO0+013.5 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
 @mFI0+4.0,mCO0+013.5 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
 @mFI0+2.5,mCO0+090.5 Say vSIG Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S30"
 @mFI0+4.0,mCO0+090.5 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999.99999"
 @fFIL+1.9,vCO0+031.5 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,96 Pict "@S80" Color Scheme 3
 @fFIL+3.2,vCO0+031.5 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,96 Pict "@S80" Color Scheme 3
 @fFIL+3.2,vCO0+148.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,18 Pict "9,999,999.9999" Color Scheme 3
 IF miMp=1
      @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO Size 1,12
 ELSE
      @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO Size 1,12
 ENDIF
 READ TIMEOUT 0.01
 SELECT teMporal
 GOTO TOP
 DO paN_2910b IN PAI2910B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc, viTe
 STORE ifIl TO vfIl
ENDPROC
*
PROCEDURE Det_2910a
 DO boT_2910a IN PAI2910A WITH "3"
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
 DO paI2910b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 DO p1_0000a
 SET READBORDER ON
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO boT_2910a IN PAI2910A WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy<>k_Clic .AND. mkEy<>k_Esc
      STORE 02 TO viTe
      STORE 00 TO viT1
 ENDIF
 IF mkEy=k_Tab
      DO grA_2910a
      STORE 99 TO mkEy
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_2910a
 PRIVATE ptX1, ptX2, poPc, pcAo, pcAn, pmOn, ptPc, ppRe, ptCa
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT caBecera
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           WAIT CLEAR
           UNLOCK ALL
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f2910mon TO pmOn
 STORE f2910tca TO ptCa
 REPLACE f2910fem WITH vfEm
 REPLACE f2910prv WITH vpRv
 REPLACE f2910nom WITH vnPr
 REPLACE f2910suc WITH vsUc
 REPLACE f2910dir WITH vdIr
 REPLACE f2910dis WITH vdIs
 REPLACE f2910mon WITH vmOn
 REPLACE f2910sig WITH vsIg
 REPLACE f2910tca WITH vtCa
 REPLACE f2910fpa WITH vfPa
 REPLACE f2910cm1 WITH vcM1
 REPLACE f2910cm2 WITH vcM2
 REPLACE f2910tpo WITH vtPo
 REPLACE f2910est WITH "1"
 REPLACE f2910usu WITH muSu
 REPLACE f2910dat WITH DATE()
 REPLACE f2910tim WITH TIME()
 UNLOCK
 SELECT moNedas
 SEEK pmOn
 IF EOF()
      STORE 1 TO ptPc
 ELSE
      STORE f9226tpo TO ptPc
 ENDIF
 SELECT deTalle
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+vsEr+vdOc
      STORE f2911ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 4, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                = INKEY(0.01)
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 DO WHILE .T.
      SELECT deTalle
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      STORE f2911can-f2911ctd TO pcAn
      STORE f2911pre TO ppRe
      REPLACE f2911tdo WITH SPACE(02)
      REPLACE f2911ser WITH SPACE(03)
      REPLACE f2911doc WITH SPACE(07)
      DELETE
      UNLOCK
      SELECT stO_tot
      GOTO TOP
      REPLACE f2119orp WITH f2119orp-pcAn
      DO CASE
           CASE ptPc=1
                REPLACE f2119vo1 WITH f2119vo1-(pcAn*ppRe)
                REPLACE f2119vo2 WITH f2119vo2-((pcAn*ppRe)/ptCa)
           CASE ptPc=2
                REPLACE f2119vo2 WITH f2119vo2-(pcAn*ppRe)
                REPLACE f2119vo1 WITH f2119vo1-((pcAn*ppRe)*ptCa)
      ENDCASE
      UNLOCK
 ENDDO
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      STORE ftM1cdg TO vcDg
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1mon TO vmNd
      STORE ftM1sig TO vsG1
      STORE ftM1tca TO vtC1
      STORE ftM1fob TO vfOb
      STORE ftM1cfr TO vcFr
      STORE ftM1cif TO vcIf
      STORE ftM1can TO vcAn
      STORE ftM1pre TO vpRe
      STORE ftM1tot TO vtOt
      STORE vrEc+1 TO vrEc
      SELECT deTalle
      DO nuEvo_rg
      REPLACE f2911tdo WITH vtDo
      REPLACE f2911ser WITH vsEr
      REPLACE f2911doc WITH vdOc
      REPLACE f2911ite WITH vrEc
      REPLACE f2911cod WITH vcOd
      REPLACE f2911cdg WITH vcDg
      REPLACE f2911des WITH vdEs
      REPLACE f2911dcr WITH vdCr
      REPLACE f2911cuc WITH vcUc
      REPLACE f2911nuc WITH vnUc
      REPLACE f2911mon WITH vmNd
      REPLACE f2911sig WITH vsG1
      REPLACE f2911tca WITH vtC1
      REPLACE f2911fob WITH vfOb
      REPLACE f2911cfr WITH vcFr
      REPLACE f2911cif WITH vcIf
      REPLACE f2911can WITH vcAn
      REPLACE f2911pre WITH vpRe
      REPLACE f2911tot WITH vtOt
      UNLOCK
      SELECT stO_tot
      GOTO TOP
      REPLACE f2119orp WITH f2119orp+vcAn
      DO CASE
           CASE vtPc=1
                REPLACE f2119vo1 WITH f2119vo1+(vcAn*vpRe)
                REPLACE f2119vo2 WITH f2119vo2-((vcAn*vpRe)/vtCa)
           OTHERWISE
                REPLACE f2119vo2 WITH f2119vo2+(vcAn*vpRe)
                REPLACE f2119vo1 WITH f2119vo1-((vcAn*vpRe)*vtCa)
      ENDCASE
      UNLOCK
      SELECT teMporal
      SKIP
 ENDDO
 SELECT deTalle
 STORE 99 TO mkEy
 SET ORDER TO F2911COD
 STORE 00 TO mkEy
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      SELECT deTalle
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      STORE 0 TO voRd
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2911cod)+"*"=ALLTRIM(vcOd)+"*"
           IF f2911can-f2911ctd<=0
                SKIP
                LOOP
           ENDIF
           IF f2911can-f2911ctd>0
                STORE voRd+(f2911can-f2911ctd) TO voRd
           ENDIF
           SKIP
      ENDDO
      SELECT prO_tot
      SEEK ALLTRIM(vcOd)+"*"
      REPLACE f2118orp WITH voRd
      SELECT teMporal
      SKIP
 ENDDO
 SELECT deTalle
 STORE 99 TO mkEy
 SET ORDER TO F2911DOC
 STORE 00 TO mkEy
 SELECT teMporal
 ZAP
 REINDEX
 UNLOCK ALL
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE SPACE(03) TO csEr
 STORE SPACE(07) TO cdOc
 STORE SPACE(25) TO vdIs
 STORE SPACE(04) TO vpRv, cpRv
 STORE SPACE(02) TO vsUc, vmOn, ctDo
 STORE SPACE(70) TO vnPr, vdIr, vcM1, vcM2, vdEs, vdCr, vfPa
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, viTe
 STORE 00 TO frEc, urEc, crEc, cfIl, viT1, vpRe, vtOt, ttOt
 STORE DATE() TO vfEm
 DO coLbln
 @mFI0+1.0,mCO0+013.5 Say vNPR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
 @mFI0+1.0,mCO0+090.5 Say vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.2
 @mFI0+6.0,mCO0+020.5 Say vFPA Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 @mFI0+7.5,mCO0+020.5 Say vCM1 Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 @mFI0+9.0,mCO0+020.5 Say vCM2 Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 DO coL_beige
 @mFI0+2.5,mCO0+013.5 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,50 Pict "@S70"
 @mFI0+4.0,mCO0+013.5 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
 @mFI0+2.5,mCO0+090.5 Say vSIG Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S30"
 @mFI0+4.0,mCO0+090.5 Say vTCA Font "&mLetAri",9 Style "NQ" Size 1,13 Pict "999.99999"
 @fFIL+1.9,vCO0+031.5 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,96 Pict "@S80" Color Scheme 3
 @fFIL+3.2,vCO0+031.5 Say vDCR Font "&mLetAri",9 Style "NQ" Size 1,96 Pict "@S80" Color Scheme 3
 @fFIL+3.2,vCO0+148.6 Say tTOT Font "&mLetAri",9 Style "BQ" Size 1,18 Pict "9,999,999.9999" Color Scheme 3
 IF miMp=1
      @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO Size 1,12
 ELSE
      @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO Size 1,12
 ENDIF
 READ TIMEOUT 0.01
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_2910a IN PAI2910A WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE P00_2910a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE irEc TO vrEc
 STORE 00 TO viT1
 STORE 41 TO muFi
 STORE 126 TO muCo, vuCo
 STORE vuCo+68 TO vuCo
 STORE (mwCo-166)/2 TO vcL0
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.8 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0, mmC2
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE mfI0+muFi+0.5 TO mmF2
 STORE mfI0+13 TO ifIl, ufIl, vfIl
 STORE ifIl+23 TO ffIl
 STORE mfI0+03.7 TO ifFr, ufFr, vfFr
 STORE ifFr+35 TO ffFr
 STORE mfI0+00.9 TO vfB1, vfB2, vfB3
 STORE mfI0+02.4 TO vfB4, vfB5
 STORE mcO0+68 TO vcB2
 STORE mcO0+72 TO vcB3
 STORE mcO0+64 TO vcB1, vcB4
 STORE mcO0+116.2 TO vcB5
 STORE mfI0-01.9 TO vfBi
 STORE mcO0+25.2 TO vcBi
 STORE vcO0 TO icLn
 STORE vcO0+193.7 TO ucLn
 Define Popup vTB1 from mFI0+2.2,mCO0-36 to fFIL+8,mCO0+75.4 Font "&mLetCou",14 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "CONSULTA DE PROVEEDORES"
 Define Popup vTB2 from mFI0+3.8,mCO0-36 to fFIL+8,mCO0+67.4 Font "&mLetCou",14 Style "NQ" Prompt Field AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 3 Footer "SUCURSALES"
 Define Popup vTB3 from mFI0+3.6,mCO0+83 to fFIL+8,mCO0+mUCO Font "&mLetCou",11 Style "NQ" Prompt Field Substr(F9226SIG,1,18)+" - "+F9226COD Scroll Color Scheme 3 Footer "CONSULTA DE MONEDAS"
 Define Popup vTB5 from mFI0,mCO0-0.2 to fFIL+6.9,mCO0+mUCO-.2 Font "&mLetCou",9 Style "NQ" Prompt Field F2910DOC+" "+Dtoc(F2910FEM)+" "+Substr(F2910NOM,1,62) Scroll Color Scheme 3 Footer "CONSULTA DE ORDENES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 DO tiT_0000a WITH "Ordenes de Compra existentes"
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0+0.3, mcO0, mfI0+10.5, mcO0+126
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, vcO0, mmF2+0.9, vcO0+vuCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.2, mcO0+30.7 PATTERN 1 COLOR SCHEME 7
 @ mfI0-2.2, mcO0-0.6 TO mfI0-2.2, mcO0+30.7 COLOR RGB(255,255,255,0,0,0)
 @ mfI0-2.2, mcO0-0.6 TO mfI0-0.2, mcO0-00.6 COLOR RGB(255,255,255,0,0,0)
 DO p01_2910a IN PAI2910A
 DO coLbln
 @mFI0-1.8,mCO0+00.8 Say "Orden:" Font "&mLetRom",13 Style "BT"
 @mFI0-1.8,mCO0+13.2 Get  vDOC    Font "&mLetAri",11 Style "NQ" Size 1,08.0 Pict "9999999" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSU0", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vrEc TO crEc
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      GOTO irEc
      DO paN_2910b IN PAI2910B
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE crEc TO vrEc
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE Clp_2910a
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
      CASE mfIl>=vfBi+mfG1 .AND. mfIl<=vfBi+mfG2 .AND. mcCc>=vcBi+mcG1  ;
           .AND. mcCc<=vcBi+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. LEN(ALLTRIM(vpRv))<>0
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. viTe>1
           IF frEc>0
                STORE "No puede cambiar la moneda porque hay detalle digitado..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                DO moN_2910a IN PAI2910A
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.535 .AND. mcCc>=mcO0+111.6  ;
           .AND. mcCc<=mcO0+121.6 .AND. vtPo<>1 .AND. viTe>1
           STORE 1 TO vtPo
           IF miMp=1
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO Size 1,12
           ELSE
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO Size 1,12
           ENDIF
           READ TIMEOUT 0.01
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                REPLACE ftM1pre WITH ftM1fob
                REPLACE ftM1tot WITH ftM1pre*ftM1can
                SKIP
           ENDDO
           DO pa1_2910a IN PAI2910A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.535 .AND. mfIl<=mfI0+9.607 .AND. mcCc>=mcO0+111.6  ;
           .AND. mcCc<=mcO0+121.6 .AND. vtPo<>2 .AND. viTe>1
           STORE 2 TO vtPo
           IF miMp=1
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO Size 1,12
           ELSE
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO Size 1,12
           ENDIF
           READ TIMEOUT 0.01
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                REPLACE ftM1pre WITH ftM1cfr
                REPLACE ftM1tot WITH ftM1pre*ftM1can
                SKIP
           ENDDO
           DO pa1_2910a IN PAI2910A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.607 .AND. mfIl<=mfI0+10.53 .AND. miMp=1 .AND.  ;
           mcCc>=mcO0+111.6 .AND. mcCc<=mcO0+121.6 .AND. vtPo<>3 .AND. viTe>1
           STORE 3 TO vtPo
           IF miMp=1
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT FOB;CFR;CIF" Default vTPO Size 1,12
           ELSE
                @mFI0+7.5,mCO0+112 Get vTPO Font "&mLetAri",9 Style "NQ" Function "*RVT s/IGV;c/IGV" Default vTPO Size 1,12
           ENDIF
           READ TIMEOUT 0.01
           SELECT teMporal
           GOTO TOP
           DO WHILE  .NOT. EOF()
                REPLACE ftM1pre WITH ftM1cif
                REPLACE ftM1tot WITH ftM1pre*ftM1can
                SKIP
           ENDDO
           DO pa1_2910a IN PAI2910A
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-2.335 .AND. mfIl<=mfI0-0.335 .AND. mcCc>=mcO0+0.8  ;
           .AND. mcCc<=mcO0+30.6 .AND. viTe<>01
      CASE mfIl>=mfI0+0.964 .AND. mfIl<=mfI0+2.107 .AND. mcCc>=mcO0+0.8  ;
           .AND. mcCc<=mcO0+63.8 .AND. viTe<>02
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.964 .AND. mfIl<=mfI0+2.107 .AND. mcCc>=mcO0+80  ;
           .AND. mcCc<=mcO0+104 .AND. viTe<>03
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 03 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.964 .AND. mfIl<=mfI0+7.107 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+110.8 .AND. viTe<>04
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 04 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.464 .AND. mfIl<=mfI0+8.536 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+110.8 .AND. viTe<>05
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=4
                STORE 04 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 05 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.964 .AND. mfIl<=mfI0+10.107 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+110.8 .AND. viTe<>06
           IF viTe=01
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=2
                STORE 02 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=3
                STORE 03 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=4
                STORE 04 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99 .AND. viTe<=5
                STORE 05 TO viTe
                DO veR_2910a
           ENDIF
           IF mkEy<>99
                STORE 06 TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_2910a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 01 SAY  ;
   "Este programa puede modificar Ordenes de Compra registradas, cuyo estado"
 @ pfIl+1, 01 SAY  ;
   "sea digitado, no pueden ser modificadas las anuladas, ni las procesadas."
 @ pfIl+3, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+5, 01 SAY "F10" STYLE "BT"
 @ pfIl+6, 01 SAY "ESC" STYLE "BT"
 @ pfIl+7, 01 SAY "F1" STYLE "BT"
 @ pfIl+5, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 21 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=01
           @ pfIl+6, 21 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+6, 21 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+8 TO pfIl
 IF viTe=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F2" STYLE "BT"
      @ pfIl, 21 SAY "Consulta de Ordenes de Compra"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=2
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F2" STYLE "BT"
      @ pfIl+1, 01 SAY "F3" STYLE "BT"
      @ pfIl+0, 21 SAY "Consulta de Proveedores registrados"
      @ pfIl+1, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+2 TO pfIl
 ENDIF
 IF LEN(ALLTRIM(vpRv))<>0
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F5" STYLE "BT"
      @ pfIl, 21 SAY "Seleccionar Sucursal de Proveedor"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "CTRL <-" STYLE "BT"
      @ pfIl+1, 01 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+0, 21 SAY "Ir al campo izquierdo"
      @ pfIl+1, 21 SAY "Ir al Primer campo"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl, 21 SAY "Ir al Último campo"
 STORE pfIl+1 TO pfIl
 IF viTe=2 .AND. LEN(ALLTRIM(vpRv))<>0
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 21 SAY "Des-Seleccionar Proveedor"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl+0, 21 SAY "Ir al campo superior"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 01 SAY "TAB" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al siguiente campo, llegando al final pasa al Detalle"
 @ pfIl+1, 21 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 RELEASE viTe, ciTe, viT1, viOm, vsWw, csWw, vsWr, vuCo, vcO0, vcL0, vfIl,  ;
         ifIl, ufIl
 RELEASE ffIl, cfIl, vfFr, ifFr, ufFr, ffFr, cfFr, vrEc, irEc, urEc, frEc,  ;
         crEc, xrEc
 RELEASE vtB1, vtB2, vtB3, vfBi, vfB1, vfB2, vfB3, vfB4, vfB5, vcBi, vcB1,  ;
         vcB2, vcB3
 RELEASE vcB4, vcB5, vtDo, vsEr, vdOc, vfPa, vpRv, cpRv, vsUc, vnPr, vdIr,  ;
         vdIs, vcM1
 RELEASE vcM2, vmOn, cmOn, vsIg, vfEm, cfEm, vtCa, vtC1, ctC1, ctC2, ctC3,  ;
         ctC4, vcOd
 RELEASE ccOd, vcDg, ccDg, vdEs, cdEs, vdCr, ccDr, vcUc, vnUc, cnUc, vfOb,  ;
         vcFr, vcIf
 RELEASE vsTo, vcAn, vcAj, vcOn, vpRe, cpRe, vmNd, vsG1, csG1, vtOt, ttOt,  ;
         vtPo, vtPc
 RELEASE vcDd, icDd, ucDd, ccDd, vdCc, idCc, udCc, ccDd, vrCc, irCc, urCc,  ;
         crCc, icLn
 RELEASE ucLn, voRd
 RELEASE vpAn_11
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
 DO deL_file2 WITH "1", "N"
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
