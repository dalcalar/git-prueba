 PARAMETER wnIv, wnIv2
 PUBLIC wsTo
 STORE "1" TO wsTo
 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8, ntM9,  ;
        ntM0, ntMa, ntMb, ntMc
 STORE 01 TO meRr, wsW0
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE "0006" TO ntM7
 STORE "0007" TO ntM8
 STORE "0008" TO ntM9
 STORE "0009" TO ntM0
 STORE "0010" TO ntMa
 STORE "0011" TO ntMb
 STORE "0012" TO ntMc
 DO tmP_1200a IN PVI1200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm1_2700w IN PAI2700W
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO tm1_1200a IN PVI1200A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "F1300SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F1300DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
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
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f1300ser+f1300doc TAG f1300doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM9COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM9PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM9SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM9PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM9PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM9MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE "TM01"+ntM9+meXt TO mdBf
 DO WHILE .T.
      ntM9 = STRTRAN(STR(VAL(ntM9)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM9+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM9="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           DO deL_file2 WITH "8", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM9cod)+"*"+ALLTRIM(ftM9ped)+ftM9sec TAG ftM9cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM0TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM0SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM0DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE "TM01"+ntM0+meXt TO mdBf
 DO WHILE .T.
      ntM0 = STRTRAN(STR(VAL(ntM0)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM0+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM0="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           DO deL_file2 WITH "8", "S"
           DO deL_file2 WITH "9", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM0tdo+ftM0ser+ftM0doc TAG ftM0doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTMAGRU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMADES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE "TM01"+ntMa+meXt TO mdBf
 DO WHILE .T.
      ntMa = STRTRAN(STR(VAL(ntMa)+1, 4, 0), " ", "0")
      STORE "TM01"+ntMa+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntMa="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           DO deL_file2 WITH "8", "S"
           DO deL_file2 WITH "9", "S"
           DO deL_file2 WITH "0", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftMagru TAG ftMagru
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[29, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTMBGRU"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBCOD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBRCC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBTPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBNUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBDES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBREF"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBPRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTMBTOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTMBCAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTMBOPC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBUN1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBUN2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBMLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTMBMAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTMBP11"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBP12"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBP21"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMBP22"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCCAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTMCOPC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCUN1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCUN2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCMLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTMCMAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTMCP11"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCP12"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCP21"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTMCP22"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE "TM01"+ntMb+meXt TO mdBf
 DO WHILE .T.
      ntMb = STRTRAN(STR(VAL(ntMb)+1, 4, 0), " ", "0")
      STORE "TM01"+ntMb+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntMb="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "N"
           DO deL_file2 WITH "8", "S"
           DO deL_file2 WITH "9", "S"
           DO deL_file2 WITH "0", "S"
           DO deL_file2 WITH "A", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftMbgru+ALLTRIM(ftMbcod)+"*"+STR(ftMbrcc, 3, 0) TAG ftMbgru
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[1, 4]
 STORE 1 TO x
 afIl[x, 1] = "FRASE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 254
 afIl[x, 4] = 0
 STORE "TM01"+ntMc+meXt TO mdBf
 DO WHILE .T.
      ntMc = STRTRAN(STR(VAL(ntMc)+1, 4, 0), " ", "0")
      STORE "TM01"+ntMc+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntMc="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "N"
           DO deL_file2 WITH "5", "S"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "N"
           DO deL_file2 WITH "8", "S"
           DO deL_file2 WITH "9", "S"
           DO deL_file2 WITH "0", "S"
           DO deL_file2 WITH "A", "S"
           DO deL_file2 WITH "B", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO abR_1300a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 57
 STORE "TM01"+ntM0+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_NP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM0DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 58
 STORE "TM01"+ntMc+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Frase
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 59
 DO abR_0000a IN PUX0000A WITH "9397", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9397TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 60
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SEEK "9C"
 IF  .NOT. EOF() .AND. f9999num>"0000000"
      STORE "COMPRAS INCOMPLETAS" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      = INKEY(0.5)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 61
 DO abR_0000a IN PUX0000A WITH "7000", "F"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias FactElect
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 62
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tiendas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 PUBLIC cuLt
 SEEK "90"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT3
 ELSE
      STORE "FACT\" TO mpT3
 ENDIF
 PUBLIC cuLt
 STORE 00 TO cuLt
 STORE 62 TO muLt
 SEEK "91"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT4
      STORE mpT4+"FU019999.DBF" TO mdBf
      If File("&mDBF")
           SELECT 63
           STORE 1 TO cuLt
           Use &mDBF Shared Alias Numeracion3
           IF mkEy=k_Esc
                DO deL_file1
                RETURN
           ENDIF
           SET ORDER TO F9999TDO
           IF mkEy=k_Esc
                DO deL_file1
                RETURN
           ENDIF
           SELECT 64
           STORE mpT4+"FV011300.DBF" TO mdBf
           Use &mDBF Shared Alias Cab_Fact3
           IF mkEy=k_Esc
                DO deL_file1
                RETURN
           ENDIF
           SET ORDER TO F1300DOC
           IF mkEy=k_Esc
                DO deL_file1
                RETURN
           ENDIF
           STORE 64 TO muLt
      ENDIF
 ENDIF
 STORE 00 TO meRr
 DO vaR_1200w IN PVI1200w
 DO liM_1200w IN PVI1200w
 PUBLIC vtRa, vpPn, vpPa, vpPd, vpPp, vtEc, vfDe, viNt, vsRp, vpEd, vtIm,  ;
        vtCv, vnTc
 PUBLIC ctDo, csEr, cdOc, vfCh, ccM1, xcM1, icM1, ucM1, vgRu, vnGr, vsR1,  ;
        cmOn, vcM3
 PUBLIC vcM4, vcM5, vcM6, xtOt, cvAl, cdTr, tpEr, vtPp, xsIg
 STORE 09 TO vuLt
 STORE 01 TO vlEc
 IF wnIv="6"
      STORE 02 TO vlEc
 ENDIF
 SELECT caMbio
 SEEK vfEm
 PRIVATE ctC1, ctC2, ctC3, ctC4
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
 ELSE
      IF f9111tc1=0 .OR. f9111tc3=0
           STORE "Tipo de Cambio es 0 (cero)..." TO mmSj
           DO poNmsj IN MODSET
           DO deL_files
           RETURN
      ENDIF
 ENDIF
 STORE f9111tc1 TO vtCv
 STORE f9111tc3 TO vtCa
 IF mdEt=2
      STORE "." TO vnOm
      STORE 2 TO vsW0
      STORE 14 TO vuLt
      STORE k_Tab TO mkEy
 ENDIF
 SET READBORDER ON
 RELEASE ctC1, ctC2, ctC3, ctC4
 DO p00_1300a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_1300a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. vsW0=2 .AND. msUn$"AB" .AND. mfDe<>CTOD( ;
                " ") .AND. DATE()<=mfHa
                DO prE_docum WITH "¿Desea consultar Razon Social de SUNAT?"
                IF moPc$"Ss"
                     DO q1_0000a
                     DO coN_ruc IN FAC0000A
                     DO p1_0000a
                ENDIF
                = INKEY(0.01)
                SELECT clIentes
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. vsW0=2 .AND. mrEn$"AB" .AND. mfDr<>CTOD( ;
                " ") .AND. DATE()<=mfHr
                DO prE_docum WITH  ;
                   "¿Desea consultar Apellidos y Nombres de RENIEC?"
                IF moPc$"Ss"
                     DO q1_0000a
                     DO coN_dni IN FAC0000A
                     DO p1_0000a
                ENDIF
                = INKEY(0.01)
                SELECT clIentes
                STORE 99 TO mkEy
           CASE (mkEy=k_F2 .OR. mkEy=k_F3) .AND. vsW0=2
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .OR. mkEy=k_F3
                = INKEY(0.01)
                SELECT clIentes
                SET FILTER TO f1101est<>"9"
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO (AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f1101nom)))<>0 .OR. AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f1101ali)))<>0) .AND. f1101est<>"9"
                     GOTO TOP
                     IF BOF() .OR. EOF()
                          STORE "No hay Clientes que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB3, vcB3
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "1101", "V", "F1101NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_F3
                     GOTO TOP
                ELSE
                     SET NEAR ON
                     SEEK UPPER(ALLTRIM(vnOm))
                     SET NEAR OFF
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "1101", "V", "F1101COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     STORE f1101cod TO vcLi
                     STORE f1101nom TO vnOm
                     STORE f1101ruc TO vrUc
                     STORE f1101ele TO vdNi
                     STORE f1101tip TO vtCl
                     STORE f1101med TO vmDd
                     STORE f1101lis TO ulIs
                     STORE f1101li2 TO ulI2
                     STORE f1101li3 TO ulI3
                     STORE f1101dct TO vdCl
                     STORE f1101cre TO vcRe
                     STORE f1101ppe TO vpPe
                     STORE f1101con TO vcOn
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                               STORE 0 TO vcOm
                          ELSE
                               STORE f9113nom TO vnVe
                               STORE f9113com TO vcOm
                          ENDIF
                     ENDIF
                     SELECT tiPo_cli
                     SEEK vtCl
                     IF  .NOT. EOF()
                          STORE f9110nti TO vnTi
                          STORE f9110dct TO vdTc
                          STORE f9110max TO vdMc
                     ELSE
                          STORE SPACE(50) TO vnTi
                          STORE 00 TO vdTc, vdMc
                     ENDIF
                     SELECT suCursal
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                          STORE f1102dir TO vdIr
                          STORE f1102ndi TO vdIs
                          STORE f1102ndp TO vdEp
                          STORE f1102ent TO vlUg
                          STORE f1102nd1 TO vlUd
                          STORE f1102np1 TO vlUp
                          STORE f1102mai TO vnTe
                          IF LEN(ALLTRIM(f1102tl1))<>0
                               STORE f1102tl1 TO vtEl
                          ELSE
                               IF LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               ELSE
                                    STORE f1102tl3 TO vtEl
                               ENDIF
                          ENDIF
                          DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
                     ELSE
                          STORE 00 TO vdCl
                          STORE SPACE(02) TO vsUc
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vdIr, vlUg
                          STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
                          DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                     ENDIF
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO noM_1200w IN PVI1200W
                     DO ruC_1200w IN PVI1200W
                     DO drC_1200w IN PVI1200W
                     DO luG_1200w IN PVI1200W
                     DO dvE_1200w IN PVI1200W
                     DO dtI_1200w IN PVI1200W
                     DO dcT_1200w IN PVI1200W WITH 1
                     DO reF_1200a IN PVI1200A
                     IF msUn="A" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa  ;
                        .AND. LEN(ALLTRIM(vcOn))<>0
                          STORE "Cliente "+vcOn TO mmSj
                          DO poNmsj
                          STORE 99 TO mkEy
                          DO CASE
                               CASE vcOn<>"HABIDO" .AND. mfEl<>"2"
                                    SAVE SCREEN TO vpAn_11
                                    DO prEsiona WITH "1", "CUAROJ", mfI0+ ;
                                       2, mcO0+10
                                    IF mkEy=k_Esc
                                         RETURN
                                    ENDIF
                                    @ mfI0+08, mcO0+19 SAY "RUC "+ ;
                                      ALLTRIM(vcOn) FONT "Arial", 16 STYLE "BT"
                                    @ mfI0+10, mcO0+19 SAY  ;
                                      "NO SE PUEDE VENDER..." FONT  ;
                                      "Arial", 16 STYLE "BT"
                                    mkEy = INKEY(5)
                                    RESTORE SCREEN FROM vpAn_11
                                    STORE 99 TO mkEy
                                    STORE 01 TO viTe
                                    WAIT CLEAR
                               CASE vcOn<>"HABIDO"
                                    DO prE_docum WITH "RUC "+ ;
                                       ALLTRIM(vcOn)+CHR(13)+ ;
                                       "¿Desea continuar?"
                                    IF moPc$"Nn"
                                         STORE 01 TO viTe
                                         STORE 02 TO vsW0
                                         STORE 99 TO mkEy
                                    ENDIF
                          ENDCASE
                     ENDIF
                     STORE vcLi TO xcLi
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del
                = INKEY(0.01)
                STORE 00 TO vdTc, vdMc, vdCl, vmDd
                STORE 02 TO vcRe
                STORE mpPe TO vpPe
                STORE SPACE(07) TO vtEl
                STORE SPACE(11) TO vrUc
                STORE SPACE(15) TO vdNi
                STORE SPACE(50) TO vnTi
                STORE SPACE(02) TO vsUc, vtCl
                STORE SPACE(04) TO vcLi, vtIt
                STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
                STORE SPACE(70) TO vnOm, vdIr, vlUg, vnTt
                DO noM_1200w IN PVI1200W
                DO luG_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                DO dcT_1200w IN PVI1200W WITH 1
                DO qrF_1200a IN PVI1200A
                STORE 1 TO viTe
                DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_1300a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_1300a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                SELECT teMporal
                GOTO TOP
                IF  .NOT. BOF()
                     DO prE_docum WITH "¿Desea salir sin grabar?"
                     IF moPc$"Ss"
                          STORE 99 TO mkEy
                          EXIT
                     ENDIF
                ELSE
                     STORE 99 TO mkEy
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_o
                DO reC_1300a
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=vuLt
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=1 .AND. (viTe<4 .OR. viTe=7  ;
                .OR. viTe=8 .OR. viTe=9)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vsW0=2 .AND. (viTe<4 .OR. viTe=7  ;
                .OR. viTe=8 .OR. viTe=12 .OR. viTe=13 .OR. viTe=14)
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. vsW0=1 .AND. viTe=5
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Up .AND. vsW0=2 .AND. viTe=10
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_F4
                DO tiT_1200a IN PVI1200A
           CASE mkEy=k_F5 .AND. vsW0=1
                DO diR_1200a IN PVI1200A WITH "2"
           CASE mkEy=k_F5 .AND. vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vrUc))=0
                DO CASE
                     CASE vtDi="0"
                          STORE "1" TO vtDi
                     CASE vtDi="1" .OR. vtDi="6"
                          STORE "4" TO vtDi
                     CASE vtDi="4"
                          STORE "7" TO vtDi
                     CASE vtDi="7"
                          STORE "A" TO vtDi
                     CASE vtDi="A"
                          STORE "0" TO vtDi
                     OTHERWISE
                          STORE "1" TO vtDi
                ENDCASE
                DO p04_1200a IN PVI1200A
                STORE 99 TO mkEy
           CASE mkEy=k_F6
                STORE 1 TO viTe
                STORE 0 TO viT1
                STORE SPACE(02) TO vsUc
                STORE SPACE(04) TO vcLi
                IF vsW0=1
                     STORE 00 TO vmDd
                     STORE 02 TO vsW0
                     STORE 14 TO vuLt
                ELSE
                     STORE 00 TO vmDd
                     STORE 01 TO vsW0
                     STORE 09 TO vuLt
                     IF ALLTRIM(vnOm)="."
                          STORE SPACE(70) TO vnOm
                     ENDIF
                ENDIF
                DO bf6_1200a IN PVI1200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO drC_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                STORE 99 TO mkEy
           CASE mkEy=k_F7
                DO fpA_1200a IN PVI1200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F8 .AND. viTe=1 .AND. msUn$"AB" .AND. mfDe<>CTOD( ;
                " ") .AND. DATE()<=mfHa
                DO leN_0000a IN FAC0000A WITH "4"
                DO leN_0000a IN FAC0000A WITH "5"
                DO leN_0000a IN FAC0000A WITH "C"
                DO leN_0000a IN FAC0000A WITH "D"
                DO noM_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
           CASE mkEy=k_F8 .AND. maDm=1 .AND. vsW0=2 .AND. (viTe=5 .OR.  ;
                viTe=6) .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND.  ;
                DATE()<=mfHa
                DO CASE
                     CASE vsWa=1
                          STORE 2 TO vsWa
                     CASE vsWa=2
                          STORE 1 TO vsWa
                ENDCASE
                DO p04_1200a IN PVI1200A
                DO p05_1200a IN PVI1200A
           CASE mkEy=k_F8 .AND. vsW0=2 .AND. (viTe=5 .OR. viTe=6) .AND.  ;
                msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND.  ;
                mfEl="2"
                DO CASE
                     CASE vsWa=1
                          STORE 2 TO vsWa
                     CASE vsWa=2
                          STORE 1 TO vsWa
                ENDCASE
                DO p04_1200a IN PVI1200A
                DO p05_1200a IN PVI1200A
           CASE mkEy=k_F9
                DO veN_1200a IN PVI1200A
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_c
                STORE viTe TO ciTe
                DO coP_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Alt_z
                STORE viTe TO ciTe
                DO coI_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE ciTe TO viTe
           CASE mkEy=k_Enter
                DO veR_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO deT_1300a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy=k_Tab
                                    LOOP
                               ENDIF
                          CASE vsW0=1 .AND. viTe=5 .AND. mpIg=2
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE vsW0=2 .AND. viTe=10 .AND. mpIg=2
                               STORE 12 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_right
                DO veR_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO deT_1300a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy=k_Tab
                                    LOOP
                               ENDIF
                          CASE vsW0=1 .AND. viTe<3
                               STORE 5 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE vsW0=2 .AND. (viTe<3 .OR. viTe=6 .OR. viTe=7)
                               STORE 10 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE vsW0=1 .AND. (viTe=5 .OR. viTe=6)
                          STORE 1 TO viTe
                     CASE vsW0=2 .AND. viTe=10
                          STORE 1 TO viTe
                     CASE vsW0=2 .AND. viTe=11
                          STORE 6 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Down
                DO veR_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO CASE
                          CASE viTe=vuLt
                               DO deT_1300a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy=k_Tab
                                    LOOP
                               ENDIF
                          CASE vsW0=1 .AND. (viTe=3 .OR. viTe=4 .OR. viTe=5)
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE vsW0=2 .AND. (viTe=3 .OR. viTe=4 .OR. viTe=5)
                               STORE 7 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          CASE vsW0=2 .AND. (viTe=8 .OR. viTe=9 .OR. viTe=10)
                               STORE 12 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTx .AND. mkEy<>99
                                    DO veR_1300a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE vsW0=1 .AND. viTe=4
                          STORE 2 TO viTe
                     CASE vsW0=1 .AND. viTe=7
                          STORE 3 TO viTe
                     CASE vsW0=2 .AND. (viTe=4 .OR. viTe=5 .OR. viTe=6)
                          STORE 2 TO viTe
                     CASE vsW0=2 .AND. viTe=7
                          STORE 3 TO viTe
                     CASE vsW0=2 .AND. viTe=9
                          STORE 7 TO viTe
                     CASE vsW0=2 .AND. viTe=12
                          STORE 8 TO viTe
                     OTHERWISE
                          STORE viTe-1 TO viTe
                ENDCASE
           CASE mkEy=k_Ctrl_end
                STORE vuLt TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_1300a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Tab
                STORE vuLt TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_1300a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO deT_1300a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy=k_Tab
                          LOOP
                     ENDIF
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF viTe<>viT1 .AND. vlEc=1
           STORE viTe TO viT1
           DO coL_fondo
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE vsW0=1 .AND. viTe=1
                     @mMF2,mMC2+40 Say "ESCOGER CLIENTE REGISTRADO..."                                                 Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. (viTe=2 .OR. viTe=7 .OR. viTe=8)
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. (viTe=3 .OR. viTe=4)
                     @mMF2,mMC2+12 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=5
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=6
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=1 .AND. viTe=9
                     @mMF2,mMC2+22 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=1
                     @mMF2,mMC2+14 Say "DIGITAR NOMBRE DE CLIENTE, CAMPO DE 70 CARACTERES ALFANUMÉRICOS..."            Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=2
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. (viTe=3 .OR. viTe=4 .OR. viTe=8 .OR. viTe=9)
                     @mMF2,mMC2+12 Say "CAMPO DE 25 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=5
                     @mMF2,mMC2+35 Say "DIGITAR RUC DE CLIENTE SI ES QUE LO TIENE..."                                  Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=6
                     @mMF2,mMC2+25 Say "DIGITAR D.I./D.N.I. DEL CLIENTE EN CASO DE SER BOLETA DE VENTA..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. (viTe=7 .OR. viTe=12 .OR. viTe=13)
                     @mMF2,mMC2+12 Say "CAMPO DE 70 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..."       Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=10
                     @mMF2,mMC2+12 Say "LA FECHA DE EMISIÓN TIENE QUE SER VÁLIDA, ÉSTA VA EN EL REGISTRO DE VENTAS..." Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=11
                     @mMF2,mMC2+22 Say "CAMPO DE 2 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
                CASE vsW0=2 .AND. viTe=14
                     @mMF2,mMC2+22 Say "CAMPO DE 3 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER 00.00..."             Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      IF viTe=1 .AND. vlEc=1
           STORE mfI0+05.0 TO vfLa
           STORE mcO0+40.5 TO vcOl
           SAVE SCREEN TO vpAn_11
           STORE "Formato de Nombre de Cliente:" TO vfR1
           STORE "En Boletas va Apellido Paterno," TO vfR2
           STORE "Apellido Materno y Nombres." TO vfR3
           STORE " " TO vfR4
           DO bmP_dial WITH "5", vfLa, vcOl, vfR1, vfR2, vfR3, vfR4
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=1 .AND. LEN(ALLTRIM(vcLi))<>0 .AND. vsW0=1
                STORE 3 TO vsW0
                DO noM_1200w IN PVI1200W
                mkEy = INKEY(0, "HM")
                STORE 1 TO vsW0
                DO noM_1200w IN PVI1200W
           OTHERWISE
                DO CASE
                     CASE viTe=1
                          @mFI0+01.0,mCO0+13.5 Edit vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
                     CASE vsW0=2 .AND. viTe=2
                          @mFI0+02.5,mCO0+13.5 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTM1,70
                     CASE vsW0=2 .AND. viTe=3
                          @mFI0+04.0,mCO0+13.5 Edit vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE vsW0=2 .AND. viTe=4
                          @mFI0+04.0,vCL1      Edit vDEP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE vsW0=2 .AND. viTe=5
                          @mFI0+4,vCL2         Get  vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.3 Pict "99999999999" Color ,&mColBlN
                     CASE vsW0=2 .AND. viTe=6
                          @mFI0+4,vCL3+0.7     Edit vDNI Font "&mLetAri",9 Style "NQ" Size 1,11.7,15
                     CASE (vsW0=1 .AND. viTe=2) .OR. (vsW0=2 .AND. viTe=7)
                          @mFI0+05.5,mCO0+13.5 Edit vLUG Font "&mLetAri",9 Style "NQ" Size 1,vTM3,70
                     CASE (vsW0=1 .AND. viTe=3) .OR. (vsW0=2 .AND. viTe=8)
                          @mFI0+07.0,mCO0+13.5 Edit vLUD Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE (vsW0=1 .AND. viTe=4) .OR. (vsW0=2 .AND. viTe=9)
                          @mFI0+07.0,vCL1      Edit vLUP Font "&mLetAri",9 Style "NQ" Size 1,vTM2,25
                     CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)
                          @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=11)
                          @mFI0+04.2,vCL5      Get  vPIG Font "&mLetAri",9 Style "NQ" Size 1,07.3 Pict "99.99" Color ,&mColBlN
                     CASE (vsW0=1 .AND. viTe=7) .OR. (vsW0=2 .AND. viTe=12)
                          @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,48
                     CASE (vsW0=1 .AND. viTe=8) .OR. (vsW0=2 .AND. viTe=13)
                          @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
                     CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=14)
                          @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,8.9 Pict "999.99" Color ,&mColBlN
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
      IF viTe=1
           RESTORE SCREEN FROM vpAn_11
           DO noM_1200w IN PVI1200W
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_1300a
 PRIVATE piTe
 STORE viTe TO piTe
 DO CASE
      CASE mpIg=1 .AND. ((vsW0=1 .AND. viTe=6) .OR. (vsW0=2 .AND. viTe=11))
           IF vpIg<>miGv
                STORE "N" TO moPc
                DO prE_docum WITH "Esta seguro de cambiar el IGV?"
                IF moPc$"Nn"
                     STORE miGv TO vpIg
                     DO piG_1200w IN PVI1200W
                ENDIF
           ENDIF
           DO caL_1300w IN PVI1200W
           IF vsW0=2
                STORE 14 TO vuLt
                STORE 11 TO viTe, piTe
           ELSE
                STORE 9 TO vuLt
                STORE 6 TO viTe, piTe
           ENDIF
      CASE wnIv="2" .AND. ((vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe= ;
           14)) .AND. vpGd<>0
           STORE "Este Nivel no tiene acceso a Descuento General..." TO mmSj
      CASE ((vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)) .AND. AT( ;
           " ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE (vsW0=1 .AND. viTe=5) .OR. (vsW0=2 .AND. viTe=10)
           SELECT caMbio
           SEEK vfEm
           IF EOF()
                STORE "Fecha no tiene Tipo de Cambio registrado..." TO mmSj
                STORE 0 TO vtCa
           ELSE
                STORE f9111tc3 TO vtCa
           ENDIF
           DO tcA_1200w IN PVI1200W
           IF vpIg<>miGv
                STORE "N" TO moPc
                DO prE_docum WITH "Esta seguro de cambiar el IGV?"
                IF moPc$"Nn"
                     STORE miGv TO vpIg
                     DO piG_1200w IN PVI1200W
                ENDIF
           ENDIF
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=1 .AND. viTe=1 .AND. LEN(ALLTRIM(vcLi))=0
           STORE "Cliente debe estar registrado en el Maestro de Clientes..."  ;
                 TO mmSj
      CASE vsW0=1 .AND. viTe=1
           DO reF_1200a IN PVI1200A
      CASE vsW0=2 .AND. viTe=5 .AND. LEN(ALLTRIM(vrUc))<>0 .AND.  ;
           LEN(ALLTRIM(vrUc))<11
           STORE "RUC no puede ser menor de 11 dígitos..." TO mmSj
      CASE vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Nombre de Cliente no puede estar vacío..." TO mmSj
      CASE vsW0=2 .AND. viTe=5 .AND. LEN(ALLTRIM(vrUc))<>0
           STORE "" TO vcOn
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND. vsWa=1
                DO vaL_ruc IN FAC0000A WITH vrUc
                IF mkEy=99
                     RETURN
                ENDIF
           ENDIF
           IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa .AND. vsWa=1
                DO veR_ruc IN FAC0000A WITH "1", vrUc
                IF mkEy=1733
                     STORE "RUC no se encuentra en la BASE DE SUNAT" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF mkEy=1999
                     STORE 2 TO vsWa
                     DO p04_1200a IN PVI1200A
                     DO p05_1200a IN PVI1200A
                     RETURN
                ENDIF
           ENDIF
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           IF msUn="A" .AND. LEN(ALLTRIM(vcOn))<>0
                STORE "Cliente "+vcOn TO mmSj
                DO poNmsj
                STORE k_Enter TO mkEy
                DO CASE
                     CASE vcOn<>"HABIDO" .AND. mfEl<>"2"
                          SAVE SCREEN TO vpAn_11
                          DO prEsiona WITH "1", "CUAROJ", mfI0+2, mcO0+10
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          @ mfI0+08, mcO0+19 SAY "RUC "+ALLTRIM(vcOn)  ;
                            FONT "Arial", 16 STYLE "BT"
                          @ mfI0+10, mcO0+19 SAY "NO SE PUEDE VENDER..."  ;
                            FONT "Arial", 16 STYLE "BT"
                          mkEy = INKEY(5)
                          RESTORE SCREEN FROM vpAn_11
                          STORE 99 TO mkEy
                          STORE 01 TO viTe
                          WAIT CLEAR
                     CASE vcOn<>"HABIDO"
                          DO prE_docum WITH "RUC "+ALLTRIM(vcOn)+CHR(13)+ ;
                             "¿Desea continuar?"
                          IF moPc$"Nn"
                               STORE 01 TO viTe
                               STORE 99 TO mkEy
                          ENDIF
                ENDCASE
           ENDIF
           SELECT clIentes
           DO orD_0000a WITH "1101", "V", "F1101RUC", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK ALLTRIM(vrUc)+"*"
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE  .NOT. EOF() .AND. f1101est="9"
                     STORE "RUC pertenece a un Cliente ANULADO..."+ ;
                           CHR(13)+CHR(13)+ ;
                           "No se le puede vender hasta ACTIVARLO" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                CASE  .NOT. EOF() .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
                      .AND. DATE()>mfHa
                     STORE "RUC REGISTRADO YA CADUCO EL ACCESO A SUNAT..."  ;
                           TO mmSj
                CASE  .NOT. EOF()
                     IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     ELSE
                          STORE f1101nom TO vnOm
                     ENDIF
                     STORE f1101cod TO vcLi
                     STORE f1101ppe TO vpPe
                     STORE f1101con TO vcOn
                     STORE f1101tip TO vtCl
                     STORE f1101med TO vmDd
                     STORE f1101lis TO ulIs
                     STORE f1101li2 TO ulI2
                     STORE f1101li3 TO ulI3
                     STORE f1101dct TO vdCl
                     STORE f1101cre TO vcRe
                     STORE 9 TO vuLt
                     STORE 0 TO vdTc, vdMc
                     STORE 1 TO viTe, vsW0
                     STORE " " TO vnTt
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                               STORE 0 TO vcOm
                          ELSE
                               STORE f9113nom TO vnVe
                               STORE f9113com TO vcOm
                          ENDIF
                     ENDIF
                     SELECT tiPo_cli
                     SEEK vtCl
                     IF  .NOT. EOF()
                          STORE f9110nti TO vnTi
                          STORE f9110dct TO vdTc
                          STORE f9110max TO vdMc
                     ENDIF
                     SELECT suCursal
                     GOTO TOP
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                     ELSE
                          STORE "00" TO vsUc
                     ENDIF
                     SEEK vcLi+vsUc
                     IF  .NOT. EOF()
                          IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                          ELSE
                               STORE f1102dir TO vdIr
                               STORE f1102ndi TO vdIs
                               STORE f1102ndp TO vdEp
                          ENDIF
                          STORE f1102ent TO vlUg
                          STORE f1102nd1 TO vlUd
                          STORE f1102np1 TO vlUp
                          STORE f1102mai TO vnTe
                          DO CASE
                               CASE LEN(ALLTRIM(f1102tl1))<>0
                                    STORE f1102tl1 TO vtEl
                               CASE LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               OTHERWISE
                                    STORE f1102tl3 TO vtEl
                          ENDCASE
                     ELSE
                          IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                          ELSE
                               STORE SPACE(70) TO vdIr
                               STORE SPACE(25) TO vdIs, vdEp
                          ENDIF
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vlUg
                          STORE SPACE(25) TO vlUd, vlUp
                     ENDIF
                     DO boT_1200w IN PVI1200W WITH "1"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO reF_1200a IN PVI1200A
                     STORE vcLi TO xcLi
                CASE EOF() .AND. msUn$"AB" .AND. mfDe<>CTOD(" ") .AND.  ;
                     DATE()<=mfHa .AND. mkEy<>1733
                CASE EOF()
                     SELECT caB_fact
                     DO orD_0000a WITH "1300", "V", "F1300RUC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SEEK ALLTRIM(vrUc)+"*"
                     DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     IF  .NOT. EOF()
                          STORE 2 TO vcRe
                          STORE "N" TO moPc
                          STORE " " TO vsUc, vtCl, vcLi, vnTi, vnTt
                          STORE 0 TO vmDd, vdTc, vdMc, ulIs, ulI1, ulI2
                          IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()>mfHa
                               STORE "RUC REGISTRADO YA CADUCO EL ACCESO A SUNAT..."  ;
                                     TO mmSj
                          ELSE
                               DO prE_docum WITH  ;
                                  "RUC anteriormente registrado en Documentos de Ventas..."+ ;
                                  CHR(13)+CHR(13)+ ;
                                  "¿Desea volver a llamar estos datos?"
                               IF moPc$"Ss"
                                    IF msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
                                       .AND. DATE()<=mfHa
                                    ELSE
                                         STORE f1300nom TO vnOm
                                         STORE f1300dir TO vdIr
                                         STORE f1300dis TO vdIs
                                         STORE f1300dep TO vdEp
                                    ENDIF
                                    STORE f1300tel TO vtEl
                                    STORE f1300lug TO vlUg
                                    STORE f1300lud TO vlUd
                                    STORE f1300lup TO vlUp
                                    STORE f1300ven TO vvEn
                                    STORE f1300nve TO vnVe
                                    STORE f1300com TO vcOm
                                    STORE f1300tit TO vtIt
                                    STORE f1300nte TO vnTe
                                    SELECT clIentes
                                    SEEK vtIt
                                    IF  .NOT. EOF()
                                         STORE f1101nom TO vnTt
                                         STORE f1101med TO vmDd
                                         STORE f1101tip TO vtCl
                                         STORE f1101lis TO ulIs
                                         STORE f1101li2 TO ulI2
                                         STORE f1101li3 TO ulI3
                                         STORE f1101cre TO vcRe
                                         IF LEN(ALLTRIM(f1101ven))<>0  ;
                                          .AND. mvNd=2
                                              STORE f1101ven TO vvEn
                                              SELECT veNdedor
                                              SEEK vvEn
                                              IF EOF()
                                                   STORE SPACE(50) TO vnVe
                                                   STORE 0 TO vcOm
                                              ELSE
                                                   STORE f9113nom TO vnVe
                                                   STORE f9113com TO vcOm
                                              ENDIF
                                         ENDIF
                                         SELECT tiPo_cli
                                         SEEK vtCl
                                         IF  .NOT. EOF()
                                              STORE f9110nti TO vnTi
                                              STORE f9110dct TO vdTc
                                              STORE f9110max TO vdMc
                                         ENDIF
                                    ENDIF
                                    DO reF_1200a IN PVI1200A
                               ENDIF
                          ENDIF
                     ENDIF
           ENDCASE
           DO noM_1200w IN PVI1200W
           DO ruC_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           DO luG_1200w IN PVI1200W
           DO dvE_1200w IN PVI1200W
           DO dtI_1200w IN PVI1200W
           DO dcT_1200w IN PVI1200W WITH 2
      CASE vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vdNi))<>0 .AND. vtDi$"16"
           IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr .AND. vsWa=1
                IF UPPER(ALLTRIM(vdNi))<>UPPER(ALLTRIM(cdNi)) .OR.  ;
                   LEN(ALLTRIM(cdNi))=0
                     STORE " " TO vdIr
                     STORE vdNi TO cdNi
                ENDIF
                DO veR_dni IN FAC0000A WITH "1", vdNi
                IF mkEy=1733
                     STORE "DNI no se encuentra en la BASE de RENIEC" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                STORE vdNi TO cdNi
           ENDIF
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           SELECT clIentes
           DO orD_0000a WITH "1101", "V", "F1101ELE", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SEEK ALLTRIM(vdNi)+"*"
           DO orD_0000a WITH "1101", "V", "F1101COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE  .NOT. EOF() .AND. f1101est="9"
                     STORE "DNI pertenece a un Cliente ANULADO..."+ ;
                           CHR(13)+CHR(13)+ ;
                           "No se le puede vender hasta ACTIVARLO" TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     RETURN
                CASE  .NOT. EOF() .AND. mrEn$"AB" .AND. mfDr<>CTOD(" ")  ;
                      .AND. DATE()>mfHr
                     STORE "DNI REGISTRADO YA CADUCO EL ACCESO A RENIEC..."  ;
                           TO mmSj
                CASE  .NOT. EOF()
                     IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                     ELSE
                          STORE f1101nom TO vnOm
                     ENDIF
                     STORE f1101cod TO vcLi
                     STORE f1101ppe TO vpPe
                     STORE f1101con TO vcOn
                     STORE f1101tip TO vtCl
                     STORE f1101med TO vmDd
                     STORE f1101lis TO ulIs
                     STORE f1101li2 TO ulI2
                     STORE f1101li3 TO ulI3
                     STORE f1101dct TO vdCl
                     STORE f1101cre TO vcRe
                     STORE 9 TO vuLt
                     STORE 0 TO vdTc, vdMc
                     STORE 1 TO viTe, vsW0
                     STORE " " TO vnTt
                     IF LEN(ALLTRIM(f1101ven))<>0 .AND. mvNd=2
                          STORE f1101ven TO vvEn
                          SELECT veNdedor
                          SEEK vvEn
                          IF EOF()
                               STORE SPACE(50) TO vnVe
                               STORE 0 TO vcOm
                          ELSE
                               STORE f9113nom TO vnVe
                               STORE f9113com TO vcOm
                          ENDIF
                     ENDIF
                     SELECT tiPo_cli
                     SEEK vtCl
                     IF  .NOT. EOF()
                          STORE f9110nti TO vnTi
                          STORE f9110dct TO vdTc
                          STORE f9110max TO vdMc
                     ENDIF
                     SELECT suCursal
                     GOTO TOP
                     SEEK vcLi
                     IF  .NOT. EOF()
                          STORE f1102suc TO vsUc
                     ELSE
                          STORE "00" TO vsUc
                     ENDIF
                     SEEK vcLi+vsUc
                     IF  .NOT. EOF()
                          IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                          ELSE
                               STORE f1102dir TO vdIr
                               STORE f1102ndi TO vdIs
                               STORE f1102ndp TO vdEp
                          ENDIF
                          STORE f1102ent TO vlUg
                          STORE f1102nd1 TO vlUd
                          STORE f1102np1 TO vlUp
                          STORE f1102mai TO vnTe
                          DO CASE
                               CASE LEN(ALLTRIM(f1102tl1))<>0
                                    STORE f1102tl1 TO vtEl
                               CASE LEN(ALLTRIM(f1102tl2))<>0
                                    STORE f1102tl2 TO vtEl
                               OTHERWISE
                                    STORE f1102tl3 TO vtEl
                          ENDCASE
                     ELSE
                          IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()<=mfHr
                          ELSE
                               STORE SPACE(70) TO vdIr
                               STORE SPACE(25) TO vdIs, vdEp
                          ENDIF
                          STORE SPACE(07) TO vtEl
                          STORE SPACE(70) TO vlUg
                          STORE SPACE(25) TO vlUd, vlUp
                     ENDIF
                     DO boT_1200w IN PVI1200W WITH "1"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO reF_1200a IN PVI1200A
                     STORE vcLi TO xcLi
                CASE EOF() .AND. mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND.  ;
                     DATE()<=mfHr .AND. mkEy<>1733
                CASE EOF()
                     SELECT caB_fact
                     DO orD_0000a WITH "1300", "V", "F1300ELE", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     SEEK ALLTRIM(vdNi)+"*"
                     DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     IF  .NOT. EOF()
                          STORE 2 TO vcRe
                          STORE "N" TO moPc
                          STORE " " TO vsUc, vtCl, vcLi, vnTi, vnTt
                          STORE 0 TO vmDd, vdTc, vdMc, ulIs, ulI1, ulI2
                          IF mrEn$"AB" .AND. mfDr<>CTOD(" ") .AND. DATE()>mfHr
                               STORE "DNI REGISTRADO YA CADUCO EL ACCESO A RENIEC..."  ;
                                     TO mmSj
                          ELSE
                               DO prE_docum WITH  ;
                                  "DNI anteriormente registrado en Documentos de Ventas..."+ ;
                                  CHR(13)+CHR(13)+ ;
                                  "¿Desea volver a llamar estos datos?"
                               IF moPc$"Ss"
                                    IF mrEn$"AB" .AND. mfDr<>CTOD(" ")  ;
                                       .AND. DATE()<=mfHr
                                    ELSE
                                         STORE f1300nom TO vnOm
                                         STORE f1300dir TO vdIr
                                         STORE f1300dis TO vdIs
                                         STORE f1300dep TO vdEp
                                    ENDIF
                                    STORE f1300tel TO vtEl
                                    STORE f1300lug TO vlUg
                                    STORE f1300lud TO vlUd
                                    STORE f1300lup TO vlUp
                                    STORE f1300ven TO vvEn
                                    STORE f1300nve TO vnVe
                                    STORE f1300com TO vcOm
                                    STORE f1300tit TO vtIt
                                    STORE f1300nte TO vnTe
                                    SELECT clIentes
                                    SEEK vtIt
                                    IF  .NOT. EOF()
                                         STORE f1101nom TO vnTt
                                         STORE f1101med TO vmDd
                                         STORE f1101tip TO vtCl
                                         STORE f1101lis TO ulIs
                                         STORE f1101li2 TO ulI2
                                         STORE f1101li3 TO ulI3
                                         STORE f1101cre TO vcRe
                                         IF LEN(ALLTRIM(f1101ven))<>0  ;
                                          .AND. mvNd=2
                                              STORE f1101ven TO vvEn
                                              SELECT veNdedor
                                              SEEK vvEn
                                              IF EOF()
                                                   STORE SPACE(50) TO vnVe
                                                   STORE 0 TO vcOm
                                              ELSE
                                                   STORE f9113nom TO vnVe
                                                   STORE f9113com TO vcOm
                                              ENDIF
                                         ENDIF
                                         SELECT tiPo_cli
                                         SEEK vtCl
                                         IF  .NOT. EOF()
                                              STORE f9110nti TO vnTi
                                              STORE f9110dct TO vdTc
                                              STORE f9110max TO vdMc
                                         ENDIF
                                    ENDIF
                                    DO reF_1200a IN PVI1200A
                               ENDIF
                          ENDIF
                     ENDIF
           ENDCASE
           DO noM_1200w IN PVI1200W
           DO ruC_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
           DO luG_1200w IN PVI1200W
           DO dvE_1200w IN PVI1200W
           DO dtI_1200w IN PVI1200W
           DO dcT_1200w IN PVI1200W WITH 2
      CASE vsW0=2 .AND. viTe=6 .AND. LEN(ALLTRIM(vrUc))=0 .AND.  ;
           LEN(ALLTRIM(vdNi))=0 .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
           .AND. DATE()<=mfHa
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           DO noM_1200w IN PVI1200W
           DO drC_1200w IN PVI1200W
      CASE (vsW0=1 .AND. viTe=9) .OR. (vsW0=2 .AND. viTe=14)
           DO caL_1300w IN PVI1200W
           IF vsW0=2
                STORE 14 TO vuLt, viTe, piTe
           ELSE
                STORE 9 TO vuLt, viTe, piTe
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
 RELEASE piTe
