*
PROCEDURE Tmp_2700w
 PUBLIC afIl, x, ntM1, ntM2, ntM3, ntM4, ntM5, ntM6
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE 01 TO meRr
 DIMENSION afIl[20, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 120
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
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
 afIl[x, 1] = "FTM1MED"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1LA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AN2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 8
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1ESP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1COS"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 6
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MD1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MD3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
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
           STORE k_Esc TO mkEy
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM1cod)+"*" TAG ftM1cod
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[2, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
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
 DO tm1_2700w
 DO tm2_2700w
ENDPROC
*
PROCEDURE Tm1_2700w
 DIMENSION afIl[30, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM3OPC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3UN1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3UN2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3MLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3MAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3P11"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3P12"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3P21"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3P22"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3POR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3MM1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CX1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CY1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3MM2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CX2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CY2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3MM3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CX3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CY3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3MM4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CX4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CY4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM3PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 14
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM3CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
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
 CLOSE DATABASES
 DIMENSION afIl[32, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM4COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4REC"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4OPC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4UN1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4UN2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4P11"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4P12"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4P21"
 afIl[x, 2] = "N"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4P22"
 afIl[x, 2] = "C"
 afIl[x, 3] = 5
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CA1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CA2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CA3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CA4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4POR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MM1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CX1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CY1"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MM2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CX2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CY2"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MM3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CX3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CY3"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4MM4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CX4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CY4"
 afIl[x, 2] = "N"
 afIl[x, 3] = 5
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM4PIE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 14
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM4CM2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
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
           DO deL_file2 WITH "3", "N"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM4cod)+"*"+STR(ftM4rec, 3, 0) TAG ftM4cod
 CLOSE DATABASES
ENDPROC
*
PROCEDURE Tm2_2700w
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM5PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM5PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM5MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "N"
           DO deL_file2 WITH "4", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM5ped)+ftM5sec TAG ftM5ped
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM6COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PLA"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PLO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 9
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6MOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
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
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "N"
           DO deL_file2 WITH "4", "S"
           DO deL_file2 WITH "5", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM6cod)+"*"+ALLTRIM(ftM6ped)+ftM6sec TAG ftM6cod
 CLOSE DATABASES
 CLOSE INDEXES
ENDPROC
*
PROCEDURE Abr_2700w
 SELECT 1
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
      STORE "Archivo Maestro de Productos no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2112", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Series
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2112COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
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
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2119", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared Alias Sto_Tot
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
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
 SELECT 6
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
 SELECT 7
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
 SELECT 8
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
 SELECT 9
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
 SELECT 10
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
      STORE "Archivo Utilitario de Unidades vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      RETURN
 ENDIF
 SELECT 11
 DO abR_0000a IN PUX0000A WITH "9214", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Almacen
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9214COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 12
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
 SELECT 13
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
 SELECT 14
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
 SELECT 15
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
 SELECT 16
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
 SELECT 17
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
 SELECT 18
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
 SELECT 19
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
 SELECT 20
 DO prO_virtual WITH 2
 SELECT 21
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 22
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Prod
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM2COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 23
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 24
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM4COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 25
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 26
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO FTM6COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cal_2700w
 DO CASE
      CASE vtPo=1 .OR. vtPo=10
           STORE 0 TO vpIe
      CASE vtPo=2 .AND. vmEd=1
           STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
      CASE vtPo=2
           STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
      CASE vtPo=3
           STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
      CASE vtPo>=4 .AND. vtPo<=9
           STORE vcAn TO vpIe
 ENDCASE
ENDPROC
*
PROCEDURE Cl1_2700w
 DO CASE
      CASE ftM1tpo=1 .OR. ftM1tpo=10
           STORE 0 TO vpIe
      CASE ftM1tpo=2 .AND. ftM1med=1
           STORE ROUND(ftM1la1*ftM1an1*10.77*ftM1can, 4) TO vpIe
      CASE ftM1tpo=2 .AND. ftM1med=2
           STORE ROUND((ftM1la2*ftM1an2/144)*ftM1can, 4) TO vpIe
      CASE ftM1tpo=3
           STORE ROUND((ftM1la2*ftM1an2*ftM1esp/12)*ftM1can, 4) TO vpIe
      CASE ftM1tpo>=4 .AND. ftM1tpo<=9
           STORE ftM1can TO vpIe
 ENDCASE
