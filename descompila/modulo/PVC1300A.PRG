 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8, ntMa, ntMb, ntMc
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE "0006" TO ntM7
 STORE "0007" TO ntM8
 STORE "0008" TO ntMa
 STORE "0009" TO ntMb
 STORE "0010" TO ntMc
 STORE 01 TO meRr
 DO taB_facturas IN PUX0001A
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
 INDEX ON f1300tdo+f1300ser+f1300doc TAG f1300doc
 INDEX ON UPPER(f1300nom)+f1300tdo+f1300ser+f1300doc TAG f1300nom
 INDEX ON UPPER(f1300ntt)+f1300tdo+f1300ser+f1300doc TAG f1300ntt
 INDEX ON SUBSTR(DTOC(f1300fem), 7, 4)+SUBSTR(DTOC(f1300fem), 4, 2)+ ;
       SUBSTR(DTOC(f1300fem), 1, 2)+f1300tdo+f1300ser+f1300doc TAG f1300fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM2cod)+"*" TAG ftM2cod
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 0
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
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM3cod)+"*" TAG ftM3cod
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[19, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM4TIT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CLI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NTT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4VEN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4NVE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4FVE"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM4ACU"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM4COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4PLA"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM4TAM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE "TM01"+ntM4+meXt TO mdBf
 DO WHILE .T.
      ntM4 = STRTRAN(STR(VAL(ntM4)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM4+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM4="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM4tit+ftM4tdo+ftM4ser+ftM4doc TAG ftM4tit
 INDEX ON ftM4ven+ftM4tit+ftM4tdo+ftM4ser+ftM4doc TAG ftM4ven
 INDEX ON ftM4tdo+ftM4ser+ftM4doc TAG ftM4doc
 INDEX ON ALLTRIM(ftM4cod)+"*"+ftM4tdo+ftM4ser+ftM4doc TAG ftM4cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[7, 4]
 STORE 1 TO x
 afIl[x, 1] = "A"
 afIl[x, 2] = "C"
 afIl[x, 3] = 60
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "B"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "C"
 afIl[x, 2] = "N"
 afIl[x, 3] = 20
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "D"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "E"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "G"
 afIl[x, 2] = "N"
 afIl[x, 3] = 20
 afIl[x, 4] = 4
 STORE "TM01"+ntM5+meXt TO mdBf
 DO WHILE .T.
      ntM5 = STRTRAN(STR(VAL(ntM5)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM5+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM5="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 DO tm2_1200a IN PVI1200A
 STORE "TM01"+ntM6+meXt TO mdBf
 DO WHILE .T.
      ntM6 = STRTRAN(STR(VAL(ntM6)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM6+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM6="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[1, 4]
 STORE 1 TO x
 afIl[x, 1] = "FRASE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 254
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
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[09, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM8COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM8LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM8AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM8AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM8CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
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
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "N"
           DO deL_file2 WITH "7", "N"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM8cod)+"*" TAG ftM8cod
 INDEX ON UPPER(ftM8des)+ALLTRIM(ftM8cod)+"*" TAG ftM8des
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
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "N"
           DO deL_file2 WITH "7", "N"
           DO deL_file2 WITH "8", "S"
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
 afIl[x, 3] = mtMa
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
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "N"
           DO deL_file2 WITH "7", "N"
           DO deL_file2 WITH "8", "S"
           DO deL_file2 WITH "A", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftMbgru+ALLTRIM(ftMbcod)+"*"+STR(ftMbrcc, 2, 0) TAG ftMbgru
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[1, 4]
 STORE 1 TO x
 afIl[x, 1] = "DNI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
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
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "N"
           DO deL_file2 WITH "7", "N"
           DO deL_file2 WITH "8", "S"
           DO deL_file2 WITH "A", "S"
           DO deL_file2 WITH "B", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 DO ab1_1300a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Clientes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1201COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Con_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1204CDG
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2600", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
 DO abR_0000a IN PUX0000A WITH "2602", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2602DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2603", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2603DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2604", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Con_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2604DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Productos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      DO deL_file1
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
      DO deL_file1
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pro_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2118COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sto_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2990COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Kardex_Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2991COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "3500", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3500DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "3502", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Tot_Vtas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3502TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "3510", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "3511", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3511DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Det_Ing_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "3610", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "3611", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Nota
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3611DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 31
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Cli
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      DO deL_file1
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
      DO deL_file1
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Fpago
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9112FPA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Vendedores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 36
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Distritos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9115DIS
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "9116", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tecnico
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9116COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 39
 DO abR_0000a IN PUX0000A WITH "9212", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Choferes
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9212COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 40
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Unidades
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9213UNI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 41
 DO abR_0000a IN PUX0000A WITH "9214", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Almacen
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9214NOM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 42
 DO abR_0000a IN PUX0000A WITH "9215", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Transportista
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9215NOM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 43
 DO abR_0000a IN PUX0000A WITH "9216", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Grupos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9216COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      CLOSE INDEXES
      CLOSE DATABASES
      STORE "Archivo Utilitario de Grupos de Productos vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
 ENDIF
 SELECT 44
 DO abR_0000a IN PUX0000A WITH "9217", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Entradas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9217TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 45
 DO abR_0000a IN PUX0000A WITH "9218", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Salidas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9218TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 46
 DO abR_0000a IN PUX0000A WITH "9219", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Carros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9219COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 47
 DO abR_0000a IN PUX0000A WITH "9314", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Ing_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9314NTI
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 48
 DO abR_0000a IN PUX0000A WITH "9397", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias NumeracionC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9397TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 49
 DO abR_0000a IN PUX0000A WITH "9998", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Numeros
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9998NUM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 50
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
 SELECT 51
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_Doc
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 52
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Cop_Prod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 53
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Seleccion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM3COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 54
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Cargos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="6"
           SET ORDER TO FTM4DOC
      OTHERWISE
           SET ORDER TO FTM4TIT
 ENDCASE
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 55
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Xls
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 56
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 57
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_PLC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 58
 STORE "TM01"+ntM8+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM8COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 59
 STORE "TM01"+ntMa+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Hoja
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTMAGRU
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 60
 STORE "TM01"+ntMb+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Hoja1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTMBGRU
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 61
 STORE "TM01"+ntMc+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_DNI
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 62
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"INFOPRN.DBF" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"INFOPRN.DBF" TO mdBf
 ENDIF
 Use &mDBF Share Alias Formato
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO INFOPRN
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 63
 DO abR_0000a IN PUX0000A WITH "7000", "F"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias FactElect
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 64
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
 STORE 00 TO cuLt
 STORE 64 TO muLt
 SEEK "90"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT3
 ELSE
      STORE "FACT\" TO mpT3
 ENDIF
 SEEK "91"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT4
      STORE mpT4+"FU019999.DBF" TO mdBf
      If File("&mDBF")
           SELECT 65
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
           STORE 65 TO muLt
      ENDIF
 ENDIF
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsW7, vsW9,  ;
        vsXx, vxLs
 PUBLIC vyEa, vlIn, vpAg, vpAl, cpAl, vuFi, vuCo, vuC1, vfI0, vfI1, vcO0,  ;
        vcO1, vcO2
 PUBLIC vcO3, vfIl, ifIl, ufIl, cfIl, ffIl, vfFs, ifFs, ufFs, ffFs, cfFs,  ;
        vfFr, ifFr
 PUBLIC ufFr, ffFr, cfFr, icLn, ucLn, vcLn, icL1, ucL1, vtB1, vtB2, vtB3,  ;
        vtB4, vtB5
 PUBLIC vtB6, vtB7, vtB8, vtB9, vtB0, vtBa, vtBb, vfB1, vfB2, vfB3, vfB4,  ;
        vfB5, vfB6
 PUBLIC vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf, vfBg,  ;
        vfBh, vfBi
 PUBLIC vfBj, vfBk, vfBl, vfBm, vfBn, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
        vcB7, vcB8
 PUBLIC vcB9, vcB0, vcBa, vcBb, vcBc, vcBd, vcBe, vcBf, vcBg, vcBh, vcBi,  ;
        vcBj, vcBk
 PUBLIC vcBl, vcBm, vcBn, vtDo, itDo, utDo, xtDo, xtD1, xtD2, xtD3, ctDo,  ;
        vsEr, isEr
 PUBLIC usEr, xsEr, xsE2, xsE3, csEr, vdOc, idOc, udOc, xdOc, xdO2, cdOc,  ;
        vnOm, inOm
 PUBLIC unOm, xnOm, cnOm, vfEm, ifEm, ufEm, xfEm, cfEm, vnTt, inTt, unTt,  ;
        xnTt, cnTt
 PUBLIC vrEc, irEc, urEc, crEc, xrEc, vrCc, irCc, urCc, frCc, crCc, xrCc,  ;
        vcDg, icDg
 PUBLIC ucDg, ccDg, vpDd, ipDd, upDd, cpDd, vsEc, isEc, usEc, csEc, vaPp,  ;
        xaPp, vaPm
 PUBLIC xaPm, vnO1, xnO1, xtIt, vtIt, xcLi, vcLi, xsUc, vsUc, xdIr, vdIr,  ;
        xdIs, vdIs
 PUBLIC xnDi, xdEp, vdEp, xnDp, xrUc, vrUc, crUc, xdNi, cdNi, vdNi, xtDi,  ;
        vsR1, isR1
 PUBLIC usR1, csR1, vdO1, idO1, udO1, cdO1, xtEl, vtEl, xtRa, xlUg, vlUg,  ;
        xlUd, vlUd
 PUBLIC xlUp, vlUp, xpPn, xpPa, xpPd, xpPp, xvEn, vvEn, xnVe, vnVe, vcOm,  ;
        xcOm, xtEc
 PUBLIC vtEc, xnTe, vnTe, xdTc, vdTc, xdCl, vdCl, xsWg, vsWg, xpGd, vpGd,  ;
        xfDe, vfDe
 PUBLIC cfDe, xmOn, cmOn, vmOn, xsIg, vsIg, xfPa, vfPa, xnFp, vnFp, xdIa,  ;
        vdIa, cdIa
 PUBLIC xtFp, xpIg, vpIg, xnEt, tnEt, xiGv, tiGv, xiNt, xtOt, ttOt, ctOt,  ;
        vtOt, vtO1
 PUBLIC vtO2, xsRp, xpEd, xcM1, vcM1, xcM2, vcM2, xcOp, xeSt, xcAn, tcAn,  ;
        xcMm, xcMp
 PUBLIC xcA1, xcA2, xcA3, xcA4, xpOr, xdEt, xuSu, xdAt, xtIm, vtIm, xmAq,  ;
        xoPc, xuN1
 PUBLIC xuN2, xmLa, xmAn, xp11, xp12, xp21, xp22, vcOd, vtPo, ctPo, ctP1,  ;
        ctPp, ctI1
 PUBLIC ceSt, cdI1, cmEs, cmE1, caNo, caN1, vsLd, vsLc, vcAn, ccAn, vcAj,  ;
        ccAj, vsRr
 PUBLIC vpD1, vnUm, xtCa, tvAl, tvL1, tvL2, vpRe, tdC1, tdC2, tdC3, clAr,  ;
        caNc, vtIp
 PUBLIC vfOt, vmD3, vpEs, tpEs, vnTi, veNt, vgRu, vnGr, vcSt, vpIe, xpIe,  ;
        cdCr, tpLa
 PUBLIC vmOt, vsE1, vtD1, viTe, vaLm, vnAl, vpPa, xpPa, vpPd, xpPd, vpPp,  ;
        xpPp, vpPn
 PUBLIC xpPn, vtRa, vtR1, vtRu, vtRr, vtDs, vtDp, vtNo, vtN1, vtDi, vcHo,  ;
        vcH2, vlC1
 PUBLIC vlC2, vpLc, vpL2, vmR1, vmR2, vaL1, vnA1, vfE1, vcIm, vlG2, vlD2,  ;
        vlP2, vtCl
 PUBLIC vnTc, vcLl, vfRa, vtCa, vtCs, vtCv, vcTd, xcTd, vpOr, viPe, tpEr,  ;
        vdTr, tnPe
 PUBLIC vcM3, vcM4, vcM5, vcM6, vtDd, vfAm, xbAs, xdEs, vdEs, vdCr, vpEr,  ;
        vlA1, vlA2
 PUBLIC vaN1, vaN2, veSp, vlEc, vtPp, vcUv, vnUv, vcUc, vnUc, vmEd
 PUBLIC vpAn_11, vpAn_12, vpAn_13, vpAn_99
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW4, vsW6, vsW7, vsW9, vlEc
 STORE 00 TO vsW3, tpEr, vpAg
 STORE "BO" TO itDo, utDo
 STORE msEr(02) TO isEr, usEr
 STORE SPACE(02) TO vtDd
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(70) TO vnOm, inOm, unOm, vpAl
 STORE SUBSTR(DTOC(DATE()), 7, 4) TO vyEa
 IF wtPo<>"1" .AND. wtPo<>"6"
      STORE 3 TO vsW0
 ENDIF
 SELECT tiEndas
 SEEK "90"
 IF  .NOT. EOF()
      STORE UPPER(ALLTRIM(f9991pth)) TO mpT3
 ELSE
      STORE "FACT\" TO mpT3
 ENDIF
 SELECT caB_fact
 SET NEAR ON
 SEEK itDo+isEr+"ZZ"
 SET NEAR OFF
 IF EOF() .OR. f1300tdo+f1300ser<>itDo+isEr
      IF EOF()
           GOTO BOTTOM
      ELSE
           SKIP -1
      ENDIF
 ENDIF
 DO muE_1300b IN PVC1300B WITH "F", "v"
 SET READBORDER ON
 DO p00_1300a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300a
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
           CASE mkEy=k_F1
                DO hl1_1300a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Alt_c .AND. wtPo="1"
                DO coLsc3
                SAVE SCREEN TO vpAn_11
                DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                @ ifIl+0.8, mcO0+69 TO ifIl+5.0, mcO0+100.1 PATTERN 1 PEN 1
                @ ifIl+0.0, mcO0+68 TO ifIl+4.5, mcO0+099.0 PATTERN 1 PEN 3
                @iFIL+1.5,mCO0+74 Say "Año:" Font "&mLetRom",12 Style "BQ"
                DO WHILE .T.
                     IF mkEy=k_Clic
                          DO clP_coo
                          DO CASE
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+59.4 .AND. mcCc<=mmC1+68
                                    STORE k_Enter TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+68 .AND. mcCc<=mmC1+77
                                    STORE k_F1 TO mkEy
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+77 .AND. mcCc<=mmC1+85.80
                                    STORE k_Esc TO mkEy
                                    EXIT
                               CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11  ;
                                    .AND. mcCc>=mmC1+85.8 .AND. mcCc<=mmC1+95
                                    STORE k_F10 TO mkEy
                               OTHERWISE
                                    STORE 99 TO mkEy
                          ENDCASE
                     ENDIF
                     DO CASE
                          CASE mkEy=k_F10
                               DO reTorna
                          CASE mkEy=k_F1
                               DO hl3_1300a
                          CASE mkEy=k_Esc
                               STORE 99 TO mkEy
                               EXIT
                          CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vyEa))=0
                               DO ab1_1300a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 1 TO vsW9
                               STORE SPACE(07) TO idOc
                               EXIT
                          CASE mkEy=k_Enter
                               IF LEN(ALLTRIM(muNi))=0
                                    STORE mpTh+"D"+vyEa+"\FV"+mcIi+ ;
                                     "1300.DBF" TO mdBf
                               ELSE
                                    STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+ ;
                                     mcIi+"1300.DBF" TO mdBf
                               ENDIF
                               DO CASE
                                    Case .not.File("&mDBF") .and. vYEA <> Substr(Dtoc(Date()),7,4)
                                         STORE  ;
                                          "No hay documentos en este Año..."  ;
                                          TO mmSj
                                         DO poNmsj
                                    Case .not.File("&mDBF") .and. vYEA = Substr(Dtoc(Date()),7,4)
                                         DO ab1_1300a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE 1 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                                    OTHERWISE
                                         DO ab2_1300a
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         STORE 2 TO vsW9
                                         STORE SPACE(07) TO idOc
                                         EXIT
                               ENDCASE
                     ENDCASE
                     DO coLbln
                     STORE k_Enter TO mkEy
                     @iFIL+1.5,mCO0+84 Get vYEA Font "&mLetRom",12 Style "NQ" Size 1,5.4 Pict "9999" Color ,&mColBlN
                     SET CURSOR ON
                     READ
                     SET CURSOR OFF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                     CASE vsW0=4
                          @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
                ENDCASE
           CASE mkEy=k_F9
                DO opC_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO acC_1200w IN PVI1200W WITH "1"
                ENDIF
                DO CASE
                     CASE wtPo$"1456"
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                     CASE wtPo="2"
                          DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
                     CASE wtPo="3"
                          DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO pvC1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
                     DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO acC_1200w IN PVI1200W WITH "1"
                ENDIF
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE vsW0=1
                STORE VAL(vdOc) TO vdOc
                @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
                @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!!"     Color ,&mColBlN
                @iFIL-4,mCO0+27.0 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
           CASE vsW0=2
                @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
           CASE vsW0=3
                @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
           CASE vsW0=4
                @iFIL-4,mCO0+16.0 Get vNTT Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"    Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
      DO CASE
           CASE vsW0=1
                DO coLbln
                vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
                @iFIL-4,mCO0+27 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_1300a
 DO rs2_1300a
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_1300a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.4 .AND. mcCc<=mmC1+68
                     STORE k_Enter TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                     EXIT
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F1
                DO hl2_1300a
           CASE mkEy=k_F12
                DO rs1_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_1300a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal_doc
                ZAP
                REINDEX
                SELECT caB_fact
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1300nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1300ntt)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1300cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f1300cm2)))<>0
                          DO muE_1300a
                          DO grA_1300a
                          SELECT caB_fact
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal_doc
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Lin_1300a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+003.8 TO pfIn, mcO0+003.8
 @ piNi, mcO0+008.8 TO pfIn, mcO0+008.8
 @ piNi, mcO0+019.6 TO pfIn, mcO0+019.6
 @ piNi, mcO0+024.8 TO pfIn, mcO0+024.8
 @ piNi, mcO0+038.5 TO pfIn, mcO0+038.5
 @ piNi, mcO0+094.5 TO pfIn, mcO0+094.5
 @ piNi, mcO0+128.9 TO pfIn, mcO0+128.9
 @ piNi, mcO0+144.9 TO pfIn, mcO0+144.9
 @ piNi, mcO0+174.4 TO pfIn, mcO0+174.4
ENDPROC
*
PROCEDURE P01_1300a
 STORE vfI0+16 TO ifFs, ufFs, vfFs
 STORE ifFs+18 TO ffFs
 IF vsW4=2
      STORE ifFs-14 TO ifFs
      STORE ifFs-1 TO ifFs
 ENDIF
ENDPROC
*
PROCEDURE P02_1300a
 DO coLscz
 DO CASE
      CASE vsW6=1
           @iFIL-1.25,mCO0+26.0 Say "F.Emisión" Font "&mLetAri",9 Style "BQ" Size 1,10
      CASE vsW6=2
           @iFIL-1.25,mCO0+26.0 Say "F.Vencimi" Font "&mLetAri",9 Style "BQ" Size 1,10
      CASE vsW6=3
           @iFIL-1.25,mCO0+26.0 Say "F.Despach" Font "&mLetAri",9 Style "BQ" Size 1,10
 ENDCASE
ENDPROC
*
PROCEDURE P00_1300a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 21 TO muFi
 STORE 124.2 TO muCo
 STORE 22.3 TO vuFi
 STORE 126 TO vuCo, vuC1
 STORE muFi+18 TO muFi
 STORE muCo+70 TO muCo
 STORE vuFi+18 TO vuFi
 STORE vuCo+60 TO vuCo
 STORE 193.6 TO vuC1
 STORE ((mwFi-muFi)/2)+2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE (mwFi-vuFi)/2 TO vfI0
 STORE (mwCo-vuCo)/2 TO vcO0
 STORE (mwCo-100)/2 TO vcO1
 STORE (mwCo-126)/2 TO vcO2
 STORE (mwCo-vuC1)/2 TO vcO3
 IF wtPo="6" .AND. mrEs>"3"
      STORE mcO0-32 TO mcO0
      STORE vcO0-32 TO vcO0
      STORE vcO3-32 TO vcO3
 ENDIF
 STORE mcO0 TO icLn
 STORE vcO3+0.4 TO icL1
 STORE vcO3+vuC1-0.2 TO ucL1
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-5) TO ffIl
 STORE mfI0+1.3 TO ifFr, ufFr, vfFr
 STORE ifFr+(INT(muFi)-6) TO ffFr
 IF wtPo="6"
      STORE ffIl-8 TO ffIl
 ENDIF
 STORE mcO0+193.9 TO ucLn
 STORE vcO0+116.7 TO vcLl
 STORE ifIl-5.2 TO vfI1
 DO p01_1300a
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta de Documentos de Ventas"
      CASE wtPo="2"
           DO tiT_0000a WITH  ;
              "Anulación de Documentos de Ventas/Procesos especiales"
      CASE wtPo="3"
           DO tiT_0000a WITH "Eliminación de Documentos de Ventas"
      CASE wtPo="4"
           DO tiT_0000a WITH "Generación de Guías de Remisión"
      CASE wtPo="5"
           DO tiT_0000a WITH "Consulta e Impresión de Cotizaciones"
      CASE wtPo="6"
           DO tiT_0000a WITH  ;
              "Consulta de Documentos de Ventas/Procesos especiales"
 ENDCASE
 DO coLsc1
 SAVE SCREEN TO vpAn_99
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 @ ffIl+1.1, mcO0 TO ffIl+1.1, mcO0+muCo
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO liN_1300a WITH ifIl-0.2, ffIl+1
 @ ifIl-1.3, mcO0+019.6 TO ifIl, mcO0+019.6
 @ ifIl-1.3, mcO0+024.8 TO ifIl, mcO0+024.8
 @ ifIl-1.3, mcO0+038.5 TO ifIl, mcO0+038.5
 @ ifIl-1.3, mcO0+094.5 TO ifIl, mcO0+094.5
 @ ifIl-1.3, mcO0+128.9 TO ifIl, mcO0+128.9
 @ ifIl-1.3, mcO0+144.9 TO ifIl, mcO0+144.9
 @ ifIl-1.3, mcO0+174.4 TO ifIl, mcO0+174.4
 DO coLblz
 @iFIL-1.2,mCO0+000.0 Say "Número"         Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+020.8 Say "Est"            Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+039.1 Say "Cliente"        Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+095.4 Say "Dirección"      Font "&mLetAri",9 Style "BT"
 IF wtPo="6"
      @iFIL-1.2,mCO0+130.0 Say "Estado-Item" Font "&mLetAri",9 Style "BT"
 ELSE
      @iFIL-1.2,mCO0+132.1 Say "F.de Pago"   Font "&mLetAri",9 Style "BT"
 ENDIF
 @iFIL-1.2,mCO0+150.2 Say "Observaciones"  Font "&mLetAri",9 Style "BT"
 @iFIL-1.2,mCO0+188.1 Say "Total"          Font "&mLetAri",9 Style "BT"
 IF wtPo="6"
      DO coLsc4
      STORE ffIl+2.3 TO vfFs
      STORE vfFs+7 TO ffFs
      @ vfFs-1.1, icL1-0.4 CLEAR TO vfFs, ucL1+0.5
      @ ffIl+1.1, icL1-0.5 TO ffFs+1.1, ucL1+0.6
      @vFFS-1.1,vCO3+000.8 Say "Ite"                 Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+004.2 Say "Descripción impresa" Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+076.5 Say "Cantidad"            Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+088.4 Say "Estados"             Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+098.4 Say "Refer."              Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+110.5 Say "m3 o p2"             Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+124.0 Say "Unid.Vta"            Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+137.0 Say "Código"              Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+150.0 Say "Precio Unitario"     Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+167.0 Say "%Dcto."              Font "&mLetAri",8 Style "BQ"
      @vFFS-1.1,vCO3+179.0 Say "Precio Total"        Font "&mLetAri",8 Style "BQ"
      DO coLsc3
      @ vfFs-0.0, icL1 CLEAR TO ffFs+1.0, ucL1
      @ vfFs-0.1, icL1 TO vfFs-0.1, ucL1
      DO liN_1300c IN PVC1300C WITH vfFs-1.1, ffFs+1.1
 ENDIF
 Define Popup vTB1 from vFI1+03.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9214NOM,1,30)+", "+F9214DIR+" "+F9214SR1+","+F9214SR2+","+F9214SR3 Scroll Color Scheme 3 Footer "CONSULTA DE LUGARES DE PARTIDA/ALMACENES"
 Define Popup vTB2 from vFI1+05.0,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9215NOM,1,30)+", "+F9215DIR Scroll Color Scheme 3 Footer "CONSULTA DE TRANSPORTISTAS"
 Define Popup vTB3 from vFI1+10.0,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field F9212NOM+" "+F9212LIC Scroll Color Scheme 3 Footer "CONSULTA DE CHOFERES"
 Define Popup vTB4 from vFI1+11.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field F9212NOM+" "+F9212LIC Scroll Color Scheme 3 Footer "CONSULTA DE AYUDANTES"
 Define Popup vTB5 from vFI1+13.0,vCO2 to vFI1+40,vCO2+55.5  Font "&mLetCou",9 Style "NQ" Prompt Field F9219MAR+" "+F9219PLA Scroll Color Scheme 3 Footer "CONSULTA DE CARROS"
 Define Popup vTB6 from vFI1+14.5,vCO2 to vFI1+40,vCO2+124.5  Font "&mLetCou",9 Style "NQ" Prompt Field F9219MAR+" "+F9219PLA Scroll Color Scheme 3 Footer "CONSULTA DE CARROS"
 Define Popup vTB7 from vFI1+19.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9214NOM,1,30)+", "+F9214DIR+" "+F9214SR1+","+F9214SR2+","+F9214SR3 Scroll Color Scheme 3 Footer "CONSULTA DE LUGARES DE PARTIDA/ALMACENES"
 Define Popup vTB8 from vFI1+22.5,vCO2 to vFI1+40,vCO2+124.5 Font "&mLetCou",9 Style "NQ" Prompt Field Substr(F9215NOM,1,30)+", "+F9215DIR Scroll Color Scheme 3 Footer "CONSULTA DE TRANSPORTISTAS"
 Define Popup vTB9 from vFI0+8.4,vCO0+000.9 to fFFS+6,vCO0+138.9 Font "&mLetCou",12 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES TITULARES"
 Define Popup vTB0 from vFI0+3.7,vCO0+129.0 to fFFS+6,vCO0+183.8 Font "&mLetCou",12 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3 Footer "FORMAS DE PAGO"
 Define Popup vTBA from vFI0+5.2,vCO0+129.0 to fFFS+6,vCO0+183.8 Font "&mLetCou",12 Style "NQ" Prompt Field F9113NOM Scroll Color Scheme 3 Footer "VENDEDORES"
 Define Popup vTBB from vFI0+6.7,vCO0+129.0 to fFFS+6,vCO0+183.8 Font "&mLetCou",12 Style "NQ" Prompt Field Substr(F9116NOM,1,42)+" ["+F9116COD+"]" Scroll Color Scheme 3 Footer "TÉCNICOS DE INSTALACIÓN"
 DO p02_1300a
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
 ON SELECTION POPUP vtB7 DO TB7_0000A
 ON SELECTION POPUP vtB8 DO TB8_0000A
 ON SELECTION POPUP vtB9 DO TB9_0000A
 ON SELECTION POPUP vtB0 DO TB0_0000A
 ON SELECTION POPUP vtBa DO TBA_0000A
 ON SELECTION POPUP vtBb DO TBB_0000A
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
           @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "!!!"     Color ,&mColBlN
           @iFIL-4,mCO0+27.0 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
      CASE vsW0=4
           @iFIL-4,mCO0+16.0 Get vNTT Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"    Color ,&mColBlN
 ENDCASE
 READ TIMEOUT 0.01
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+1  Say "Palabra:" Font "&mLetRom",10 Style "BT"
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL       Font "&mLetRom",9  Style "BQ" Size 1,70 Pict "@S70"
 IF wtPo="6"
      @iFIL+0.0,mCO0+mUCO+6 Say "Signo en Verde: Cuando el Doc. tiene Dctos.         " Font "&mLetRom",11 Style "BQ" Size 1,50
      @iFIL+1.5,mCO0+mUCO+6 Say "Documento en Rojo: Cuando esta marcado para imprimir" Font "&mLetRom",11 Style "BQ" Size 1,50
      @iFIL+3.0,mCO0+mUCO+6 Say "Estado del Documento en:   Azul: Digitado           " Font "&mLetRom",11 Style "BQ" Size 1,50
      @iFIL+4.5,mCO0+mUCO+6 Say " Rojo: Impreso, Generado / Negro: Otros             " Font "&mLetRom",11 Style "BQ" Size 1,50
      @iFIL+6.0,mCO0+mUCO+6 Say "Signo en Verde: Cuando el Doc. tiene Dctos.         " Font "&mLetRom",11 Style "BQ" Size 1,50
 ENDIF
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF msUn$"AB" .AND. mfDe<>CTOD(" ") .AND. DATE()<=mfHa
      DO prEsiona WITH "1", "INTERN", mmF1+4, mcO0+muCo-10
 ELSE
      DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 ENDIF
 IF mkEy=k_Esc
      EXIT
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Rs1_1300a
 DO p00_1300a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO muE_1300b IN PVC1300B WITH "v", "c"
      DO CASE
           CASE vsW1=1
                SELECT caB_fact
           CASE vsW1=2
                SELECT teMporal_doc
      ENDCASE
      DO seE_1300b IN PVC1300B WITH "i"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f1300tdo+f1300ser+f1300doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_1300b IN PVC1300B WITH "v", "i"
           DO muE_1300b IN PVC1300B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_1300b IN PVC1300B WITH "i"
      DO paN_1300b IN PVC1300B
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE cfIl TO vfIl
      DO muE_1300b IN PVC1300B WITH "c", "v"
      DO seE_1300b IN PVC1300B WITH "v"
 ENDIF