ENDPROC
*
PROCEDURE P00_1300a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO p02_1200a IN PVI1200A
 DO CASE
      CASE wnIv="1"
           DO tiT_0000a WITH "Facturas/Boletas/Cotizaciones/NP c/dctos nuevas"
      CASE wnIv="2"
           DO tiT_0000a WITH "Facturas/Boletas/Cotizaciones/NP s/dctos nuevas"
      CASE wnIv="3"
           DO tiT_0000a WITH  ;
              "Facturas/Boletas/Cotizaciones/NP s/impr.y s/stock"
      CASE wnIv="4"
           DO tiT_0000a WITH "Cotizaciones sin control de stock"
      CASE wnIv="6"
           DO tiT_0000a WITH "Ventas/Caja "+STR(wnIv2, 1, 0)
 ENDCASE
 IF vlEc=1
      DO p01_1200a IN PVI1200A WITH "1300"
 ELSE
      DO p06_1200a IN PVI1200A
      DO toT_1200w IN PVI1200W
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mwEr<>"T"
      READ TIMEOUT 0.01
 ENDIF
ENDPROC
*
PROCEDURE Rec_1300a
 PRIVATE ptM1, ptM2, ptM3, ptM4, ptM5, ptM6, ptM7, ptM8, ptM9, ptM0, ptMa, ptMb
 PRIVATE pcD1, pcD2, pcD3, pcD4, pcD5, pcD6, pcD7, pcD8, pcD9, pcD0, pcDa, pcDb
 PRIVATE plIsta, piTe, pdBf, psW0, ptAm
 ADIR(plIsta, "TM01A*.DBF")
 ptAm = ALEN(plIsta, 1)
 STORE 1 TO piTe, psW0
 DO WHILE .T.
      IF piTe>ptAm
           EXIT
      ENDIF
      STORE plIsta(piTe,1) TO pdBf
      STORE piTe+1 TO piTe
 ENDDO
 STORE ptAm-1 TO piTe
 IF piTe<=0
      STORE "No hay datos que recuperar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT 57
 DO WHILE .T.
      STORE plIsta(piTe,1) TO pdBf
      Use &pDBF Share
      GOTO TOP
      IF BOF() .OR. EOF() .OR. LEN(ALLTRIM(ftM1tmp))=0
           STORE piTe-1 TO piTe
           IF piTe<=0
                STORE 0 TO psW0
                EXIT
           ENDIF
           LOOP
      ENDIF
      EXIT
 ENDDO
 = INKEY(0.01)
 IF psW0=0
      SELECT 57
      USE
      STORE "No hay datos que recuperar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 GOTO TOP
 STORE SUBSTR(ftM1tmp, 001, 13) TO ptM1
 STORE SUBSTR(ftM1tmp, 015, 12) TO ptM2
 STORE SUBSTR(ftM1tmp, 028, 12) TO ptM3
 STORE SUBSTR(ftM1tmp, 041, 12) TO ptM4
 STORE SUBSTR(ftM1tmp, 054, 12) TO ptM5
 STORE SUBSTR(ftM1tmp, 067, 12) TO ptM6
 STORE SUBSTR(ftM1tmp, 080, 12) TO ptM7
 STORE SUBSTR(ftM1tmp, 093, 12) TO ptM8
 STORE SUBSTR(ftM1tmp, 106, 12) TO ptM9
 STORE SUBSTR(ftM1tmp, 119, 12) TO ptM0
 STORE SUBSTR(ftM1tmp, 132, 12) TO ptMa
 STORE SUBSTR(ftM1tmp, 145, 12) TO ptMb
 If .not.File("&pTM1")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM2")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM3")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM4")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM5")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM6")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM7")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM8")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM9")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTM0")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTMA")
      STORE 0 TO psW0
 ENDIF
 If .not.File("&pTMB")
      STORE 0 TO psW0
 ENDIF
 SELECT 57
 USE
 IF psW0=0
      STORE "No hay datos que recuperar..." TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 = INKEY(0.01)
 STORE SUBSTR(ptM1, 1, 9)+".CDX" TO pcD1
 STORE SUBSTR(ptM2, 1, 8)+".CDX" TO pcD2
 STORE SUBSTR(ptM3, 1, 8)+".CDX" TO pcD3
 STORE SUBSTR(ptM4, 1, 8)+".CDX" TO pcD4
 STORE SUBSTR(ptM5, 1, 8)+".CDX" TO pcD5
 STORE SUBSTR(ptM6, 1, 8)+".CDX" TO pcD6
 STORE SUBSTR(ptM7, 1, 8)+".CDX" TO pcD7
 STORE SUBSTR(ptM8, 1, 8)+".CDX" TO pcD8
 STORE SUBSTR(ptM9, 1, 8)+".CDX" TO pcD9
 STORE SUBSTR(ptM0, 1, 8)+".CDX" TO pcD0
 STORE SUBSTR(ptMa, 1, 8)+".CDX" TO pcDa
 STORE SUBSTR(ptMb, 1, 8)+".CDX" TO pcDb
 If .not.File("&pCD1")
      Delete File &pCD1
 ENDIF
 If .not.File("&pCD2")
      Delete File &pCD2
 ENDIF
 If .not.File("&pCD3")
      Delete File &pCD3
 ENDIF
 If .not.File("&pCD4")
      Delete File &pCD4
 ENDIF
 If .not.File("&pCD5")
      Delete File &pCD5
 ENDIF
 If .not.File("&pCD6")
      Delete File &pCD6
 ENDIF
 If .not.File("&pCD7")
      Delete File &pCD7
 ENDIF
 If .not.File("&pCD8")
      Delete File &pCD8
 ENDIF
 If .not.File("&pCD9")
      Delete File &pCD9
 ENDIF
 If .not.File("&pCD0")
      Delete File &pCD0
 ENDIF
 If .not.File("&pCDA")
      Delete File &pCDA
 ENDIF
 If .not.File("&pCDB")
      Delete File &pCDB
 ENDIF
 = INKEY(0.1)
 SET SAFETY OFF
 SELECT teMporal
 Append from &pTM1
 = INKEY(0.01)
 SELECT tmP_prod
 Append from &pTM2
 = INKEY(0.01)
 SELECT teMporal_3
 Append from &pTM3
 = INKEY(0.01)
 SELECT teMporal_4
 Append from &pTM4
 = INKEY(0.01)
 SELECT teMporal_cj
 Append from &pTM5
 = INKEY(0.01)
 SELECT teMporal_6
 Append from &pTM6
 = INKEY(0.01)
 SELECT teMporal_7
 Append from &pTM7
 = INKEY(0.01)
 SELECT tmP_doc
 Append from &pTM8
 = INKEY(0.01)
 SELECT teMporal_9
 Append from &pTM9
 = INKEY(0.01)
 SELECT tmP_np
 Append from &pTM0
 = INKEY(0.01)
 SELECT tmP_hoja
 Append from &pTMA
 = INKEY(0.01)
 SELECT tmP_hoja1
 Append from &pTMB
 = INKEY(0.01)
 SELECT teMporal
 GOTO BOTTOM
 STORE RECNO() TO frEc
 GOTO TOP
 DO paN_1200b IN PVI1200B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO ctO_1200b IN PVI1200B
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
 RELEASE ptM1, ptM2, ptM3, ptM4, ptM5, ptM6, ptM7, ptM8, ptM9, ptM0, ptMa, ptMb
 RELEASE pcD1, pcD2, pcD3, pcD4, pcD5, pcD6, pcD7, pcD8, pcD9, pcD0, pcDa, pcDb
 RELEASE plIsta, piTe, pdBf, psW0, ptAm
