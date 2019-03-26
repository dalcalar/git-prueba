 PARAMETER wtPo
 SET CENTURY ON
 PUBLIC ntM1, ntM2, ntM3, ntM4, ntM5, ntM6
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE "0002" TO ntM3
 STORE "0003" TO ntM4
 STORE "0004" TO ntM5
 STORE "0005" TO ntM6
 STORE 01 TO meRr
 DO taB_compras IN PUX0002A
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
 INDEX ON f2400tdo+f2400ser+f2400doc TAG f2400doc
 INDEX ON UPPER(f2400nom)+f2400tdo+f2400ser+f2400doc TAG f2400nom
 INDEX ON f2400td1+ALLTRIM(f2400sr1)+"*"+ALLTRIM(f2400fac)+"*"+f2400tdo+ ;
       f2400ser+f2400doc TAG f2400fac
 INDEX ON SUBSTR(DTOC(f2400fem), 7, 4)+SUBSTR(DTOC(f2400fem), 4, 2)+ ;
       SUBSTR(DTOC(f2400fem), 1, 2)+f2400tdo+f2400ser+f2400doc TAG f2400fem
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[9, 4]
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
 afIl[x, 1] = "FTM2DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PER"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2NET"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2tdo+ftM2ser+ftM2doc TAG ftM2doc
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[23, 4]
 STORE 1 TO x
 afIl[x, 1] = "TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC_INTE"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DOC_REAL"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "G_REMISI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "PROVEEDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "RUC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 11
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DIRECCIO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DISTRITO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 30
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "EMISION"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "INGRESO"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "REGISTRO"
 afIl[x, 2] = "D"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "ORDEN_CO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "C_COSTO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FORM_PAG"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COMENTA1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COMENTA2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "POR_IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "MONEDA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "NETO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "IGV"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "REDONDEO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "TOTAL"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "ESTADO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 CLOSE DATABASES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "CODIGO"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "DESCRI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "COSTO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "GASTO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE x+1 TO x
 afIl[x, 1] = "CANTID"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON coDigo TAG coDigo
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[5, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM5TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM5FAC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM5tdo+ftM5ser+ALLTRIM(ftM5fac)+"*" TAG ftM5fac
 CLOSE INDEXES
 CLOSE DATABASES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM6COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMc
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6NUV"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM6CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 20
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM6TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
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
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM6cod)+"*" TAG ftM6cod
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cab_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo de Compras/Gastos no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      STORE k_Esc TO mkEy
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2402", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ite_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2402DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2403", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ser_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2403DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2404", "A"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Adi_Cpra
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2404DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
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
      STORE "Archivo Maestro de Productos no puede estar vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
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
 SELECT 8
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
 SELECT 9
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
 SELECT 10
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
 SELECT 11
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
 SET ORDER TO F2911DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 12
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
 SELECT 13
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
 SELECT 14
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
 SELECT 15
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
 SELECT 16
 DO abR_0000a IN PUX0000A WITH "3521", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Caja
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3521DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 17
 DO abR_0000a IN PUX0000A WITH "3531", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Det_Sal_Bancos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3531DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 18
 DO abR_0000a IN PUX0000A WITH "3600", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Pend_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3600DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 19
 DO abR_0000a IN PUX0000A WITH "3602", "C"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Ctas_Total_Cpras
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F3602TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 20
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
 SELECT 21
 DO abR_0000a IN PUX0000A WITH "9112", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias FPago
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9112NFP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 22
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
 SELECT 23
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
 SELECT 24
 DO abR_0000a IN PUX0000A WITH "9210", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tip_Prv
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Tipos de Proveedores vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 SELECT 25
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
 SELECT 26
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
 SELECT 27
 DO abR_0000a IN PUX0000A WITH "9311", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tipo_Doc
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9311TDO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 28
 DO abR_0000a IN PUX0000A WITH "9318", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias CCostos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F9318NCC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 29
 DO abR_0000a IN PUX0000A WITH "9000", "U"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Fijo
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 30
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
 SELECT 31
 STORE "TM01"+ntM1+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 32
 STORE "TM01"+ntM2+meXt TO mdBf
 Use &mDBF Exclusive Alias Temporal_2
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2DOC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 33
 STORE "TM01"+ntM3+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Xls
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 34
 STORE "TM01"+ntM4+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Pro
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO CODIGO
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 35
 STORE "TM01"+ntM5+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Fac
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM5FAC
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 36
 STORE "TM01"+ntM6+meXt TO mdBf
 Use &mDBF Exclusive Alias Tmp_Cod
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM6COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 STORE 36 TO muLt
 STORE 00 TO meRr
 PUBLIC vsW0, csW0, xsW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsWz,  ;
        vtB1, vtB2
 PUBLIC vtB3, vlIn, vpAg, vcL1, vcL2, vcL3, vcL4, vfB1, vfB2, vfB3, vfB4,  ;
        vfB5, vcB1
 PUBLIC vcB2, vcB3, vcB4, vcB5, vcO1, vfIl, ifIl, ufIl, cfIl, ffIl, xfIl,  ;
        vfFs, ifFs
 PUBLIC ufFs, cfFs, ffFs, vfFr, ifFr, ufFr, cfFr, ffFr, vrEc, irEc, urEc,  ;
        crEc, vrCc
 PUBLIC irCc, urCc, crCc, vpAl, cpAl, cpA1, viTe, viT1, vtDo, itDo, utDo,  ;
        xtDo, ctDo
 PUBLIC vsEr, isEr, usEr, xsEr, csEr, vdOc, idOc, udOc, xdOc, cdOc, vfEm,  ;
        ifEm, ufEm
 PUBLIC xfEm, cfEm, vnOm, inOm, unOm, xnOm, cnOm, vtD1, itD1, utD1, xtD1,  ;
        ctD1, vsR1
 PUBLIC isR1, usR1, xsR1, csR1, vfAc, ifAc, ufAc, xfAc, cfAc, vpEd, xpEd,  ;
        ipEd, upEd
 PUBLIC cpEd, vsEc, isEc, usEc, csEc, viMp, ttO1, ttO2, vcOd, vdEs, vcAn,  ;
        tcAn, ccAn
 PUBLIC tcTd, xcTd, vcAj, vcUn, xpRv, xsUc, xtIt, xnTi, xdIr, xdIs, xrUc,  ;
        xmOn, xfIn
 PUBLIC xrEg, xsR2, xrEm, xsOr, csOr, xoRd, coRd, xpLa, vpLa, xtIg, xdEc,  ;
        xpIg, xcCo
 PUBLIC xnCc, xtPo, ctPo, ctPp, xfPa, xnFp, xdIa, cdIa, xmEs, cmEs, xaNo,  ;
        caNo, xcM1
 PUBLIC xcM2, xvAl, xdCt, xnEt, xiGv, xrEd, xtOt, xpEr, xnT1, xiG1, xtO1,  ;
        xtRa, xtDs
 PUBLIC xsEs, xdOs, xcDg, vcDg, xmN1, xcOs, xeSt, ceSt, xuSu, xdAt, xtIm,  ;
        xmAq, xtCa
 PUBLIC xsIg, xnT2, xtPr, xnTp, vgAs, tgAs, tgA1, tcOs, ctP1, ctI1, vsRr,  ;
        vsLd, vsLc
 PUBLIC vpD1, vpLa, vmOt, vpIe, xpIe, xoPc, xmLa, xmAn, xuN1, xuN2, xp11,  ;
        xp12, xp21
 PUBLIC xp22, xcA1, xcA2, xcA3, xcA4, xpOr, xcMm, xcMp, vnUv, vtPo, vcXx,  ;
        cpRe, vdIr
 PUBLIC vdIs, vdEp, tnE1, tnE2, tiG1, tiG2, tpE1, tpE2, xnE1, xnE2, xiG2,  ;
        xpE1, xpE2
 PUBLIC xtO2, vcOn, vcTd, vlA1, vaN1
 PUBLIC vpAn_11, vpAn_12, vpAn_13, vpAn_99
 STORE CTOD("  /  /    ") TO ifEm, ufEm
 STORE "CO" TO itDo, utDo
 STORE msEr(03) TO isEr, usEr
 STORE SPACE(07) TO idOc, udOc
 STORE SPACE(70) TO vnOm, inOm, vpAl, cpA1, vmOt
 STORE 00 TO tcTd, ttO1, ttO2
 STORE 01 TO vsW0, csW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6
 STORE 02 TO viMp
 STORE 88 TO mpAg
 STORE 99 TO mkEy
 STORE 36 TO muLt
 SELECT caB_cpra
 GOTO BOTTOM
 STORE f2400tdo TO vtDo
 STORE f2400ser TO vsEr
 STORE f2400doc TO vdOc
 STORE f2400nom TO vnOm
 STORE f2400fem TO vfEm
 STORE f2400td1 TO vtD1
 STORE f2400sr1 TO vsR1
 STORE f2400fac TO vfAc
 SET READBORDER ON
 DO p00_2400a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_2400a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2400a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_2400a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F3 .AND. wtPo$"14"
                SAVE SCREEN TO vpAn_11
                DO arR_2400a
                WAIT CLEAR
                STORE 99 TO mkEy
                RESTORE SCREEN FROM vpAn_11
           CASE mkEy=k_F5 .AND. miMp=1
                DO op1_2400a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO CASE
                     CASE (vsW0=4 .AND. wtPo$"123") .OR. (vsW0=3 .AND.  ;
                          wtPo="4")
                          STORE 1 TO vsW0
                     OTHERWISE
                          STORE vsW0+1 TO vsW0
                ENDCASE
                DO tiT_2400a
           CASE mkEy=k_F9
                DO opC_2400a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR.  ;
                mkEy=k_Tab
                DO CASE
                     CASE wtPo="1"
                          DO prEsiona WITH "4", "R_CONS17", mmF1, mmC1
                     CASE wtPo="2"
                          DO prEsiona WITH "4", "R_CONS04", mmF1, mmC1
                     CASE wtPo="3"
                          DO prEsiona WITH "4", "R_CONS12", mmF1, mmC1
                     CASE wtPo="4"
                          DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "EXCEL", mmF1+2, 0
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO paC2400b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER ON
                DO prEsiona WITH "1", "INTERN", mmF1+3, mcO0+muCo-10
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coL_boton
                @ mmF1, 0 CLEAR TO mmF1+3.1, 3.200
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      IF vsW0=1
           STORE VAL(vdOc) TO vdOc
      ENDIF
      DO geT_2400a
      SET CURSOR ON
      READ
      SET CURSOR OFF
      IF vsW0=1
           vdOc = STRTRAN(STR(vdOc, 7, 0), " ", "0")
           @iFIL-4,mCO0+27.5 Say vDOC Font "&mLetRom",11 Style "NQ" Size 1,9 Pict "9999999"
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Opc_2400a
 DO rs2_2400a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE 02 TO viMp
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2400a WITH "1"
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
                DO hl2_2400a
           CASE mkEy=k_F12
                DO rs1_2400a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2400a WITH "1"
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
                SELECT teMporal_2
                ZAP
                REINDEX
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_cpra
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400ord)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400cm2)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400fac)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f2400rem)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2400ped)))<>0
                          DO muE_2400a
                          DO grA_2400a
                          SELECT caB_cpra
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 2 TO vsW1
                     STORE 0 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO paL_2700a IN PAC2700A
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      STORE SPACE(07) TO vdOc, idOc
      STORE vsW1 TO csW1
      STORE 00 TO csW0
 ENDIF
 DO paL_2400a