ENDPROC
*
PROCEDURE Rs2_1300a
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, mcO0+61 TO ifIl+4.0, mcO0+139.1 PATTERN 1 PEN 1
 @ ifIl+0.0, mcO0+60 TO ifIl+3.5, mcO0+138.0 PATTERN 1 PEN 3
 @iFIL+0.5,mCO0+61 Say "Digitar los Apellidos y/o Nombres del o los Clientes en forma parcial o total:" Font "&mLetAri",8 Style "NQ"
ENDPROC
*
PROCEDURE Mue_1300a
 STORE f1300tdo TO xtDo
 STORE f1300ser TO xsEr
 STORE f1300doc TO xdOc
 STORE f1300tit TO xtIt
 STORE f1300ntt TO xnTt
 STORE f1300cli TO xcLi
 STORE f1300suc TO xsUc
 STORE f1300nom TO xnOm
 STORE f1300app TO xaPp
 STORE f1300apm TO xaPm
 STORE f1300no1 TO xnO1
 STORE f1300dir TO xdIr
 STORE f1300dis TO xdIs
 STORE f1300dep TO xdEp
 STORE f1300ruc TO xrUc
 STORE f1300ele TO xdNi
 STORE f1300tdi TO xtDi
 STORE f1300tel TO xtEl
 STORE f1300tra TO xtRa
 STORE f1300lug TO xlUg
 STORE f1300lud TO xlUd
 STORE f1300lup TO xlUp
 STORE f1300ppn TO xpPn
 STORE f1300ppa TO xpPa
 STORE f1300ppd TO xpPd
 STORE f1300ppp TO xpPp
 STORE f1300ven TO xvEn
 STORE f1300nve TO xnVe
 STORE f1300com TO xcOm
 STORE f1300tec TO xtEc
 STORE f1300nte TO xnTe
 STORE f1300dtc TO xdTc
 STORE f1300dcl TO xdCl
 STORE f1300swg TO xsWg
 STORE f1300pgd TO xpGd
 STORE f1300fem TO xfEm
 STORE f1300fde TO xfDe
 STORE f1300mon TO xmOn
 STORE f1300fpa TO xfPa
 STORE f1300nfp TO xnFp
 STORE f1300dia TO xdIa
 STORE f1300tfp TO xtFp
 STORE f1300pig TO xpIg
 STORE f1300net TO xnEt
 STORE f1300igv TO xiGv
 STORE f1300int TO xiNt
 STORE f1300tot TO xtOt
 STORE f1300srp TO xsRp
 STORE f1300ped TO xpEd
 STORE f1300cm1 TO xcM1
 STORE f1300cm2 TO xcM2
 STORE f1300cop TO xcOp
 STORE f1300est TO xeSt
 STORE f1300can TO xcAn
 STORE f1300cmm TO xcMm
 STORE f1300det TO xdEt
 STORE f1300usu TO xuSu
 STORE f1300dat TO xdAt
 STORE f1300tim TO xtIm
 STORE f1300maq TO xmAq