ENDPROC
*
PROCEDURE Var_2700w
 PUBLIC viTe, xiTe, viT1, ciTx, vsWw, vsWw, ckEy, vtDo, ctDo, vsEr, csEr,  ;
        vdOc, cdOc
 PUBLIC icLn, ucLn, icL1, ucL1, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs,  ;
        ufFs, ffFs
 PUBLIC cfFs, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt,  ;
        vfFu, ifFu
 PUBLIC ufFu, ffFu, cfFu, vfFv, ifFv, ufFv, ffFv, cfFv, vfFw, ifFw, ufFw,  ;
        ffFw, cfFw
 PUBLIC vfFx, ifFx, ufFx, ffFx, cfFx, vrEc, irEc, urEc, frEc, crEc, xrEc,  ;
        vrCc, irCc
 PUBLIC urCc, frCc, crCc, viOm, viMm, vtPo, itPo, utPo, xtPo, ctPo, vnTp,  ;
        inTp, unTp
 PUBLIC cnTp, voP1, ioP1, uoP1, voP2, ioP2, uoP2, voP3, ioP3, uoP3, voP4,  ;
        ioP4, uoP4
 PUBLIC voP5, ioP5, uoP5, voP6, ioP6, uoP6, voP7, ioP7, uoP7, vcDg, icDg,  ;
        ucDg, ccDg
 PUBLIC vdCc, idCc, udCc, cdCc, vdC1, idC1, udC1, cdC1, vdC2, idC2, udC2,  ;
        cdC2, vdC3
 PUBLIC idC3, udC3, cdC3, vdC4, idC4, udC4, cdC4, vdC5, idC5, udC5, cdC5,  ;
        vdC6, idC6
 PUBLIC udC6, cdC6, vdC7, idC7, udC7, cdC7, vcOd, xcOd, vcAn, ccAn, xcAn,  ;
        vpIe, xpIe
 PUBLIC vdEs, xdEs, vdCr, xdCr, vcUv, xcUv, vnUv, xnUv, vcUc, xcUc, vnUc,  ;
        xnUc, vcSt
 PUBLIC xcSt, vlA1, xlA1, vlA2, xlA2, vaN1, xaN1, vaN2, xaN2, veSp, xeSp,  ;
        vsRr, xsRr
 PUBLIC vsTo, xsTo, csTo, vmEd, xmEd, vcAj, ccAj, xcAj, voPc, vuN1, vuN2,  ;
        vmLa, cmLa
 PUBLIC vmAn, cmAn, vp11, cp11, vp12, cp12, vp21, cp21, vp22, vcTd, vtPi,  ;
        vpD1, vsEc
 PUBLIC vpLa, vpLo, vmOt, veSt, vfEm, cfEm, vtPp, ctPp, vsLd, vsLc, vlAr,  ;
        vaNc, vlEt
 PUBLIC veS1, vnUm, cnUm, vtBz, caNo, cmEs, cdIa, vcT1, veNt, vsWx, vcA1,  ;
        vcA2, vcA3
 PUBLIC vcA4, vmM1, vmM2, vmM3, vmM4, vcX1, vcX2, vcX3, vcX4, vcY1, vcY2,  ;
        vcY3, vcY4
 PUBLIC vpOr, vcOs, xcOs, vaLm, vnAl, vcMm, vcMp, tcAn
 PUBLIC vpAn_11, vpAn_12, vpAn_let, vpAn_le1, vpAn_le2, vpAn_le3, vpAn_le4
 PUBLIC vpAn_le5
 DIMENSION vtBz[3]
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm, viMm, viTe, vtPp
 STORE 00 TO frEc, urEc, crEc, frCc, urCc, cfIl, viT1, tcAn, vpOr
 STORE 00 TO vcA1, vcA2, vcA3, vcA4, vmM1, vmM2, vmM3, vmM4
 STORE 00 TO vcX1, vcX2, vcX3, vcX4, vcY1, vcY2, vcY3, vcY4
 STORE " " TO vcMm, vcMp
 STORE msEr(03) TO vsEr
 STORE DATE() TO vfEm
 STORE "Ninguno" TO vtBz[1]
 STORE "Fabrica" TO vtBz[2]
 STORE "Rotura" TO vtBz[3]