ENDPROC
*
PROCEDURE Op1_2400a
 DO rs2_2400a WITH "2"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_2400a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO rs2_2400a WITH "2"
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
                DO hl3_2400a
           CASE mkEy=k_F12
                DO rs1_2400a
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO rs2_2400a WITH "2"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE 02 TO viMp
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                STORE 0 TO ttO1, ttO2, tcTd
                SELECT teMporal
                ZAP
                REINDEX
                SELECT caB_cpra
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f2400ped)))<>0
                          DO muE_2400a
                          DO grA_2400a
                          SELECT deT_cpra
                          SEEK xtDo+xsEr+xdOc
                          DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                             f2401doc=xtDo+xsEr+xdOc
                               STORE f2401cod TO vcOd
                               STORE f2401can TO vcAn
                               SELECT prOductos
                               SEEK ALLTRIM(vcOd)+"*"
                               IF  .NOT. EOF() .AND. f2111tpo=1
                                    STORE tcTd+vcAn TO tcTd
                               ENDIF
                               SELECT deT_cpra
                               SKIP
                          ENDDO
                          SELECT caB_cpra
                          IF f2400mon=1
                               STORE ttO1+f2400tot TO ttO1
                          ELSE
                               STORE ttO2+f2400tot TO ttO2
                          ENDIF
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 2 TO viMp
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 2 TO vsW1
                     STORE 1 TO viMp
                     EXIT
                ENDIF
      ENDCASE
      DO paL_2700a IN PAC2700A
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
 DO paL_2400a
