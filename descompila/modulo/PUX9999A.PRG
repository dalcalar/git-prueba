 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE "0006" TO ntM7
 STORE "0007" TO ntM8
 STORE 01 TO meRr
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1UNI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
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
 INDEX ON ALLTRIM(ftM1cod)+"*" TAG ftM1cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DOH"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
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
           DO deL_file2 WITH "1", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2tdo+ftM2ser+ftM2dod TAG ftM2tdo
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[3, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
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
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM3tdo+ftM3ser+ftM3doc TAG ftM3doc
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[4, 4]
 STORE 1 TO x
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
 afIl[x, 1] = "FTM4FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
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
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM4tdo+ftM4ser+ftM4doc TAG ftM4doc
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[04, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM5CO1"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5CO2"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5CO3"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5CO4"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE "TM01"+ntM5+meXt TO mdBf
 DO WHILE .T.
      ntM5 = STRTRAN(STR(VAL(ntM5)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM5+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM5="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM6COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6UNI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6SLD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6CTD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6MOV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6STO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6INI"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE "TM01"+ntM6+meXt TO mdBf
 DO WHILE .T.
      ntM6 = STRTRAN(STR(VAL(ntM6)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM6+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM6="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM6cod)+"*" TAG ftM6cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM7PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM7TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE "TM01"+ntM7+meXt TO mdBf
 DO WHILE .T.
      ntM7 = STRTRAN(STR(VAL(ntM7)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM7+meXt TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM7="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM7ped)+"*" TAG ftM7ped
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM8COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8FEM"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM8CAN"
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
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "N"
           DO deL_file2 WITH "6", "S"
           DO deL_file2 WITH "7", "S"
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM8cod)+"*"+ftM8tdo+ftM8ser+ftM8doc TAG ftM8cod
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
 Use &mDBF Exclusive Alias Productos
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
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2118", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Pro_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2118COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Sto_Tot
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2106", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Lista
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "2402", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ite_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 9
 DO abR_0000a IN PUX0000A WITH "2403", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ser_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 10
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
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "2601", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
 DO abR_0000a IN PUX0000A WITH "2602", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ite_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 13
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
 SELECT 14
 DO abR_0000a IN PUX0000A WITH "2604", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Con_Remi
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 15
 DO abR_0000a IN PUX0000A WITH "2700", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "2701", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "2702", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ite_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "2703", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ser_Ingr
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "2800", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 20
 DO abR_0000a IN PUX0000A WITH "2801", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "2802", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ite_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 22
 DO abR_0000a IN PUX0000A WITH "2803", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ser_Sali
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 23
 DO abR_0000a IN PUX0000A WITH "2910", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Orden
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "2911", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Orden
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2911COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 25
 DO abR_0000a IN PUX0000A WITH "2921", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Conjunto
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 26
 DO abR_0000a IN PUX0000A WITH "2990", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Kardex
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "2991", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Kardex_Series
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "1200", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cab_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "1201", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 30
 DO abR_0000a IN PUX0000A WITH "1202", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ite_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 31
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
 SELECT 32
 DO abR_0000a IN PUX0000A WITH "1204", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Con_Ped
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 33
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Cab_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 34
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Det_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 35
 DO abR_0000a IN PUX0000A WITH "1302", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Ite_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 36
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
 SELECT 37
 DO abR_0000a IN PUX0000A WITH "1304", "V"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Con_Fact
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 38
 DO abR_0000a IN PUX0000A WITH "9111", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cambio
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9111FEM
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 39
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Tipos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 40
 DO abR_0000a IN PUX0000A WITH "9226", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Monedas
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9226COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 41
 DO abR_0000a IN PUX0000A WITH "9999", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Numeracion
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9999TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 42
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Prod_Borrados
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM1COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 43
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Doc_Faltan
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 44
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Sin_Detalle
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM3DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 45
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Fecha_Mal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM4DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 46
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Negativos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 47
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Negativo2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM6COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 48
 STORE "TM01"+ntM7+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Gastos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM7PED
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 49
 STORE "TM01"+ntM8+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Negativo_Det
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM8COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 50 TO muLt
 SELECT prOductos
 STORE 00 TO meRr
 PUBLIC vlIn, voP1, voP2, voP3, voP4, voP5, voP6, voP7, voP8, vuLt, vcOd,  ;
        vuLt, vsTo
 PUBLIC vsTs, vsLc, vsCs, vpRm, tpRm, vfEc, cfEc, tvAl, tdCt, tnEt, tgAs,  ;
        tcUn, tcAn
 PUBLIC vcLn, vcSt, vvCp, vvCs, vdEs, vdIa, vmEs, vaNo, vsLd, vtPo, vuNi,  ;
        vnUm, vcO1
 PUBLIC vcO2, vfE1, vfE2, vaUt
 PUBLIC vpAn_11
 STORE 99 TO mkEy
 STORE 02 TO vaUt
 STORE DATE() TO vfEc
 SET READBORDER ON
 DO p00_9999a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9999a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9999a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9999a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9999a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                STORE "S" TO moPc
                SAVE SCREEN TO vpAn_11
                IF vaUt=2
                     DO prE_docum WITH  ;
                        "¿Desea verificar Documentos y sus Productos?"
                ENDIF
                IF moPc$"Ss"
                     SELECT tmP_prod_borrados
                     ZAP
                     REINDEX
                     SELECT tmP_sin_detalle
                     ZAP
                     REINDEX
                     DO q1_0000a
                     DO doC_9999b IN PUX9999B
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO p1_0000a
                     SELECT tmP_prod_borrados
                     GOTO TOP
                     IF  .NOT. BOF()
                          STORE "S" TO moPc
                          IF vaUt=2
                               DO prE_docum WITH  ;
                                  "¿Desea pasar a Excel relación de Productos Borrados?"
                          ENDIF
                          IF moPc$"Ss"
                               SELECT tmP_prod_borrados
                               EXPORT TO "Borrados" TYPE XLS
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                     IF vaUt=2
                          @mFI0+23,mCO0+1 Say "Presionar una tecla para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "BT" Color 4
                          mkEy = INKEY(0)
                          @mFI0+23,mCO0+1 Say Space(50) Font "&mLetCou",9 Style "BQ" Size 1,77
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                ENDIF
                STORE "S" TO moPc
                IF vaUt=2
                     DO prE_docum WITH  ;
                        "¿Desea verificar Faltantes/Sin Detalle y Fechas?"
                ENDIF
                IF moPc$"Ss"
                     SELECT tmP_doc_faltan
                     ZAP
                     REINDEX
                     SELECT tmP_fecha_mal
                     ZAP
                     REINDEX
                     DO q1_0000a
                     DO doC_9999c IN PUX9999C
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO p1_0000a
                     SELECT tmP_doc_faltan
                     GOTO TOP
                     IF  .NOT. BOF()
                          STORE "S" TO moPc
                          IF vaUt=2
                               DO prE_docum WITH  ;
                                  "¿Desea pasar a Excel relación de los Documentos Faltantes?"
                          ENDIF
                          IF moPc$"Ss"
                               SELECT tmP_doc_faltan
                               EXPORT TO "Doc_Faltan" TYPE XLS
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                     SELECT tmP_sin_detalle
                     GOTO TOP
                     IF  .NOT. BOF()
                          STORE "S" TO moPc
                          IF vaUt=2
                               DO prE_docum WITH  ;
                                  "¿Desea pasar a Excel relación de los Documentos sin Detalle?"
                          ENDIF
                          IF moPc$"Ss"
                               SELECT tmP_sin_detalle
                               EXPORT TO "Sin_Detalle" TYPE XLS
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                     SELECT tmP_fecha_mal
                     GOTO TOP
                     IF  .NOT. BOF()
                          STORE "S" TO moPc
                          IF vaUt=2
                               DO prE_docum WITH  ;
                                  "¿Desea pasar a Excel relación de los Documentos cuya Fecha estar errada?"
                          ENDIF
                          IF moPc$"Ss"
                               SELECT tmP_fecha_mal
                               EXPORT TO "Fecha_Mal" TYPE XLS
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                     IF vaUt=2
                          @mFI0+23,mCO0+1 Say "Presionar una tecla para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "BT" Color 4
                          mkEy = INKEY(0)
                          @mFI0+23,mCO0+1 Say Space(50) Font "&mLetCou",9 Style "BQ" Size 1,77
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                ENDIF
                SELECT tmP_negativos
                ZAP
                REINDEX
                SELECT tmP_negativo2
                ZAP
                REINDEX
                SELECT tmP_negativo_det
                ZAP
                REINDEX
                STORE "S" TO moPc
                IF vaUt=2
                     DO prE_docum WITH "¿Desea verificar Stocks y Kardex?"
                ENDIF
                IF moPc$"Ss"
                     reDucememory()
                     DO q1_0000a
                     DO stO_9999d IN PUX9999D
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     DO p1_0000a
                     reDucememory()
                ELSE
                     STORE "S" TO moPc
                     DO prE_docum WITH  ;
                        "¿Desea sólo Costear y recalcular Saldos del Kardex?"
                     IF moPc$"Ss"
                          SELECT prOductos
                          DO orD_0000a WITH "2111", "A", "F2111COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT kaRdex
                          DO orD_0000a WITH "2990", "A", "F2990COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT caB_remi
                          DO orD_0000a WITH "2700", "A", "F2600DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT deT_ingr
                          DO orD_0000a WITH "2701", "A", "F2701COD", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT caB_ingr
                          DO orD_0000a WITH "2700", "A", "F2700DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT caB_sali
                          DO orD_0000a WITH "2800", "A", "F2800DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          PRIVATE pnUm
                          SELECT prOductos
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               IF mkEy=9000
                                    STORE 99 TO mkEy
                                    RETURN
                               ENDIF
                               WAIT WINDOW NOWAIT "Leyendo Codigo: "+f2111cod
                               STORE f2111cod TO vcOd
                               STORE f2111cst TO vcSt
                               DO CASE
                                    CASE f2111est="9" .OR. f2111tpo<>1  ;
                                     .OR. f2111cst=2
                                         REPLACE f2111cst WITH 2
                                         REPLACE f2111sto WITH 0
                                         REPLACE f2111sts WITH 0
                                         IF mcAj=1 .AND. f2111ser=1
                                              REPLACE f2111caj WITH 0
                                              REPLACE f2111cas WITH 0
                                         ENDIF
                                         REPLACE f2111prm WITH 0
                                         REPLACE f2111ult WITH CTOD( ;
                                          "  /  /    ")
                                         REPLACE f2111mov WITH " "
                                         SELECT prO_tot
                                         SEEK UPPER(ALLTRIM(vcOd))+"*"
                                         IF  .NOT. EOF()
                                              REPLACE f2118cod WITH SPACE(20)
                                              DELETE
                                         ENDIF
                                    OTHERWISE
                                         SELECT prO_tot
                                         SEEK UPPER(ALLTRIM(vcOd))+"*"
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
                                         ENDIF
                                         STORE 0 TO pnUm, vsTo, vsTs,  ;
                                          vsLc, vsCs, vpRm, tpRm
                                         STORE CTOD("  /  /    ") TO vuLt
                                         DO coS_2111c IN PAM2111C
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         SELECT prOductos
                                         STORE f2111vcp TO vvCp
                                         STORE f2111vcs TO vvCs
                                         REPLACE f2111sto WITH vsTo
                                         REPLACE f2111sts WITH vsTs
                                         IF mcAj=1 .AND. f2111ser=1
                                              REPLACE f2111caj WITH vsLc
                                              REPLACE f2111cas WITH vsCs
                                         ELSE
                                              REPLACE f2111caj WITH 0
                                              REPLACE f2111cas WITH 0
                                         ENDIF
                                         REPLACE f2111prm WITH vpRm
                                         REPLACE f2111ult WITH vuLt
                                         IF pnUm>0
                                              REPLACE f2111mov WITH "@"
                                         ELSE
                                              REPLACE f2111mov WITH " "
                                         ENDIF
                                         SELECT prO_tot
                                         REPLACE f2118sto WITH vsTo
                                         REPLACE f2118caj WITH vsLc
                                         REPLACE f2118sts WITH vsTs
                                         REPLACE f2118prm WITH vpRm
                                         REPLACE f2118vcs WITH vvCs
                                         REPLACE f2118vcp WITH vvCp
                                         DO orD_2111c IN PAM2111C
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         SELECT deT_ped
                                         DO orD_0000a WITH "1201", "V",  ;
                                          "F1201COD", "A"
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         SELECT coN_ped
                                         DO orD_0000a WITH "1204", "V",  ;
                                          "F1204CDG", "A"
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                                         DO peD_2111c IN PAM2111C
                                         IF mkEy=k_Esc
                                              EXIT
                                         ENDIF
                               ENDCASE
                               SELECT prOductos
                               SKIP
                          ENDDO
                          DO toT_2111c IN PAM2111C
                          SELECT deT_remi
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo GR Codigo: "+ ;
                                    f2601tdo+":"+f2601ser+"-"+f2601doc
                               STORE f2601tdo TO vtDo
                               STORE f2601ser TO vsEr
                               STORE f2601doc TO vdOc
                               STORE f2601cod TO vcOd
                               SELECT caB_remi
                               SEEK vtDo+vsEr+vdOc
                               IF  .NOT. EOF() .AND. f2600est<>"9"
                                    STORE SUBSTR(DTOC(f2600fem), 1, 2) TO vdIa
                                    STORE SUBSTR(DTOC(f2600fem), 4, 2) TO vmEs
                                    STORE SUBSTR(DTOC(f2600fem), 7, 4) TO vaNo
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+ ;
                                     "21"+vtDo+vsEr+vdOc
                                    IF  .NOT. EOF()
                                         STORE f2990prm TO vcOs
                                         SELECT deT_remi
                                         REPLACE f2601co1 WITH vcOs
                                    ENDIF
                               ENDIF
                               SELECT deT_remi
                               SKIP
                          ENDDO
                          SELECT prOductos
                          SET ORDER TO F2111COD
                          SELECT deT_ingr
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo GI Codigo: "+ ;
                                    f2701tdo+":"+f2701ser+"-"+f2701doc
                               STORE f2701tdo TO vtDo
                               STORE f2701ser TO vsEr
                               STORE f2701doc TO vdOc
                               STORE f2701cod TO vcOd
                               SELECT caB_ingr
                               SEEK vtDo+vsEr+vdOc
                               IF  .NOT. EOF() .AND. f2700est<>"9" .AND.  ;
                                   (f2700tpp=1 .OR. f2700tpp=2 .OR.  ;
                                   f2700tpp=3 .OR. f2700tpp=7)
                                    STORE SUBSTR(DTOC(f2700fem), 1, 2) TO vdIa
                                    STORE SUBSTR(DTOC(f2700fem), 4, 2) TO vmEs
                                    STORE SUBSTR(DTOC(f2700fem), 7, 4) TO vaNo
                                    SELECT kaRdex
                                    GOTO TOP
                                    SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+ ;
                                     "11"+vtDo+vsEr+vdOc
                                    IF  .NOT. EOF()
                                         STORE f2990prm TO vpRm
                                         SELECT prOductos
                                         SEEK ALLTRIM(vcOd)+"*"
                                         IF  .NOT. EOF()
                                              STORE f2111vcs TO vcOs
                                         ELSE
                                              STORE 0 TO vcOs
                                         ENDIF
                                         SELECT deT_ingr
                                         IF vpRm<>0
                                              REPLACE f2701cos WITH vpRm
                                         ENDIF
                                         REPLACE f2701cmt WITH vcOs
                                         IF f2701cos=0
                                              REPLACE f2701cos WITH  ;
                                               f2701cmt/1.18
                                         ENDIF
                                    ENDIF
                               ENDIF
                               SELECT deT_ingr
                               SKIP
                          ENDDO
                          SELECT deT_sali
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo GS Codigo: "+ ;
                                    f2801tdo+":"+f2801ser+"-"+f2801doc
                               STORE f2801tdo TO vtDo
                               STORE f2801ser TO vsEr
                               STORE f2801doc TO vdOc
                               STORE f2801cod TO vcOd
                               SELECT caB_sali
                               SEEK vtDo+vsEr+vdOc
                               IF  .NOT. EOF() .AND. f2800est<>"9"
                                    STORE SUBSTR(DTOC(f2800fem), 1, 2) TO vdIa
                                    STORE SUBSTR(DTOC(f2800fem), 4, 2) TO vmEs
                                    STORE SUBSTR(DTOC(f2800fem), 7, 4) TO vaNo
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+ ;
                                     "21"+vtDo+vsEr+vdOc
                                    IF  .NOT. EOF()
                                         STORE f2990prm TO vpRm
                                         SELECT prOductos
                                         SEEK ALLTRIM(vcOd)+"*"
                                         IF  .NOT. EOF()
                                              STORE f2111vcs TO vcOs
                                         ELSE
                                              STORE 0 TO vcOs
                                         ENDIF
                                         SELECT deT_sali
                                         REPLACE f2801cos WITH vpRm
                                    ENDIF
                               ENDIF
                               SELECT deT_sali
                               SKIP
                          ENDDO
                          STORE 0 TO vnUm
                          SELECT deT_sali
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo GS Codigo: "+ ;
                                    f2801tdo+":"+f2801ser+"-"+f2801doc
                               IF LEN(ALLTRIM(f2801tgi))=0 .OR.  ;
                                  LEN(ALLTRIM(f2801sgi))=0 .OR.  ;
                                  LEN(ALLTRIM(f2801ngi))=0 .OR.  ;
                                  LEN(ALLTRIM(f2801cdg))=0 .OR. f2801tgi<>"GI"
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f2801tgi TO vtDo
                               STORE f2801sgi TO vsEr
                               STORE f2801ngi TO vdOc
                               STORE f2801cdg TO vcOd
                               STORE ROUND(f2801cos*f2801can, 4) TO vcOs
                               SELECT caB_ingr
                               SEEK vtDo+vsEr+vdOc
                               IF  .NOT. EOF() .AND. f2700est<>"9"
                                    STORE SUBSTR(DTOC(f2700fem), 1, 2) TO vdIa
                                    STORE SUBSTR(DTOC(f2700fem), 4, 2) TO vmEs
                                    STORE SUBSTR(DTOC(f2700fem), 7, 4) TO vaNo
                                    SELECT deT_ingr
                                    SEEK ALLTRIM(vcOd)+"*"+"GI"+vsEr+vdOc
                                    IF  .NOT. EOF()
                                         REPLACE f2701cos WITH ROUND(vcOs/ ;
                                          f2701can, 4)
                                         STORE f2701cos TO vcOs
                                         SELECT kaRdex
                                         SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+ ;
                                          vdIa+"11"+"GI"+vsEr+vdOc
                                         IF  .NOT. EOF() .AND. f2990cos<>vcOs
                                              REPLACE f2990cos WITH vcOs
                                              REPLACE f2990tne WITH vcOs
                                              IF vaNo+vmEs>"201102"
                                                   REPLACE f2990pig WITH 18
                                              ELSE
                                                   REPLACE f2990pig WITH 19
                                              ENDIF
                                              REPLACE f2990tig WITH  ;
                                               ROUND(f2990tne*f2990pig/100, 2)
                                              REPLACE f2990tfa WITH  ;
                                               f2990tne+f2990tig
                                              STORE vnUm+1 TO vnUm
                                         ENDIF
                                    ENDIF
                               ENDIF
                               SELECT deT_sali
                               SKIP
                          ENDDO
                          SELECT caB_sali
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo-2 GS Codigo: "+ ;
                                    f2800tdo+":"+f2800ser+"-"+f2800doc
                               IF f2800tpp<>5 .OR. f2800est="9" .OR.  ;
                                  LEN(ALLTRIM(f2800do1))=0 .OR. f2800td1<> ;
                                  "GI" .OR. LEN(ALLTRIM(f2800cm1))=0
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f2800td1 TO vtDo
                               STORE f2800sr1 TO vsEr
                               STORE f2800do1 TO vdOc
                               STORE f2800cos TO vcOs
                               STORE ALLTRIM(f2800cm1) TO vcOd
                               STORE SUBSTR(DTOC(f2800fem), 1, 2) TO vdIa
                               STORE SUBSTR(DTOC(f2800fem), 4, 2) TO vmEs
                               STORE SUBSTR(DTOC(f2800fem), 7, 4) TO vaNo
                               SELECT deT_ingr
                               SEEK ALLTRIM(vcOd)+"*"+"GI"+vsEr+vdOc
                               IF  .NOT. EOF()
                                    REPLACE f2701cos WITH vcOs/f2701can
                                    STORE f2701cod TO vcOd
                                    STORE f2701cos TO vcOs
                                    SELECT kaRdex
                                    SEEK ALLTRIM(vcOd)+"*"+vaNo+vmEs+vdIa+ ;
                                     "11"+"GI"+vsEr+vdOc
                                    IF  .NOT. EOF() .AND. f2990cos<>vcOs
                                         REPLACE f2990cos WITH vcOs
                                         REPLACE f2990tne WITH vcOs
                                         IF vaNo+vmEs>"201102"
                                              REPLACE f2990pig WITH 18
                                         ELSE
                                              REPLACE f2990pig WITH 19
                                         ENDIF
                                         REPLACE f2990tig WITH  ;
                                          ROUND(f2990tne*f2990pig/100, 2)
                                         REPLACE f2990tfa WITH f2990tne+ ;
                                          f2990tig
                                         STORE vnUm+1 TO vnUm
                                    ENDIF
                               ENDIF
                               SELECT caB_sali
                               SKIP
                          ENDDO
                          SELECT deT_ingr
                          DO orD_0000a WITH "2701", "A", "F2701DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT deT_sali
                          DO orD_0000a WITH "2801", "A", "F2801DOC", "A"
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          SELECT caB_ingr
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo GI Codigo: "+ ;
                                    f2700tdo+":"+f2700ser+"-"+f2700doc
                               STORE f2700tdo TO vtDo
                               STORE f2700ser TO vsEr
                               STORE f2700doc TO vdOc
                               SELECT deT_ingr
                               GOTO TOP
                               STORE 0 TO vcOs
                               STORE 1 TO viTe
                               SEEK vtDo+vsEr+vdOc
                               DO WHILE  .NOT. EOF() .AND. f2701tdo+ ;
                                  f2701ser+f2701doc=vtDo+vsEr+vdOc
                                    IF f2701ite<>viTe
                                         REPLACE f2701ite WITH viTe
                                    ENDIF
                                    STORE vcOs+(f2701cos*f2701can) TO vcOs
                                    STORE viTe+1 TO viTe
                                    SKIP
                               ENDDO
                               SELECT caB_ingr
                               REPLACE f2700cos WITH vcOs
                               SKIP
                          ENDDO
                          SELECT caB_sali
                          GOTO TOP
                          DO WHILE  .NOT. EOF()
                               WAIT WINDOW NOWAIT "Leyendo GS Codigo: "+ ;
                                    f2800tdo+":"+f2800ser+"-"+f2800doc
                               STORE f2800tdo TO vtDo
                               STORE f2800ser TO vsEr
                               STORE f2800doc TO vdOc
                               SELECT deT_sali
                               SEEK vtDo+vsEr+vdOc
                               STORE 0 TO vcOs
                               STORE 1 TO viTe
                               DO WHILE  .NOT. EOF() .AND. f2801tdo+ ;
                                  f2801ser+f2801doc=vtDo+vsEr+vdOc
                                    IF f2801ite<>viTe
                                         REPLACE f2801ite WITH viTe
                                    ENDIF
                                    STORE vcOs+(f2801cos*f2801can) TO vcOs
                                    STORE viTe+1 TO viTe
                                    SKIP
                               ENDDO
                               SELECT caB_sali
                               REPLACE f2800cos WITH vcOs
                               SKIP
                          ENDDO
                          IF vnUm>0
                               WAIT WINDOW NOWAIT  ;
                                    "VOLVER A CORRER COSTEO..."+ ;
                                    ALLTRIM(STR(vnUm, 6, 0))
                               mkEy = INKEY(14, "HM")
                          ENDIF
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                     ENDIF
                ENDIF
                reDucememory()
                WAIT CLEAR
                IF moPc$"Ss"
                     SELECT tmP_negativos
                     GOTO TOP
                     IF  .NOT. BOF()
                          DO neG_9999d IN PUX9999D
                          WAIT CLEAR
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          GOTO TOP
                          STORE "S" TO moPc
                          IF vaUt=2
                               DO prE_docum WITH  ;
                                  "¿Desea pasar a Excel relación de los negativos?"
                          ENDIF
                          IF moPc$"Ss"
                               SELECT tmP_negativo2
                               EXPORT TO "Negativos" TYPE XLS
                               SELECT tmP_negativo_det
                               SET DATE French
                               EXPORT TO "Negativos_Det" TYPE XLS
                               STORE 99 TO mkEy
                          ENDIF
                     ENDIF
                     IF vaUt=2
                          @mFI0+23,mCO0+1 Say "Presionar una tecla para continuar o ESC para SALIR..." Font "&mLetCou",9 Style "BT" Color 4
                          mkEy = INKEY(0)
                     ENDIF
                ENDIF
                EXIT
      ENDCASE
      mkEy = INKEY(0, "HM")
 ENDDO
 FLUSH
 WAIT CLEAR
 STORE 99 TO mkEy
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE P00_9999a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 24 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0+0.5 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Verifica Tablas de Documentos y Reorganiza Stocks"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+02.0,mCO0+14 Say "Este proceso primero verifica si los documentos están grabados"    Font "&mLetRom",14 Style "NQ"
 @mFI0+03.5,mCO0+14 Say "correctamente; si hubiera habido un corte de corriente eléctrica," Font "&mLetRom",14 Style "NQ"
 @mFI0+05.0,mCO0+14 Say "borra los datos incompletos grabados, dejando los documentos"      Font "&mLetRom",14 Style "NQ"
 @mFI0+06.5,mCO0+14 Say "con datos completos y correctos."                                  Font "&mLetRom",14 Style "NQ"
 @mFI0+09.5,mCO0+14 Say "Luego, ordena y vuelve a calcular los stocks y kardex."            Font "&mLetRom",14 Style "NQ"
 @mFI0+13.0,mCO0+36 Say "Calcular al: "                                                     Font "&mLetRom",14 Style "NQ"
 @mFI0+19.0,mCO0+17 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir"             Font "&mLetRom",14 Style "NT"
 @mFI0+13.0,mCO0+55 Get vFEC Size 1,10.4                                                    Font "&mLetRom",14 Style "NQ" Color ,&mColBlN
 @mFI0+15.6,mCO0+37 Get vAUT Font "&mLetAri",11 Style "NQ" Function "*RHT Automatico;Manual" Default vAUT
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9999a
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
      CASE mfIl>=mfI0+15.643 .AND. mfIl<=mfI0+16.6 .AND. mcCc>=mcO0+36.8  ;
           .AND. mcCc<=mcO0+56.0 .AND. vaUt<>1
           STORE 1 TO vaUt
           @mFI0+15.6,mCO0+37 Get vAUT Font "&mLetAri",11 Style "NQ" Function "*RHT Automatico;Manual" Default vAUT
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+15.643 .AND. mfIl<=mfI0+16.6 .AND. mcCc>=mcO0+56.0  ;
           .AND. mcCc<=mcO0+70.0 .AND. vaUt<>2
           STORE 2 TO vaUt
           @mFI0+15.6,mCO0+37 Get vAUT Font "&mLetAri",11 Style "NQ" Function "*RHT Automatico;Manual" Default vAUT
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.821 .AND. mfIl<=mfI0+14.536 .AND. mcCc>=mcO0+ ;
           54.6 .AND. mcCc<=mcO0+72
           STORE vfEc TO cfEc
           DO WHILE .T.
                @mFI0+13,mCO0+55 Get cFEC Size 1,10.4 Font "&mLetRom",14 Style "NQ" Color ,&mColBlN
                SET CURSOR ON
                READ
                SET CURSOR OFF
                DO CASE
                     CASE mkEy=k_F10
                          DO reTorna
                     CASE mkEy=k_Esc
                          DO coLbln
                          STORE vfEc TO cfEc
                          STORE 99 TO mkEy
                          @mFI0+13,mCO0+55 Say vFEC Size 1,10.4 Font "&mLetRom",14 Style "NQ"
                          EXIT
                     CASE mkEy=k_Enter .AND. AT(" ", DTOC(cfEc))<>0
                          STORE "Fecha errada..." TO mmSj
                          STORE vfEc TO cfEc
                          DO poNmsj
                     CASE mkEy=k_Enter
                          STORE cfEc TO vfEc
                          EXIT
                ENDCASE
           ENDDO
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9999a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 01 SAY  ;
   "Este programa, verifica que los datos de los siguientes documentos, se en-"
 @ pfIl+01, 01 SAY  ;
   "cuentren correctamente grabados: Compras, Entradas de Almacén, Salidas"
 @ pfIl+02, 01 SAY  ;
   "de Almacén, Guías de Remisión y Facturas.  Luego,  recalcula el Stock y el"
 @ pfIl+03, 01 SAY  ;
   "Kardex. Por lo general, esto se hace en casos de corte de fluído eléctrico."
 @ pfIl+05, 01 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+09, 25 SAY ":" STYLE "BT"
 @ pfIl+10, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 15 SAY "ESC" STYLE "BT"
 @ pfIl+08, 15 SAY "F10" STYLE "BT"
 @ pfIl+09, 15 SAY "F1" STYLE "BT"
 @ pfIl+10, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 27 SAY "Regresar al Menú Principal"
 @ pfIl+08, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 27 SAY "Ayuda del Programa"
 @ pfIl+10, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 FLUSH
 SET READBORDER OFF
 RELEASE vlIn, voP1, voP2, voP3, voP4, voP5, voP6, voP7, voP8, vuLt, vcOd,  ;
         vuLt, vsTo
 RELEASE vsTs, vsLc, vsCs, vpRm, tpRm, vfEc, cfEc, tvAl, tdCt, tnEt, tgAs,  ;
         tcUn, tcAn
 RELEASE vcLn, vcSt, vvCp, vvCs, vdEs, vdIa, vmEs, vaNo, vsLd, vtPo, vuNi,  ;
         vnUm, vcO1
 RELEASE vcO2, vfE1, vfE2, vaUt
 RELEASE vpAn_11
 RELEASE exTended
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
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
 DO deL_file2 WITH "7", "S"
 DO deL_file2 WITH "8", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6, ntM7, ntM8
ENDPROC
*