ENDPROC
*
PROCEDURE Det_1300a
 STORE 99 TO mkEy
 SET READBORDER OFF
 IF vlEc=1
      DO boT_1200w IN PVI1200W WITH "3"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 ELSE
      DO prEsiona WITH "4", "BOT_MA08", mmF1, mmC1
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 DO p2_0000a
 DO pvI1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 DO p1_0000a
 IF vlEc=1
      DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO peR_1200w IN PVI1200W
      SET READBORDER ON
      IF vsW3=2
           STORE 1 TO vsW3
           DO p00_1300a WITH "1"
      ELSE
           DO prEsiona WITH "1", "ROMBO", mmF1+0.6, 0
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO acC_1200w IN PVI1200W WITH "2"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO coLbln
           @mMF1+1.1,1.9 Say StrTran(Str(vLIS,2,0)," ","0") Font "&mLetRom",12 Style "BQ" Size 1,2.3
           DO boT_1200w IN PVI1200W WITH "1"
      ENDIF
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy<>k_Clic .AND. mkEy<>k_Esc
      STORE 01 TO viTe
      STORE 00 TO viT1
 ENDIF
 IF mkEy=k_Tab
      DO q1_0000a
      ON KEY LABEL ESC DO P_ESC
      ON KEY LABEL F7 DO P_F7
      DO grA_1300a
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO p1_0000a
      STORE 99 TO mkEy
      IF mdEt=2
           DO CASE
                CASE vsW0=1
                     STORE 2 TO viTe
                OTHERWISE
                     STORE 7 TO viTe
           ENDCASE
           STORE k_Tab TO mkEy
      ENDIF
 ELSE
      STORE 99 TO mkEy
 ENDIF
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Arr_1300a
 SELECT teMporal_4
 SET FILTER TO
 SELECT teMporal
 SET FILTER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal
           SKIP
           LOOP
      ENDIF
      STORE f2111tpo TO vtPo
      IF vtPo=2
           SELECT teMporal
           SKIP
           LOOP
      ENDIF
      SELECT teMporal_4
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(vcOd)+"*"=ALLTRIM(ftM4cod)+"*"
           REPLACE ftM4cm2 WITH " "
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 SELECT teMporal
 SET ORDER TO FTM1COD
 SELECT teMporal_4
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM4cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal_4
           DELETE FOR ALLTRIM(vcOd)+"*"=ALLTRIM(ftM4cod)+"*"
           PACK
           GOTO TOP
           LOOP
      ENDIF
      SELECT teMporal_4
      SKIP
 ENDDO
 SELECT teMporal
 SET ORDER TO