ENDPROC
*
PROCEDURE Mue_2400a
 STORE f2400tdo TO xtDo
 STORE f2400ser TO xsEr
 STORE f2400doc TO xdOc
 STORE f2400sw0 TO xsW0
 STORE f2400prv TO xpRv
 STORE f2400suc TO xsUc
 STORE f2400nom TO xnOm
 STORE f2400tit TO xtIt
 STORE f2400nti TO xnTi
 STORE f2400dir TO xdIr
 STORE f2400dis TO xdIs
 STORE f2400ruc TO xrUc
 STORE f2400mon TO xmOn
 STORE f2400fem TO xfEm
 STORE f2400fin TO xfIn
 STORE f2400reg TO xrEg
 STORE f2400td1 TO xtD1
 STORE f2400sr1 TO xsR1
 STORE f2400fac TO xfAc
 STORE f2400sr2 TO xsR2
 STORE f2400rem TO xrEm
 STORE f2400sor TO xsOr
 STORE f2400ord TO xoRd
 STORE f2400ped TO xpEd
 STORE f2400pla TO xpLa
 STORE f2400tig TO xtIg
 STORE f2400dec TO xdEc
 STORE f2400pig TO xpIg
 STORE f2400cco TO xcCo
 STORE f2400ncc TO xnCc
 STORE f2400tpo TO xtPo
 STORE f2400fpa TO xfPa
 STORE f2400nfp TO xnFp
 STORE f2400dia TO xdIa
 STORE f2400cm1 TO xcM1
 STORE f2400cm2 TO xcM2
 STORE f2400val TO xvAl
 STORE f2400dct TO xdCt
 STORE f2400net TO xnEt
 STORE f2400igv TO xiGv
 STORE f2400red TO xrEd
 STORE f2400tot TO xtOt
 STORE f2400per TO xpEr
 STORE f2400nt1 TO xnT1
 STORE f2400ig1 TO xiG1
 STORE f2400to1 TO xtO1
 STORE f2400tra TO xtRa
 STORE f2400tds TO xtDs
 STORE f2400ses TO xsEs
 STORE f2400dos TO xdOs
 STORE f2400cdg TO xcDg
 STORE f2400mn1 TO xmN1
 STORE f2400cos TO xcOs
 STORE f2400est TO xeSt
 STORE f2400usu TO xuSu
 STORE f2400dat TO xdAt
 STORE f2400tim TO xtIm
 STORE f2400maq TO xmAq
ENDPROC
*
PROCEDURE Gra_2400a
 SELECT teMporal
 APPEND BLANK
 REPLACE f2400tdo WITH xtDo
 REPLACE f2400ser WITH xsEr
 REPLACE f2400doc WITH xdOc
 REPLACE f2400sw0 WITH xsW0
 REPLACE f2400prv WITH xpRv
 REPLACE f2400suc WITH xsUc
 REPLACE f2400nom WITH xnOm
 REPLACE f2400tit WITH xtIt
 REPLACE f2400nti WITH xnTi
 REPLACE f2400dir WITH xdIr
 REPLACE f2400dis WITH xdIs
 REPLACE f2400ruc WITH xrUc
 REPLACE f2400mon WITH xmOn
 REPLACE f2400fem WITH xfEm
 REPLACE f2400fin WITH xfIn
 REPLACE f2400reg WITH xrEg
 REPLACE f2400td1 WITH xtD1
 REPLACE f2400sr1 WITH xsR1
 REPLACE f2400fac WITH xfAc
 REPLACE f2400sr2 WITH xsR2
 REPLACE f2400rem WITH xrEm
 REPLACE f2400sor WITH xsOr
 REPLACE f2400ord WITH xoRd
 REPLACE f2400ped WITH xpEd
 REPLACE f2400pla WITH xpLa
 REPLACE f2400tig WITH xtIg
 REPLACE f2400dec WITH xdEc
 REPLACE f2400pig WITH xpIg
 REPLACE f2400cco WITH xcCo
 REPLACE f2400ncc WITH xnCc
 REPLACE f2400tpo WITH xtPo
 REPLACE f2400fpa WITH xfPa
 REPLACE f2400nfp WITH xnFp
 REPLACE f2400dia WITH xdIa
 REPLACE f2400cm1 WITH xcM1
 REPLACE f2400cm2 WITH xcM2
 REPLACE f2400val WITH xvAl
 REPLACE f2400dct WITH xdCt
 REPLACE f2400net WITH xnEt
 REPLACE f2400igv WITH xiGv
 REPLACE f2400red WITH xrEd
 REPLACE f2400tot WITH xtOt
 REPLACE f2400per WITH xpEr
 REPLACE f2400nt1 WITH xnT1
 REPLACE f2400ig1 WITH xiG1
 REPLACE f2400to1 WITH xtO1
 REPLACE f2400tra WITH xtRa
 REPLACE f2400tds WITH xtDs
 REPLACE f2400ses WITH xsEs
 REPLACE f2400dos WITH xdOs
 REPLACE f2400cdg WITH xcDg
 REPLACE f2400mn1 WITH xmN1
 REPLACE f2400cos WITH xcOs
 REPLACE f2400est WITH xeSt
 REPLACE f2400usu WITH xuSu
 REPLACE f2400dat WITH xdAt
 REPLACE f2400tim WITH xtIm
 REPLACE f2400maq WITH xmAq
ENDPROC
*
PROCEDURE Lin_2400a
 PARAMETER piNi, pfIn
 DO coLplp
 @ piNi, mcO0+19.1 TO pfIn, mcO0+19.1
 @ piNi, vcL1-00.4 TO pfIn, vcL1-00.4
 @ piNi, vcL1+12.8 TO pfIn, vcL1+12.8
 @ piNi, vcL1+26.0 TO pfIn, vcL1+26.0
 @ piNi, vcL1+39.2 TO pfIn, vcL1+39.2
 @ piNi, vcL2-00.4 TO pfIn, vcL2-00.4
 @ piNi, vcL2+24.8 TO pfIn, vcL2+24.8
 @ piNi, vcL2+35.2 TO pfIn, vcL2+35.2
 IF mrEs>"3"
      @ piNi, vcL2+50.6 TO pfIn, vcL2+50.6
 ENDIF
 IF wtPo<>"4" .OR. mrEs="3"
      @ piNi, vcL3-5.8 TO pfIn, vcL3-5.8
 ENDIF