ENDPROC
*
PROCEDURE Gra_1300a
 SELECT teMporal_doc
 DO gr1_1300a
ENDPROC
*
PROCEDURE Gr1_1300a
 APPEND BLANK
 REPLACE f1300tdo WITH xtDo
 REPLACE f1300ser WITH xsEr
 REPLACE f1300doc WITH xdOc
 REPLACE f1300tit WITH xtIt
 REPLACE f1300ntt WITH xnTt
 REPLACE f1300cli WITH xcLi
 REPLACE f1300suc WITH xsUc
 REPLACE f1300nom WITH xnOm
 REPLACE f1300app WITH xaPp
 REPLACE f1300apm WITH xaPm
 REPLACE f1300no1 WITH xnO1
 REPLACE f1300dir WITH xdIr
 REPLACE f1300dis WITH xdIs
 REPLACE f1300dep WITH xdEp
 REPLACE f1300ruc WITH xrUc
 REPLACE f1300ele WITH xdNi
 REPLACE f1300tel WITH xtEl
 REPLACE f1300tra WITH xtRa
 REPLACE f1300lug WITH xlUg
 REPLACE f1300lud WITH xlUd
 REPLACE f1300lup WITH xlUp
 REPLACE f1300ppn WITH xpPn
 REPLACE f1300ppa WITH xpPa
 REPLACE f1300ppd WITH xpPd
 REPLACE f1300ppp WITH xpPp
 REPLACE f1300ven WITH xvEn
 REPLACE f1300nve WITH xnVe
 REPLACE f1300com WITH xcOm
 REPLACE f1300tec WITH xtEc
 REPLACE f1300nte WITH xnTe
 REPLACE f1300dtc WITH xdTc
 REPLACE f1300dcl WITH xdCl
 REPLACE f1300swg WITH xsWg
 REPLACE f1300pgd WITH xpGd
 REPLACE f1300fem WITH xfEm
 REPLACE f1300fde WITH xfDe
 REPLACE f1300mon WITH xmOn
 REPLACE f1300fpa WITH xfPa
 REPLACE f1300nfp WITH xnFp
 REPLACE f1300dia WITH xdIa
 REPLACE f1300tfp WITH xtFp
 REPLACE f1300pig WITH xpIg
 REPLACE f1300net WITH xnEt
 REPLACE f1300igv WITH xiGv
 REPLACE f1300int WITH xiNt
 REPLACE f1300tot WITH xtOt
 REPLACE f1300srp WITH xsRp
 REPLACE f1300ped WITH xpEd
 REPLACE f1300cm1 WITH xcM1
 REPLACE f1300cm2 WITH xcM2
 REPLACE f1300cop WITH xcOp
 REPLACE f1300est WITH xeSt
 REPLACE f1300can WITH xcAn
 REPLACE f1300cmm WITH xcMm
 REPLACE f1300det WITH xdEt
 REPLACE f1300usu WITH xuSu
 REPLACE f1300dat WITH xdAt
 REPLACE f1300tim WITH xtIm
 REPLACE f1300maq WITH xmAq