ENDPROC
*
PROCEDURE BVa_2700w
 RELEASE viTe, xiTe, viT1, ciTx, vsWw, vsWw, ckEy, vtDo, ctDo, vsEr, csEr,  ;
         vdOc, cdOc
 RELEASE icLn, ucLn, icL1, ucL1, vfIl, ifIl, ufIl, ffIl, cfIl, vfFs, ifFs,  ;
         ufFs, ffFs
 RELEASE cfFs, vfFr, ifFr, ufFr, ffFr, cfFr, vfFt, ifFt, ufFt, ffFt, cfFt,  ;
         vfFu, ifFu
 RELEASE ufFu, ffFu, cfFu, vfFv, ifFv, ufFv, ffFv, cfFv, vfFw, ifFw, ufFw,  ;
         ffFw, cfFw
 RELEASE vfFx, ifFx, ufFx, ffFx, cfFx, vrEc, irEc, urEc, frEc, crEc, xrEc,  ;
         vrCc, irCc
 RELEASE urCc, frCc, crCc, viOm, viMm, vtPo, itPo, utPo, xtPo, ctPo, vnTp,  ;
         inTp, unTp
 RELEASE cnTp, voP1, ioP1, uoP1, voP2, ioP2, uoP2, voP3, ioP3, uoP3, voP4,  ;
         ioP4, uoP4
 RELEASE voP5, ioP5, uoP5, voP6, ioP6, uoP6, voP7, ioP7, uoP7, vcDg, icDg,  ;
         ucDg, ccDg
 RELEASE vdCc, idCc, udCc, cdCc, vdC1, idC1, udC1, cdC1, vdC2, idC2, udC2,  ;
         cdC2, vdC3
 RELEASE idC3, udC3, cdC3, vdC4, idC4, udC4, cdC4, vdC5, idC5, udC5, cdC5,  ;
         vdC6, idC6
 RELEASE udC6, cdC6, vdC7, idC7, udC7, cdC7, vcOd, xcOd, vcAn, ccAn, xcAn,  ;
         vpIe, xpIe
 RELEASE vdEs, xdEs, vdCr, xdCr, vcUv, xcUv, vnUv, xnUv, vcUc, xcUc, vnUc,  ;
         xnUc, vcSt
 RELEASE xcSt, vlA1, xlA1, vlA2, xlA2, vaN1, xaN1, vaN2, xaN2, veSp, xeSp,  ;
         vsRr, xsRr
 RELEASE vsTo, xsTo, csTo, vmEd, xmEd, vcAj, ccAj, xcAj, voPc, vuN1, vuN2,  ;
         vmLa, cmLa
 RELEASE vmAn, cmAn, vp11, cp11, vp12, cp12, vp21, cp21, vp22, vcTd, vtPi,  ;
         vpD1, vsEc
 RELEASE vpLa, vpLo, vmOt, veSt, vfEm, cfEm, vtPp, ctPp, vsLd, vsLc, vlAr,  ;
         vaNc, vlEt
 RELEASE veS1, vnUm, cnUm, vtBz, caNo, cmEs, cdIa, vcT1, veNt, vsWx, vcA1,  ;
         vcA2, vcA3
 RELEASE vcA4, vmM1, vmM2, vmM3, vmM4, vcX1, vcX2, vcX3, vcX4, vcY1, vcY2,  ;
         vcY3, vcY4
 RELEASE vpOr, vcOs, xcOs, vaLm, vnAl, vcMm, vcMp, tcAn
 RELEASE vpAn_11, vpAn_12, vpAn_let, vpAn_le1, vpAn_le2, vpAn_le3, vpAn_le4
 RELEASE vpAn_le5
ENDPROC
*