ENDPROC
*
PROCEDURE Gra_1300a
 PUBLIC ptX1, ptX2, poPc, pnUm, puLt, ptDo
 PUBLIC ptIm
 PUBLIC psPp
 STORE SPACE(100) TO mmSj
 STORE 1 TO voPc
 STORE 2 TO psPp, ptIm
 UNLOCK ALL
 = INKEY(0.01)
 IF wnIv$"123" .AND. vlEc=1
      IF ALLTRIM(mpRf(1,1))+"*"=ALLTRIM(mpRf(2,1))+"*" .AND.  ;
         ALLTRIM(msEr(1))+"*"=ALLTRIM(msEr(2))+"*"
           STORE 1 TO ptIm
      ENDIF
      STORE 01 TO voPc
      SAVE SCREEN TO vpAn_12
      DO CASE
           CASE mfEl="1"
                DO coLneb
                @ mfI0+4.5, mcO0+59 TO mfI0+30, mcO0+107 PATTERN 1
                @mFI0+6.0,mCO0+66 Say "Escoger Documento" Font "&mLetRom",14 Style "BQ"
           CASE mfEl="3"
                DO coLbln
                @ mfI0+4.5, mcO0+59 TO mfI0+32, mcO0+117 PATTERN 1
                @mFI0+6.0,mCO0+72 Say "Escoger Documento" Font "&mLetRom",14 Style "BQ"
           OTHERWISE
                DO coLsc7
                @ mfI0+5.5, mcO0+60 TO mfI0+22, mcO0+105 PATTERN 1
                @mFI0+6.3,mCO0+66 Say "Escoger Documento" Font "&mLetRom",14 Style "BQI"
      ENDCASE
      DO WHILE .T.
           STORE k_Enter TO mkEy
           DO CASE
                CASE mfEl="1"
                     @mFI0+8.8,mCO0+64 Get vOPC Font "&mLetRom",14 Style "BQ" Size 2,24,.4 Default vOPC Function "*@T Fac\<tura Electrónica;B\<oleta Electrónica;\<Factura;\<Boleta;\<Cotización"
                CASE mfEl="3"
                     @mFI0+8.8,mCO0+64 Get vOPC Font "&mLetRom",14 Style "BQ" Size 2,30,.4 Default vOPC Function "*@T Fac\<tura Electrónica SOL;B\<oleta Electrónica SOL;\<Factura;\<Boleta;\<Cotización"
                CASE SUBSTR(msEr(1), 1, 1)="T"
                     @mFI0+8.8,mCO0+64 Get vOPC Font "&mLetRom",14 Style "BQ" Size 2,24,.4 Default vOPC Function "*@T \<Factura Ticket;\<Boleta Ticket;\<Cotización"
                OTHERWISE
                     @mFI0+8.8,mCO0+64 Get vOPC Font "&mLetRom",14 Style "BQ" Size 2,24,.4 Default vOPC Function "*@T \<Factura;\<Boleta;\<Cotización"
           ENDCASE
           READ CYCLE
           DO CASE
                CASE mkEy=k_F10
                     DO reTorna
                CASE mkEy=k_Esc
                     EXIT
                CASE mkEy=k_F7
                     STORE 11 TO voPc
                     EXIT
                CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vrUc))=0 .AND. ((mfEl$ ;
                     "13" .AND. (voPc=1 .OR. voPc=3)) .OR. (mfEl="2"  ;
                     .AND. voPc=1))
                     STORE "RUC no se ha digitado..." TO mmSj
                     DO poNmsj
                CASE LEN(ALLTRIM(vdNi))=0 .AND. ttOt>mmBo .AND. vmOn=1  ;
                     .AND. ((mfEl$"13" .AND. (voPc=2 .OR. voPc=4)) .OR.  ;
                     (mfEl="2" .AND. voPc=2))
                     STORE "DNI no se ha digitado..." TO mmSj
                     DO poNmsj
                CASE LEN(ALLTRIM(vdNi))=0 .AND. ttOt*vtCa>mmBo .AND. vmOn= ;
                     2 .AND. ((mfEl$"13" .AND. (voPc=2 .OR. voPc=4)) .OR.  ;
                     (mfEl="2" .AND. voPc=2))
                     STORE "DNI no se ha digitado..." TO mmSj
                     DO poNmsj
                CASE mkEy=k_Enter .AND. mpPe<>0 .AND. ((ttOt>mmBo .AND.  ;
                     vmOn=1) .OR. (ttOt*vtCa>mmBo .AND. vmOn=2)) .AND.  ;
                     ((mfEl$"13" .AND. (voPc=2 .OR. voPc=4)) .OR. (mfEl= ;
                     "2" .AND. voPc=2))
                     SELECT teMporal
                     GOTO TOP
                     STORE 0 TO vtOt
                     DO WHILE  .NOT. EOF()
                          STORE ftM1cod TO vcOd
                          DO pr1_1300z IN FAC0000A
                          SELECT teMporal
                          IF vpEr=2
                               SKIP
                               LOOP
                          ENDIF
                          STORE vtOt+ftM1to2 TO vtOt
                          SKIP
                     ENDDO
                     STORE "N" TO moPc
                     DO prE_docum WITH  ;
                        "¿Desea separar a Boletas menores a "+ ;
                        ALLTRIM(STR(mmBo+0.01, 12, 2))+"?"
                     STORE k_Enter TO mkEy
                     IF moPc$"Ss"
                          STORE 1 TO psPp
                     ENDIF
                     EXIT
                CASE mkEy=k_Enter
                     EXIT
           ENDCASE
      ENDDO
      RESTORE SCREEN FROM vpAn_12
      IF mkEy=k_Esc
           UNLOCK ALL
           STORE 99 TO mkEy
           RETURN
      ENDIF
 ENDIF
 IF vlEc=2
      STORE 11 TO voPc
 ENDIF
 DO CASE
      CASE (mfEl$"13" .AND. voPc=5) .OR. (mfEl="2" .AND. voPc=3) .OR. wnIv="4"
           STORE "CT" TO vtDo
           STORE msEr(03) TO vsEr
           STORE 99 TO puLt
           STORE "C1" TO vtDd
           STORE "1" TO vtDi
           DO CASE
                CASE LEN(ALLTRIM(vrUc))<>0
                     STORE "6" TO vtDi
                CASE LEN(ALLTRIM(vdNi))=0
                     STORE "0" TO vtDi
           ENDCASE
      CASE voPc=11
           STORE "NP" TO vtDo
           STORE msEr(03) TO vsEr
           STORE mlNp TO puLt
           DO CASE
                CASE LEN(ALLTRIM(vrUc))<>0
                     STORE "6" TO vtDi
                CASE LEN(ALLTRIM(vdNi))=0
                     STORE "0" TO vtDi
           ENDCASE
      CASE (mfEl$"13" .AND. (voPc=1 .OR. voPc=3)) .OR. (mfEl="2" .AND. voPc=1)
           DO CASE
                CASE mfEl="2" .AND. SUBSTR(msEr(1), 1, 1)="T"
                     STORE "TF" TO vtDo
                     STORE msEr(01) TO vsEr
                     STORE 9999 TO puLt
                CASE mfEl="1" .AND. voPc=1
                     STORE "FE" TO vtDo
                     STORE msEr(09) TO vsEr
                     STORE mlFe TO puLt
                CASE mfEl="3" .AND. voPc=1
                     STORE "FC" TO vtDo
                     STORE msEr(14) TO vsEr
                     STORE mlFc TO puLt
                CASE (mfEl$"13" .AND. voPc=3) .OR. (mfEl="2" .AND. voPc=1)
                     STORE "FA" TO vtDo
                     STORE msEr(01) TO vsEr
                     STORE mlFa TO puLt
           ENDCASE
           STORE "6" TO vtDi
      CASE (mfEl$"13" .AND. (voPc=2 .OR. voPc=4)) .OR. (mfEl="2" .AND. voPc=2)
           DO CASE
                CASE mfEl="2" .AND. SUBSTR(msEr(1), 1, 1)="T"
                     STORE "TB" TO vtDo
                     STORE msEr(02) TO vsEr
                     STORE 9999 TO puLt
                CASE mfEl="1" .AND. voPc=2
                     STORE "BE" TO vtDo
                     STORE msEr(10) TO vsEr
                     STORE mlBe TO puLt
                CASE mfEl="3" .AND. voPc=2
                     STORE "BC" TO vtDo
                     STORE msEr(15) TO vsEr
                     STORE mlBc TO puLt
                CASE (mfEl$"13" .AND. voPc=4) .OR. (mfEl="2" .AND. voPc=2)
                     STORE "BO" TO vtDo
                     STORE msEr(02) TO vsEr
                     STORE mlBo TO puLt
           ENDCASE
           STORE "1" TO vtDi
           IF LEN(ALLTRIM(vdNi))=0
                STORE "0" TO vtDi
           ENDIF
 ENDCASE
 IF vtDo="FE" .OR. vtDo="FC"
      SAVE SCREEN TO vpAn_11
      DO coLbln
      @ ifIl-2.5, mcO0+9 TO ifIl, mcO0+112 PATTERN 1 PEN 1
      @iFIL-1.9,mCO0+12 Say  "e-mail:" Font "&mLetAri",9 Style "BQ"
      @iFIL-1.9,mCO0+27 Edit vNTE      Font "&mLetAri",9 Style "NQ" Size 1,80,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
      RESTORE SCREEN FROM vpAn_11
      IF LEN(ALLTRIM(vnTe))<5 .OR. AT(".", vnTe)=0
           STORE "NO DIGITARON EL CORREO" TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 SELECT prOductos
 DO orD_0000a WITH "2111", "A", "F2111COD", "A"
 IF mkEy=k_Esc
      WAIT CLEAR
      UNLOCK ALL
      RETURN
 ENDIF
 SELECT nuMeracion
 DO CASE
      CASE ptIm=1 .AND. SUBSTR(vsEr, 1, 1)="T"
           SEEK "TK"+vsEr
      CASE cuLt=1 .AND. (vtDo="FC" .OR. vtDo="BC")
           SELECT nuMeracion3
           SEEK vtDo+vsEr
      OTHERWISE
           SEEK vtDo+vsEr
 ENDCASE
 IF EOF()
      DO nuEvo_rg
      IF ptIm=1 .AND. SUBSTR(vsEr, 1, 1)="T"
           REPLACE f9999tdo WITH "TK"
           REPLACE f9999ser WITH vsEr
      ELSE
           REPLACE f9999tdo WITH vtDo
           REPLACE f9999ser WITH vsEr
      ENDIF
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 IF ptIm=1 .AND. SUBSTR(vsEr, 1, 1)="T"
      SEEK "TK"+vsEr
 ELSE
      SEEK vtDo+vsEr
 ENDIF
 IF  .NOT. RLOCK()
      IF ptIm=1 .AND. SUBSTR(vsEr, 1, 1)="T"
           DO reG_lock WITH "TK"+vsEr
      ELSE
           DO reG_lock WITH vtDo+vsEr
      ENDIF
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO vdOc
 STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 DO CASE
      CASE vtDo="TK" .AND. ptIm=1
           ptX2 = "TICKET No.:"+vsEr+"-"+vdOc
      CASE vtDo="TF"
           ptX2 = "TICKET FACTURA No.:"+vsEr+"-"+vdOc
      CASE vtDo="FA"
           ptX2 = "FACTURA No.:"+vsEr+"-"+vdOc
      CASE vtDo="FE"
           ptX2 = "FACTURA ELECTRONICA No.: F"+vsEr+"-"+vdOc
      CASE vtDo="FC"
           ptX2 = "FACTURA ELECTRONICA SOL No.: E"+SUBSTR(vsEr, 2, 2)+"-"+vdOc
      CASE vtDo="TB"
           ptX2 = "TICKET BOLETA No.:"+vsEr+"-"+vdOc
      CASE vtDo="BO"
           ptX2 = "BOLETA DE VENTA No.:"+vsEr+"-"+vdOc
      CASE vtDo="BE"
           ptX2 = "BOLETA ELECTRONICA No. B:"+vsEr+"-"+vdOc
      CASE vtDo="BC"
           ptX2 = "BOLETA ELECTRONICA SOL No. EB:"+SUBSTR(vsEr, 3, 1)+"-"+vdOc
      CASE vtDo="CT"
           ptX2 = "COTIZACIÓN No.:"+vsEr+"-"+vdOc
      CASE vtDo="NP"
           ptX2 = "NOTA DE PEDIDO No.:"+vsEr+"-"+vdOc
 ENDCASE
 SELECT caB_fact
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vdOc
      RETURN
 ENDIF
 ptX1 = "¿Desea Grabar este Documento "+ptX2+"?"
 poPc = MESSAGEBOX(ptX1, 0036, " ")
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 IF (vtDo="BO" .OR. vtDo="TB" .OR. vtDo="BE" .OR. vtDo="BC") .AND. mpPe<> ;
    0 .AND. psPp=1
      SELECT teMporal_4
      SET ORDER TO FTM4COD
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           DO pr1_1300z IN FAC0000A
           SELECT teMporal
           IF vpEr=2 .OR. vtPo<3 .OR. vtPo>9
                SKIP
                LOOP
           ENDIF
           STORE ftM1la1 TO vlA1
           STORE ftM1la2 TO vlA2
           STORE ftM1an1 TO vaN1
           STORE ftM1an2 TO vaN2
           STORE ftM1med TO vmEd
           STORE ftM1can TO vcAn
           STORE ftM1pre TO vpRe
           STORE ftM1pdc TO vpDc
           DO caL_1200b IN PVI1200B
           IF (vtOt>mmBo .AND. vmOn=1) .OR. (vtOt*vtCa>mmBo .AND. vmOn=2)
                DO CASE
                     CASE vmOn=1
                          ptX1 = "Código:"+ALLTRIM(vcOd)+" tiene "+msIg+ ;
                                 STR(vtOt, 10, 2)+CHR(13)+ ;
                                 "Mínimo de Percepción "+msIg+STR(mmBo,  ;
                                 10, 2)+CHR(13)+"Cambiar Cantidad"
                     CASE vmOn=2
                          ptX1 = "Código:"+ALLTRIM(vcOd)+" tiene "+msIg+ ;
                                 STR(vtOt*vtCa, 10, 2)+CHR(13)+ ;
                                 "Mínimo de Percepción "+msIg+STR(mmBo,  ;
                                 10, 2)+CHR(13)+"Cambiar Cantidad"
                ENDCASE
                poPc = MESSAGEBOX(ptX1, 0048, ptX2)
                STORE SPACE(07) TO vdOc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           SKIP
      ENDDO
 ENDIF
 SELECT teMporal
 SET ORDER TO FTM1COD
 SELECT teMporal_cj
 SET FILTER TO
 SET ORDER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2921cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal_cj
           DELETE FOR ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
           PACK
           GOTO TOP
           LOOP
      ENDIF
      SELECT teMporal_cj
      SKIP
 ENDDO
 SELECT teMporal_cj
 SET ORDER TO F2921COD
 SELECT teMporal_4
 SET FILTER TO
 SET ORDER TO
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM4cod TO vcOd
      SELECT teMporal
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT teMporal_4
           DELETE FOR ALLTRIM(ftM4cod)+"*"=ALLTRIM(vcOd)+"*"
           PACK
           GOTO TOP
           LOOP
      ENDIF
      SELECT teMporal_4
      SKIP
 ENDDO
 SELECT teMporal_4
 SET ORDER TO FTM4COD
 SELECT tmP_prod
 ZAP
 REINDEX
 IF vtDo<>"CT"
      SELECT teMporal
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           STORE ftM1can TO vcAn
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. EOF() .AND. f2111cst=1
                SELECT tmP_prod
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     APPEND BLANK
                     REPLACE ftM2cod WITH vcOd
                ENDIF
           ENDIF
           SELECT teMporal_cj
           SEEK ALLTRIM(vcOd)+"*"
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2921cdg TO ccOd
                STORE f2921tot*vcAn TO ccAn
                SELECT prOductos
                SEEK ALLTRIM(ccOd)+"*"
                IF  .NOT. EOF() .AND. f2111cst=1
                     SELECT tmP_prod
                     SEEK ALLTRIM(ccOd)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM2cod WITH ccOd
                     ENDIF
                ENDIF
                SELECT teMporal_cj
                SKIP
           ENDDO
           SELECT teMporal
           SKIP
      ENDDO
      SELECT tmP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     WAIT CLEAR
                     UNLOCK ALL
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
           SELECT tmP_prod
           SKIP
      ENDDO
 ENDIF
 SELECT teMporal
 SET ORDER TO
 REPLACE ftM1per WITH 2 FOR ftM1per=0
 GOTO TOP
 STORE 000 TO tvAl, tnEt
 STORE 999 TO xpEr
 DO WHILE  .NOT. EOF()
      IF ftM1can=0 .OR. ftM1per=1
           SKIP
           LOOP
      ENDIF
      STORE tvAl+ftM1to2 TO tvAl
      IF ftM1dtr=1
           STORE tnEt+ftM1to2 TO tnEt
      ENDIF
      SKIP
 ENDDO
 IF msEd=1 .AND. tnEt>0 .AND. ((mmOn=1 .AND. tvAl>=mmDt) .OR. (mmOn=2  ;
    .AND. tvAl*vtCa>=mmDt))
      REPLACE ftM1per WITH 3 FOR ftM1per=2
      REPLACE ftM1per WITH 2 FOR ftM1dtr=1
 ENDIF
 IF (vtDo="BO" .OR. vtDo="TB" .OR. vtDo="BE" .OR. vtDo="BC") .AND. mpPe<> ;
    0 .AND. psPp=1
      SELECT teMporal
      SET ORDER TO
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM1cod TO vcOd
           DO pr1_1300z IN FAC0000A
           SELECT teMporal
           IF vpEr=2 .OR. (vtPo>3 .AND. vtPo<10) .OR. (ftM1to2<=mmBo  ;
              .AND. vmOn=1) .OR. (ftM1to2*vtCa<=mmBo .AND. vmOn=2)
                SKIP
                LOOP
           ENDIF
           STORE ftM1to2/ftM1can TO vpR1
           STORE ftM1can TO vcTd
           DO CASE
                CASE vpR1*2>mmBo .AND. vmOn=1
                     STORE 1 TO vcTd
                CASE vpR1*2*vtCa>mmBo .AND. vmOn=2
                     STORE 1 TO vcTd
                CASE vmOn=1
                     STORE INT(mmBo/vpR1) TO vcTd
                CASE vmOn=2
                     STORE INT(mmBo/vpR1*vtCa) TO vcTd
           ENDCASE
           IF vcTd<1
                ptX1 = "Código:"+ALLTRIM(vcOd)+ ;
                       " NO SE PUEDE SEPARAR PARA PERCEPCION"
                poPc = MESSAGEBOX(ptX1, 0048, ptX2)
                STORE SPACE(07) TO vdOc
                STORE 99 TO mkEy
                RETURN
           ENDIF
           SCATTER NAME vmEm
           REPLACE ftM1can WITH ftM1can-vcTd
           REPLACE ftM1pie WITH ftM1can
           DO cl1_1200b IN PVI1200B
           REPLACE ftM1to1 WITH vnEt
           REPLACE ftM1to2 WITH vtOt
           APPEND BLANK
           GATHER NAME vmEm
           REPLACE ftM1can WITH vcTd
           REPLACE ftM1pie WITH vcTd
           DO cl1_1200b IN PVI1200B
           REPLACE ftM1to1 WITH vnEt
           REPLACE ftM1to2 WITH vtOt
           GOTO TOP
           LOOP
      ENDDO
 ENDIF
 SELECT teMporal
 REPLACE ftM1dtr WITH 0 FOR ftM1dtr<>1
 IF (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC") .AND. mmDt<>0 .AND. msEd=1
      SELECT teMporal
      SET ORDER TO
      GOTO TOP
      DO WHILE  .NOT. EOF()
           IF ftM1dtr<>1
                SKIP
                LOOP
           ENDIF
           SCATTER NAME vmEm
           DELETE
           APPEND BLANK
           GATHER NAME vmEm
           REPLACE ftM1dtr WITH 5
           PACK
           GOTO TOP
      ENDDO
      REPLACE ftM1dtr WITH 1 FOR ftM1dtr=5
 ENDIF
 DO grAbar WITH "1"
 DO nuM_1300w IN PVI1300W
 DO gfA_1300w IN PVI1300W
 SELECT teMporal
 SET ORDER TO FTM1PER
 GOTO TOP
 STORE 00 TO xiT1, tvAl, tpEr, tnPe, tnEt, tiGv, ttOt, vrEc, cdTr
 DO WHILE  .NOT. EOF()
      IF ftM1can=0
           SKIP
           LOOP
      ENDIF
      STORE ftM1cod TO vcOd
      STORE ftM1ref TO vrEf
      STORE ftM1per TO vpEr
      STORE ftM1dtr TO vdTr
      DO pr1_1300z IN FAC0000A
      SELECT teMporal
      IF vpEr=1
           DO cl1_1200b IN PVI1200B
           STORE vtOt/ftM1can TO vpR1
      ENDIF
      DO CASE
           CASE vtDo="TK" .AND. mlL0="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1 .AND. LEN(ALLTRIM(vrUc))<>0
                STORE xiT1+1 TO xiT1
           CASE vtDo="TF" .AND. mlL0="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="FA" .AND. mlL0="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="FE" .AND. ml10="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="FC" .AND. ml20="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="TK" .AND. ml0b="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1 .AND. LEN(ALLTRIM(vrUc))=0
                STORE xiT1+1 TO xiT1
           CASE vtDo="TB" .AND. ml0b="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="BO" .AND. ml0b="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="BE" .AND. ml1b="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="BC" .AND. ml2b="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="NP" .AND. ml0n="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
           CASE vtDo="CT" .AND. ml0c="S" .AND. LEN(ALLTRIM(vrEf))>0 .AND.  ;
                vmD3=1
                STORE xiT1+1 TO xiT1
      ENDCASE
      IF vmD3=1
           DO CASE
                CASE (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC") .AND. msEd= ;
                     1 .AND. vdTr<>cdTr
                     IF xpEr<>999
                          DO CASE
                               CASE vtDo="FA"
                                    STORE mlFa+3 TO xiT1
                               CASE vtDo="FE"
                                    STORE mlFe+3 TO xiT1
                               CASE vtDo="FC"
                                    STORE mlFc+3 TO xiT1
                          ENDCASE
                     ENDIF
                     STORE vdTr TO cdTr
                     STORE vpEr TO xpEr
                CASE (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC") .AND. msEp= ;
                     1 .AND. vpEr<>xpEr
                     IF xpEr<>999
                          DO CASE
                               CASE vtDo="FA"
                                    STORE mlFa+3 TO xiT1
                               CASE vtDo="FE"
                                    STORE mlFe+3 TO xiT1
                               CASE vtDo="FC"
                                    STORE mlFc+3 TO xiT1
                          ENDCASE
                     ENDIF
                     STORE vpEr TO xpEr
                CASE (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC") .AND. psPp= ;
                     1 .AND. vpEr<>xpEr
                     IF xpEr<>999
                          DO CASE
                               CASE vtDo="BO"
                                    STORE mlBo+3 TO xiT1
                               CASE vtDo="BE"
                                    STORE mlBe+3 TO xiT1
                               CASE vtDo="BC"
                                    STORE mlBc+3 TO xiT1
                          ENDCASE
                     ENDIF
                     STORE vpEr TO xpEr
                CASE (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC") .AND.  ;
                     ((vmOn=1 .AND. tvAl+ftM1to2>mmBo) .OR. (vmOn=2 .AND.  ;
                     (tvAl+ftM1to2)*vtCa>mmBo)) .AND. mpPe<>0 .AND. vpEr= ;
                     1 .AND. psPp=1 .AND. (vtPo<3 .OR. vtPo>9)
                     DO CASE
                          CASE vtDo="BO"
                               STORE mlBo+3 TO xiT1
                          CASE vtDo="BE"
                               STORE mlBe+3 TO xiT1
                          CASE vtDo="BC"
                               STORE mlBc+3 TO xiT1
                     ENDCASE
                CASE (vtDo="BO" .OR. vtDo="BE" .OR. vtDo="BC") .AND.  ;
                     ((vmOn=1 .AND. tvAl+ftM1to2>mmBo) .OR. (vmOn=2 .AND.  ;
                     (tvAl+ftM1to2)*vtCa>mmBo)) .AND. mpPe<>0 .AND. vpEr= ;
                     1 .AND. psPp=1 .AND. (vtPo>2 .AND. vtPo<10)
                     SELECT teMporal_4
                     SET ORDER TO FTM4COD
                     GOTO TOP
                     SEEK ALLTRIM(vcOd)+"*"
                     IF  .NOT. EOF() .AND. ALLTRIM(ftM4cod)+"*"= ;
                         ALLTRIM(vcOd)+"*"
                          DO CASE
                               CASE vtPo=4 .OR. vtPo=5 .OR. vtPo=7
                                    STORE ftM4pie*ftM4can*vpR1 TO vpR1
                               CASE vtPo=6 .OR. vtPo=9
                                    STORE ftM4mla*ftM4can*vpR1 TO vpR1
                               CASE vtPo=8
                                    STORE ftM4mla*4*ftM4can*vpR1 TO vpR1
                          ENDCASE
                          IF (vmOn=1 .AND. tvAl+vpR1>mmBo) .OR. (vmOn=2  ;
                             .AND. (tvAl+vpR1)*vtCa>mmBo)
                               DO CASE
                                    CASE vtDo="BO"
                                         STORE mlBo+3 TO xiT1
                                    CASE vtDo="BE"
                                         STORE mlBe+3 TO xiT1
                                    CASE vtDo="BC"
                                         STORE mlBc+3 TO xiT1
                               ENDCASE
                          ENDIF
                     ENDIF
           ENDCASE
           SELECT teMporal_4
           GOTO TOP
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF() .OR. mlL1=0 .OR. (mcIa="AL" .AND. vsEr="008" .AND.  ;
              vtDo="BO") .OR. (vtDo="TK" .AND. mlLz="N" .AND.  ;
              LEN(ALLTRIM(vrUc))<>0) .OR. (vtDo="TK" .AND. mlLb="N" .AND.  ;
              LEN(ALLTRIM(vrUc))=0) .OR. (vtDo="TF" .AND. mlLz="N") .OR.  ;
              (vtDo="TB" .AND. mlLb="N") .OR. (vtDo="FA" .AND. mlLz="N")  ;
              .OR. (vtDo="BO" .AND. mlLb="N") .OR. (vtDo="FE" .AND. mlLx= ;
              "N") .OR. (vtDo="BE" .AND. mlLd="N") .OR. (vtDo="FC" .AND.  ;
              mlLy="N") .OR. (vtDo="BC" .AND. mlLe="N") .OR. (vtDo="CT"  ;
              .AND. mlLc="N") .OR. (vtDo="NP" .AND. mlLn="N")
                STORE xiT1+1 TO xiT1
           ELSE
                STORE xiT1+2 TO xiT1
           ENDIF
      ENDIF
      DO pr1_1300z IN FAC0000A
      IF (vtDo="FA" .AND. xiT1>mlFa) .OR. (vtDo="BO" .AND. xiT1>mlBo)  ;
         .OR. (vtDo="FE" .AND. xiT1>mlFe) .OR. (vtDo="BE" .AND. xiT1> ;
         mlBe) .OR. (vtDo="FC" .AND. xiT1>mlFc) .OR. (vtDo="BC" .AND.  ;
         xiT1>mlBc) .OR. (vtDo="NP" .AND. xiT1>mlNp)
           DO ct1_1200b IN PVI1200B
           DO ct2_1200b IN PVI1200B
           SELECT caB_fact
           REPLACE f1300net WITH tnEt
           REPLACE f1300igv WITH tiGv
           REPLACE f1300tot WITH ttOt
           UNLOCK
           IF vsWg=2
                STORE 0 TO vpGd
           ENDIF
           STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
           DO nuM_1300w IN PVI1300W
           DO gfA_1300w IN PVI1300W
           STORE 00 TO xiT1, vrEc, tvAl, tpEr, tnPe, tnEt, tiGv, ttOt
           SELECT teMporal_4
           IF vmD3=1
                IF EOF() .OR. (mcIa="AL" .AND. vsEr="008" .AND. vtDo= ;
                   "BO") .OR. (vtDo="FA" .AND. mlLz="N") .OR. (vtDo="BO"  ;
                   .AND. mlLb="N") .OR. (vtDo="FE" .AND. mlLx="N") .OR.  ;
                   (vtDo="BE" .AND. mlLd="N") .OR. (vtDo="FC" .AND. mlLy= ;
                   "N") .OR. (vtDo="BC" .AND. mlLe="N") .OR. (vtDo="NP"  ;
                   .AND. mlLn="N")
                     STORE 1 TO xiT1
                ELSE
                     STORE 2 TO xiT1
                ENDIF
                DO CASE
                     CASE mlL0="S" .AND. vtDo="FA" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                     CASE ml10="S" .AND. vtDo="FE" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                     CASE ml20="S" .AND. vtDo="FC" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                     CASE ml0b="S" .AND. vtDo="BO" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                     CASE ml1b="S" .AND. vtDo="BE" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                     CASE ml2b="S" .AND. vtDo="BC" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                     CASE ml0n="S" .AND. vtDo="NP" .AND. LEN(ALLTRIM(vrEf))>0
                          STORE xiT1+1 TO xiT1
                ENDCASE
           ENDIF
      ENDIF
      SELECT teMporal
      STORE vrEc+1 TO vrEc
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1cuv TO vcUv
      STORE ftM1nuv TO vnUv
      STORE ftM1cuc TO vcUc
      STORE ftM1nuc TO vnUc
      STORE ftM1can TO vcAn
      STORE ftM1pie TO vpIe
      STORE ftM1sol TO vsOl
      STORE ftM1usd TO vuSd
      STORE ftM1pre TO vpRe
      STORE ftM1pro TO vpRo
      STORE ftM1pr1 TO vpR1
      STORE ftM1pdc TO vpDc
      STORE ftM1dct TO vdCt
      STORE ftM1med TO vmEd
      STORE ftM1md1 TO vmD1
      STORE ftM1md2 TO vmD2
      STORE ftM1md3 TO vmD3
      STORE ftM1lar TO vlAr
      STORE ftM1la1 TO vlA1
      STORE ftM1la2 TO vlA2
      STORE ftM1la3 TO vlA3
      STORE ftM1la4 TO vlA4
      STORE ftM1la5 TO vlA5
      STORE ftM1la6 TO vlA6
      STORE ftM1la7 TO vlA7
      STORE ftM1la8 TO vlA8
      STORE ftM1la9 TO vlA9
      STORE ftM1anc TO vaNc
      STORE ftM1an1 TO vaN1
      STORE ftM1an2 TO vaN2
      STORE ftM1an3 TO vaN3
      STORE ftM1an4 TO vaN4
      STORE ftM1an5 TO vaN5
      STORE ftM1an6 TO vaN6
      STORE ftM1an7 TO vaN7
      STORE ftM1an8 TO vaN8
      STORE ftM1an9 TO vaN9
      STORE ftM1alt TO vaLt
      STORE ftM1al1 TO vaL1
      STORE ftM1al2 TO vaL2
      STORE ftM1al3 TO vaL3
      STORE ftM1al4 TO vaL4
      STORE ftM1al5 TO vaL5
      STORE ftM1al6 TO vaL6
      STORE ftM1al7 TO vaL7
      STORE ftM1al8 TO vaL8
      STORE ftM1al9 TO vaL9
      STORE ftM1esp TO veSp
      STORE ftM1to1 TO vtO1
      STORE ftM1to2 TO vtO2
      REPLACE ftM1doc WITH vdOc
      IF mcAj=1 .AND. vsRr=1
           STORE VAL(ALLTRIM(vrEf)) TO vcAj
      ELSE
           STORE 0 TO vcAj
      ENDIF
      DO caL_1200b IN PVI1200B
      STORE vnEt TO vtO1
      STORE vtOt TO vtO2
      DO gdF_1300w IN PVI1300W
      SELECT teMporal_4
      DO CASE
           CASE  .NOT. EOF()
                DO gsE_1300w IN PVI1300W
           CASE vtDo<>"CT"
                DO kaR_1300w IN PVI1300W WITH vcOd
      ENDCASE
      SELECT deT_fact
      UNLOCK
      STORE tvAl+vtO2 TO tvAl
      STORE tpEr+viPe TO tpEr
      SELECT teMporal_cj
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2921cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE f2921cdg TO ccOd
           STORE f2921tot TO ccAn
           STORE f2921for TO vfOr
           STORE f2921dsp TO vdSp
           STORE f2921dst TO vdSt
           STORE f2921ttt TO vtTt
           SELECT deT_fact
           STORE f1301can TO vcAn
           SELECT coN_fact
           DO nuEvo_rg
           REPLACE f1304tdo WITH vtDo
           REPLACE f1304ser WITH vsEr
           REPLACE f1304doc WITH vdOc
           REPLACE f1304cod WITH vcOd
           REPLACE f1304cdg WITH ccOd
           REPLACE f1304cun WITH ccAn
           REPLACE f1304can WITH ccAn*vcAn
           REPLACE f1304for WITH vfOr
           REPLACE f1304dsp WITH vdSp
           REPLACE f1304dst WITH vdSt
           REPLACE f1304ttt WITH vtTt
           UNLOCK
           IF vtDo<>"CT"
                SELECT kaRdex
                SEEK ALLTRIM(ccOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                     SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                     "2"+"1"+vtDo+vsEr+vdOc
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2990cod WITH ccOd
                     REPLACE f2990ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                     REPLACE f2990mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                     REPLACE f2990dia WITH SUBSTR(DTOC(vfEm), 1, 2)
                     REPLACE f2990tpp WITH "1"
                     REPLACE f2990tpo WITH "2"
                     REPLACE f2990tra WITH "1"
                     REPLACE f2990can WITH ccAn*vcAn
                     REPLACE f2990caj WITH 0
                     REPLACE f2990sld WITH 0
                     REPLACE f2990slc WITH 0
                     REPLACE f2990sls WITH 0
                     REPLACE f2990scs WITH 0
                     REPLACE f2990cos WITH 0
                     REPLACE f2990dct WITH 0
                     REPLACE f2990gas WITH 0
                     REPLACE f2990prm WITH 0
                     REPLACE f2990tdo WITH vtDo
                     REPLACE f2990ser WITH vsEr
                     REPLACE f2990doc WITH vdOc
                     REPLACE f2990emi WITH vfEm
                     REPLACE f2990fem WITH vfEm
                     REPLACE f2990tit WITH vtIt
                     REPLACE f2990cli WITH vcLi
                     REPLACE f2990nom WITH vnOm
                     REPLACE f2990pig WITH miGv
                     REPLACE f2990mon WITH 1
                     REPLACE f2990tne WITH 0
                     REPLACE f2990tig WITH 0
                     REPLACE f2990tfa WITH 0
                     REPLACE f2990ten WITH "CJ"
                ELSE
                     REPLACE f2990can WITH f2990can+(ccAn*vcAn)
                ENDIF
                UNLOCK
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(ccOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                ELSE
                     STORE 0 TO vsLd, vsLc
                ENDIF
                SEEK ALLTRIM(ccOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                     SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)+ ;
                     "2"+"1"+vtDo+vsEr+vdOc
                DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"= ;
                   ALLTRIM(ccOd)+"*"
                     STORE f2990ano TO caNo
                     STORE f2990mes TO cmEs
                     STORE f2990dia TO cdIa
                     STORE f2990tpo TO ctPo
                     STORE f2990tpp TO ctPp
                     STORE f2990tdo TO ctDo
                     STORE f2990ser TO csEr
                     STORE f2990doc TO cdOc
                     SEEK ALLTRIM(ccOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+ ;
                          csEr+cdOc
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH ALLTRIM(ccOd)+"*"+caNo+cmEs+ ;
                             cdIa+ctPo+ctPp+ctDo+csEr+cdOc
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
                DO grA_stock IN PAI2700A WITH ccOd
           ENDIF
           SELECT teMporal_cj
           SKIP
      ENDDO
      SELECT teMporal_9
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(ftM9cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE ftM9ped TO vpEd
           STORE ftM9sec TO vsEc
           STORE ftM9pla TO vpLa
           STORE ftM9mot TO vmOt
           SELECT seR_fact
           DO nuEvo_rg
           REPLACE f1303tdo WITH vtDo
           REPLACE f1303ser WITH vsEr
           REPLACE f1303doc WITH vdOc
           REPLACE f1303cod WITH vcOd
           REPLACE f1303ped WITH vpEd
           REPLACE f1303sec WITH vsEc
           REPLACE f1303pla WITH vpLa
           REPLACE f1303mot WITH vmOt
           UNLOCK
           IF vtDo<>"CT"
                SELECT kaRdex_series
                DO nuEvo_rg
                REPLACE f2991cod WITH vcOd
                REPLACE f2991ped WITH vpEd
                REPLACE f2991sec WITH vsEc
                REPLACE f2991ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                REPLACE f2991mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                REPLACE f2991dia WITH SUBSTR(DTOC(vfEm), 1, 2)
                REPLACE f2991tpp WITH "1"
                REPLACE f2991tpo WITH "2"
                REPLACE f2991pla WITH vpLa
                REPLACE f2991mot WITH vmOt
                REPLACE f2991est WITH "V"
                REPLACE f2991tdo WITH vtDo
                REPLACE f2991ser WITH vsEr
                REPLACE f2991doc WITH vdOc
                UNLOCK
                STORE vpEd TO vpD1
                DO grA_serie IN PAI2700A
           ENDIF
           SELECT teMporal_9
           SKIP
      ENDDO
      SELECT teMporal
      SKIP
 ENDDO
 SELECT caB_fact
 DO ct1_1200b IN PVI1200B
 DO ct2_1200b IN PVI1200B
 REPLACE f1300net WITH tnEt
 REPLACE f1300igv WITH tiGv
 REPLACE f1300tot WITH ttOt
 UNLOCK
 FLUSH
 = INKEY(0.01)
 PRIVATE psWw
 STORE 99 TO mkEy
 STORE 00 TO psWw
 DO CASE
      CASE mnIv<>"3" .AND. mcIa<>"MB" .AND. mcIa<>"EL" .AND. mcIa<>"CG"
           STORE 1 TO psWw
      CASE (mcIa="MV" .OR. mcIa="CG") .AND. mfEl="2"
      CASE mcIa="A1" .AND. mfEl="3"
      OTHERWISE
           STORE 1 TO psWw
 ENDCASE
 IF psWw=1
      STORE 99 TO mkEy
      STORE "N" TO moPc
      DO prE_docum WITH "¿Desea imprimir el o los documentos grabados?"
      IF moPc$"Ss"
           SELECT tmP_doc
           SET ORDER TO
           STORE "" TO vcM3, vcM4, vcM5, vcM6
           IF RECNO()>1
                SET ORDER TO F1300DOC
                GOTO TOP
                STORE 1 TO viT1
                DO WHILE  .NOT. EOF()
                     DO CASE
                          CASE viT1<5
                               IF LEN(ALLTRIM(vcM3))=0
                                    STORE f1300doc TO vcM3
                               ELSE
                                    STORE vcM3+"-"+SUBSTR(f1300doc, 5, 3)  ;
                                     TO vcM3
                               ENDIF
                          CASE viT1<9
                               IF LEN(ALLTRIM(vcM4))=0
                                    STORE f1300doc TO vcM4
                               ELSE
                                    STORE vcM4+"-"+SUBSTR(f1300doc, 5, 3)  ;
                                     TO vcM4
                               ENDIF
                          CASE viT1<13
                               IF LEN(ALLTRIM(vcM5))=0
                                    STORE f1300doc TO vcM5
                               ELSE
                                    STORE vcM5+"-"+SUBSTR(f1300doc, 5, 3)  ;
                                     TO vcM5
                               ENDIF
                     ENDCASE
                     STORE f1300ser TO vsEr
                     STORE f1300doc TO vdOc
                     STORE viT1+1 TO viT1
                     SELECT deT_fact
                     SEEK vtDo+vsEr+vdOc
                     DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+ ;
                        f1301doc=vtDo+vsEr+vdOc
                          STORE f1301cod TO vcOd
                          DO pr1_1300z IN FAC0000A
                          SELECT prOductos
                          DO CASE
                               CASE (vtPo=7 .OR. vtPo=8 .OR. vtPo=9 .OR.  ;
                                    f2111tpo=2) .AND. AT("S", vcM6)=0
                                    STORE vcM6+" S " TO vcM6
                               CASE (vtPo=2 .OR. vtPo=5 .OR. (vtPo=1  ;
                                    .AND. SUBSTR(vcOd, 1, 1)="V")) .AND.  ;
                                    AT("V", vcM6)=0
                                    STORE vcM6+" V " TO vcM6
                               CASE vtPo=6 .AND. AT("A", vcM6)=0
                                    STORE vcM6+" A " TO vcM6
                               CASE AT("R", vcM6)=0
                                    STORE vcM6+" R " TO vcM6
                          ENDCASE
                          SELECT deT_fact
                          SKIP
                     ENDDO
                     SELECT tmP_doc
                     SKIP
                ENDDO
           ENDIF
           SELECT tmP_doc
           SET ORDER TO F1300DOC
           GOTO TOP
           DO WHILE  .NOT. EOF()
                STORE f1300ser TO vsEr
                STORE f1300doc TO vdOc
                DO pvI1300z
                = INKEY(0.01)
                IF vlEc=2
                     SELECT nuMeracion2
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+"V1"+msEr(03)
                     IF EOF()
                          DO nuEvo_rg
                          REPLACE f9397ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                          REPLACE f9397mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                          REPLACE f9397tdo WITH "V1"
                          REPLACE f9397ser WITH msEr(03)
                          REPLACE f9397num WITH "0000000"
                          UNLOCK
                     ENDIF
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+"V1"+msEr(03)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH SUBSTR(DTOC(vfEm), 7, 4)+ ;
                             SUBSTR(DTOC(vfEm), 4, 2)+"V1"+msEr(03)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               UNLOCK ALL
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     STORE f9397num TO vnUm
                     STORE STRTRAN(STR(VAL(vnUm)+1, 7, 0), " ", "0") TO vnUm
                     REPLACE f9397num WITH vnUm
                     UNLOCK
                     SELECT tiPo_ing_caja
                     SET FILTER TO f9314opc=3
                     GOTO TOP
                     IF BOF()
                          STORE "03" TO vtIp
                          STORE "Ventas" TO vnTi
                     ELSE
                          STORE f9314tip TO vtIp
                          STORE f9314nti TO vnTi
                     ENDIF
                     SET FILTER TO
                     SELECT caB_ing_caja
                     DO nuEvo_rg
                     REPLACE f3510ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                     REPLACE f3510mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                     REPLACE f3510ser WITH msEr(03)
                     REPLACE f3510num WITH vnUm
                     REPLACE f3510dia WITH SUBSTR(DTOC(vfEm), 1, 2)
                     REPLACE f3510tpo WITH 3
                     REPLACE f3510tpp WITH 1
                     REPLACE f3510caj WITH wnIv2
                     REPLACE f3510tip WITH vtIp
                     REPLACE f3510nti WITH vnTi
                     REPLACE f3510tca WITH vtCa
                     REPLACE f3510mon WITH vmOn
                     REPLACE f3510tot WITH ttOt
                     REPLACE f3510dnc WITH 0
                     REPLACE f3510est WITH "1"
                     REPLACE f3510usu WITH muSu
                     REPLACE f3510dat WITH DATE()
                     REPLACE f3510tim WITH TIME()
                     UNLOCK
                     SELECT deT_ing_caja
                     DO nuEvo_rg
                     REPLACE f3511ano WITH SUBSTR(DTOC(vfEm), 7, 4)
                     REPLACE f3511mes WITH SUBSTR(DTOC(vfEm), 4, 2)
                     REPLACE f3511ser WITH msEr(03)
                     REPLACE f3511num WITH vnUm
                     REPLACE f3511tdo WITH vtDo
                     REPLACE f3511sr1 WITH vsEr
                     REPLACE f3511doc WITH vdOc
                     REPLACE f3511pag WITH ttOt
                     UNLOCK
                ENDIF
                SELECT tmP_doc
                SKIP
           ENDDO
           UNLOCK ALL
           DO p1_0000a
      ENDIF
 ENDIF
 RELEASE psWw
 DO boR_1200a IN PVI1200A
 SELECT teMporal_9
 ZAP
 REINDEX
 SELECT tmP_doc
 ZAP
 REINDEX
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 DO liM_1200w IN PVI1200W
 IF mdEt=2
      STORE "." TO vnOm
      STORE 2 TO vsW0
 ENDIF
 SELECT caB_fact
 IF vlEc=1
      DO noM_1200w IN PVI1200W
      DO luG_1200w IN PVI1200W
      DO dtI_1200w IN PVI1200W
      DO ruC_1200w IN PVI1200W
      DO drC_1200w IN PVI1200W
      DO dvE_1200w IN PVI1200W
      DO tcA_1200w IN PVI1200W
      DO piG_1200w IN PVI1200W
      DO nfP_1200w IN PVI1200W
      DO dcT_1200w IN PVI1200W WITH 1
      DO swG_1200w IN PVI1200W WITH "N"
      DO toT_1200w IN PVI1200W WITH "N"
      DO coLbln
      @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
      @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,48
      @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
      @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
      READ TIMEOUT 0.01
 ENDIF
 DO caL_1300w IN PVI1200W
 IF vlEc=1
      DO coL_fondo
      @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
      IF mdEs<3
           DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
           DO coLsc7
           @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
      ENDIF
      DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
      DO boT_1200w IN PVI1200W WITH "1"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO p07_1200a IN PVI1200A
 ENDIF
 RELEASE ptX1, ptX2, poPc, pnUm, puLt, psPp, ptIm
ENDPROC
*
PROCEDURE Cop_1300a
 SELECT tmP_np
 ZAP
 SELECT caB_fact
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos de Ventas registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 STORE f1300tdo TO vtDo
 STORE f1300ser TO vsEr
 STORE f1300doc TO vdOc
 STORE vdIa TO cdIa
 STORE vnOm TO cnOm
 SAVE SCREEN TO vpAn_11
 DO pvC1300w WITH "PVI1300A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_fact
 SET FILTER TO
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cdIa TO vdIa
 STORE cnOm TO vnOm
 IF mkEy=k_Enter .OR. mkEy=k_Tab .OR. mkEy=k_Alt_c
      IF mkEy=k_Enter .OR. mkEy=k_Tab
           DO boR_1200a IN PVI1200A
      ENDIF
      DO CASE
           CASE mkEy=k_Alt_c
                SELECT teMporal
                GOTO TOP
                IF  .NOT. BOF()
                     STORE 2 TO viOm
                ENDIF
                SELECT caB_fact
                DO muC_1300a
           CASE mkEy=k_Enter
                SELECT caB_fact
                DO muC_1300a
                DO muD_1300a
                SELECT teMporal
                GOTO TOP
                DO paN_1200b IN PVI1200B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO ctO_1200b IN PVI1200B
           CASE mkEy=k_Tab
                DO muT_1300a
                SELECT teMporal
                GOTO TOP
                DO paN_1200b IN PVI1200B
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO ctO_1200b IN PVI1200B
      ENDCASE
      WAIT CLEAR
      STORE 1 TO vrEc, irEc
      STORE ifIl TO vfIl
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE MuT_1300a
 SELECT tmP_np
 GOTO TOP
 STORE ifIl TO vfIl, ufIl
 STORE 00 TO irEc, vrEc, urEc, frEc
 DO WHILE  .NOT. EOF()
      STORE ftM0tdo TO vtD1
      STORE ftM0ser TO vsE1
      STORE ftM0doc TO vdO1
      DO muD_1300a
      SELECT tmP_np
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE MuC_1300a
 STORE f1300tdo TO vtD1
 STORE f1300ser TO vsE1
 STORE f1300doc TO vdO1
 IF wsW0=2
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      STORE f1300est TO veSt
      STORE f1300fem TO vfEm
      STORE f1300pig TO vpIg
 ENDIF
 DO mu1_1300a
 DO coLbln
 SELECT caB_fact
 IF wsW0=2
      @mFI0-1.8,mCO0+13.5 Say vSER Font "&mLetAri",11 Style "NQ" Size 1,3.4 Pict "999"
      @mFI0-1.8,mCO0+20.2 Say vDOC Font "&mLetAri",11 Style "NQ" Size 1,8.0 Pict "9999999"
 ENDIF
 DO noM_1200w IN PVI1200W
 DO luG_1200w IN PVI1200W
 DO dtI_1200w IN PVI1200W
 DO ruC_1200w IN PVI1200W
 DO drC_1200w IN PVI1200W
 DO dvE_1200w IN PVI1200W
 DO tcA_1200w IN PVI1200W
 DO piG_1200w IN PVI1200W
 DO nfP_1200w IN PVI1200W
 DO dcT_1200w IN PVI1200W WITH 1
 DO swG_1200w IN PVI1200W WITH "N"
 DO toT_1200w IN PVI1200W WITH "N"
 DO coLbln
 @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
 @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,48
 @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
 @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 STORE ifIl TO vfIl, ufIl
 STORE 01 TO vrEc, irEc
 STORE 00 TO tvAl, tpEr, vpDc, vdCt, urEc, frEc
 DO caL_1300w IN PVI1200W
 DO boT_1200w IN PVI1200W WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE MuD_1300a
 SELECT deT_fact
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtD1+vsE1+vdO1
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
      STORE f1301sol TO vsOl
      STORE f1301usd TO vuSd
      STORE f1301pre TO vpRe
      STORE f1301pro TO vpRo
      STORE f1301pr1 TO vpR1
      STORE f1301md1 TO vmD1
      STORE f1301md2 TO vmD2
      STORE f1301md3 TO vmD3
      STORE f1301pdc TO vpDc
      STORE f1301dct TO vdCt
      STORE f1301ref TO vrEf
      STORE f1301lar TO vlAr
      STORE f1301la1 TO vlA1
      STORE f1301la2 TO vlA2
      STORE f1301la3 TO vlA3
      STORE f1301la4 TO vlA4
      STORE f1301la5 TO vlA5
      STORE f1301la6 TO vlA6
      STORE f1301la7 TO vlA7
      STORE f1301la8 TO vlA8
      STORE f1301la9 TO vlA9
      STORE f1301anc TO vaNc
      STORE f1301an1 TO vaN1
      STORE f1301an2 TO vaN2
      STORE f1301an3 TO vaN3
      STORE f1301an4 TO vaN4
      STORE f1301an5 TO vaN5
      STORE f1301an6 TO vaN6
      STORE f1301an7 TO vaN7
      STORE f1301an8 TO vaN8
      STORE f1301an9 TO vaN9
      STORE f1301alt TO vaLt
      STORE f1301al1 TO vaL1
      STORE f1301al2 TO vaL2
      STORE f1301al3 TO vaL3
      STORE f1301al4 TO vaL4
      STORE f1301al5 TO vaL5
      STORE f1301al6 TO vaL6
      STORE f1301al7 TO vaL7
      STORE f1301al8 TO vaL8
      STORE f1301al9 TO vaL9
      STORE f1301esp TO veSp
      STORE f1301to1 TO vtO1
      STORE f1301to2 TO vtO2
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE SPACE(02) TO vtIp
           STORE 1 TO vtPo
           STORE 2 TO vcSt, vpEr, vdTr
           STORE 0 TO vmV1, vmV2, vsOl, vuSd, vsTo
      ELSE
           STORE f2111tip TO vtIp
           SELECT tiP_prod
           SEEK vtIp
           IF EOF()
                STORE 1 TO vtPo
                STORE 2 TO vpEr, vdTr
                STORE " " TO veNt
           ELSE
                STORE f9211tpo TO vtPo
                STORE f9211ent TO veNt
                STORE f9211per TO vpEr
                STORE f9211det TO vdTr
                IF vpEr=0
                     STORE 2 TO vpEr
                ENDIF
                IF vdTr=0
                     STORE 2 TO vdTr
                ENDIF
           ENDIF
           SELECT prOductos
           STORE f2111des TO vdEs
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
           STORE f2111md1 TO vmD1
           STORE f2111md2 TO vmD2
           STORE f2111md3 TO vmD3
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111esp TO veSp
           STORE f2111fot TO vfOt
           DO CASE
                CASE vlIs=1
                     STORE f2111mv1 TO vmV1
                     STORE f2111mv2 TO vmV2
                CASE vlIs=2
                     STORE f2111mv3 TO vmV1
                     STORE f2111mv4 TO vmV2
                CASE vlIs=3
                     STORE f2111mv5 TO vmV1
                     STORE f2111mv6 TO vmV2
                CASE vlIs=4
                     STORE f2111mv7 TO vmV1
                     STORE f2111mv8 TO vmV2
                CASE vlIs=5
                     STORE f2111mv9 TO vmV1
                     STORE f2111mv0 TO vmV2
                CASE vlIs=6
                     STORE f2111mva TO vmV1
                     STORE f2111mvb TO vmV2
                CASE vlIs=7
                     STORE f2111mvc TO vmV1
                     STORE f2111mvd TO vmV2
                CASE vlIs=8
                     STORE f2111mve TO vmV1
                     STORE f2111mvf TO vmV2
                CASE vlIs=9
                     STORE f2111mvg TO vmV1
                     STORE f2111mvh TO vmV2
                CASE vlIs=10
                     STORE f2111mvi TO vmV1
                     STORE f2111mvj TO vmV2
           ENDCASE
           IF vtPo<>10
                STORE f2111la1 TO vlA1
                STORE f2111la2 TO vlA2
                STORE f2111an1 TO vaN1
                STORE f2111an2 TO vaN2
                DO CASE
                     CASE vlA1=0 .AND. vaN1=0
                          STORE 2 TO vmEd
                     CASE vlA2=0 .AND. vaN2=0
                          STORE 1 TO vmEd
                     CASE vmDd=0
                          STORE 1 TO vmEd
                     CASE vmDd=1
                          STORE 1 TO vmEd
                     CASE vmDd=2
                          STORE 2 TO vmEd
                ENDCASE
           ENDIF
           IF wsW0=1 .AND. mjAl=2
                DO CASE
                     CASE vlIs=1
                          STORE f2111vv1 TO vsOl
                          STORE f2111vv2 TO vuSd
                     CASE vlIs=2
                          STORE f2111vv3 TO vsOl
                          STORE f2111vv4 TO vuSd
                     CASE vlIs=3
                          STORE f2111vv5 TO vsOl
                          STORE f2111vv6 TO vuSd
                     CASE vlIs=4
                          STORE f2111vv7 TO vsOl
                          STORE f2111vv8 TO vuSd
                     CASE vlIs=5
                          STORE f2111vv9 TO vsOl
                          STORE f2111vv0 TO vuSd
                     CASE vlIs=6
                          STORE f2111vva TO vsOl
                          STORE f2111vvb TO vuSd
                     CASE vlIs=7
                          STORE f2111vvc TO vsOl
                          STORE f2111vvd TO vuSd
                     CASE vlIs=8
                          STORE f2111vve TO vsOl
                          STORE f2111vvf TO vuSd
                     CASE vlIs=9
                          STORE f2111vvg TO vsOl
                          STORE f2111vvh TO vuSd
                     CASE vlIs=10
                          STORE f2111vvi TO vsOl
                          STORE f2111vvj TO vuSd
                ENDCASE
                DO CASE
                     CASE vmOn=1
                          STORE f2111vv1 TO vpRo
                     CASE vmOn=2
                          STORE f2111vv2 TO vpRo
                ENDCASE
           ENDIF
      ENDIF
      IF vmOn=1
           IF vmV1=0 .AND. vmV2<>0
                STORE ROUND(vmV2*vtCa, 4) TO vmV1
           ENDIF
           IF wsW0=1
                IF vsOl=0 .AND. vuSd<>0
                     STORE ROUND(vuSd*vtCa, 4) TO vsOl
                ENDIF
                STORE vsOl TO vpRe
           ENDIF
      ELSE
           IF vmV2=0 .AND. vmV1<>0
                STORE ROUND(vmV1/vtCa, 4) TO vmV2
           ENDIF
           IF wsW0=1
                IF vuSd=0 .AND. vsOl<>0
                     STORE ROUND(vsOl/vtCa, 4) TO vuSd
                ENDIF
                STORE vuSd TO vpRe
           ENDIF
      ENDIF
      IF wsW0=1 .AND. vcSt=1 .AND. vsTo-vcAn<0 .AND. wnIv$"12"
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      STORE 1 TO viOm
      DO grA_1300b IN PVI1300B
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT itE_fact
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtD1+vsE1+vdO1
      STORE f1302cod TO vcOd
      STORE f1302rcc TO vrCc
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
 SELECT coN_fact
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtD1+vsE1+vdO1
      STORE f1304cod TO vcOd
      STORE f1304cdg TO vcDg
      STORE f1304cun TO vcAn
      STORE f1304can TO vtOt
      STORE f1304for TO vfOr
      STORE f1304dsp TO vdSp
      STORE f1304dst TO vdSt
      STORE f1304ttt TO vtTt
      SELECT prOductos
      SEEK ALLTRIM(vcDg)+"*"
      IF EOF()
           STORE "Producto Borrado... " TO vdCr
           STORE SPACE(02) TO vcUv
           STORE SPACE(50) TO vnUv
      ELSE
           STORE f2111des TO vdCr
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
      ENDIF
      DO CASE
           CASE EOF()
                STORE 1 TO cpRe
           CASE vlIs=1 .AND. vmOn=1
                IF f2111vv1=0 .AND. f2111vv2<>0
                     STORE ROUND(f2111vv2*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv1 TO cpRe
                ENDIF
           CASE vlIs=1 .AND. vmOn=2
                IF f2111vv2=0 .AND. f2111vv1<>0
                     STORE ROUND(f2111vv1/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv2 TO cpRe
                ENDIF
           CASE vlIs=2 .AND. vmOn=1
                IF f2111vv3=0 .AND. f2111vv4<>0
                     STORE ROUND(f2111vv4*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv3 TO cpRe
                ENDIF
           CASE vlIs=2 .AND. vmOn=2
                IF f2111vv4=0 .AND. f2111vv3<>0
                     STORE ROUND(f2111vv3/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv4 TO cpRe
                ENDIF
           CASE vlIs=3 .AND. vmOn=1
                IF f2111vv5=0 .AND. f2111vv6<>0
                     STORE ROUND(f2111vv6*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv5 TO cpRe
                ENDIF
           CASE vlIs=3 .AND. vmOn=2
                IF f2111vv6=0 .AND. f2111vv5<>0
                     STORE ROUND(f2111vv5/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv6 TO cpRe
                ENDIF
           CASE vlIs=4 .AND. vmOn=1
                IF f2111vv7=0 .AND. f2111vv8<>0
                     STORE ROUND(f2111vv8*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv7 TO cpRe
                ENDIF
           CASE vlIs=4 .AND. vmOn=2
                IF f2111vv8=0 .AND. f2111vv7<>0
                     STORE ROUND(f2111vv7/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv8 TO cpRe
                ENDIF
           CASE vlIs=5 .AND. vmOn=1
                IF f2111vv9=0 .AND. f2111vv0<>0
                     STORE ROUND(f2111vv0*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv9 TO cpRe
                ENDIF
           CASE vlIs=5 .AND. vmOn=2
                IF f2111vv0=0 .AND. f2111vv9<>0
                     STORE ROUND(f2111vv9/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vv0 TO cpRe
                ENDIF
           CASE vlIs=6 .AND. vmOn=1
                IF f2111vva=0 .AND. f2111vvb<>0
                     STORE ROUND(f2111vvb*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vva TO cpRe
                ENDIF
           CASE vlIs=6 .AND. vmOn=2
                IF f2111vvb=0 .AND. f2111vva<>0
                     STORE ROUND(f2111vva/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvb TO cpRe
                ENDIF
           CASE vlIs=7 .AND. vmOn=1
                IF f2111vvc=0 .AND. f2111vvd<>0
                     STORE ROUND(f2111vvd*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvc TO cpRe
                ENDIF
           CASE vlIs=7 .AND. vmOn=2
                IF f2111vvd=0 .AND. f2111vvc<>0
                     STORE ROUND(f2111vvc/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvd TO cpRe
                ENDIF
           CASE vlIs=8 .AND. vmOn=1
                IF f2111vve=0 .AND. f2111vvf<>0
                     STORE ROUND(f2111vvf*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vve TO cpRe
                ENDIF
           CASE vlIs=8 .AND. vmOn=2
                IF f2111vvf=0 .AND. f2111vve<>0
                     STORE ROUND(f2111vve/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvf TO cpRe
                ENDIF
           CASE vlIs=9 .AND. vmOn=1
                IF f2111vvg=0 .AND. f2111vvh<>0
                     STORE ROUND(f2111vvh*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvg TO cpRe
                ENDIF
           CASE vlIs=9 .AND. vmOn=2
                IF f2111vvh=0 .AND. f2111vvg<>0
                     STORE ROUND(f2111vvg/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvh TO cpRe
                ENDIF
           CASE vlIs=10 .AND. vmOn=1
                IF f2111vvi=0 .AND. f2111vvj<>0
                     STORE ROUND(f2111vvj*vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvi TO cpRe
                ENDIF
           CASE vlIs=10 .AND. vmOn=2
                IF f2111vvj=0 .AND. f2111vvi<>0
                     STORE ROUND(f2111vvi/vtCa, 4) TO cpRe
                ELSE
                     STORE f2111vvj TO cpRe
                ENDIF
      ENDCASE
      IF cpRe<=0
           STORE 1 TO cpRe
      ENDIF
      SELECT teMporal_cj
      APPEND BLANK
      REPLACE f2921cod WITH vcOd
      REPLACE f2921cdg WITH vcDg
      REPLACE f2921dcr WITH vdCr
      REPLACE f2921cuv WITH vcUv
      REPLACE f2921nuv WITH vnUv
      REPLACE f2921can WITH vcAn
      REPLACE f2921tot WITH vtOt
      REPLACE f2921pre WITH cpRe
      REPLACE f2921for WITH vfOr
      REPLACE f2921dsp WITH vdSp
      REPLACE f2921dst WITH vdSt
      REPLACE f2921ttt WITH vtTt
      SELECT coN_fact
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      STORE ftM1lar TO vlAr
      STORE ftM1la1 TO vlA1
      STORE ftM1la2 TO vlA2
      STORE ftM1la3 TO vlA3
      STORE ftM1la4 TO vlA4
      STORE ftM1la5 TO vlA5
      STORE ftM1la6 TO vlA6
      STORE ftM1la7 TO vlA7
      STORE ftM1la8 TO vlA8
      STORE ftM1la9 TO vlA9
      STORE ftM1anc TO vaNc
      STORE ftM1an1 TO vaN1
      STORE ftM1an2 TO vaN2
      STORE ftM1an3 TO vaN3
      STORE ftM1an4 TO vaN4
      STORE ftM1an5 TO vaN5
      STORE ftM1an6 TO vaN6
      STORE ftM1an7 TO vaN7
      STORE ftM1an8 TO vaN8
      STORE ftM1an9 TO vaN9
      STORE ftM1alt TO vaLt
      STORE ftM1al1 TO vaL1
      STORE ftM1al2 TO vaL2
      STORE ftM1al3 TO vaL3
      STORE ftM1al4 TO vaL4
      STORE ftM1al5 TO vaL5
      STORE ftM1al6 TO vaL6
      STORE ftM1al7 TO vaL7
      STORE ftM1al8 TO vaL8
      STORE ftM1al9 TO vaL9
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT teMporal_cj
      SET FILTER TO
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO foR_1200b IN PVI1200B
           IF mkEy=k_Esc
                STORE 99 TO mkEy
           ENDIF
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Mu1_1300a
 STORE f1300tit TO vtIt
 STORE f1300ntt TO vnTt
 STORE f1300cli TO vcLi, xcLi
 STORE f1300suc TO vsUc
 STORE f1300nom TO vnOm
 STORE f1300dir TO vdIr
 STORE f1300dis TO vdIs
 STORE f1300dep TO vdEp
 STORE f1300ruc TO vrUc
 STORE f1300tdi TO vtDi
 STORE f1300ele TO vdNi
 STORE f1300tel TO vtEl
 STORE f1300tra TO vtRa
 STORE f1300lug TO vlUg
 STORE f1300lud TO vlUd
 STORE f1300lup TO vlUp
 STORE f1300ppn TO vpPn
 STORE f1300ppa TO vpPa
 STORE f1300ppd TO vpPd
 STORE f1300ppp TO vpPp
 STORE f1300ven TO vvEn
 STORE f1300nve TO vnVe
 STORE f1300com TO vcOm
 STORE f1300tec TO vtEc
 STORE f1300nte TO vnTe
 STORE f1300dtc TO vdTc
 STORE f1300dcl TO vdCl
 STORE f1300swg TO vsWg
 STORE f1300pgd TO vpGd
 STORE f1300fde TO vfDe
 STORE f1300mon TO vmOn
 STORE f1300fpa TO vfPa
 STORE f1300nfp TO vnFp
 STORE f1300dia TO vdI1
 STORE f1300tfp TO vtFp
 STORE f1300cm1 TO vcM1
 STORE f1300cm2 TO vcM2
 STORE f1300int TO viNt
 STORE f1300srp TO vsRp
 STORE f1300ped TO vpEd
 STORE f1300net TO tnEt
 STORE f1300igv TO tiGv
 STORE f1300tot TO ttOt
 DO CASE
      CASE vmOn=1
           STORE msIg TO vsIg
      CASE vmOn=2
           STORE "US$" TO vsIg
 ENDCASE
 DO CASE
      CASE LEN(ALLTRIM(vcLi))=0
           STORE 2 TO vsW0
           STORE 14 TO vuLt
      OTHERWISE
           STORE 1 TO vsW0
           STORE 9 TO vuLt
 ENDCASE
 SELECT caMbio
 SEEK vfEm
 IF EOF()
      STORE 1 TO vtCa
 ELSE
      STORE f9111tc3 TO vtCa
 ENDIF
 SELECT suCursal
 GOTO TOP
 SEEK vcLi
 STORE 0 TO vnSu
 DO WHILE  .NOT. EOF() .AND. f1102cod=vcLi
      STORE vnSu+1 TO vnSu
      SKIP
 ENDDO
 SELECT clIentes
 IF vsW0=1
      SEEK vcLi
 ELSE
      SEEK vtIt
 ENDIF
 IF  .NOT. EOF()
      STORE f1101tip TO vtCl
      STORE f1101med TO vmDd
      STORE f1101lis TO ulIs
      STORE f1101li2 TO ulI2
      STORE f1101li3 TO ulI3
      STORE f1101cre TO vcRe
      IF vsW0=2
           STORE SPACE(70) TO vnTt
      ELSE
           STORE f1101nom TO vnTt
      ENDIF
 ELSE
      STORE SPACE(02) TO vtCl
      STORE SPACE(70) TO vnTt
      STORE 1 TO vmDd
      STORE 2 TO vcRe
      STORE 0 TO ulI2, ulI3
      DO CASE
           CASE mlIs=0
                STORE 1 TO ulIs
           OTHERWISE
                STORE mlIs TO ulIs
      ENDCASE
 ENDIF
 SELECT tiPo_cli
 SEEK vtCl
 IF  .NOT. EOF()
      STORE f9110nti TO vnTi
      STORE f9110dct TO vdTc
      STORE f9110max TO vdMc
 ELSE
      STORE SPACE(50) TO vnTi
      STORE 00 TO vdTc, vdMc
 ENDIF
 SELECT trAnsportista
 SEEK vtRa
 IF EOF()
      STORE SPACE(10) TO vnTr
 ELSE
      STORE f9215nom TO vnTr
 ENDIF
ENDPROC
*
PROCEDURE CoI_1300a
 SELECT tmP_np
 ZAP
 SELECT caB_ingr
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Guias de Entrada registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SET FILTER TO f2700est<>"9" .AND. f2700est<>" "
 GOTO BOTTOM
 IF BOF() .OR. EOF()
      STORE "No hay Documentos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 STORE f2700tdo TO vtDo
 STORE f2700ser TO vsEr
 STORE f2700doc TO vdOc
 STORE vdIa TO cdIa
 STORE vcM1 TO ccM1
 SAVE SCREEN TO vpAn_11
 DO paC2700w WITH "PVI1300A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER ON
 RESTORE SCREEN FROM vpAn_11
 SELECT caB_ingr
 SET FILTER TO
 DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE cdIa TO vdIa
 STORE ccM1 TO vcM1
 IF mkEy=k_Enter .OR. mkEy=k_Tab
      DO boR_1200a IN PVI1200A
      DO CASE
           CASE mkEy=k_Enter
                SELECT caB_ingr
                STORE f2700tdo TO vtD1
                STORE f2700ser TO vsE1
                STORE f2700doc TO vdO1
                DO muI_1300a
           CASE mkEy=k_Tab
                DO mvT_1300a
      ENDCASE
      WAIT CLEAR
      SELECT teMporal
      GOTO TOP
      DO paN_1200b IN PVI1200B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      DO ctO_1200b IN PVI1200B
      STORE 1 TO vrEc, irEc
      STORE ifIl TO vfIl
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE MuI_1300a
 SELECT deT_ingr
 GOTO TOP
 SEEK vtD1+vsE1+vdO1
 DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtD1+vsE1+vdO1
      STORE f2701cod TO vcOd
      STORE f2701des TO vdEs
      STORE f2701dcr TO vdCr
      STORE f2701cuv TO vcUv
      STORE f2701nuv TO vnUv
      STORE f2701cuc TO vcUc
      STORE f2701nuc TO vnUc
      STORE f2701med TO vmEd
      STORE f2701can TO vcAn
      STORE f2701pie TO vpIe
      STORE f2701la1 TO vlA1
      STORE f2701la2 TO vlA2
      STORE f2701an1 TO vaN1
      STORE f2701an2 TO vaN2
      STORE f2701esp TO veSp
      STORE 0 TO vpDc, vdCt, vtO1, vtO2, vsOl, vuSd
      STORE 0 TO vlAr, vlA3, vlA4, vlA5, vlA6, vlA7, vlA8, vlA9
      STORE 0 TO vaNc, vaN3, vaN4, vaN5, vaN6, vaN7, vaN8, vaN9
      STORE 0 TO vaLt, vaL1, vaL2, vaL3, vaL4, vaL5, vaL6, vaL7, vaL8, vaL9
      STORE SPACE(20) TO vrEf
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE SPACE(02) TO vtIp
           STORE 1 TO vtPo, vmD3
           STORE 2 TO vmD1, vmD2, vcSt, vpEr, vdTr
           STORE 0 TO vmV1, vmV2, vsOl, vuSd, vsTo
      ELSE
           STORE f2111tip TO vtIp
           SELECT tiP_prod
           SEEK vtIp
           IF EOF()
                STORE 1 TO vtPo
                STORE 2 TO vpEr, vdTr
                STORE " " TO veNt
           ELSE
                STORE f9211tpo TO vtPo
                STORE f9211ent TO veNt
                STORE f9211per TO vpEr
                STORE f9211det TO vdTr
                IF vpEr=0
                     STORE 2 TO vpEr
                ENDIF
                IF vdTr=0
                     STORE 2 TO vdTr
                ENDIF
           ENDIF
           SELECT prOductos
           STORE f2111des TO vdEs
           STORE f2111sto TO vsTo
           STORE f2111cuv TO vcUv
           STORE f2111nuv TO vnUv
           STORE f2111cuc TO vcUc
           STORE f2111nuc TO vnUc
           STORE f2111md1 TO vmD1
           STORE f2111md2 TO vmD2
           STORE f2111md3 TO vmD3
           STORE f2111cst TO vcSt
           STORE f2111ser TO vsRr
           STORE f2111esp TO veSp
           STORE f2111fot TO vfOt
           DO CASE
                CASE vlIs=1
                     STORE f2111mv1 TO vmV1
                     STORE f2111mv2 TO vmV2
                CASE vlIs=2
                     STORE f2111mv3 TO vmV1
                     STORE f2111mv4 TO vmV2
                CASE vlIs=3
                     STORE f2111mv5 TO vmV1
                     STORE f2111mv6 TO vmV2
                CASE vlIs=4
                     STORE f2111mv7 TO vmV1
                     STORE f2111mv8 TO vmV2
                CASE vlIs=5
                     STORE f2111mv9 TO vmV1
                     STORE f2111mv0 TO vmV2
                CASE vlIs=6
                     STORE f2111mva TO vmV1
                     STORE f2111mvb TO vmV2
                CASE vlIs=7
                     STORE f2111mvc TO vmV1
                     STORE f2111mvd TO vmV2
                CASE vlIs=8
                     STORE f2111mve TO vmV1
                     STORE f2111mvf TO vmV2
                CASE vlIs=9
                     STORE f2111mvg TO vmV1
                     STORE f2111mvh TO vmV2
                CASE vlIs=10
                     STORE f2111mvi TO vmV1
                     STORE f2111mvj TO vmV2
           ENDCASE
           IF vtPo<>10
                STORE f2111la1 TO vlA1
                STORE f2111la2 TO vlA2
                STORE f2111an1 TO vaN1
                STORE f2111an2 TO vaN2
                DO CASE
                     CASE vlA1=0 .AND. vaN1=0
                          STORE 2 TO vmEd
                     CASE vlA2=0 .AND. vaN2=0
                          STORE 1 TO vmEd
                     CASE vmDd=0
                          STORE 1 TO vmEd
                     CASE vmDd=1
                          STORE 1 TO vmEd
                     CASE vmDd=2
                          STORE 2 TO vmEd
                ENDCASE
           ENDIF
           IF wsW0=1
                DO CASE
                     CASE vlIs=1
                          STORE f2111vv1 TO vsOl
                          STORE f2111vv2 TO vuSd
                     CASE vlIs=2
                          STORE f2111vv3 TO vsOl
                          STORE f2111vv4 TO vuSd
                     CASE vlIs=3
                          STORE f2111vv5 TO vsOl
                          STORE f2111vv6 TO vuSd
                     CASE vlIs=4
                          STORE f2111vv7 TO vsOl
                          STORE f2111vv8 TO vuSd
                     CASE vlIs=5
                          STORE f2111vv9 TO vsOl
                          STORE f2111vv0 TO vuSd
                     CASE vlIs=6
                          STORE f2111vva TO vsOl
                          STORE f2111vvb TO vuSd
                     CASE vlIs=7
                          STORE f2111vvc TO vsOl
                          STORE f2111vvd TO vuSd
                     CASE vlIs=8
                          STORE f2111vve TO vsOl
                          STORE f2111vvf TO vuSd
                     CASE vlIs=9
                          STORE f2111vvg TO vsOl
                          STORE f2111vvh TO vuSd
                     CASE vlIs=10
                          STORE f2111vvi TO vsOl
                          STORE f2111vvj TO vuSd
                ENDCASE
                DO CASE
                     CASE vmOn=1
                          STORE f2111vv1 TO vpRo
                     CASE vmOn=2
                          STORE f2111vv2 TO vpRo
                ENDCASE
           ENDIF
      ENDIF
      IF vmOn=1
           IF vmV1=0 .AND. vmV2<>0
                STORE ROUND(vmV2*vtCa, 4) TO vmV1
           ENDIF
           IF wsW0=1
                IF vsOl=0 .AND. vuSd<>0
                     STORE ROUND(vuSd*vtCa, 4) TO vsOl
                ENDIF
                STORE vsOl TO vpRe
           ENDIF
      ELSE
           IF vmV2=0 .AND. vmV1<>0
                STORE ROUND(vmV1/vtCa, 4) TO vmV2
           ENDIF
           IF wsW0=1
                IF vuSd=0 .AND. vsOl<>0
                     STORE ROUND(vsOl/vtCa, 4) TO vuSd
                ENDIF
                STORE vuSd TO vpRe
           ENDIF
      ENDIF
      IF wsW0=1 .AND. vcSt=1 .AND. vsTo-vcAn<0 .AND. wnIv$"12"
           SELECT deT_ingr
           SKIP
           LOOP
      ENDIF
      STORE 1 TO viOm
      DO grA_1300b IN PVI1300B
      SELECT deT_ingr
      SKIP
 ENDDO
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM1cod TO vcOd
      STORE ftM1lar TO vlAr
      STORE ftM1la1 TO vlA1
      STORE ftM1la2 TO vlA2
      STORE ftM1la3 TO vlA3
      STORE ftM1la4 TO vlA4
      STORE ftM1la5 TO vlA5
      STORE ftM1la6 TO vlA6
      STORE ftM1la7 TO vlA7
      STORE ftM1la8 TO vlA8
      STORE ftM1la9 TO vlA9
      STORE ftM1anc TO vaNc
      STORE ftM1an1 TO vaN1
      STORE ftM1an2 TO vaN2
      STORE ftM1an3 TO vaN3
      STORE ftM1an4 TO vaN4
      STORE ftM1an5 TO vaN5
      STORE ftM1an6 TO vaN6
      STORE ftM1an7 TO vaN7
      STORE ftM1an8 TO vaN8
      STORE ftM1an9 TO vaN9
      STORE ftM1alt TO vaLt
      STORE ftM1al1 TO vaL1
      STORE ftM1al2 TO vaL2
      STORE ftM1al3 TO vaL3
      STORE ftM1al4 TO vaL4
      STORE ftM1al5 TO vaL5
      STORE ftM1al6 TO vaL6
      STORE ftM1al7 TO vaL7
      STORE ftM1al8 TO vaL8
      STORE ftM1al9 TO vaL9
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT teMporal_cj
      SET FILTER TO
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           DO foR_1200b IN PVI1200B
           IF mkEy=k_Esc
                STORE 99 TO mkEy
           ENDIF
      ENDIF
      SELECT teMporal
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE MvT_1300a
 SELECT tmP_np
 GOTO TOP
 STORE ifIl TO vfIl, ufIl
 STORE 00 TO irEc, vrEc, urEc, frEc
 DO WHILE  .NOT. EOF()
      STORE ftM0tdo TO vtD1
      STORE ftM0ser TO vsE1
      STORE ftM0doc TO vdO1
      DO muI_1300a
      SELECT tmP_np
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Abr_1300a
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Clientes no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sucursal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "1104", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cod_Cliente
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1104COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
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
 SELECT 5
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
 SELECT 6
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
 SELECT 7
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
 SELECT 8
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
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1305", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Per_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1305DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
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
 SELECT 11
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
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Maestro de Productos y Servicios no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 13
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
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sto_Tot
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "2920", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cab_Conjuntos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2920COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "2921", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Conjuntos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2921COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex_Series
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Tot_Vtas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3511NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Cli
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Clientes no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 27
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Cambio no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Pagos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9112FPA
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Formas de Pago no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedor
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Distritos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 32
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Unidad
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9213UNI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Unidades de Medida vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "9215", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Transportista
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9215NOM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 35
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
 SELECT 36
 DO abR_0000a IN PUX0000A WITH "9221", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Primero
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9221DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "9222", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Segundo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9222DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "9223", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tercero
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9223DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 39
 DO abR_0000a IN PUX0000A WITH "9224", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cuarto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9224DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 40
 DO abR_0000a IN PUX0000A WITH "9225", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Quinto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9225DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 41
 DO abR_0000a IN PUX0000A WITH "9228", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sexto
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9228DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 42
 DO abR_0000a IN PUX0000A WITH "9229", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Septimo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9229DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 43
 DO abR_0000a IN PUX0000A WITH "9314", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Ing_Caja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9314NTI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF()
      STORE "Archivo Utilitario de Tipos de Ingresos a Caja vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 44
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 45
 DO prO_virtual WITH 1
 SELECT 46
 STORE "TM01A"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 47
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 48
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 49
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM4COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 50
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_Cj
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2921COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 51
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM6FEM DESCENDING
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 52
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_7
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM7COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 53
 STORE "TM01"+ntM8+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Doc
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 54
 STORE "TM01"+ntM9+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_9
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM9COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 55
 STORE "TM01"+ntMa+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Hoja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTMAGRU
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 56
 STORE "TM01"+ntMb+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Hoja1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTMBGRU
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1300a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=ifIl-1.992 .AND. mfIl<=ifIl-0.778 .AND. mcCc>=ucLn+3.8  ;
           .AND. mcCc<=ucLn+8
           STORE 99 TO mkEy
           DO prE_docum WITH "¿Desea Borrar Detalle y Cabecera?"
           IF moPc$"Ss"
                DO boR_1200a IN PVI1200A
                DO liM_1200w IN PVI1200W
                IF mdEt=2
                     STORE "." TO vnOm
                     STORE 2 TO vsW0
                ENDIF
                DO noM_1200w IN PVI1200W
                DO luG_1200w IN PVI1200W
                DO dtI_1200w IN PVI1200W
                DO ruC_1200w IN PVI1200W
                DO drC_1200w IN PVI1200W
                DO dvE_1200w IN PVI1200W
                DO tcA_1200w IN PVI1200W
                DO piG_1200w IN PVI1200W
                DO nfP_1200w IN PVI1200W
                DO dcT_1200w IN PVI1200W WITH 1
                DO swG_1200w IN PVI1200W WITH "N"
                DO toT_1200w IN PVI1200W WITH "N"
                DO coLbln
                @mFI0+01.0,vCL4      Get  vFEM Font "&mLetAri",9 Style "NQ" Size 1,12.1 Color ,&mColBlN
                @mFI0+09.5,mCO0+19.5 Edit vCM1 Font "&mLetAri",9 Style "NQ" Size 1,91,48
                @mFI0+11.0,mCO0+19.5 Edit vCM2 Font "&mLetAri",9 Style "NQ" Size 1,91,90
                @mFI0+12.5,mCO0+43.5 Get  vPGD Font "&mLetAri",9 Style "NQ" Size 1,08.9 Pict "999.99" Color ,&mColBlN
                READ TIMEOUT 0.01
                DO caL_1300w IN PVI1200W
                DO coL_fondo
                @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
                IF mdEs<3
                     DO prEsiona WITH "1", "SI", ifIl-1.5, vcO1-4
                     DO coLsc7
                     @ ifIl-1.7, icLn-5 TO ffIl+1.2, icLn-1 PATTERN 1
                ENDIF
                DO liN_1200w IN PVI1200W WITH ifIl, ffIl+1.15
                DO boT_1200w IN PVI1200W WITH "1"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      CASE mfIl>=mfI0 .AND. mfIl<=mfI0+2.578 .AND. mcCc>=mcO0-8.6 .AND.  ;
           mcCc<=mcO0-2
           STORE 1 TO viTe
           STORE k_F8 TO mkEy
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.185 .AND. vmOn<>1 .AND.  ;
           mcCc>=vcL4-9.8 .AND. mcCc<=vcL4-3
           STORE 01 TO vmOn
           STORE msIg TO vsIg
           STORE viTe TO ciTe
           DO toT_1200w IN PVI1200W WITH "S"
           DO caL_1300w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.185 .AND. vmOn<>2 .AND.  ;
           mcCc>=vcL4-3 .AND. mcCc<=vcL4+6.2
           STORE 02 TO vmOn
           STORE "US$" TO vsIg
           STORE viTe TO ciTe
           DO toT_1200w IN PVI1200W WITH "S"
           DO caL_1300w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.471 .AND. mcCc>=mcO0+13  ;
           .AND. mcCc<=mcO0+30.4 .AND. vsWg<>1
           STORE 01 TO vsWg
           DO swG_1200w IN PVI1200W WITH "S"
           STORE viTe TO ciTe
           DO caL_1300w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.471 .AND. mcCc>=mcO0+30.4  ;
           .AND. mcCc<=mcO0+42.4 .AND. vsWg<>2
           STORE 02 TO vsWg
           DO swG_1200w IN PVI1200W WITH "S"
           STORE viTe TO ciTe
           DO caL_1300w IN PVI1200W
           STORE ciTe TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=vfB1-0.028 .AND. mfIl<=vfB1+1.185 .AND. mcCc>=vcB1-0.1  ;
           .AND. mcCc<=vcB1+3.9
           STORE 01 TO viTe
           STORE k_F6 TO mkEy
      CASE mfIl>=vfB2-0.028 .AND. mfIl<=vfB2+1.185 .AND. mcCc>=vcB2-0.2  ;
           .AND. mcCc<=vcB2+3.8 .AND. vsW0=1
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB3-0.028 .AND. mfIl<=vfB3+1.185 .AND. mcCc>=vcB3-0.2  ;
           .AND. mcCc<=vcB3+3.8 .AND. vsW0=1
           STORE 01 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB4-0.028 .AND. mfIl<=vfB4+1.185 .AND. mcCc>=vcB4-0.2  ;
           .AND. mcCc<=vcB4+3.8
           STORE 01 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB5-0.028 .AND. mfIl<=vfB5+1.185 .AND. mcCc>=vcB5-0.2  ;
           .AND. mcCc<=vcB5+3.8 .AND. vsW0=1
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB6-0.028 .AND. mfIl<=vfB6+1.185 .AND. mcCc>=vcB6-0.2  ;
           .AND. mcCc<=vcB6+3.8
           STORE k_F7 TO mkEy
      CASE mfIl>=vfB7-0.028 .AND. mfIl<=vfB7+1.185 .AND. mcCc>=vcB7-0.2  ;
           .AND. mcCc<=vcB7+3.8
           STORE k_F9 TO mkEy
      CASE mfIl>=vfB8-0.028 .AND. mfIl<=vfB8+1.185 .AND. mcCc>=vcB8-0.2  ;
           .AND. mcCc<=vcB8+3.8
           STORE k_F4 TO mkEy
      CASE mfIl>=vfB9-0.028 .AND. mfIl<=vfB9+1.185 .AND. mcCc>=vcB9-0.2  ;
           .AND. mcCc<=vcB9+3.8 .AND. vsW0=2 .AND. LEN(ALLTRIM(vtIt))<>0
           STORE 99 TO mkEy
           STORE 00 TO vmDd
           STORE SPACE(04) TO vtIt
           STORE SPACE(70) TO vnTt
           DO dtI_1200w IN PVI1200W
      CASE mfIl>=mfI0+0.9 .AND. mfIl<=mfI0+2.042 .AND. viTe<>1 .AND. mcCc>= ;
           mcO0+1 .AND. mcCc<=mcO0+vtM1+13.6
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.4 .AND. mfIl<=mfI0+3.614 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM1+13.6 .AND. vsW0=2 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM2+13.6 .AND. vsW0=2 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL1-0.4  ;
           .AND. mcCc<=vcL1+vtM2 .AND. vsW0=2 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL2-6.1  ;
           .AND. mcCc<=vcL2+15.7 .AND. vsW0=2 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.114 .AND. mcCc>=vcL3-5.3  ;
           .AND. mcCc<=vcL3+12.3 .AND. vsW0=2 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+5.4 .AND. mfIl<=mfI0+6.614 .AND. mcCc>=mcO0+1 .AND.  ;
           mcCc<=mcO0+vtM3+13.6 .AND. ((vsW0=1 .AND. viTe<>2) .OR. (vsW0= ;
           2 .AND. viTe<>7))
           DO CASE
                CASE vsW0=1
                     STORE 2 TO ciTx
                CASE vsW0=2
                     STORE 7 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+6.971 .AND. mfIl<=mfI0+8.114 .AND. mcCc>=mcO0+1  ;
           .AND. mcCc<=mcO0+vtM2+13.6 .AND. ((vsW0=1 .AND. viTe<>3) .OR.  ;
           (vsW0=2 .AND. viTe<>8))
           DO CASE
                CASE vsW0=1
                     STORE 3 TO ciTx
                CASE vsW0=2
                     STORE 8 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+6.971 .AND. mfIl<=mfI0+8.114 .AND. mcCc>=vcL1-0.4  ;
           .AND. mcCc<=vcL1+vtM2 .AND. ((vsW0=1 .AND. viTe<>4) .OR. (vsW0= ;
           2 .AND. viTe<>9))
           DO CASE
                CASE vsW0=1
                     STORE 4 TO ciTx
                CASE vsW0=2
                     STORE 9 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+0.9 .AND. mfIl<=mfI0+2.042 .AND. mcCc>=vcL4-11.2  ;
           .AND. mcCc<=vcL4+12.6 .AND. ((vsW0=1 .AND. viTe<>5) .OR. (vsW0= ;
           2 .AND. viTe<>10))
           DO CASE
                CASE vsW0=1
                     STORE 5 TO ciTx
                CASE vsW0=2
                     STORE 10 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+4.185 .AND. mfIl<=mfI0+5.328 .AND. mpIg=1 .AND.  ;
           mcCc>=vcL5-8.5 .AND. mcCc<=vcL5+8.1 .AND. ((vsW0=1 .AND. viTe<> ;
           6) .OR. (vsW0=2 .AND. viTe<>11))
           DO CASE
                CASE vsW0=1
                     STORE 6 TO ciTx
                CASE vsW0=2
                     STORE 11 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+9.4 .AND. mfIl<=mfI0+10.614 .AND. mcCc>=mcO0+0.4  ;
           .AND. mcCc<=mcO0+110.8 .AND. ((vsW0=1 .AND. viTe<>7) .OR.  ;
           (vsW0=2 .AND. viTe<>12))
           DO CASE
                CASE vsW0=1
                     STORE 7 TO ciTx
                CASE vsW0=2
                     STORE 12 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+10.9 .AND. mfIl<=mfI0+12.042 .AND. mcCc>=mcO0+19.2  ;
           .AND. mcCc<=mcO0+110.6 .AND. ((vsW0=1 .AND. viTe<>8) .OR.  ;
           (vsW0=2 .AND. viTe<>13))
           DO CASE
                CASE vsW0=1
                     STORE 8 TO ciTx
                CASE vsW0=2
                     STORE 13 TO ciTx
           ENDCASE
      CASE mfIl>=mfI0+12.4 .AND. mfIl<=mfI0+13.614 .AND. mcCc>=mcO0+43  ;
           .AND. mcCc<=mcO0+53.2 .AND. ((vsW0=1 .AND. viTe<>9) .OR. (vsW0= ;
           2 .AND. viTe<>14))
           DO CASE
                CASE vsW0=1
                     STORE 9 TO ciTx
                CASE vsW0=2
                     STORE 14 TO ciTx
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_1300a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy<>99
           STORE ciTx TO viTe
      ENDIF
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Hl1_1300a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 01 SAY  ;
   "En este programa, sólo se pueden crear Pedidos de Ventas nuevos.  Los"
 @ pfIl+1, 01 SAY  ;
   "clientes, no necesariamente tienen que estar registrados en el Sistema; la"
 @ pfIl+2, 01 SAY "fecha tiene que tener el Tipo de Cambio registrado."
 @ pfIl+4, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+6, 19 SAY ":" STYLE "BT"
 @ pfIl+7, 19 SAY ":" STYLE "BT"
 @ pfIl+8, 19 SAY ":" STYLE "BT"
 @ pfIl+6, 01 SAY "F10" STYLE "BT"
 @ pfIl+7, 01 SAY "ESC" STYLE "BT"
 @ pfIl+8, 01 SAY "F1" STYLE "BT"
 @ pfIl+6, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+8, 21 SAY "Ayuda del Programa"
 DO CASE
      CASE viTe=1
           @ pfIl+7, 21 SAY "Regresar al Menú Principal"
      OTHERWISE
           @ pfIl+7, 21 SAY "Regresar al primer campo"
 ENDCASE
 STORE pfIl+9 TO pfIl
 IF viTe=1 .AND. vsW0=1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "F2" STYLE "BT"
      @ pfIl+1, 01 SAY "F3" STYLE "BT"
      @ pfIl+0, 21 SAY "Consulta de Clientes registrados"
      @ pfIl+1, 21 SAY "Buscar palabra o frase y mostrarla en consulta"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl, 19 SAY ":" STYLE "BT"
 @ pfIl, 01 SAY "F4" STYLE "BT"
 @ pfIl, 21 SAY "Consultar Titulares"
 STORE pfIl+1 TO pfIl
 IF vsW0=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F5" STYLE "BT"
      @ pfIl, 21 SAY "Seleccionar Sucursal de Cliente"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "F6" STYLE "BT"
 @ pfIl+1, 01 SAY "F7" STYLE "BT"
 @ pfIl+0, 21 SAY "Cambiar Opción de Clientes existentes a nuevos y vic."
 @ pfIl+1, 21 SAY "Elegir Forma de Pago"
 STORE pfIl+2 TO pfIl
 IF viTe=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "F8" STYLE "BT"
      @ pfIl, 21 SAY "Cambiar Nombre de Cliente a Tipo Oracion"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "F9" STYLE "BT"
 @ pfIl+1, 01 SAY "ALT C" STYLE "BT"
 @ pfIl+2, 01 SAY "ALT Z" STYLE "BT"
 @ pfIl+0, 21 SAY "Elegir Vendedor"
 @ pfIl+1, 21 SAY "Copiar Detalle de Otro Documento de Venta"
 @ pfIl+2, 21 SAY "Copiar Detalle de una Guia de Entrada"
 STORE pfIl+3 TO pfIl
 IF viTe=1 .AND. vsW0=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 21 SAY "Des-Seleccionar Cliente"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+2, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "CTRL O" STYLE "BT"
 @ pfIl+2, 01 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 21 SAY "Recuperar ultima digitacion del dia cuando hay un corte"
 @ pfIl+1, 21 SAY "de luz"
 @ pfIl+2, 21 SAY "Ir al campo derecho, llegando al final pasa al Detalle"
 STORE pfIl+3 TO pfIl
 IF viTe<>1
      @ pfIl+0, 19 SAY ":" STYLE "BT"
      @ pfIl+1, 19 SAY ":" STYLE "BT"
      @ pfIl+0, 01 SAY "CTRL <-" STYLE "BT"
      @ pfIl+1, 01 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+0, 21 SAY "Ir al campo izquierdo"
      @ pfIl+1, 21 SAY "Ir al Primer campo"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "CTRL END" STYLE "BT"
 @ pfIl+1, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 21 SAY "Ir al Último campo"
 @ pfIl+1, 21 SAY "Ir al campo inferior, llegando al final pasa al Detalle"
 STORE pfIl+2 TO pfIl
 IF viTe<>1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 21 SAY "Ir al campo superior"
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
 RELEASE pfIl
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 FLUSH
 = INKEY(0.01)
 DO deL_file1 IN PVI1300A
 DO deL_1200w IN PVI1200W
 RELEASE cuLt
 RELEASE vtRa, vpPn, vpPa, vpPd, vpPp, vtEc, vfDe, viNt, vsRp, vpEd, vtIm,  ;
         vtCv, vnTc
 RELEASE ctDo, csEr, cdOc, vfCh, ccM1, xcM1, icM1, ucM1, vgRu, vnGr, vsR1,  ;
         cmOn, vcM3
 RELEASE vcM4, vcM5, vcM6, xtOt, cvAl, cdTr, tpEr, vtPp, xsIg
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
 STORE 999 TO mkEy
 DO deL_file2 WITH "1A", "S"
 DO deL_file2 WITH "2", "S"
 DO deL_file2 WITH "3", "S"
 DO deL_file2 WITH "4", "S"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "S"
 DO deL_file2 WITH "8", "S"
 DO deL_file2 WITH "9", "S"
 DO deL_file2 WITH "0", "S"
 DO deL_file2 WITH "A", "S"
 DO deL_file2 WITH "B", "S"
 DO deL_file2 WITH "C", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8, ntM9, ntM0, ntMa,  ;
         ntMb, ntMc
ENDPROC
*
