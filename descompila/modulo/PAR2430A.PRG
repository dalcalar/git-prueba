 SET CENTURY ON
 PUBLIC ntM1, ntM2, ntM3, afIl, x
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE 01 TO meRr
 DIMENSION afIl[15, 4]
 STORE 1 TO x
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
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1SOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ORD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIG"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
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
 Use &mDBF Exclusive
 INDEX ON SUBSTR(DTOC(ftM1fem), 7, 4)+SUBSTR(DTOC(ftM1fem), 4, 2)+ ;
       SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ftM1ser+ALLTRIM(ftM1doc)+"*"+ ;
       ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1fem
 INDEX ON ftM1tdo+SUBSTR(DTOC(ftM1fem), 7, 4)+SUBSTR(DTOC(ftM1fem), 4, 2)+ ;
       SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+ ;
       STR(ftM1mon, 1, 0) TAG ftM1tdo
 INDEX ON UPPER(ftM1nom)+ftM1prv+SUBSTR(DTOC(ftM1fem), 7, 4)+ ;
       SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ ;
       ftM1ser+ALLTRIM(ftM1doc)+"*"+STR(ftM1mon, 1, 0) TAG ftM1prv
 INDEX ON ftM1sor+ftM1ord+SUBSTR(DTOC(ftM1fem), 7, 4)+ ;
       SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ ;
       ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1ord
 INDEX ON ftM1ped+SUBSTR(DTOC(ftM1fem), 7, 4)+SUBSTR(DTOC(ftM1fem), 4, 2)+ ;
       SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ftM1ser+ALLTRIM(ftM1doc)+"*"+ ;
       ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1ped
 INDEX ON ALLTRIM(ftM1cod)+"*"+SUBSTR(DTOC(ftM1fem), 7, 4)+ ;
       SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ ;
       ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1fe1
 INDEX ON ALLTRIM(ftM1cod)+"*"+ftM1tdo+SUBSTR(DTOC(ftM1fem), 7, 4)+ ;
       SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1ser+ ;
       ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1td1
 INDEX ON ALLTRIM(ftM1cod)+"*"+UPPER(ftM1nom)+ftM1prv+ ;
       SUBSTR(DTOC(ftM1fem), 7, 4)+SUBSTR(DTOC(ftM1fem), 4, 2)+ ;
       SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ftM1ser+ALLTRIM(ftM1doc)+"*"+ ;
       STR(ftM1mon, 1, 0) TAG ftM1pr1
 INDEX ON ALLTRIM(ftM1cod)+"*"+ftM1sor+ftM1ord+SUBSTR(DTOC(ftM1fem), 7,  ;
       4)+SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ ;
       ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1or1
 INDEX ON ALLTRIM(ftM1cod)+"*"+ftM1ped+SUBSTR(DTOC(ftM1fem), 7, 4)+ ;
       SUBSTR(DTOC(ftM1fem), 4, 2)+SUBSTR(DTOC(ftM1fem), 1, 2)+ftM1tdo+ ;
       ftM1ser+ALLTRIM(ftM1doc)+"*"+ftM1prv+STR(ftM1mon, 1, 0) TAG ftM1pe1
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[10, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NUX"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 18
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
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
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM2cod)+"*" TAG ftM2cod
 INDEX ON ALLTRIM(ftM2prv)+"*" TAG ftM2prv
 INDEX ON ALLTRIM(ftM2ped)+"*" TAG ftM2ped
 INDEX ON UPPER(ftM2nom)+ALLTRIM(ftM2prv)+"*" TAG ftM2nom
 INDEX ON UPPER(ftM2des)+ALLTRIM(ftM2cod)+"*" TAG ftM2des
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TPP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3NUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3NUX"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3PRV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 18
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TO1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM3TO2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 16
 afIl[x, 4] = 2
 STORE "TM01"+ntM3+meXt TO mdBf
 DO WHILE .T.
      ntM3 = STRTRAN(STR(VAL(ntM3)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM3+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM3="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM3prv)+"*"+ALLTRIM(ftM3cod)+"*" TAG ftM3pco
 INDEX ON ALLTRIM(ftM3prv)+"*"+UPPER(ftM3des)+ALLTRIM(ftM3cod)+"*" TAG ftM3pde
 INDEX ON ALLTRIM(ftM3prv)+"*"+ALLTRIM(ftM3ped)+"*" TAG ftM3ppe
 INDEX ON ALLTRIM(ftM3cod)+"*"+ALLTRIM(ftM3prv)+"*" TAG ftM3cpr
 INDEX ON ALLTRIM(ftM3cod)+"*"+UPPER(ftM3nom)+ALLTRIM(ftM3prv)+"*" TAG ftM3cno
 INDEX ON ALLTRIM(ftM3cod)+"*"+ALLTRIM(ftM3ped)+"*" TAG ftM3cpe
 INDEX ON ALLTRIM(ftM3ped)+"*"+ALLTRIM(ftM3cod)+"*" TAG ftM3dco
 INDEX ON ALLTRIM(ftM3ped)+"*"+UPPER(ftM3des)+ALLTRIM(ftM3cod)+"*" TAG ftM3dde
 INDEX ON ALLTRIM(ftM3ped)+"*"+ALLTRIM(ftM3prv)+"*" TAG ftM3dpr
 INDEX ON ALLTRIM(ftM3ped)+"*"+UPPER(ftM3nom)+ALLTRIM(ftM3prv)+"*" TAG ftM3dno
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 Use &mDBF Shared NoUpdate Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Documentos de Compras no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 Use &mDBF Shared NoUpdate Alias Det_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 Use &mDBF Shared NoUpdate Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_3
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT caB_cpra
 STORE 00 TO meRr
 PUBLIC viTe, vsW0, vsW1, vsW2, csW2, vsW3, vsW4, voPc, coPc, coP1, vuFi,  ;
        vuCo, vcO0
 PUBLIC vfI1, vfI2, vfI3, vfI4, vfI5, vfI6, vfI7, vfI8, vfI9, vfI0, vfIl,  ;
        ifIl, ufIl
 PUBLIC ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vfB1, vfB2, vfB3, vfB4,  ;
        vfB5, vcB1
 PUBLIC vcB2, vcB3, vcB4, vcB5, dfEm, hfEm, vfEm, ifEm, ufEm, cfEm, cdFe,  ;
        chFe, dpEd
 PUBLIC hpEd, vpEd, ipEd, upEd, cpEd, cdPe, chPe, dpRv, hpRv, vpRv, ipRv,  ;
        upRv, cpRv
 PUBLIC cdPr, chPr, dcOd, hcOd, vcOd, icOd, ucOd, ccOd, cdCo, chCo, vdEs,  ;
        idEs, udEs
 PUBLIC vtDo, itDo, utDo, ctDo, vsEr, isEr, usEr, vdOc, idOc, udOc, vmOn,  ;
        imOn, umOn
 PUBLIC vsOr, isOr, usOr, voRd, ioRd, uoRd, vnOm, inOm, unOm, ddIa, dmEs,  ;
        daNo, vtOt
 PUBLIC ttO1, ctO1, ttT1, ttO2, ctO2, ttT2, vtD1, vsR1, vfAc, vtIg, vpIg,  ;
        vtPo, vfEc
 PUBLIC vtPp, vnUc, vnUx, vpIe, vcAn, vfTp, cfTp
 PUBLIC vpAn_11, vpAn_12, vpAn_13, vpAn_99
 STORE CTOD("01"+SUBSTR(DTOC(DATE()), 3, 8)) TO dfEm
 STORE CTOD("  /  /    ") TO cdFe, chFe
 STORE DATE() TO hfEm
 STORE SPACE(07) TO dpEd, dpRv
 STORE SPACE(15) TO dcOd
 STORE "ZZZZZZZ" TO hpEd, hpRv
 STORE "*******" TO cdPe, chPe, cdPr, chPr
 STORE "ZZZZZZZZZZZZZZZ" TO hcOd
 STORE "***************" TO cdCo, chCo
 STORE 99 TO mkEy
 STORE 01 TO voPc, vfTp, vsW0, vsW2, vsW3, vsW4
 STORE 00 TO coPc, coP1, viTe
 SET READBORDER ON
 DO p00_2430a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2430a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2430a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hlP_2430a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2430a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Down
                IF voPc=10
                     STORE 1 TO voPc
                ELSE
                     STORE voPc+1 TO voPc
                ENDIF
                DO opC_2430a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Up
                IF voPc=1
                     STORE 10 TO voPc
                ELSE
                     STORE voPc-1 TO voPc
                ENDIF
                DO opC_2430a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Home .AND. voPc<>1
                STORE 1 TO voPc
                DO opC_2430a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_End .AND. voPc<>10
                STORE 10 TO voPc
                DO opC_2430a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO prEsiona WITH "4", "R_CONS09", mmF1, mmC1
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO paR2430b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF voPc<>coPc
                     DO opC_2430a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 00 TO viTe
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE P00_2430a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO coPc
 STORE 35 TO muFi
 STORE 110 TO muCo
 STORE 40.3 TO vuFi
 STORE 203 TO vuCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mcO0-3 TO mcO0
 STORE (mwCo-vuCo)/2 TO piCl
 STORE piCl+vuCo TO puCl
 STORE (mwCo-126)/2 TO vcO0
 STORE mfI0+3.1 TO vfI1
 STORE vfI1+2.1 TO vfI2
 STORE vfI2+2.1 TO vfI3
 STORE vfI3+2.1 TO vfI4
 STORE vfI4+2.1 TO vfI5
 STORE vfI5+2.1 TO vfI6
 STORE vfI6+2.1 TO vfI7
 STORE vfI7+2.1 TO vfI8
 STORE vfI8+2.1 TO vfI9
 STORE vfI9+2.1 TO vfI0
 STORE piCl+55.4 TO puC1
 STORE puC1+2.6 TO piC2
 STORE piC2+144.6 TO puC2
 STORE piCl+145.8 TO puC3
 STORE puC3+2.6 TO piC4
 STORE piC4+54.0 TO puC4
 STORE mfI0-1.5 TO ifIl, ufIl, vfIl, ifFs, ufFs, vfFs
 STORE ifIl+37 TO ffIl, ffFs
 STORE ifIl-1 TO vfB1, vfB2, vfB3, vfB4, vfB5
 STORE ifFs+2 TO ifFs
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 SAVE SCREEN TO vpAn_99
 DO tiT_0000a WITH "Reportes de Compras"
 DO coLsc7
 DO cuAdro WITH mfI0, mcO0, mfI0+24, mcO0+54
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 DO cuAdro WITH mfI0+4, mcO0+muCo-52, mfI0+21, mcO0+muCo+6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ mfI0+5.5, mcO0+muCo-43 TO mfI0+14, mcO0+muCo-3 PATTERN 1
 @ mfI0+5.5, mcO0+muCo-43 TO mfI0+05.5, mcO0+muCo-3 COLOR RGB(255,255,255, ;
   0,0,0)
 @ mfI0+5.5, mcO0+muCo-43 TO mfI0+14.0, mcO0+muCo-43 COLOR RGB(255,255, ;
   255,0,0,0)
 DO prEsiona WITH "4", "R_CONS08", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI1, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI2, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI3, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI4, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI5, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI6, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI7, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI8, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI9, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "ITEM0", vfI0, mcO0+2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mFI0+0.0,mCO0+12 Say "Tipo de Reportes"    Font "&mLetRom",16 Style "BT"
 @vFI1+0.1,mCO0+15 Say "General x Fechas"    Font "&mLetRom",11 Style "BT"
 @vFI2+0.1,mCO0+14 Say "General x Producto"  Font "&mLetRom",11 Style "BT"
 @vFI3+0.1,mCO0+13 Say "General x Proveedor" Font "&mLetRom",11 Style "BT"
 @vFI4+0.1,mCO0+15 Say "General x Pedido"    Font "&mLetRom",11 Style "BT"
 @vFI5+0.1,mCO0+14 Say "Proveedor/Producto"  Font "&mLetRom",11 Style "BT"
 @vFI6+0.1,mCO0+15 Say "Proveedor/Pedido"    Font "&mLetRom",11 Style "BT"
 @vFI7+0.1,mCO0+14 Say "Producto/Proveedor"  Font "&mLetRom",11 Style "BT"
 @vFI8+0.1,mCO0+16 Say "Producto/Pedido"     Font "&mLetRom",11 Style "BT"
 @vFI9+0.1,mCO0+16 Say "Pedido/Producto"     Font "&mLetRom",11 Style "BT"
 @vFI0+0.1,mCO0+15 Say "Pedido/Proveedor"    Font "&mLetRom",11 Style "BT"
 DO opC_2430a
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Opc_2430a
 DO CASE
      CASE coPc=1
           DO prEsiona WITH "1", "ITEM0", vfI1, mcO0+2
      CASE coPc=2
           DO prEsiona WITH "1", "ITEM0", vfI2, mcO0+2
      CASE coPc=3
           DO prEsiona WITH "1", "ITEM0", vfI3, mcO0+2
      CASE coPc=4
           DO prEsiona WITH "1", "ITEM0", vfI4, mcO0+2
      CASE coPc=5
           DO prEsiona WITH "1", "ITEM0", vfI5, mcO0+2
      CASE coPc=6
           DO prEsiona WITH "1", "ITEM0", vfI6, mcO0+2
      CASE coPc=7
           DO prEsiona WITH "1", "ITEM0", vfI7, mcO0+2
      CASE coPc=8
           DO prEsiona WITH "1", "ITEM0", vfI8, mcO0+2
      CASE coPc=9
           DO prEsiona WITH "1", "ITEM0", vfI9, mcO0+2
      CASE coPc=10
           DO prEsiona WITH "1", "ITEM0", vfI0, mcO0+2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_beige
 @ mfI0+14.5, mcO0+muCo-43 TO mfI0+20.1, mcO0+muCo-3 PATTERN 1 PEN 0, 0
 DO coLsc7
 @ mfI0+05.5, mcO0+muCo-43 TO mfI0+14, mcO0+muCo-3 PATTERN 1
 @ mfI0+5.5, mcO0+muCo-43 TO mfI0+05.5, mcO0+muCo-3 COLOR RGB(255,255,255, ;
   0,0,0)
 @ mfI0+5.5, mcO0+muCo-43 TO mfI0+14.0, mcO0+muCo-43 COLOR RGB(255,255, ;
   255,0,0,0)
 DO coLbln
 DO CASE
      CASE coPc=1
           @vFI1+0.1,mCO0+15 Say "General x Fechas"    Font "&mLetRom",11 Style "BT"
      CASE coPc=2
           @vFI2+0.1,mCO0+14 Say "General x Producto"  Font "&mLetRom",11 Style "BT"
      CASE coPc=3
           @vFI3+0.1,mCO0+13 Say "General x Proveedor" Font "&mLetRom",11 Style "BT"
      CASE coPc=4
           @vFI4+0.1,mCO0+15 Say "General x Pedido"    Font "&mLetRom",11 Style "BT"
      CASE coPc=5
           @vFI5+0.1,mCO0+14 Say "Proveedor/Producto"  Font "&mLetRom",11 Style "BT"
      CASE coPc=6
           @vFI6+0.1,mCO0+15 Say "Proveedor/Pedido"    Font "&mLetRom",11 Style "BT"
      CASE coPc=7
           @vFI7+0.1,mCO0+14 Say "Producto/Proveedor"  Font "&mLetRom",11 Style "BT"
      CASE coPc=8
           @vFI8+0.1,mCO0+16 Say "Producto/Pedido"     Font "&mLetRom",11 Style "BT"
      CASE coPc=9
           @vFI9+0.1,mCO0+16 Say "Pedido/Producto"     Font "&mLetRom",11 Style "BT"
      CASE coPc=10
           @vFI0+0.1,mCO0+15 Say "Pedido/Proveedor"    Font "&mLetRom",11 Style "BT"
 ENDCASE
 DO CASE
      CASE voPc=1
           DO prEsiona WITH "2", "ITEM0", vfI1, mcO0+2
      CASE voPc=2
           DO prEsiona WITH "2", "ITEM0", vfI2, mcO0+2
      CASE voPc=3
           DO prEsiona WITH "2", "ITEM0", vfI3, mcO0+2
      CASE voPc=4
           DO prEsiona WITH "2", "ITEM0", vfI4, mcO0+2
      CASE voPc=5
           DO prEsiona WITH "2", "ITEM0", vfI5, mcO0+2
      CASE voPc=6
           DO prEsiona WITH "2", "ITEM0", vfI6, mcO0+2
      CASE voPc=7
           DO prEsiona WITH "2", "ITEM0", vfI7, mcO0+2
      CASE voPc=8
           DO prEsiona WITH "2", "ITEM0", vfI8, mcO0+2
      CASE voPc=9
           DO prEsiona WITH "2", "ITEM0", vfI9, mcO0+2
      CASE voPc=10
           DO prEsiona WITH "2", "ITEM0", vfI0, mcO0+2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLblz
 DO CASE
      CASE voPc=1
           @vFI1+0.1,mCO0+15 Say "General x Fechas"    Font "&mLetRom",11 Style "BT"
      CASE voPc=2
           @vFI2+0.1,mCO0+14 Say "General x Producto"  Font "&mLetRom",11 Style "BT"
      CASE voPc=3
           @vFI3+0.1,mCO0+13 Say "General x Proveedor" Font "&mLetRom",11 Style "BT"
      CASE voPc=4
           @vFI4+0.1,mCO0+15 Say "General x Pedido"    Font "&mLetRom",11 Style "BT"
      CASE voPc=5
           @vFI5+0.1,mCO0+14 Say "Proveedor/Producto"  Font "&mLetRom",11 Style "BT"
      CASE voPc=6
           @vFI6+0.1,mCO0+15 Say "Proveedor/Pedido"    Font "&mLetRom",11 Style "BT"
      CASE voPc=7
           @vFI7+0.1,mCO0+14 Say "Producto/Proveedor"  Font "&mLetRom",11 Style "BT"
      CASE voPc=8
           @vFI8+0.1,mCO0+16 Say "Producto/Pedido"     Font "&mLetRom",11 Style "BT"
      CASE voPc=9
           @vFI9+0.1,mCO0+16 Say "Pedido/Producto"     Font "&mLetRom",11 Style "BT"
      CASE voPc=10
           @vFI0+0.1,mCO0+15 Say "Pedido/Proveedor"    Font "&mLetRom",11 Style "BT"
 ENDCASE
 STORE voPc TO coPc
 DO coLsc7
 DO CASE
      CASE voPc=1
           @mFI0+07.5,mCO0+mUCO-37 Say "Desde"     Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-37 Say "Hasta"     Font "&mLetRom",14 Style "NQ"
           @mFI0+07.5,mCO0+mUCO-25 Get dFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-25 Get hFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
      CASE voPc=2
           @mFI0+06.0,mCO0+mUCO-41 Say "Desde"     Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Hasta"     Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
      CASE voPc=3
           @mFI0+06.0,mCO0+mUCO-41 Say "Desde"     Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Hasta"     Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
      CASE voPc=4
           @mFI0+06.0,mCO0+mUCO-41 Say "Desde"     Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Hasta"     Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hFEM        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
      CASE voPc=5
           @mFI0+06.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP        Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           IF vfTp=2
                DO coL_beige
                @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
                @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           ENDIF
      CASE voPc=6
           @mFI0+06.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP        Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           IF vfTp=2
                DO coL_beige
                @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
                @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           ENDIF
      CASE voPc=7
           @mFI0+06.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP        Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           IF vfTp=2
                DO coL_beige
                @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
                @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           ENDIF
      CASE voPc=8
           @mFI0+06.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP        Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           IF vfTp=2
                DO coL_beige
                @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
                @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           ENDIF
      CASE voPc=9
           @mFI0+06.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Producto"  Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hCOD        Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP        Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           IF vfTp=2
                DO coL_beige
                @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
                @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           ENDIF
      CASE voPc=10
           @mFI0+06.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+08.0,mCO0+mUCO-41 Say "Pedido"    Font "&mLetRom",14 Style "NQ"
           @mFI0+10.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+12.0,mCO0+mUCO-41 Say "Proveedor" Font "&mLetRom",14 Style "NQ"
           @mFI0+06.0,mCO0+mUCO-24 Get dPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+08.0,mCO0+mUCO-24 Get hPED        Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           @mFI0+10.0,mCO0+mUCO-24 Get dPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+12.0,mCO0+mUCO-24 Get hPRV        Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP        Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           IF vfTp=2
                DO coL_beige
                @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
                @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           ENDIF
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Clp_2430a
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
      CASE mfIl>=vfI1-0.35 .AND. mfIl<=vfI1+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>1
           STORE 1 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI2-0.35 .AND. mfIl<=vfI2+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>2
           STORE 2 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI3-0.35 .AND. mfIl<=vfI3+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>3
           STORE 3 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI4-0.35 .AND. mfIl<=vfI4+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>4
           STORE 4 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI5-0.35 .AND. mfIl<=vfI5+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>5
           STORE 5 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI6-0.35 .AND. mfIl<=vfI6+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>6
           STORE 6 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI7-0.35 .AND. mfIl<=vfI7+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>7
           STORE 7 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI8-0.35 .AND. mfIl<=vfI8+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>8
           STORE 8 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI9-0.35 .AND. mfIl<=vfI9+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>9
           STORE 9 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI0-0.35 .AND. mfIl<=vfI0+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>10
           STORE 10 TO voPc
           DO opC_2430a
           IF mkEy=k_Esc
                RETURN
           ENDIF
      CASE mfIl>=vfI1-0.35 .AND. mfIl<=vfI1+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=1
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI2-0.35 .AND. mfIl<=vfI2+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=2
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI3-0.35 .AND. mfIl<=vfI3+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=3
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI4-0.35 .AND. mfIl<=vfI4+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=4
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI5-0.35 .AND. mfIl<=vfI5+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=5
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI6-0.35 .AND. mfIl<=vfI6+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=6
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI7-0.35 .AND. mfIl<=vfI7+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=7
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI8-0.35 .AND. mfIl<=vfI8+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=8
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI9-0.35 .AND. mfIl<=vfI9+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=9
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI0-0.35 .AND. mfIl<=vfI0+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc=10
           STORE k_Enter TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hlp_2430a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este Programa muestra varios Tipos de Reportes por los que se pueden"
 @ pfIl+01, 02 SAY "visualizar las compras por pantalla o impresora."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 28 SAY ":" STYLE "BT"
 @ pfIl+06, 28 SAY ":" STYLE "BT"
 @ pfIl+07, 28 SAY ":" STYLE "BT"
 @ pfIl+08, 28 SAY ":" STYLE "BT"
 @ pfIl+09, 28 SAY ":" STYLE "BT"
 @ pfIl+10, 28 SAY ":" STYLE "BT"
 @ pfIl+05, 10 SAY "ESC" STYLE "BT"
 @ pfIl+06, 10 SAY "F10" STYLE "BT"
 @ pfIl+07, 10 SAY "F1" STYLE "BT"
 @ pfIl+08, 10 SAY "ENTER" STYLE "BT"
 @ pfIl+09, 10 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+10, 10 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+05, 30 SAY "Regresar al Menú Principal"
 @ pfIl+06, 30 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 30 SAY "Ayuda del Programa"
 @ pfIl+08, 30 SAY "Ingresar a la Opción escogida"
 @ pfIl+09, 30 SAY "Ir a la siguiente Opción"
 @ pfIl+10, 30 SAY "Ir a la Opción anterior"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE viTe, vsW0, vsW1, vsW2, csW2, vsW3, vsW4, voPc, coPc, coP1, vuFi,  ;
         vuCo, vcO0
 RELEASE vfI1, vfI2, vfI3, vfI4, vfI5, vfI6, vfI7, vfI8, vfI9, vfI0, vfIl,  ;
         ifIl, ufIl
 RELEASE ffIl, cfIl, vfFs, ifFs, ufFs, ffFs, cfFs, vfB1, vfB2, vfB3, vfB4,  ;
         vfB5, vcB1
 RELEASE vcB2, vcB3, vcB4, vcB5, dfEm, hfEm, vfEm, ifEm, ufEm, cfEm, cdFe,  ;
         chFe, dpEd
 RELEASE hpEd, vpEd, ipEd, upEd, cpEd, cdPe, chPe, dpRv, hpRv, vpRv, ipRv,  ;
         upRv, cpRv
 RELEASE cdPr, chPr, dcOd, hcOd, vcOd, icOd, ucOd, ccOd, cdCo, chCo, vdEs,  ;
         idEs, udEs
 RELEASE vtDo, itDo, utDo, ctDo, vsEr, isEr, usEr, vdOc, idOc, udOc, vmOn,  ;
         imOn, umOn
 RELEASE vsOr, isOr, usOr, voRd, ioRd, uoRd, vnOm, inOm, unOm, ddIa, dmEs,  ;
         daNo, vtOt
 RELEASE ttO1, ctO1, ttT1, ttO2, ctO2, ttT2, vtD1, vsR1, vfAc, vtIg, vpIg,  ;
         vtPo, vfEc
 RELEASE vtPp, vnUc, vnUx, vpIe, vcAn, vfTp, cfTp
 RELEASE vpAn_11, vpAn_12, vpAn_13, vpAn_99
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
 RELEASE ntM1, ntM2, ntM3
ENDPROC
*