ENDPROC
*
PROCEDURE Ab1_1300a
 SELECT 1
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
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Documentos de Venta de Ventas se encuentra vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE wtPo="2"
           SET FILTER TO f1300est<>"9"
      CASE wtPo="3"
           SET FILTER TO f1300est="9"
      CASE wtPo="4"
           SET FILTER TO f1300est$"12"
      CASE wtPo="5"
           SET FILTER TO f1300tdo="CT" .AND. f1300est<>"9"
 ENDCASE
 GOTO TOP
 IF BOF() .OR. EOF()
      DO CASE
           CASE wtPo="2"
                STORE "No hay Documentos de Venta de Ventas para Anular..."  ;
                      TO mmSj
           CASE wtPo="3"
                STORE "No hay Documentos de Venta de Ventas para Eliminar..."  ;
                      TO mmSj
           CASE wtPo="4"
                STORE "No hay Documentos de Venta de Ventas para generar Guías de Remisión..."  ;
                      TO mmSj
           CASE wtPo="5"
                STORE "No hay Cotizaciones..." TO mmSj
      ENDCASE
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
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
 SELECT 3
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
 SELECT 4
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
 SELECT 5
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
 SELECT 6
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
ENDPROC
*
PROCEDURE Ab2_1300a
 SELECT 1
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1300"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1300"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Cab_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Documentos de Venta de Ventas no puede estar vacío"  ;
            TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1301"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1301"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Det_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1302"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1302"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Ite_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1303"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1303"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Ser_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1304"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1304"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Con_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"D"+vyEa+"\FV"+mcIi+"1305"+meXt TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"D"+vyEa+"\FV"+mcIi+"1305"+meXt TO mdBf
 ENDIF
 Use &mDBF Shared Alias Per_Fact
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1305DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_1300a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.6
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.4
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF1+3.857 .AND. mfIl<=mmF1+7.071 .AND. mcCc>=mcO0+muCo- ;
           10 .AND. mcCc<=mcO0+muCo .AND. msUn$"AB" .AND. mfDe<>CTOD(" ")  ;
           .AND. DATE()<=mfHa
           SAVE SCREEN TO vpAn_11
           DO jaL_1300a
           WAIT CLEAR
           STORE 99 TO mkEy
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Jal_1300a
 PRIVATE pnMr
 SELECT tmP_dni
 ZAP
 SELECT caB_fact
 GOTO TOP
 SET NEAR ON
 SEEK vtDo+vsEr+vdOc
 SET NEAR OFF
 SET ESCAPE ON
 STORE 0 TO pnMr
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F1300TDO+":"+F1300SER+"-"+F1300DOC+"  "+Dtoc(F1300FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F1300TDO+":"+F1300SER+"-"+F1300DOC+"  "+Dtoc(F1300FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F1300TDO+":"+F1300SER+"-"+F1300DOC+"  "+Dtoc(F1300FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
      ENDCASE
      STORE pnMr+1 TO pnMr
      STORE k_Enter TO mkEy
      STORE f1300nom TO vnOm
      STORE f1300ruc TO vrUc
      STORE f1300ele TO vdNi
      STORE f1300dir TO vdIr
      STORE f1300dis TO vdIs
      STORE f1300dep TO vdEp
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      IF f1300tdo<>"FA" .AND. f1300tdo<>"FE" .AND. f1300tdo<>"FC" .AND.  ;
         f1300tdo<>"PC" .AND. f1300tdo<>"BO" .AND. f1300tdo<>"BE" .AND.  ;
         f1300tdo<>"BC"
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           DO leN_0000a IN FAC0000A WITH "D"
           REPLACE f1300nom WITH vnOm
           REPLACE f1300dir WITH vdIr
           REPLACE f1300dis WITH vdIs
           REPLACE f1300dep WITH vdEp
           UNLOCK
           SKIP
           LOOP
      ENDIF
      IF f1300tdo="FA" .OR. f1300tdo="FE" .OR. f1300tdo="FC" .OR. f1300tdo="PC"
           WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
           DO veR_ruc IN FAC0000A WITH "2", vrUc
           IF mkEy=1733
                SELECT caB_fact
                REPLACE f1300dep WITH "NO REGISTRADO"
                UNLOCK
                SKIP
                LOOP
           ENDIF
      ELSE
           WAIT WINDOW NOCLEAR NOWAIT "Verificando RENIEC..."
           DO veR_dni IN FAC0000A WITH "2", vdNi
           IF mkEy=1999
                SELECT tmP_dni
                APPEND BLANK
                REPLACE dnI WITH vdNi
                SELECT caB_fact
                SKIP
                LOOP
           ENDIF
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Grabando..."
      SELECT caB_fact
      REPLACE f1300nom WITH vnOm
      REPLACE f1300dir WITH vdIr
      REPLACE f1300dis WITH vdIs
      REPLACE f1300dep WITH vdEp
      UNLOCK
      SELECT caB_fact
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 SELECT tmP_dni
 GOTO TOP
 IF  .NOT. BOF()
      COPY TO DNIFALTA TYPE XL5
 ENDIF
 RELEASE pnMr
ENDPROC
*
PROCEDURE Hl1_1300a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo$"16"
           @ pfIl+0, 1 SAY  ;
             "Esta consulta muestra todos los Documentos de Ventas en general; inclu- "
           @ pfIl+1, 1 SAY  ;
             "yendo los que están anulados. Se puede imprimir el Documento."
           @ pfIl+2, 1 SAY "Esta es la parte de la Cabecera de la Consulta."
           STORE pfIl+4 TO pfIl
      CASE wtPo="2"
           @ pfIl+0, 1 SAY  ;
             "La anulación trabaja como la Consulta y muestra todos los Documentos de"
           @ pfIl+1, 1 SAY  ;
             "Ventas en general, no incluye los que están anulados. Un Documento Anu-"
           @ pfIl+2, 1 SAY  ;
             "lado no se puede activar nuevamente. Esta es la Cabecera de la Consulta."
           STORE pfIl+4 TO pfIl
      CASE wtPo="3"
           @ pfIl+0, 1 SAY  ;
             "La Eliminación trabaja como la Consulta y muestra los Documentos de Venta"
           @ pfIl+1, 1 SAY "anulados."
           STORE pfIl+3 TO pfIl
      CASE wtPo="4"
           @ pfIl+0, 1 SAY  ;
             "La Generación trabaja como la Consulta y muestra todos los Documentos de"
           @ pfIl+1, 1 SAY  ;
             "Ventas en general; sólo se puede generar las Facturas y Boletas en el De-"
           @ pfIl+2, 1 SAY "talle."
           STORE pfIl+4 TO pfIl
      CASE wtPo="5"
           @ pfIl+0, 1 SAY  ;
             "Esta consulta muestra solo las cotizaciones, no incluye las que están"
           @ pfIl+1, 1 SAY  ;
             "anuladas. Esta es la parte de la Cabecera de la Consulta."
           STORE pfIl+3 TO pfIl
 ENDCASE
 @ pfIl, 01 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 17 SAY ":" STYLE "BT"
 @ pfIl+1, 17 SAY ":" STYLE "BT"
 @ pfIl+2, 17 SAY ":" STYLE "BT"
 @ pfIl+3, 17 SAY ":" STYLE "BT"
 @ pfIl+4, 17 SAY ":" STYLE "BT"
 @ pfIl+5, 17 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "ESC" STYLE "BT"
 @ pfIl+1, 01 SAY "F10" STYLE "BT"
 @ pfIl+2, 01 SAY "F1" STYLE "BT"
 @ pfIl+3, 01 SAY "F6" STYLE "BT"
 @ pfIl+4, 01 SAY "F9" STYLE "BT"
 @ pfIl+5, 01 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+6, 01 SAY "CTRL ->," STYLE "BT"
 @ pfIl+7, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 19 SAY "Regresar al Menú Principal"
 @ pfIl+1, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 19 SAY "Ayuda del Programa"
 @ pfIl+3, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+4, 19 SAY "Buscar palabra o frase dentro del nombre del Cliente"
 @ pfIl+5, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+6, 19 SAY "trado va al final del Archivo"
 IF wtPo="1"
      @ pfIl+8, 01 SAY "ALT C" STYLE "BT"
      @ pfIl+8, 17 SAY ":" STYLE "BT"
      @ pfIl+8, 19 SAY "Cambiar a un Año almacenado"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_1300a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes, saldrá un mensaje, en caso de encontrase se regresará a"
 @ pfIl+03, 02 SAY  ;
   "la Cabecera, para que escoge el orden de consulta respectivo."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Cabecera"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl3_1300a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 03 SAY  ;
   "Esta opción selecciona el Año que se quiere visualizar. Esta opción"
 @ pfIl+01, 03 SAY "sólo funciona cuando hay años anteriores guardados."
 @ pfIl+03, 03 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 21 SAY ":" STYLE "BT"
 @ pfIl+06, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+05, 13 SAY "ESC" STYLE "BT"
 @ pfIl+06, 13 SAY "F10" STYLE "BT"
 @ pfIl+07, 13 SAY "F1" STYLE "BT"
 @ pfIl+08, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 23 SAY "Regresar a Cabecera"
 @ pfIl+06, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 23 SAY "Ayuda del Programa"
 @ pfIl+08, 23 SAY "Aceptar y mostrar rango"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE cuLt
 RELEASE vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsW7, vsW9,  ;
         vsXx, vxLs
 RELEASE vyEa, vlIn, vpAg, vpAl, cpAl, vuFi, vuCo, vuC1, vfI0, vfI1, vcO0,  ;
         vcO1, vcO2
 RELEASE vcO3, vfIl, ifIl, ufIl, cfIl, ffIl, vfFs, ifFs, ufFs, ffFs, cfFs,  ;
         vfFr, ifFr
 RELEASE ufFr, ffFr, cfFr, icLn, ucLn, vcLn, icL1, ucL1, vtB1, vtB2, vtB3,  ;
         vtB4, vtB5
 RELEASE vtB6, vtB7, vtB8, vtB9, vtB0, vtBa, vtBb, vfB1, vfB2, vfB3, vfB4,  ;
         vfB5, vfB6
 RELEASE vfB7, vfB8, vfB9, vfB0, vfBa, vfBb, vfBc, vfBd, vfBe, vfBf, vfBg,  ;
         vfBh, vfBi
 RELEASE vfBj, vfBk, vfBl, vfBm, vfBn, vcB1, vcB2, vcB3, vcB4, vcB5, vcB6,  ;
         vcB7, vcB8
 RELEASE vcB9, vcB0, vcBa, vcBb, vcBc, vcBd, vcBe, vcBf, vcBg, vcBh, vcBi,  ;
         vcBj, vcBk
 RELEASE vcBl, vcBm, vcBn, vtDo, itDo, utDo, xtDo, xtD1, xtD2, xtD3, ctDo,  ;
         vsEr, isEr
 RELEASE usEr, xsEr, xsE2, xsE3, csEr, vdOc, idOc, udOc, xdOc, xdO2, cdOc,  ;
         vnOm, inOm
 RELEASE unOm, xnOm, cnOm, vfEm, ifEm, ufEm, xfEm, cfEm, vnTt, inTt, unTt,  ;
         xnTt, cnTt
 RELEASE vrEc, irEc, urEc, crEc, xrEc, vrCc, irCc, urCc, frCc, crCc, xrCc,  ;
         vcDg, icDg
 RELEASE ucDg, ccDg, vpDd, ipDd, upDd, cpDd, vsEc, isEc, usEc, csEc, vaPp,  ;
         xaPp, vaPm
 RELEASE xaPm, vnO1, xnO1, xtIt, vtIt, xcLi, vcLi, xsUc, vsUc, xdIr, vdIr,  ;
         xdIs, vdIs
 RELEASE xnDi, xdEp, vdEp, xnDp, xrUc, vrUc, crUc, xdNi, cdNi, vdNi, xtDi,  ;
         vsR1, isR1
 RELEASE usR1, csR1, vdO1, idO1, udO1, cdO1, xtEl, vtEl, xtRa, xlUg, vlUg,  ;
         xlUd, vlUd
 RELEASE xlUp, vlUp, xpPn, xpPa, xpPd, xpPp, xvEn, vvEn, xnVe, vnVe, vcOm,  ;
         xcOm, xtEc
 RELEASE vtEc, xnTe, vnTe, xdTc, vdTc, xdCl, vdCl, xsWg, vsWg, xpGd, vpGd,  ;
         xfDe, vfDe
 RELEASE cfDe, xmOn, cmOn, vmOn, xsIg, vsIg, xfPa, vfPa, xnFp, vnFp, xdIa,  ;
         vdIa, cdIa
 RELEASE xtFp, xpIg, vpIg, xnEt, tnEt, xiGv, tiGv, xiNt, xtOt, ttOt, ctOt,  ;
         vtOt, vtO1
 RELEASE vtO2, xsRp, xpEd, xcM1, vcM1, xcM2, vcM2, xcOp, xeSt, xcAn, tcAn,  ;
         xcMm, xcMp
 RELEASE xcA1, xcA2, xcA3, xcA4, xpOr, xdEt, xuSu, xdAt, xtIm, vtIm, xmAq,  ;
         xoPc, xuN1
 RELEASE xuN2, xmLa, xmAn, xp11, xp12, xp21, xp22, vcOd, vtPo, ctPo, ctP1,  ;
         ctPp, ctI1
 RELEASE ceSt, cdI1, cmEs, cmE1, caNo, caN1, vsLd, vsLc, vcAn, ccAn, vcAj,  ;
         ccAj, vsRr
 RELEASE vpD1, vnUm, xtCa, tvAl, tvL1, tvL2, vpRe, tdC1, tdC2, tdC3, clAr,  ;
         caNc, vtIp
 RELEASE vfOt, vmD3, vpEs, tpEs, vnTi, veNt, vgRu, vnGr, vcSt, vpIe, xpIe,  ;
         cdCr, tpLa
 RELEASE vmOt, vsE1, vtD1, viTe, vaLm, vnAl, vpPa, xpPa, vpPd, xpPd, vpPp,  ;
         xpPp, vpPn
 RELEASE xpPn, vtRa, vtR1, vtRu, vtRr, vtDs, vtDp, vtNo, vtN1, vtDi, vcHo,  ;
         vcH2, vlC1
 RELEASE vlC2, vpLc, vpL2, vmR1, vmR2, vaL1, vnA1, vfE1, vcIm, vlG2, vlD2,  ;
         vlP2, vtCl
 RELEASE vnTc, vcLl, vfRa, vtCa, vtCs, vtCv, vcTd, xcTd, vpOr, viPe, tpEr,  ;
         vdTr, tnPe
 RELEASE vcM3, vcM4, vcM5, vcM6, vtDd, vfAm, xbAs, xdEs, vdEs, vdCr, vpEr,  ;
         vlA1, vlA2
 RELEASE vaN1, vaN2, veSp, vlEc, vtPp, vcUv, vnUv, vcUc, vnUc, vmEd
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
 DO deL_file2 WITH "4", "S"
 DO deL_file2 WITH "5", "N"
 DO deL_file2 WITH "6", "S"
 DO deL_file2 WITH "7", "N"
 DO deL_file2 WITH "8", "S"
 DO deL_file2 WITH "A", "S"
 DO deL_file2 WITH "B", "S"
 DO deL_file2 WITH "C", "N"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8, ntMa, ntMb, ntMc
ENDPROC
*