ENDPROC
*
PROCEDURE Li1_2400a
 PARAMETER piNi, pfIn
 @ piNi, mcO0+03.8 TO pfIn, mcO0+03.8
 @ piNi, mcO0+08.8 TO pfIn, mcO0+08.8
 @ piNi, vcL2+03.8 TO pfIn, vcL2+03.8
 @ piNi, vcL2+10.0 TO pfIn, vcL2+10.0
 @ piNi, vcL2+40.2 TO pfIn, vcL2+40.2
 IF wtPo<>"4"
      @ piNi, vcL3-0.4 TO pfIn, vcL3-0.4
 ENDIF
 IF mrEs>"3"
      DO CASE
           CASE wtPo<>"4"
                @ piNi, vcL2+85.1 TO pfIn, vcL2+85.1
           CASE mrEs="4"
                @ piNi, vcL2+86.1 TO pfIn, vcL2+86.1
           OTHERWISE
                @ piNi, vcL2+95.1 TO pfIn, vcL2+95.1
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE P00_2400a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE INT(mwFi-9) TO muFi
 STORE INT(mwCo-4) TO muCo
 STORE (mwCo-90)/2 TO vcO1
 DO maRcos
 STORE mcO0-1.0 TO mcO0
 STORE muCo+1.4 TO muCo
 STORE mfI0+2.0 TO mfI0
 STORE mfI0+muFi+0.1 TO mmF2
 STORE mcO0+muCo-14 TO mmC2
 STORE mfI0+1.3 TO ifIl, ufIl, vfIl
 STORE ifIl+(INT(muFi)-4) TO ffIl
 STORE ffIl-1 TO ffFs, ffFr
 STORE mfI0+05.0 TO ufFs, vfFs
 STORE mfI0+00.9 TO ifFr, ufFr, vfFr
 STORE mcO0+24.4 TO vcL1
 STORE mcO0+080.6 TO vcL2
 STORE mcO0+111.2 TO vcL3
 STORE mfI0+5.9 TO vfB1, vfB2
 STORE mfI0+0.5 TO vfB3, vfB4
 STORE mfI0+2.0 TO vfB5
 DO CASE
      CASE mrEs="3"
           STORE vcL2+50.2 TO vcL2
           STORE vcL3+76.0 TO vcL3
           STORE mcO0+57.1 TO vcB1
           STORE mcO0+162.2 TO vcB3, vcB5
           STORE mcO0+20.2 TO vcL4
      CASE mrEs="4"
           STORE vcL2+050.2 TO vcL2
           STORE vcL3+128.0 TO vcL3
           STORE mcO0+65.1 TO vcB1
           STORE mcO0+193.8 TO vcB3, vcB5
           STORE mcO0+72.2 TO vcL4
      OTHERWISE
           STORE vcL2+050.2 TO vcL2
           STORE vcL3+145.0 TO vcL3
           STORE mcO0+65.1 TO vcB1
           STORE mcO0+193.8 TO vcB3, vcB5
           STORE mcO0+89.2 TO vcL4
 ENDCASE
 STORE vcB1+4.1 TO vcB2
 STORE vcB3+3.9 TO vcB4
 DO CASE
      CASE mrEs="3"
           Define Popup vTB1 from mFI0+7.0,mCO0+052.3 to fFFS+4,mCO0+61.7 Font "&mLetCou",12 Style "NQ" Prompt Field F9311TDO Scroll Color Scheme 3 Footer "TDO"
           Define Popup vTB2 from mFI0+1.5,mCO0+116.5 to fFFS+4,mCO0+165.8 Font "&mLetCou",11 Style "NQ" Prompt Field F9318NCC Scroll Color Scheme 3  Footer "CENTROS DE COSTOS"
           Define Popup vTB3 from mFI0+3.0,mCO0+116.5 to fFFS+4,mCO0+165.8 Font "&mLetCou",11 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3  Footer "FORMAS DE PAGO"
      OTHERWISE
           Define Popup vTB1 from mFI0+07.0,mCO0+60.3 to fFFS+4,mCO0+70.7 Font "&mLetCou",13 Style "NQ" Prompt Field F9311TDO Scroll Color Scheme 3 Footer "TDO"
           Define Popup vTB2 from mFI0+1.5,mCO0+142.7 to fFFS+4,mCO0+196.8 Font "&mLetCou",11 Style "NQ" Prompt Field F9318NCC Scroll Color Scheme 3  Footer "CENTROS DE COSTOS"
           Define Popup vTB3 from mFI0+3.0,mCO0+142.7 to fFFS+4,mCO0+196.8 Font "&mLetCou",11 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3  Footer "FORMAS DE PAGO"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 DO CASE
      CASE wtPo="1"
           DO tiT_0000a WITH "Consulta/Proceso de Compras/Gastos"
      CASE wtPo="2"
           DO tiT_0000a WITH "Anulación/Procesos Especiales de Compras/Gastos"
      CASE wtPo="3"
           DO tiT_0000a WITH "Eliminación de Compras/Gastos"
      CASE wtPo="4"
           DO tiT_0000a WITH "Consulta de Compras/Gastos"
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
 DO liN_2400a WITH ifIl-1.5, ffIl+1.1
 DO li1_2400a WITH ifIl-0.2, ffIl+1.1
 DO p01_2400a
 DO p02_2400a
 DO tiT_2400a
 DO paL_2400a
 READ TIMEOUT 0.01
 DO bt1_2400a
 DO bt2_2400a
 DO prEsiona WITH "4", "R_CONS01", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIM0", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "INTERN", mmF1+3, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Pal_2400a
 DO coLsc1
 IF viMp=1
      @mFI0+mUFI-1.3,mCO0+01.0 Say "Pedido:"   Font "&mLetRom",9 Style "BQ" Size 1,10
      @mFI0+mUFI-1.3,mCO0+25.0 Say "Cantidad:" Font "&mLetRom",9 Style "BQ"
      @mFI0+mUFI-1.3,mCO0+50.0 Say "S/."       Font "&mLetRom",9 Style "BQ"
      @mFI0+mUFI-1.3,mCO0+68.0 Say "US$"       Font "&mLetRom",9 Style "BQ"
      @mFI0+mUFI-1.3,mCO0+11.0 Say vPAL        Font "&mLetRom",9 Style "NQ" Size 1,10.0 Pict "@S07"
      @mFI0+mUFI-1.3,mCO0+35.8 Say tCTD        Font "&mLetRom",9 Style "NQ" Size 1,11.9 Pict "999,999.99"
      @mFI0+mUFI-1.3,mCO0+53.2 Say tTO1        Font "&mLetRom",9 Style "NQ" Size 1,11.9 Pict "999,999.99"
      @mFI0+mUFI-1.3,mCO0+72.6 Say tTO2        Font "&mLetRom",9 Style "NQ" Size 1,11.9 Pict "999,999.99"
 ELSE
      @mFI0+mUFI-1.3,mCO0+01.0 Say "Palabra:"  Font "&mLetRom",9 Style "BQ" Size 1,10
      @mFI0+mUFI-1.3,mCO0+11.0 Say Space(100)  Font "&mLetRom",9 Style "NQ" Size 1,100
      @mFI0+mUFI-1.3,mCO0+11.0 Say vPAL        Font "&mLetRom",9 Style "BQ" Size 1,80 Pict "@S80"
 ENDIF
ENDPROC
*
PROCEDURE Bt1_2400a
 IF mrEs>"3"
      RETURN
 ENDIF
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3.1, vcL1+39.8
 @iFIL-2.9,vCL1+42 Say Str(vSW2,1,0)+"/3" Font "&mLetRom",9 Style "BT"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bt2_2400a
 IF wtPo="4"
      RETURN
 ENDIF
 DO coLblr
 DO prEsiona WITH "1", "BOTON", ifIl-3.1, vcL2+6.3
 @iFIL-2.9,vCL2+8.5 Say Str(vSW3,1,0)+"/2" Font "&mLetRom",9 Style "BT"
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE P01_2400a
 DO coLplp
 @ ifIl-0.2, mcO0 TO ifIl-0.2, mcO0+muCo
 DO coLscz
 @iFIL-1.3,mCO0       Say "Número"     Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,mCO0+019.8 Say "Est"        Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,vCL1+000.4 Say "Fec.Emisió" Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,vCL1+013.6 Say "Fec.Ingres" Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,vCL1+026.8 Say "Fec.Regist" Font "&mLetAri",9 Style "BQ"
 DO CASE
      CASE vsW2=1 .OR. mrEs>"3"
           @iFIL-1.3,vCL1+39.8 Say "Proveedor"   Font "&mLetAri",9 Style "BQ" Size 1,13.2
      CASE vsW2=2
           @iFIL-1.3,vCL1+39.8 Say "Comentario1" Font "&mLetAri",9 Style "BQ" Size 1,13.2
      CASE vsW2=3
           @iFIL-1.3,vCL1+39.8 Say "Comentario2" Font "&mLetAri",9 Style "BQ" Size 1,13.2
 ENDCASE
 DO CASE
      CASE vsW3=2 .OR. wtPo="4"
           @iFIL-1.3,vCL2+4.9 Say "G.Remisión"   Font "&mLetAri",9 Style "BQ" Size 1,12
      CASE vsW3=1
           @iFIL-1.3,vCL2+4.9 Say "Doc.Compra"   Font "&mLetAri",9 Style "BQ" Size 1,12
 ENDCASE
 @iFIL-1.3,vCL2+26.2 Say "Pedido"              Font "&mLetAri",9 Style "BQ"
 @iFIL-1.3,vCL2+36.2 Say "Ord.Compra"          Font "&mLetAri",9 Style "BQ"
 IF mrEs>"3"
      @iFIL-1.3,vCL2+51.4 Say "Observaciones"    Font "&mLetAri",9 Style "BQ"
 ENDIF
 DO CASE
      CASE wtPo<>"4"
           @iFIL-1.3,vCL3+1   Say "Total"         Font "&mLetAri",9 Style "BQ"
      CASE mrEs="3"
           @iFIL-1.3,vCL3-5.4 Say "Observaciones" Font "&mLetAri",9 Style "BQ"
 ENDCASE
ENDPROC
*
PROCEDURE P02_2400a
 DO CASE
      CASE wtPo="4"
           STORE mfI0+08 TO ifFs
      OTHERWISE
           STORE mfI0+13 TO ifFs
 ENDCASE
 STORE INT(ffFs-ifFs) TO ifFs
 STORE ffFs-ifFs TO ifFs
 DO CASE
      CASE vsW4>1 .AND. wtPo="4"
           STORE ifFs-7 TO ifFs
      CASE vsW4>1
           STORE ifFs-12 TO ifFs
 ENDCASE
ENDPROC
*
PROCEDURE Tit_2400a
 DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
      CASE vsW0=2
           @iFIL-4,mCO0+0.8 Say "Proveedor:"        Font "&mLetRom",13 Style "BT"
      CASE vsW0=3
           @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
      CASE vsW0=4
           @iFIL-4,mCO0+0.8 Say "Doc.Real:"         Font "&mLetRom",13 Style "BT"
 ENDCASE
 DO geT_2400a
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Get_2400a
 DO CASE
      CASE vsW0=1
           @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"              Color ,&mColBlN
           @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"             Color ,&mColBlN
           @iFIL-4,mCO0+27.5 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999"         Color ,&mColBlN
      CASE vsW0=2
           @iFIL-4,mCO0+20.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,26  Pict "@S26"            Color ,&mColBlN
      CASE vsW0=3
           @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5                       Color ,&mColBlN
      CASE vsW0=4
           @iFIL-4,mCO0+19.0 Get vTD1 Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"              Color ,&mColBlN
           @iFIL-4,mCO0+24.5 Get vSR1 Font "&mLetRom",11 Style "NQ" Size 1,4.6 Pict "@S20"            Color ,&mColBlN
           @iFIL-4,mCO0+31.6 Get vFAC Font "&mLetRom",11 Style "NQ" Size 1,16  Pict "!!!!!!!!!!!!!!!" Color ,&mColBlN
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_2400a
 DO p00_2400a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(idOc))<>0
      DO CASE
           CASE vsW1=1
                SELECT caB_cpra
           CASE vsW1=2
                SELECT teMporal
      ENDCASE
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO seE_2400b IN PAC2400B WITH "i"
      DO muE_2400b IN PAC2400B WITH "v", "c"
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f2400tdo+f2400ser+f2400doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           DO muE_2400b IN PAC2400B WITH "v", "i"
           DO muE_2400b IN PAC2400B WITH "v", "c"
           STORE ifIl TO vfIl, cfIl
      ENDIF
      DO seE_2400b IN PAC2400B WITH "i"
      DO paN_2400b IN PAC2400B
      DO muE_2400b IN PAC2400B WITH "c", "v"
      DO seE_2400b IN PAC2400B WITH "v"
      STORE cfIl TO vfIl
 ENDIF
ENDPROC
*
PROCEDURE Rs2_2400a
 PARAMETER ptPo
 PRIVATE pcLn
 DO CASE
      CASE mrEs="3"
           STORE mcO0+50 TO pcLn
      CASE mrEs="4"
           STORE mcO0+70 TO pcLn
      OTHERWISE
           STORE mcO0+80 TO pcLn
 ENDCASE
 DO coLsc3
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS00", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @ ifIl+0.8, pcLn TO ifIl+4.0, pcLn+105.1 PATTERN 1 PEN 1
 @ ifIl+0.0, pcLn-1 TO ifIl+3.5, pcLn+104.0 PATTERN 1 PEN 3
 DO CASE
      CASE ptPo="1"
           @iFIL+0.5,pCLN+1      Say "Digitar Proveedor, O/C o Comentario o Factura o Pedido o Remisión en forma parcial o total:" Font "&mLetAri",9  Style "NQ"
           DO coLsc1
           @mFI0+mUFI-1.3,mCO0+1 Say "Palabra:"                                                                                    Font "&mLetRom",9  Style "BQ" Size 1,10
      CASE ptPo="2"
           @iFIL+0.5,pCLN+1      Say "Digitar No. de Pedido de Importación:"                                                       Font "&mLetAri",9  Style "NQ"
           DO coLsc1
           @mFI0+mUFI-1.3,mCO0+1 Say "Pedido:"                                                                                     Font "&mLetRom",10 Style "BQ" Size 1,10
 ENDCASE
ENDPROC
*
PROCEDURE Clp_2400a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+42.2 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68.00
           STORE k_Enter TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77.00
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95.00
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF1+3.857 .AND. mfIl<=mmF1+7.071 .AND. mcCc>=mcO0+muCo- ;
           10 .AND. mcCc<=mcO0+muCo
           SAVE SCREEN TO vpAn_11
           DO jaL_2400a
           WAIT CLEAR
           STORE 99 TO mkEy
           RESTORE SCREEN FROM vpAn_11
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Arr_2400a
 PRIVATE pnMr, pfIl
 STORE ifIl+4 TO pfIl
 SELECT caB_cpra
 GOTO TOP
 SET NEAR ON
 SEEK vtDo+vsEr+vdOc
 SET NEAR OFF
 SET ESCAPE ON
 STORE 0 TO pnMr
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF f2400est="9"
           SKIP
           LOOP
      ENDIF
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
      ENDCASE
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      STORE pnMr+1 TO pnMr
      STORE k_Enter TO mkEy
      STORE f2400sr1 TO xsR1
      STORE f2400fac TO xfAc
      STORE f2400sr2 TO xsR2
      STORE f2400rem TO xrEm
      STORE f2400sor TO xsOr
      STORE f2400ord TO xoRd
      DO WHILE .T.
           IF LEN(ALLTRIM(xsR1))<4
                STORE "0"+ALLTRIM(xsR1) TO xsR1
           ELSE
                EXIT
           ENDIF
      ENDDO
      IF ALLTRIM(xsR1)+"*"="0000"+"*"
           STORE "0001" TO xsR1
      ENDIF
      IF LEN(ALLTRIM(xfAc))>0
           DO WHILE .T.
                IF LEN(ALLTRIM(xfAc))<10
                     STORE "0"+ALLTRIM(xfAc) TO xfAc
                ELSE
                     EXIT
                ENDIF
           ENDDO
      ENDIF
      IF LEN(ALLTRIM(xsR2))>0
           DO WHILE .T.
                IF LEN(ALLTRIM(xsR2))<3
                     STORE "0"+ALLTRIM(xsR2) TO xsR2
                ELSE
                     EXIT
                ENDIF
           ENDDO
      ENDIF
      IF LEN(ALLTRIM(xrEm))>0
           DO WHILE .T.
                IF LEN(ALLTRIM(xrEm))<7
                     STORE "0"+ALLTRIM(xrEm) TO xrEm
                ELSE
                     EXIT
                ENDIF
           ENDDO
      ENDIF
      IF LEN(ALLTRIM(xsOr))>0
           DO WHILE .T.
                IF LEN(ALLTRIM(xsOr))<3
                     STORE "0"+ALLTRIM(xsOr) TO xsOr
                ELSE
                     EXIT
                ENDIF
           ENDDO
      ENDIF
      IF LEN(ALLTRIM(xoRd))>0
           DO WHILE .T.
                IF LEN(ALLTRIM(xoRd))<7
                     STORE "0"+ALLTRIM(xoRd) TO xoRd
                ELSE
                     EXIT
                ENDIF
           ENDDO
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Grabando..."
      REPLACE f2400sr1 WITH xsR1
      REPLACE f2400fac WITH xfAc
      REPLACE f2400sr2 WITH xsR2
      REPLACE f2400rem WITH xrEm
      REPLACE f2400sor WITH xsOr
      REPLACE f2400ord WITH xoRd
      UNLOCK
      IF LEN(ALLTRIM(f2400sr1))=0 .OR. ALLTRIM(f2400sr1)+"*"="0000"+"*"  ;
         .OR. LEN(ALLTRIM(f2400fac))=0 .OR. ALLTRIM(f2400fac)+"*"= ;
         "0000000000"+"*" .OR. LEN(ALLTRIM(f2400td1))=0 .OR. (f2400td1= ;
         "NC" .AND. (LEN(ALLTRIM(f2400cm1))=0 .OR. LEN(ALLTRIM(f2400cm2))=0))
           IF pfIl<ffIl+1
                DO CASE
                     CASE mrEs="3"
                          @pFIL,mCO0+40.5 Say F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM)+"  "+F2400TD1+":"+AllTrim(F2400SR1)+"-"+AllTrim(F2400FAC) Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S73"
                     CASE mrEs="4"
                          @pFIL,mCO0+60.5 Say F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM)+"  "+F2400TD1+":"+AllTrim(F2400SR1)+"-"+AllTrim(F2400FAC) Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S73"
                     OTHERWISE
                          @pFIL,mCO0+80.5 Say F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM)+"  "+F2400TD1+":"+AllTrim(F2400SR1)+"-"+AllTrim(F2400FAC) Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S73"
                ENDCASE
                pfIl = pfIl+1
           ENDIF
      ENDIF
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 IF pfIl<>ifIl+4
      mkEy = INKEY(0, "HM")
 ENDIF
 RELEASE pnMr, pfIl
ENDPROC
*
PROCEDURE Jal_2400a
 PRIVATE pnMr
 SELECT caB_cpra
 GOTO TOP
 SET NEAR ON
 SEEK vtDo+vsEr+vdOc
 SET NEAR OFF
 SET ESCAPE ON
 STORE 0 TO pnMr
 STORE k_Enter TO mkEy
 ON ESCAPE STORE K_ESC TO MKEY
 DO WHILE  .NOT. EOF()
      IF f2400est="9"
           SKIP
           LOOP
      ENDIF
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      DO CASE
           CASE mrEs="3"
                @iFIL+1.8,mCO0+49.5 Say Str(pNMR,5,0)+" - "+F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           CASE mrEs="4"
                @iFIL+1.8,mCO0+69.5 Say Str(pNMR,5,0)+" - "+F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
           OTHERWISE
                @iFIL+1.8,mCO0+89.5 Say Str(pNMR,5,0)+" - "+F2400TDO+":"+F2400SER+"-"+F2400DOC+"  "+Dtoc(F2400FEM) Font "&mLetAri",8 Style "NQ" Size 1,50 Pict "@S50"
      ENDCASE
      STORE pnMr+1 TO pnMr
      STORE k_Enter TO mkEy
      STORE f2400nom TO vnOm
      STORE f2400ruc TO vrUc
      STORE f2400dir TO vdIr
      STORE f2400dis TO vdIs
      STORE " " TO vdEp, vcOn
      IF mkEy=k_Esc
           STORE "Lectura Interrumpida..." TO mmSj
           DO poNmsj
           = INKEY(0.01)
           EXIT
      ENDIF
      IF LEN(ALLTRIM(f2400ruc))=0
           DO leN_0000a IN FAC0000A WITH "4"
           DO leN_0000a IN FAC0000A WITH "5"
           DO leN_0000a IN FAC0000A WITH "C"
           REPLACE f2400nom WITH vnOm
           REPLACE f2400dir WITH vdIr
           REPLACE f2400dis WITH vdIs
           UNLOCK
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Verificando SUNAT..."
      DO veR_ruc IN FAC0000A WITH "2", vrUc
      IF mkEy=1733
           SELECT caB_cpra
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOCLEAR NOWAIT "Grabando..."
      SELECT caB_cpra
      REPLACE f2400nom WITH vnOm
      REPLACE f2400dir WITH vdIr
      REPLACE f2400dis WITH ALLTRIM(vdIs)+","+ALLTRIM(vdEp)
      UNLOCK
      SELECT caB_cpra
      SKIP
 ENDDO
 WAIT CLEAR
 SET ESCAPE OFF
 ON ESCAPE
 RELEASE pnMr
ENDPROC
*
PROCEDURE Hl1_2400a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 DO CASE
      CASE wtPo$"14"
           @ pfIl+0, 1.500 SAY  ;
             "Esta consulta muestra todos los Documentos en general;  incluyendo los"
           @ pfIl+1, 1.500 SAY  ;
             "que están anulados. Se puede imprimir el Documento. Esta es la parte de"
           @ pfIl+2, 1.500 SAY "la Cabecera de la Consulta."
      CASE wtPo="2"
           @ pfIl+0, 1.500 SAY  ;
             "La anulación trabaja como la Consulta y muestra todos los Documentos en"
           @ pfIl+1, 1.500 SAY  ;
             "general; Un Documento Anulado no se puede Activar nuevamente. Esta es"
           @ pfIl+2, 1.500 SAY "la Cabecera de la Consulta."
      CASE wtPo="3"
           @ pfIl+0, 1.500 SAY  ;
             "La Eliminación trabaja como la Consulta y muestra todos los Documentos"
           @ pfIl+1, 1.500 SAY  ;
             "en general; sólo se puede eliminar los que están anulados. Esta es la Ca-"
           @ pfIl+2, 1.500 SAY "becera de la Consulta."
 ENDCASE
 STORE pfIl+4 TO pfIl
 @ pfIl+0, 1.500 SAY "Las teclas para movilizarse son:"
 @ pfIl+2, 17 SAY ":" STYLE "BT"
 @ pfIl+3, 17 SAY ":" STYLE "BT"
 @ pfIl+4, 17 SAY ":" STYLE "BT"
 @ pfIl+2, 03 SAY "ESC" STYLE "BT"
 @ pfIl+3, 03 SAY "F10" STYLE "BT"
 @ pfIl+4, 03 SAY "F1" STYLE "BT"
 @ pfIl+2, 19 SAY "Regresar al Menú Principal"
 @ pfIl+3, 19 SAY "Cerrar y regresar a Windows"
 @ pfIl+4, 19 SAY "Ayuda del Programa"
 STORE pfIl+5 TO pfIl
 IF wtPo$"14"
      @ pfIl, 17 SAY ":" STYLE "BT"
      @ pfIl, 03 SAY "F3" STYLE "BT"
      @ pfIl, 19 SAY "Arregla Documentos para PLE"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF miMp=1
      @ pfIl, 17 SAY ":" STYLE "BT"
      @ pfIl, 03 SAY "F5" STYLE "BT"
      @ pfIl, 19 SAY "Buscar x Pedido"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl+0, 17 SAY ":" STYLE "BT"
 @ pfIl+1, 17 SAY ":" STYLE "BT"
 @ pfIl+4, 17 SAY ":" STYLE "BT"
 @ pfIl+0, 03 SAY "F6" STYLE "BT"
 @ pfIl+1, 03 SAY "F9" STYLE "BT"
 @ pfIl+4, 03 SAY "ENTER, TAB," STYLE "BT"
 @ pfIl+5, 03 SAY "CTRL ->," STYLE "BT"
 @ pfIl+6, 03 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+0, 19 SAY "Cambio de Orden de Consulta"
 @ pfIl+1, 19 SAY "Buscar palabra o frase dentro del nombre o Razón"
 @ pfIl+2, 19 SAY "Social del Proveedor, Orden de Compra, Comentario,"
 @ pfIl+3, 19 SAY "Pedido, Factura o Guía de Remisión."
 @ pfIl+4, 19 SAY "Consultar a partir de lo digitado, si es mayor a lo regis-"
 @ pfIl+5, 19 SAY "trado va al final del Archivo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_2400a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Proveedor, Orden de Compra,  Comentario,  Pedido,  Factura o Guía de"
 @ pfIl+02, 02 SAY  ;
   "Remisión.  Si la palabra o frase no se encuentra  contenida en ninguno"
 @ pfIl+03, 02 SAY  ;
   "de los registros grabados, saldrá un mensaje y se regresara a la cabe-"
 @ pfIl+04, 02 SAY  ;
   "cera. En caso de encontrase se regresará a la Cabecera, para que es-"
 @ pfIl+05, 02 SAY  ;
   "coger el orden de consulta  respectivo y se ingrese al detalle para vi-"
 @ pfIl+06, 02 SAY "sualizarlo."
 @ pfIl+08, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+11, 21 SAY ":" STYLE "BT"
 @ pfIl+12, 21 SAY ":" STYLE "BT"
 @ pfIl+13, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 13 SAY "ESC" STYLE "BT"
 @ pfIl+11, 13 SAY "F10" STYLE "BT"
 @ pfIl+12, 13 SAY "F1" STYLE "BT"
 @ pfIl+13, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+10, 23 SAY "Regresar a Cabecera"
 @ pfIl+11, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+12, 23 SAY "Ayuda del Programa"
 @ pfIl+13, 23 SAY "Buscar palabra y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl3_2400a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda es del numero de Pedido. Si no se encuentra contenida en"
 @ pfIl+01, 02 SAY  ;
   "los registros grabados, saldrá un mensaje y se regresara a la cabecera."
 @ pfIl+02, 02 SAY  ;
   "En caso de encontrase se regresará a la Cabecera, para que escoger el"
 @ pfIl+03, 02 SAY  ;
   "orden de consulta  respectivo y se ingrese al detalle para visualizarlo."
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
 @ pfIl+10, 23 SAY "Buscar Pedido y regresar a Cabecera"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 SET READBORDER OFF
 RELEASE vsW0, csW0, xsW0, vsW1, csW1, vsW2, vsW3, vsW4, vsW5, vsW6, vsWz,  ;
         vtB1, vtB2
 RELEASE vtB3, vlIn, vpAg, vcL1, vcL2, vcL3, vcL4, vfB1, vfB2, vfB3, vfB4,  ;
         vfB5, vcB1
 RELEASE vcB2, vcB3, vcB4, vcB5, vcO1, vfIl, ifIl, ufIl, cfIl, ffIl, xfIl,  ;
         vfFs, ifFs
 RELEASE ufFs, cfFs, ffFs, vfFr, ifFr, ufFr, cfFr, ffFr, vrEc, irEc, urEc,  ;
         crEc, vrCc
 RELEASE irCc, urCc, crCc, vpAl, cpAl, cpA1, viTe, viT1, vtDo, itDo, utDo,  ;
         xtDo, ctDo
 RELEASE vsEr, isEr, usEr, xsEr, csEr, vdOc, idOc, udOc, xdOc, cdOc, vfEm,  ;
         ifEm, ufEm
 RELEASE xfEm, cfEm, vnOm, inOm, unOm, xnOm, cnOm, vtD1, itD1, utD1, xtD1,  ;
         ctD1, vsR1
 RELEASE isR1, usR1, xsR1, csR1, vfAc, ifAc, ufAc, xfAc, cfAc, vpEd, xpEd,  ;
         ipEd, upEd
 RELEASE cpEd, vsEc, isEc, usEc, csEc, viMp, ttO1, ttO2, vcOd, vdEs, vcAn,  ;
         tcAn, ccAn
 RELEASE tcTd, xcTd, vcAj, vcUn, xpRv, xsUc, xtIt, xnTi, xdIr, xdIs, xrUc,  ;
         xmOn, xfIn
 RELEASE xrEg, xsR2, xrEm, xsOr, csOr, xoRd, coRd, xpLa, vpLa, xtIg, xdEc,  ;
         xpIg, xcCo
 RELEASE xnCc, xtPo, ctPo, ctPp, xfPa, xnFp, xdIa, cdIa, xmEs, cmEs, xaNo,  ;
         caNo, xcM1
 RELEASE xcM2, xvAl, xdCt, xnEt, xiGv, xrEd, xtOt, xpEr, xnT1, xiG1, xtO1,  ;
         xtRa, xtDs
 RELEASE xsEs, xdOs, xcDg, vcDg, xmN1, xcOs, xeSt, ceSt, xuSu, xdAt, xtIm,  ;
         xmAq, xtCa
 RELEASE xsIg, xnT2, xtPr, xnTp, vgAs, tgAs, tgA1, tcOs, ctP1, ctI1, vsRr,  ;
         vsLd, vsLc
 RELEASE vpD1, vpLa, vmOt, vpIe, xpIe, xoPc, xmLa, xmAn, xuN1, xuN2, xp11,  ;
         xp12, xp21
 RELEASE xp22, xcA1, xcA2, xcA3, xcA4, xpOr, xcMm, xcMp, vnUv, vtPo, vcXx,  ;
         cpRe, vdIr
 RELEASE vdIs, vdEp, tnE1, tnE2, tiG1, tiG2, tpE1, tpE2, xnE1, xnE2, xiG2,  ;
         xpE1, xpE2
 RELEASE xtO2, vcOn, vcTd, vlA1, vaN1
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
 DO deL_file2 WITH "3", "N"
 DO deL_file2 WITH "4", "S"
 DO deL_file2 WITH "5", "S"
 DO deL_file2 WITH "6", "S"
 RELEASE ntM1, ntM2, ntM3, ntM4, ntM5, ntM6
ENDPROC
*
