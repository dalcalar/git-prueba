*
PROCEDURE Tmp_2112z
 DO tmP_2111a IN PAC2111A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DIMENSION afIl[13, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
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
 afIl[x, 1] = "FTM2NOM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 15
 afIl[x, 4] = 4
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CAJ"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2CJD"
 afIl[x, 2] = "N"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2MON"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM2PRE"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
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
 INDEX ON ftM2ano+ftM2mes+ftM2dia+ftM2tdo+ftM2ser+ftM2doc TAG ftM2cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[11, 4]
 STORE 1 TO x
 afIl[x, 1] = "F2112TIP"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112ANO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112MES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112DIA"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112PED"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112SEC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 7
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F2112EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
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
 INDEX ON UPPER(ALLTRIM(f2112cod))+"*"+ALLTRIM(f2112ped)+f2112sec TAG f2112cod
 INDEX ON f2112ano+f2112mes+f2112dia+f2112tip+ALLTRIM(f2112ped)+f2112sec+ ;
       f2112tdo+f2112ser+f2112doc TAG f2112doc
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[6, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM4COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = mtMa
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
 afIl[x, 1] = "FTM4CAN"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 4
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
           DO poNmsj
           DO deL_file2 WITH "1", "S"
           DO deL_file2 WITH "2", "S"
           DO deL_file2 WITH "3", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ALLTRIM(ftM4cod)+"*"+ftM4tdo+ftM4ser+ftM4doc TAG ftM4cod
 CLOSE DATABASES
 CLOSE INDEXES
 DIMENSION afIl[54, 4]
 STORE 1 TO x
 afIl[x, 1] = "F9703PER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CUO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 40
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703ASI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP3"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703EAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 8
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP4"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CAT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP5"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703TEX"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP6"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703COD"
 afIl[x, 2] = "C"
 afIl[x, 3] = 24
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP7"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703OSC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 16
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP8"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703FEM"
 afIl[x, 2] = "C"
 afIl[x, 3] = 10
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP9"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703TDO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP10"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703SER"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP11"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703DOC"
 afIl[x, 2] = "C"
 afIl[x, 3] = 20
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP12"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703TPO"
 afIl[x, 2] = "C"
 afIl[x, 3] = 2
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP13"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 80
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP14"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703UNI"
 afIl[x, 2] = "C"
 afIl[x, 3] = 3
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP15"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703MET"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP16"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CA1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 29
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP17"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CS1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 29
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP18"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CT1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 23
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP19"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CA2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 29
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP20"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CS2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 29
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP21"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CT2"
 afIl[x, 2] = "C"
 afIl[x, 3] = 23
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP22"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CAN"
 afIl[x, 2] = "C"
 afIl[x, 3] = 29
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP23"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703COS"
 afIl[x, 2] = "C"
 afIl[x, 3] = 29
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP24"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703TOT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 15
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP25"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703EST"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP26"
 afIl[x, 2] = "C"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "F9703CM1"
 afIl[x, 2] = "C"
 afIl[x, 3] = 200
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "SEP27"
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
           DO deL_file2 WITH "3", "S"
           DO deL_file2 WITH "4", "S"
           STORE k_Esc TO mkEy
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON f9703cuo+f9703asi+f9703ean+f9703cat+f9703tex+f9703cod+f9703fem+ ;
       f9703tdo+f9703ser+f9703doc+f9703tpo TAG f9703per
 CLOSE DATABASES
 CLOSE INDEXES
ENDPROC
*
PROCEDURE P01_2112z
 DO liN_2112a IN PAC2112A WITH ifIl-1.4, ffIl+1.1
 DO li1_2112a IN PAC2112A WITH ifIl-0.2, ffIl+1.1
 DO coLsc1
 DO CASE
      CASE mrEs="3"
           @iFIL-1.4,iCLN+0.1 Say "Productos" Font "&mLetAri",9 Style "NQ"
           DO coLplp
           DO CASE
                CASE wtPo="1"
                     @ ffIl+1.1, icLn+080.0 TO ffIl+2.8, ucLn+000.2
                     @ ffIl+1.1, icLn+097.8 TO ffIl+2.8, icLn+115.8
                     @ ffIl+1.1, icLn+133.4 TO ffIl+2.8, icLn+151.4
                     @ ffIl+1.1, icLn+169.2 TO ffIl+2.8, icLn+182.4
                     DO coLsc1
                     @iFIL-1.4,iCLN+074.0 Say "Unid"              Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+082.2 Say "Stock Físico"      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+099.0 Say "Costo S/.inclui"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+120.0 Say "Total S/."         Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+134.3 Say "Costo US$ incl"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+154.9 Say "Total US$"         Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+080.4 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+080.4 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+098.2 Say " Costo del Mant. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+098.2 Say "   de Productos  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+116.0 Say "Costo x Stock S/." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+116.0 Say "   incluido IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+133.8 Say " Costo del Mant. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+133.8 Say "   de Productos  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+151.9 Say "Costo x Stock U$ " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+151.9 Say "   incluido IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+087.2
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+105.0
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+124.0
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+140.3
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+158.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+173.6
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+188.9
                CASE msTp=1
                     @ ffIl+1.1, icLn+093.4 TO ffIl+2.8, ucLn+000.2
                     @ ffIl+1.1, icLn+111.2 TO ffIl+2.8, icLn+129.2
                     @ ffIl+1.1, icLn+146.8 TO ffIl+2.8, icLn+146.8
                     @ ffIl+1.1, icLn+164.6 TO ffIl+2.8, icLn+164.6
                     @ ffIl+1.1, icLn+182.5 TO ffIl+2.8, icLn+182.5
                     DO coLsc1
                     @iFIL-1.4,iCLN+85.6 Say "Uni.Cp" Font "&mLetAri",9 Style "NQ"
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+101.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+118.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+136.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+153.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+171.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+190.4
                CASE msTp<>1 .AND. mcAj=1
                     @ ffIl+1.1, icLn+111.2 TO ffIl+2.8, icLn+129.2
                     @ ffIl+1.1, icLn+129.0 TO ffIl+2.8, icLn+182.7
                     @ ffIl+1.1, icLn+146.8 TO ffIl+2.8, icLn+146.8
                     @ ffIl+1.1, icLn+164.6 TO ffIl+2.8, icLn+164.6
                     @ ffIl+1.1, icLn+182.5 TO ffIl+2.8, icLn+182.5
                     DO coLsc1
                     @iFIL-1.4,iCLN+103.5 Say "Uni.Cp"             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+111.6 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+129.5 Say "  Cajas Físicas   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say "  Stock x llegar  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say "Físico + x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say "#Orden-Compra     " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+112.0 Say "         Stock    " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+112.0 Say "         Físico   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+129.8 Say "          Cajas   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say "         Físicas  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+118.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+136.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+153.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+171.4
                CASE msTp<>1
                     @ ffIl+1.1, icLn+129.0 TO ffIl+2.8, icLn+182.7
                     @ ffIl+1.1, icLn+146.8 TO ffIl+2.8, icLn+146.8
                     @ ffIl+1.1, icLn+164.6 TO ffIl+2.8, icLn+164.6
                     @ ffIl+1.1, icLn+182.5 TO ffIl+2.8, icLn+182.5
                     DO coLsc1
                     @iFIL-1.4,iCLN+114.9 Say "Unid.Cpra."         Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+129.5 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say "  Stock x llegar  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say "Físico + x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say "#Orden-Compra     " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+129.8 Say "         Stock    " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say "         Físico   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+136.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+153.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+171.4
                OTHERWISE
                     @ ffIl+1.1, icLn+146.8 TO ffIl+2.8, icLn+146.8
                     @ ffIl+1.1, icLn+164.6 TO ffIl+2.8, icLn+164.6
                     @ ffIl+1.1, icLn+182.5 TO ffIl+2.8, icLn+182.5
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+136.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+153.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+171.4
           ENDCASE
      CASE mrEs="4"
           @iFIL-1.4,iCLN+0.1 Say "Productos" Font "&mLetAri",9 Style "NQ"
           DO coLplp
           DO CASE
                CASE wtPo="1"
                     @ ffIl+1.1, icLn+114.2 TO ffIl+2.8, icLn+239.2
                     @ ffIl+1.1, icLn+132.0 TO ffIl+2.8, icLn+150.0
                     @ ffIl+1.1, icLn+167.6 TO ffIl+2.8, icLn+185.6
                     @ ffIl+1.1, icLn+203.2 TO ffIl+2.8, icLn+221.2
                     DO coLsc1
                     @iFIL-1.4,iCLN+108.3 Say "Unid"              Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+116.9 Say "Stock Físico"      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+133.0 Say "Costo S/.inclui"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+154.3 Say "Total S/."         Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+168.3 Say "Costo US$ incl"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+188.1 Say "Total US$"         Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+205.2 Say "Stock Físico"      Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+114.6 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+114.6 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+132.4 Say " Costo del Mant. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+132.4 Say "   de Productos  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+150.2 Say "Costo x Stock S/." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+150.2 Say "   incluido IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+168.0 Say " Costo del Mant. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+168.0 Say "   de Productos  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+185.8 Say "Costo x Stock U$ " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+185.8 Say "   incluido IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+203.6 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+203.6 Say "      p/Kardex   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+121.1
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+138.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+156.7
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+174.5
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+192.3
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+210.1
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+227.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+243.7
                CASE msTp=1 .AND. mcAj=1
                     @ ffIl+1.1, icLn+091.9 TO ffIl+2.8, ucLn+000.2
                     @ ffIl+1.1, icLn+109.7 TO ffIl+2.8, icLn+109.7
                     @ ffIl+1.1, icLn+127.5 TO ffIl+2.8, icLn+127.5
                     @ ffIl+1.1, icLn+145.3 TO ffIl+2.8, icLn+145.3
                     @ ffIl+1.1, icLn+163.1 TO ffIl+2.8, icLn+163.1
                     @ ffIl+1.1, icLn+180.9 TO ffIl+2.8, icLn+180.9
                     @ ffIl+1.1, icLn+198.7 TO ffIl+2.8, icLn+198.7
                     @ ffIl+1.1, icLn+216.5 TO ffIl+2.8, icLn+216.5
                     @ ffIl+1.1, icLn+234.3 TO ffIl+2.8, icLn+234.3
                     DO coLsc1
                     @iFIL-1.4,iCLN+085.9 Say "Unid"             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+092.5 Say "Stock Disponib  " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+110.3 Say "Unidades-Sepa   " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+128.2 Say "   Stock Físico " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+145.9 Say "  Stock x llegar" Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+163.7 Say "Dispon.+ x lleg " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+181.5 Say " Físico + x lleg" Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     DO coLscz
                     @iFIL-5.0,iCLN+092.9 Say "   Stock Físico -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+092.9 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+110.7 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+110.7 Say "   en Ped.de Vta." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+128.6 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+128.6 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+146.3 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+146.3 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+164.1 Say "Stock Físico-Ped." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+164.1 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+181.9 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+099.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+116.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+134.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+152.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+169.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+188.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+205.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+223.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+240.9
                CASE msTp=1
                     @ ffIl+1.1, icLn+127.5 TO ffIl+2.8, icLn+234.5
                     @ ffIl+1.1, icLn+145.3 TO ffIl+2.8, icLn+145.3
                     @ ffIl+1.1, icLn+163.1 TO ffIl+2.8, icLn+163.1
                     @ ffIl+1.1, icLn+180.9 TO ffIl+2.8, icLn+180.9
                     @ ffIl+1.1, icLn+198.7 TO ffIl+2.8, icLn+198.7
                     @ ffIl+1.1, icLn+216.5 TO ffIl+2.8, icLn+216.5
                     DO coLsc1
                     @iFIL-1.4,iCLN+106.5 Say "Unid.Cpra."       Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+121.9 Say "Vta."             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+128.0 Say "Stock Disponib  " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+145.7 Say "Unidades-Sepa   " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+163.5 Say "   Stock Físico " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+181.3 Say "  Stock x llegar" Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+199.1 Say "Dispon.+ x lleg " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+216.9 Say " Físico + x lleg" Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+234.7 Say " #Orden-Compra  " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     DO coLscz
                     @iFIL-5.0,iCLN+128.6 Say "   Stock Físico -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+128.6 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+146.3 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+146.3 Say "   en Ped.de Vta." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+164.1 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+164.1 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+181.9 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+199.7 Say "Stock Físico-Ped." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+134.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+152.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+169.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+188.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+205.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+223.9
                CASE msTp<>1 .AND. mcAj=1
                     @ ffIl+1.1, icLn+180.9 TO ffIl+2.8, icLn+180.9
                     @ ffIl+1.1, icLn+163.1 TO ffIl+2.8, icLn+234.5
                     @ ffIl+1.1, icLn+198.7 TO ffIl+2.8, icLn+198.7
                     @ ffIl+1.1, icLn+216.5 TO ffIl+2.8, icLn+216.5
                     DO coLsc1
                     @iFIL-1.4,iCLN+106.5 Say "Unid.Cpra."       Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+123.5 Say "Tipo-Prod."       Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+139.5 Say "Vta."             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+150.1 Say "Grupo"            Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+163.5 Say "   Stock Físico " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+181.3 Say "  Cajas Físicas " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+199.1 Say "  Stock x llegar" Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+216.9 Say " Físico + x lleg" Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+234.7 Say " #Orden-Compra  " Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     DO coLscz
                     @iFIL-5.0,iCLN+164.1 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+164.1 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+181.9 Say "          Cajas  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say "         Físicas " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+199.7 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+169.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+188.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+205.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+223.9
                CASE msTp<>1
                     @ ffIl+1.1, icLn+180.9 TO ffIl+2.8, icLn+234.5
                     @ ffIl+1.1, icLn+198.7 TO ffIl+2.8, icLn+198.7
                     @ ffIl+1.1, icLn+216.5 TO ffIl+2.8, icLn+216.5
                     DO coLsc1
                     @iFIL-1.4,iCLN+120.5 Say "Unidad-Compr"      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+139.1 Say "Tipo-Producto"     Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+156.0 Say "Venta"             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+168.1 Say "Grupo"             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+181.3 Say "   Stock Físico "  Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+199.1 Say "  Stock x llegar"  Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+216.9 Say " Físico + x lleg"  Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+234.7 Say " #Orden-Compra  "  Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     DO coLscz
                     @iFIL-5.0,iCLN+181.9 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+199.7 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+188.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+205.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+223.9
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
      OTHERWISE
           DO coLsc1
           @iFIL-1.4,iCLN+0.1 Say "Productos" Font "&mLetAri",9 Style "NQ"
           DO coLplp
           DO CASE
                CASE wtPo="1"
                     @ ffIl+1.1, icLn+096.5 TO ffIl+2.8, icLn+239.1
                     @ ffIl+1.1, icLn+114.3 TO ffIl+2.8, icLn+132.3
                     @ ffIl+1.1, icLn+149.9 TO ffIl+2.8, icLn+167.9
                     @ ffIl+1.1, icLn+185.5 TO ffIl+2.8, icLn+203.5
                     @ ffIl+1.1, icLn+221.1 TO ffIl+2.8, icLn+221.3
                     DO coLsc1
                     @iFIL-1.4,iCLN+090.3 Say "Unid"              Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+096.9 Say "   Stock Físico"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+114.7 Say "Costo S/.incluid"  Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+132.5 Say "      Total S/."   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+150.3 Say " Costo US$ incl"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+168.1 Say "     Total US$"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+185.9 Say "   Stock Físico"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+203.7 Say "Costo Unit Prm"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+221.5 Say " Costo Tot Prm"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+257.1 Say "     Fecha"        Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+096.9 Say "     Stock Real  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+096.9 Say "        Físico   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+114.7 Say " Costo del Mant. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+114.7 Say "   de Productos  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+132.5 Say "Costo x Stock S/." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+132.5 Say "   incluido IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+150.3 Say " Costo del Mant. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+150.3 Say "   de Productos  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+168.1 Say "Costo x Stock U$ " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+168.1 Say "   incluido IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+185.9 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+185.9 Say "      p/Kardex   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+203.7 Say " Costo Promedio  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+203.7 Say "S/.generado-Kard." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+221.5 Say " Costo Promedio  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+221.5 Say "x Stock S/. s/IGV" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+239.2 Say " Ultima Compra   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+257.1 Say "Fecha-Ultim      " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+102.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+120.7
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+138.5
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+156.3
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+174.1
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+191.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+209.7
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+227.5
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+245.5
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+261.1
                CASE msTp=1 .AND. mcAj=1
                     @ ffIl+1.1, icLn+091.9 TO ffIl+2.8, ucLn+000.2
                     @ ffIl+1.1, icLn+109.7 TO ffIl+2.8, icLn+127.6
                     @ ffIl+1.1, icLn+145.3 TO ffIl+2.8, icLn+163.2
                     @ ffIl+1.1, icLn+180.9 TO ffIl+2.8, icLn+198.8
                     @ ffIl+1.1, icLn+216.5 TO ffIl+2.8, icLn+234.4
                     @ ffIl+1.1, icLn+252.1 TO ffIl+2.8, icLn+252.1
                     DO coLsc1
                     @iFIL-1.4,iCLN+086.3 Say "Unid"            Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+092.3 Say "Stock Disponib"  Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+110.1 Say "Unidades-Sepa"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+128.0 Say "Cajas Disponib"  Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+145.9 Say "Cajas Separad"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+165.1 Say "Stock Físico"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+182.3 Say "Cajas Físicas"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+200.0 Say "Stock x llegar"  Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+217.0 Say "#Orden-Compr"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+234.9 Say "Dispon.+ x lleg" Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+253.5 Say "Físico + x lleg" Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+092.9 Say "   Stock Físico -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+092.9 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+110.7 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+110.7 Say "   en Ped.de Vta." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+128.5 Say "  Cajas Físicas -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+128.5 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+146.3 Say "   Cajas Pedidas " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+146.3 Say "   en Ped.de Vta." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+164.1 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+164.1 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+181.9 Say "          Cajas  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say "         Físicas " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+199.7 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+235.3 Say "Stock Físico-Ped." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+235.3 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+253.1 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+253.1 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+099.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+116.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+134.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+152.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+169.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+187.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+204.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+241.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+259.4
                CASE msTp=1
                     @ ffIl+1.1, icLn+145.3 TO ffIl+2.8, ucLn+000.2
                     @ ffIl+1.1, icLn+163.1 TO ffIl+2.8, icLn+181.1
                     @ ffIl+1.1, icLn+198.6 TO ffIl+2.8, icLn+216.7
                     @ ffIl+1.1, icLn+234.2 TO ffIl+2.8, icLn+252.3
                     DO coLsc1
                     @iFIL-1.4,iCLN+108.7 Say "Unidad"            Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+120.5 Say "Venta"             Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+127.9 Say "Tipo de Produc"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+145.7 Say "Stock Disponib"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+163.5 Say "Unidades-Sepa"     Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+183.0 Say "Stock Físico"      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+199.4 Say "Stock x llegar"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+216.9 Say "#Orden-Compr"      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+234.7 Say "Dispon.+ x lleg"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+253.2 Say "Físico + x lleg"   Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+146.3 Say "   Stock Físico -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+146.3 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+164.1 Say " Cantidad Pedida " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+164.1 Say "   en Ped.de Vta." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+181.9 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+199.7 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+235.3 Say "Stock Físico-Ped." Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+235.3 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+253.1 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+253.1 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+152.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+169.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+187.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+204.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+241.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+259.4
                CASE msTp<>1 .AND. mcAj=1
                     @ ffIl+1.1, icLn+180.9 TO ffIl+2.8, icLn+252.3
                     @ ffIl+1.1, icLn+198.6 TO ffIl+2.8, icLn+234.4
                     @ ffIl+1.1, icLn+216.4 TO ffIl+2.8, icLn+216.4
                     DO coLsc1
                     @iFIL-1.4,iCLN+148.5 Say "Tipo-Prod"         Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+164.5 Say "Unidad-Cpra."      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+181.3 Say "Stock Disponib"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+199.1 Say "Cajas Disponib"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+216.9 Say "Stock x llegar"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+234.7 Say "Dispon.+ x lleg"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+252.5 Say "#Orden-Compr"      Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+181.9 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+181.9 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+199.7 Say "          Cajas  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say "         Físicas " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+235.3 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+235.3 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+187.4
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+204.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+222.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+241.9
                CASE msTp<>1
                     @ ffIl+1.1, icLn+198.6 TO ffIl+2.8, icLn+252.3
                     @ ffIl+1.1, icLn+216.4 TO ffIl+2.8, icLn+234.4
                     DO coLsc1
                     @iFIL-1.4,iCLN+147.5 Say "Grupo-Prod"        Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+166.5 Say "Tipo-Prod"         Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+182.3 Say "Unidad-Cpra."      Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+199.1 Say "Stock Disponib"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+216.9 Say "Stock x llegar"    Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+234.7 Say "Dispon.+ x lleg"   Font "&mLetAri",9 Style "NQ"
                     @iFIL-1.4,iCLN+252.5 Say "#Orden-Compr"      Font "&mLetAri",9 Style "NQ"
                     DO coLscz
                     @iFIL-5.0,iCLN+199.7 Say "         Stock   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say "         Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "  Cant.pendiente " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say " en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+235.3 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+235.3 Say "  + Cant.x llegar" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+204.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+222.9
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     DO prEsiona WITH "1", "CONSU7", ifIl-2.8, icLn+241.9
           ENDCASE
           IF mkEy=k_Esc
                RETURN
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Tit_2112z
 STORE 1 TO vuLt
 DO coLsc1
 DO CASE
      CASE mrEs="3"
           DO tt3_2112z
      CASE mrEs="4"
           DO tt4_2112z
      OTHERWISE
           DO tt5_2112z
 ENDCASE
 IF vuLt>1
      DO coLblr
      DO CASE
           CASE mrEs="3" .AND. wtPo="1"
                DO prEsiona WITH "1", "BOTON", ifIl-4.7, icLn+72.4
                @iFIL-4.5,iCLN+74.5 Say Str(vSW2,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
           CASE mrEs="4" .AND. wtPo="1"
                DO prEsiona WITH "1", "BOTON", ifIl-4.7, icLn+105.4
                @iFIL-4.5,iCLN+107.5 Say Str(vSW2,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
           OTHERWISE
                DO prEsiona WITH "1", "BOTON", ifIl-4.7, icLn+80.4
                @iFIL-4.5,iCLN+82.5 Say Str(vSW2,1,0)+"/"+Str(vULT,1,0) Font "&mLetRom",9 Style "BT"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Tt3_2112z
 DO CASE
      CASE wtPo="1"
           STORE 4 TO vuLt
           DO CASE
                CASE vsW2=1
                     @iFIL-1.4,iCLN+169.4 Say "C.Unit Prom.    "  Font "&mLetAri",9 Style "NQ" Size 1,12.4 Pict "@S13"
                     @iFIL-1.4,iCLN+182.6 Say "    Stock Fisico"  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "@S17"
                CASE vsW2=2
                     @iFIL-1.4,iCLN+169.4 Say "C.Unit Prom.    "  Font "&mLetAri",9 Style "NQ" Size 1,12.4 Pict "@S13"
                     @iFIL-1.4,iCLN+182.6 Say " Costo Tot Prm  "  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "@S17"
                CASE vsW2=3
                     @iFIL-1.4,iCLN+169.4 Say "    Fecha       "  Font "&mLetAri",9 Style "NQ" Size 1,12.4 Pict "@S13"
                     @iFIL-1.4,iCLN+182.6 Say "Ultim-Costo S/. "  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "@S17"
                CASE vsW2=4
                     @iFIL-1.4,iCLN+169.4 Say "    Fecha       "  Font "&mLetAri",9 Style "NQ" Size 1,12.4 Pict "@S13"
                     @iFIL-1.4,iCLN+182.6 Say "Ultim-Costo U$  "  Font "&mLetAri",9 Style "NQ" Size 1,16.8 Pict "@S17"
           ENDCASE
           DO coLscz
           DO CASE
                CASE vsW2=1
                     @iFIL-5.0,iCLN+169.4 Say " Costo Prom      " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-4.0,iCLN+169.4 Say " S/.generado     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-5.0,iCLN+182.6 Say "   Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+182.6 Say "      p/Kardex   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                CASE vsW2=2
                     @iFIL-5.0,iCLN+169.4 Say " Costo Prom      " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-4.0,iCLN+169.4 Say " S/.generado     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-5.0,iCLN+182.6 Say " Costo Promedio  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+182.6 Say "x Stock S/. s/IGV" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                CASE vsW2=3
                     @iFIL-5.0,iCLN+169.4 Say "Fecha-Ultima     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-4.0,iCLN+169.4 Say "  compra S/.     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-5.0,iCLN+182.6 Say " Ultima Compra   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+182.6 Say "    S/. sin IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                CASE vsW2=4
                     @iFIL-5.0,iCLN+169.4 Say "Fecha-Ultima     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-4.0,iCLN+169.4 Say "compra US$       " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-5.0,iCLN+182.6 Say " Ultima Compra   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+182.6 Say "   US$ sin IGV   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
           ENDCASE
      CASE msTp=1 .AND. mcAj=1
           STORE 3 TO vuLt
           DO CASE
                CASE vsW2=1
                     @iFIL-1.4,iCLN+093.8 Say " Stock Disponible " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+111.6 Say "Unidades-Separad  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+129.5 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say "   Stock x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say " Disp.+ x llegar  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say "Físico + x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+094.2 Say "   Stock Físico - " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+094.2 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+112.0 Say " Cantidad digitada" Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+112.0 Say "   en Ped.de Vta. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+129.8 Say "          Stock   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say "          Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say "Stock Físico-Ped. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+183.2 Say "   Stock Físico   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+183.2 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                CASE vsW2=2
                     @iFIL-1.4,iCLN+093.8 Say " Stock Disponible " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+111.6 Say "Unidades-Separad  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+129.5 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say "Cajas Disponibles " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say " Cajas Separadas  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say "  Cajas Físicas   " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+094.2 Say "   Stock Físico - " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+094.2 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+112.0 Say " Cantidad digitada" Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+112.0 Say "   en Ped.de Vta. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+129.8 Say "          Stock   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say "          Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say "   Cajas Físicas -" Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say "   Cajas Pedidas  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "   en Ped.de Vta. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+183.2 Say "Cajas que incluye " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+183.2 Say "     las pedidas  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                CASE vsW2=3
                     @iFIL-1.4,iCLN+093.8 Say " Stock Disponible " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+111.6 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+129.5 Say "   Stock x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say " Dispon.+ x llegar" Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say " Físico + x llegar" Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say " #Orden-Compr     " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+094.2 Say "   Stock Físico - " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+094.2 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+112.0 Say "          Stock   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+112.0 Say "          Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+129.8 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say "Stock Físico-Ped. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say "   Stock Físico   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+183.2 Say Space(10)            Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+183.2 Say Space(10)            Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           ENDCASE
      CASE msTp=1
           STORE 2 TO vuLt
           DO CASE
                CASE vsW2=1
                     @iFIL-1.4,iCLN+093.8 Say " Stock Disponible " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+111.6 Say "Unidades-Separad  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+129.5 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say "   Stock x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say " Disp.+ x llegar  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say "Físico + x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+094.2 Say "    Stock Físico -" Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+094.2 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+112.0 Say " Cantidad digitada" Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+112.0 Say "   en Ped.de Vta. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+129.8 Say "          Stock   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say "          Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say " Stock Físico-Ped." Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+183.2 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+183.2 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                CASE vsW2=2
                     @iFIL-1.4,iCLN+093.8 Say " Stock Disponible " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+111.6 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+129.5 Say "   Stock x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+147.2 Say " Dispon.+ x llegar" Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+165.0 Say " Físico + x llegar" Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-1.4,iCLN+182.8 Say " #Orden-Compr     " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     DO coLscz
                     @iFIL-5.0,iCLN+094.2 Say "    Stock Físico -" Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+094.2 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+112.0 Say "          Stock   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+112.0 Say "          Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+129.8 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+129.8 Say "  en Ord.de Cpra. " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+147.6 Say " Stock Físico-Ped." Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+147.6 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+165.4 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-5.0,iCLN+183.2 Say Space(10)            Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
                     @iFIL-4.0,iCLN+183.2 Say Space(10)            Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           ENDCASE
      CASE msTp<>1 .AND. mcAj=1
           @iFIL-1.4,iCLN+111.6 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+129.5 Say "  Cajas Físicas   " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+147.2 Say "  Stock x llegar  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+165.0 Say "Físico + x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+182.8 Say "#Orden-Compra     " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           DO coLscz
           @iFIL-5.0,iCLN+112.0 Say "         Stock    " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+112.0 Say "         Físico   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-5.0,iCLN+129.8 Say "          Cajas   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+129.8 Say "         Físicas  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-5.0,iCLN+147.6 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+147.6 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-5.0,iCLN+165.4 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
      CASE msTp<>1
           @iFIL-1.4,iCLN+129.5 Say "    Stock Físico  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+147.2 Say "  Stock x llegar  " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+165.0 Say "Físico + x llegar " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-1.4,iCLN+182.8 Say "#Orden-Compra     " Font "&mLetAri",9 Style "NQ" Size 1,17.1 Pict "@S18"
           DO coLscz
           @iFIL-5.0,iCLN+129.8 Say "         Stock    " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+129.8 Say "         Físico   " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-5.0,iCLN+147.6 Say "  Cant.pendiente  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+147.6 Say " en Ord.de Cpra.  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-5.0,iCLN+165.4 Say "    Stock Físico  " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
           @iFIL-4.0,iCLN+165.4 Say "  + Cant.x llegar " Font "&mLetRom",9 Style "NQ" Size 1,17.1 Pict "@S18"
 ENDCASE
ENDPROC
*
PROCEDURE Tt4_2112z
 DO CASE
      CASE wtPo="1"
           STORE 3 TO vuLt
           DO CASE
                CASE vsW2=1
                     @iFIL-1.4,iCLN+221.4 Say " Costo Tot Prm"    Font "&mLetAri",9 Style "NQ" Size 1,16.8
                     @iFIL-1.4,iCLN+240.1 Say "C.Unit.Prm"        Font "&mLetAri",9 Style "NQ" Size 1,12.2
                CASE vsW2=2
                     @iFIL-1.4,iCLN+221.4 Say "Ultim-Costo S/."   Font "&mLetAri",9 Style "NQ" Size 1,16.8
                     @iFIL-1.4,iCLN+240.1 Say "    Fecha"         Font "&mLetAri",9 Style "NQ" Size 1,12.2
                CASE vsW2=3
                     @iFIL-1.4,iCLN+221.4 Say "Ultim-Costo U$"    Font "&mLetAri",9 Style "NQ" Size 1,16.8
                     @iFIL-1.4,iCLN+240.1 Say "    Fecha"         Font "&mLetAri",9 Style "NQ" Size 1,12.2
           ENDCASE
           DO coLscz
           DO CASE
                CASE vsW2=1
                     @iFIL-5.0,iCLN+221.4 Say " Costo Promedio  " Font "&mLetRom",9 Style "NQ" Size 1,16.6 Pict "@S17"
                     @iFIL-4.0,iCLN+221.4 Say "x Stock S/. s/IGV" Font "&mLetRom",9 Style "NQ" Size 1,16.6 Pict "@S17"
                     @iFIL-5.0,iCLN+239.2 Say " Costo Prom  "     Font "&mLetRom",9 Style "NQ" Size 1,13.2 Pict "@S13"
                     @iFIL-4.0,iCLN+239.2 Say "   S/.Kardex"      Font "&mLetRom",9 Style "NQ" Size 1,13.2 Pict "@S13"
                CASE vsW2=2
                     @iFIL-5.0,iCLN+221.4 Say " Ultima Compra   " Font "&mLetRom",9 Style "NQ" Size 1,16.6 Pict "@S17"
                     @iFIL-4.0,iCLN+221.4 Say "    S/. sin IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6 Pict "@S17"
                     @iFIL-5.0,iCLN+239.2 Say "Fecha-Ultim      " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-4.0,iCLN+239.2 Say "  compra S/.     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                CASE vsW2=3
                     @iFIL-5.0,iCLN+221.4 Say " Ultima Compra   " Font "&mLetRom",9 Style "NQ" Size 1,16.6 Pict "@S17"
                     @iFIL-4.0,iCLN+221.4 Say "    US$ sin IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6 Pict "@S17"
                     @iFIL-5.0,iCLN+239.2 Say "Fecha-Ultim      " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                     @iFIL-4.0,iCLN+239.2 Say "  compra US$     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
           ENDCASE
      CASE msTp=1 .AND. mcAj=1
           STORE 2 TO vuLt
           DO CASE
                CASE vsW2=1
                     @iFIL-1.4,iCLN+199.3 Say "Cajas Disponib "    Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+217.1 Say "Cajas Separadas"    Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+234.9 Say "  Cajas Físicas"    Font "&mLetAri",9 Style "NQ" Size 1,16.6
                CASE vsW2=2
                     @iFIL-1.4,iCLN+199.3 Say " #Orden-Compra "    Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+217.1 Say "Cajas Disponib "    Font "&mLetAri",9 Style "NQ" Size 1,16.6
                     @iFIL-1.4,iCLN+234.9 Say "Cajas Separadas"    Font "&mLetAri",9 Style "NQ" Size 1,16.6
           ENDCASE
           DO coLscz
           DO CASE
                CASE vsW2=1
                     @iFIL-5.0,iCLN+199.7 Say "   Cajas Físicas -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "   Cajas Pedidas  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say "   en Ped.de Vta. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+235.3 Say "Cajas que incluye " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+235.3 Say "     las pedidas  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                CASE vsW2=2
                     @iFIL-5.0,iCLN+199.7 Say Space(10)            Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+199.7 Say Space(10)            Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+217.5 Say "   Cajas Físicas -" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+217.5 Say " Cantidad Pedida  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-5.0,iCLN+235.3 Say " Cantidad digitada" Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+235.3 Say "   en Ped.de Vta. " Font "&mLetRom",9 Style "NQ" Size 1,16.6
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Tt5_2112z
 DO CASE
      CASE wtPo="1"
           STORE 2 TO vuLt
           DO CASE
                CASE vsW2=1
                     @iFIL-1.4,iCLN+239.4 Say "Ultim-Costo S/."   Font "&mLetAri",9 Style "NQ"
                CASE vsW2=2
                     @iFIL-1.4,iCLN+239.4 Say "Ultim-Costo U$"    Font "&mLetAri",9 Style "NQ"
           ENDCASE
           DO coLscz
           DO CASE
                CASE vsW2=1
                     @iFIL-4.0,iCLN+239.3 Say "    S/. sin IGV  " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+257.1 Say "  compra S/.     " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
                CASE vsW2=2
                     @iFIL-4.0,iCLN+239.3 Say "   US$ sin IGV   " Font "&mLetRom",9 Style "NQ" Size 1,16.6
                     @iFIL-4.0,iCLN+257.1 Say "compra US$       " Font "&mLetRom",9 Style "NQ" Size 1,12.2 Pict "@S13"
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Tam_2112z
 DO CASE
      CASE wtPo="1"
           STORE 134 TO ptAm
           STORE 20 TO mcLn
      OTHERWISE
           STORE 121 TO ptAm
           STORE 28 TO mcLn
 ENDCASE
ENDPROC
*
PROCEDURE Rep_2112z
 PRIVATE ptDo, psEr, pfAc, pfEm, ptPp, pnUm, pfRa
 STORE 00 TO veNt, vsAl, usLd, upRm, vpAg, vlIn
 SELECT kaRdex
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)
 SET NEAR OFF
 DO CASE
      CASE EOF()
           GOTO BOTTOM
           IF ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                RETURN
           ENDIF
      CASE ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
           SKIP -1
           IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                RETURN
           ENDIF
 ENDCASE
 SELECT kaRdex
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)
 IF EOF()
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      IF f2990mes<SUBSTR(DTOC(dfEm), 4, 2)
           GOTO TOP
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                SUBSTR(DTOC(dfEm), 4, 2)
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
           STORE f2990sld TO usLd
           STORE f2990prm TO upRm
           STORE SUBSTR(DTOC(dfEm), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(dfEm), 7, 4) TO caNo
           DO caB_2112z WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO riN_2112z WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO rfI_2112z WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
      SUBSTR(DTOC(dfEm), 1, 2)
 SET NEAR OFF
 SKIP -1
 IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
      STORE 0 TO usLd
      STORE 0 TO upRm
 ELSE
      STORE f2990sld TO usLd
      STORE f2990prm TO upRm
      GOTO TOP
      SET NEAR ON
      SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm),  ;
           4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
      SET NEAR OFF
      IF CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<dfEm .OR. CTOD(f2990dia+ ;
         "/"+f2990mes+"/"+f2990ano)>hfEm
           STORE SUBSTR(DTOC(dfEm), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(dfEm), 7, 4) TO caNo
           DO caB_2112z WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO riN_2112z WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO rfI_2112z WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           RETURN
      ENDIF
 ENDIF
 SELECT kaRdex
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
      SUBSTR(DTOC(dfEm), 1, 2)
 SET NEAR OFF
 IF SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)="0101"
      SELECT kaRdex
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm),  ;
           4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
      IF  .NOT. EOF() .AND. f2990tpo+f2990tpp="10"
           STORE f2990sld TO usLd, veNt
           STORE f2990prm TO upRm
           STORE SUBSTR(DTOC(dfEm), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(dfEm), 7, 4) TO caNo
           DO caB_2112z WITH ptAm
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO riN_2112z WITH "1"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE vlIn+1.2 TO vlIn
           SKIP
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*" .OR.  ;
              f2990mes<>"01"
                DO rfI_2112z WITH "1"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                RETURN
           ENDIF
      ELSE
           SELECT kaRdex
           GOTO TOP
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
           SET NEAR OFF
      ENDIF
 ENDIF
 STORE f2990ano TO caNo
 STORE f2990mes TO cmEs
 IF  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*" .AND.  ;
     CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<=hfEm
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"  ;
         .AND. CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<=hfEm
           IF CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<dfEm
                SKIP
                LOOP
           ENDIF
           IF vpAg=0 .OR. vlIn>mpAg-5
                DO caB_2112z WITH ptAm
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                DO CASE
                     CASE vpAg=1
                          DO riN_2112z WITH "1"
                     CASE vpAg>1
                          DO riN_2112z WITH "2"
                ENDCASE
                STORE vlIn+1.2 TO vlIn
           ENDIF
           DO CASE
                CASE f2990tpo="1"
                     STORE veNt+f2990can TO veNt
                CASE f2990tpo="2"
                     STORE vsAl+f2990can TO vsAl
           ENDCASE
           STORE f2990tdo TO ptDo
           STORE f2990sld TO usLd
           STORE f2990prm TO upRm
           STORE f2990dia+"/"+f2990mes+"/"+f2990ano TO pfEc
           DO CASE
                CASE f2990tdo="GI"
                     STORE "Ing" TO ptDo
                     STORE f2990ser TO psEr
                     STORE f2990doc TO pfAc
                CASE f2990tdo="GS"
                     STORE "Sal" TO ptDo
                     STORE f2990ser TO psEr
                     STORE f2990doc TO pfAc
                OTHERWISE
                     IF f2990tdo="CO"
                          IF f2990tpo="1" .OR. f2990td1="NC"
                               STORE f2990td1 TO ptDo
                          ENDIF
                          IF f2990srf="000" .OR. LEN(ALLTRIM(f2990srf))=0
                               STORE "" TO psEr
                          ELSE
                               STORE f2990srf TO psEr
                          ENDIF
                          STORE ALLTRIM(f2990fac) TO pfAc
                     ELSE
                          STORE f2990ser TO psEr
                          STORE f2990doc TO pfAc
                     ENDIF
                     SELECT tiPo_doc
                     SEEK ptDo
                     IF  .NOT. EOF()
                          STORE f9311td1 TO ptDo
                     ENDIF
           ENDCASE
           SELECT kaRdex
           IF LEN(ALLTRIM(f2990rem))>0
                STORE pfAc+" - GR:"+f2990sr1+"-"+f2990rem TO pfAc
           ENDIF
           DO CASE
                CASE f2990tdo="FA" .OR. f2990tdo="BO"
                     STORE "01" TO ptPp
                CASE f2990tdo="CO" .AND. f2990td1="NC"
                     STORE AT("FA:", f2990nom) TO pnUm
                     STORE SUBSTR(f2990nom, pnUm, 100) TO pfRa
                     STORE SUBSTR(pfRa, 1, AT(" ", pfRa)) TO pfRa
                     STORE ALLTRIM(pfRa) TO pfRa
                     IF LEN(pfRa)<8
                          STORE " " TO pfRa
                     ENDIF
                     STORE "25 - "+pfRa TO ptPp
                CASE f2990tdo="CO" .AND. SUBSTR(f2990ped, 1, 1)="I"
                     STORE "18 - "+f2990nom TO ptPp
                CASE f2990tdo="CO"
                     STORE "02" TO ptPp
                CASE f2990tdo="GR" .AND. f2990ten="02"
                     STORE "11" TO ptPp
                CASE f2990tdo="GR" .AND. f2990ten="05"
                     STORE "91 - Consumo Interno" TO ptPp
                CASE f2990tdo="GR"
                     STORE "92" TO ptPp
                CASE f2990tdo="GI" .AND. f2990nom="GR"
                     STORE "21 - "+f2990nom TO ptPp
                CASE f2990tdo="GI" .AND. f2990nom="NC"
                     STORE "24 - "+f2990nom TO ptPp
                CASE f2990tdo="GI" .AND. f2990tra="3"
                     STORE "21 - "+f2990nom TO ptPp
                CASE f2990tdo="GS" .AND. f2990tra="3"
                     STORE "11 - "+f2990nom TO ptPp
                CASE f2990tdo="GI"
                     STORE "99 - "+f2990nom TO ptPp
                CASE f2990tdo="GS"
                     STORE "99 - "+f2990nom TO ptPp
           ENDCASE
           IF vrEs=1
                DO lnN_2112z
                STORE vlIn+1 TO vlIn
           ENDIF
           SKIP
      ENDDO
      DO rfI_2112z WITH "1"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 RELEASE ptDo, psEr, pfAc, pfEm, ptPp, pnUm, pfRa
ENDPROC
*
PROCEDURE Lnn_2112z
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+00.2 Say pFEC                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+13.0 Say pTDO                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+17.0 Say pSER                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+24.2 Say pFAC                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+57.0 Say pTPP                       Font "&mLetAri",7 Style "NT"
           DO CASE
                CASE f2990tpo="1"
                     @vLIN,mCLN+097.9 Say F2990CAN          Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
                     @vLIN,mCLN+110.9 Say F2990COS          Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
                     @vLIN,mCLN+123.9 Say F2990CAN*F2990COS Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
                CASE f2990tpo="2"
                     @vLIN,mCLN+136.9 Say F2990CAN          Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
                     @vLIN,mCLN+149.9 Say F2990PRM          Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
                     @vLIN,mCLN+162.9 Say F2990CAN*F2990PRM Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
           ENDCASE
           @vLIN,mCLN+175.9 Say F2990SLD                  Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+188.9 Say F2990PRM                  Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+201.9 Say F2990SLD*F2990PRM         Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
      OTHERWISE
           @vLIN,mCLN+00.2 Say pFEC                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+13.0 Say pTDO                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+17.0 Say pSER                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+24.2 Say pFAC                       Font "&mLetAri",7 Style "NT"
           @vLIN,mCLN+57.0 Say pTPP                       Font "&mLetAri",7 Style "NT"
           DO CASE
                CASE f2990tpo="1"
                     @vLIN,mCLN+139.9 Say F2990CAN          Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
                CASE f2990tpo="2"
                     @vLIN,mCLN+159.9 Say F2990CAN          Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
           ENDCASE
           @vLIN,mCLN+179.9 Say F2990SLD                  Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
 ENDCASE
ENDPROC
*
PROCEDURE Cab_2112z
 PARAMETER ptMn
 IF vpAg<>0
      DO rfI_2112z WITH "2"
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO taM_0000a WITH ptMn, "1"
 STORE tpAg+1 TO tpAg
 STORE vpAg+1 TO vpAg
 STORE 00 TO vlIn
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN Say "Formato 13.1" Font "&mLetRom",12 Style "NT"
      OTHERWISE
           @vLIN,mCLN Say "Formato 12.1" Font "&mLetRom",12 Style "NT"
 ENDCASE
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN Say "Registro de Inventario permanente Valorizado - Detalle del Inventario Valorizado"                              Font "&mLetRom",13 Style "BT"
      OTHERWISE
           @vLIN,mCLN Say "Registro de Inventario permanente en Unidades Fisicas - Detalle del Inventario Permanente en Unidades Fisicas" Font "&mLetRom",13 Style "BT"
 ENDCASE
 STORE vlIn+1.9 TO vlIn
 DO liN_0000a WITH ptMn, vlIn
 STORE vlIn+1.1 TO vlIn
 DO liN_2112z
 STORE vlIn+0.6 TO vlIn
 DO liN_2112z
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+001 Say "Periodo"                                          Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                                                Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say cMES+"/"+cANO                                      Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+045 Say "Apellidos y Nombres, Denominacion o Razon Social" Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+101 Say ":"                                                Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+103 Say mRAZ                                               Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+169 Say "Página"                                           Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+192 Say ":"                                                Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+202 Say vPAG                                               Font "&mLetAri",8 Style "BT" Size 1,7 Pict "999999"
      OTHERWISE
           @vLIN,mCLN+001 Say "Periodo"                                          Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                                                Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say cMES+"/"+cANO                                      Font "&mLetAri",8 Style "NT"
           @vLIN,mCLN+045 Say "Apellidos y Nombres, Denominacion o Razon Social" Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+101 Say ":"                                                Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+103 Say mRAZ                                               Font "&mLetAri",8 Style "NT"
           @vLIN,mCLN+169 Say "Página"                                           Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+177 Say ":"                                                Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+182 Say vPAG                                               Font "&mLetAri",8 Style "NT" Size 1,7 Pict "999999"
 ENDCASE
 STORE vlIn+0.6 TO vlIn
 DO liN_2112z
 STORE vlIn+0.6 TO vlIn
 DO liN_2112z
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+001 Say "RUC"                 Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                   Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say mRUC                  Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+045 Say "Establecimiento"     Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+101 Say ":"                   Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+103 Say mDIR                  Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+169 Say "Metodo de Valuacion" Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+192 Say ":"                   Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+194 Say "Promedio"            Font "&mLetAri",8 Style "BT"
      OTHERWISE
           @vLIN,mCLN+001 Say "RUC"                 Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                   Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say mRUC                  Font "&mLetAri",8 Style "NT"
           @vLIN,mCLN+045 Say "Establecimiento"     Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+101 Say ":"                   Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+103 Say mDIR                  Font "&mLetAri",8 Style "NT"
 ENDCASE
 STORE vlIn+0.1 TO vlIn
 DO liN_0000a WITH ptMn, vlIn
 STORE vlIn+0.8 TO vlIn
 DO liN_2112z
 STORE vlIn+0.7 TO vlIn
 DO liN_2112z
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+001 Say "Codigo de la Existencia"  Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                        Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say vCOD                       Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+157 Say "Tipo"                     Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+185 Say ":"                        Font "&mLetAri",8 Style "BT"
           IF SUBSTR(vcOd, 1, 2)="MP"
                @vLIN,mCLN+187 Say "03 - Materias Primas y Auxiliares - Materiales" Font "&mLetAri",8 Style "BT"
           ELSE
                @vLIN,mCLN+187 Say "01 - Mercaderia"                                Font "&mLetAri",8 Style "BT"
           ENDIF
           STORE vlIn+0.6 TO vlIn
           DO liN_2112z
           STORE vlIn+0.6 TO vlIn
           DO liN_2112z
           @vLIN,mCLN+001 Say "Descripcion"              Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                        Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say vDES                       Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+157 Say "Cod.de Unidad de Medida"  Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+185 Say ":"                        Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+187 Say vNUC                       Font "&mLetAri",8 Style "BT"
      OTHERWISE
           @vLIN,mCLN+001 Say "Codigo de la Existencia"  Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                        Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say vCOD                       Font "&mLetAri",8 Style "NT"
           @vLIN,mCLN+137 Say "Tipo"                     Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+165 Say ":"                        Font "&mLetAri",8 Style "BT"
           IF SUBSTR(vcOd, 1, 2)="MP"
                @vLIN,mCLN+167 Say "03 - Materias Primas y Auxiliares - Materiales" Font "&mLetAri",8 Style "NT"
           ELSE
                @vLIN,mCLN+167 Say "01 - Mercaderia"                                Font "&mLetAri",8 Style "NT"
           ENDIF
           STORE vlIn+0.6 TO vlIn
           DO liN_2112z
           STORE vlIn+0.6 TO vlIn
           DO liN_2112z
           @vLIN,mCLN+001 Say "Descripcion"              Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+027 Say ":"                        Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+029 Say vDES                       Font "&mLetAri",8 Style "NT"
           @vLIN,mCLN+137 Say "Cod.de Unidad de Medida"  Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+165 Say ":"                        Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+167 Say vNUC                       Font "&mLetAri",8 Style "NT"
 ENDCASE
 STORE vlIn+00.1 TO vlIn
 DO liN_0000a WITH ptMn, vlIn
 STORE vlIn+00.8 TO vlIn
 DO liN_2112z
 STORE vlIn+0.3 TO vlIn
 @vLIN,mCLN+56 Say Chr(124) Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+087.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+126.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @vLIN,mCLN+056.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+125.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+145.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDCASE
 STORE vlIn+0.4 TO vlIn
 DO liN_2112z
 @vLIN,mCLN+56 Say Chr(124) Font "&mLetAri",9 Style "NT"
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+087.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+126.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.2 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+001.5 Say "Doc.de Traslado,Comp.de Pago,Doc.interno o similar" Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+087.8 Say Replicate("-",20)+"Entradas"   +Replicate("-",21)    Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+126.8 Say Replicate("-",22)+"Salidas"    +Replicate("-",21)    Font "&mLetAri",8 Style "BT"
           @vLIN,mCLN+165.8 Say Replicate("-",20)+"Saldo Final"+Replicate("-",18)    Font "&mLetAri",8 Style "BT"
           STORE vlIn+0.7 TO vlIn
           DO liN_2112z
           @vLIN,mCLN+056.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+087.2 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+126.2 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.2 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           STORE vlIn+0.3 TO vlIn
           DO liN_0000a WITH ptMn, vlIn
           STORE vlIn+0.2 TO vlIn
           DO liN_2112z
           @vLIN,mCLN+056.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+087.2 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+126.2 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.2 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+001.7 Say "Fecha"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+013.0 Say "Tp"                Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+017.0 Say "Serie"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+024.2 Say "Numero"            Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+063.0 Say "Tipo de Operacion" Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+091.6 Say "Cantidad"          Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+107.1 Say "Costo"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+115.4 Say "Costo Total"       Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+130.9 Say "Cantidad"          Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+145.9 Say "Costo"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+154.4 Say "Costo Total"       Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+169.9 Say "Cantidad"          Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+185.1 Say "Costo"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+193.0 Say "Costo Total"       Font "&mLetAri",7 Style "BT"
      OTHERWISE
           @vLIN,mCLN+056.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+125.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+145.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+001.5 Say "Doc.de Traslado,Comp.de Pago,Doc.interno o similar" Font "&mLetAri",7 Style "BT"
           STORE vlIn+0.7 TO vlIn
           DO liN_2112z
           @vLIN,mCLN+056.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+125.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+145.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           STORE vlIn+0.3 TO vlIn
           DO liN_0000a WITH ptMn, vlIn
           STORE vlIn+0.2 TO vlIn
           DO liN_2112z
           @vLIN,mCLN+056.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+125.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+145.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+165.0 Say Chr(124)            Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+001.7 Say "Fecha"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+013.0 Say "Tp"                Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+017.0 Say "Serie"             Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+024.2 Say "Numero"            Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+089.0 Say "Tipo de Operacion" Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+132.0 Say "Entradas"          Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+152.0 Say "Salidas"           Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+170.0 Say "Saldo Final"       Font "&mLetAri",7 Style "BT"
 ENDCASE
 STORE vlIn+1.6 TO vlIn
ENDPROC
*
PROCEDURE Lin_2112z
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN-000.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+205.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
      OTHERWISE
           @vLIN,mCLN-000.3 Say Chr(124) Font "&mLetAri",9 Style "NT"
           @vLIN,mCLN+185.0 Say Chr(124) Font "&mLetAri",9 Style "NT"
 ENDCASE
ENDPROC
*
PROCEDURE Rfi_2112z
 PARAMETER ptPo
 IF vlIn>mpAg-5
 ELSE
      STORE mpAg-2 TO vlIn
 ENDIF
 DO CASE
      CASE ptPo="1" .AND. wtPo="1"
           @vLIN,mCLN+57 Say "Totales y Saldos"                          Font "&mLetAri",7 Style "BT"
      CASE ptPo="1"
           @vLIN,mCLN+057.0 Say "Saldos"                                 Font "&mLetAri",7 Style "BT"
           @vLIN,mCLN+139.9 Say vENT                                     Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+159.9 Say vSAL                                     Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+179.9 Say uSLD                                     Font "&mLetAri",7 Style "NT" Pict "999,999.9999" Size 1,14.9
      CASE ptPo="2"
           @vLIN,mCLN+57 Say "Van a la página "+AllTrim(Str(vPAG+1,5,0)) Font "&mLetAri",7 Style "BT"
 ENDCASE
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+097.9 Say vENT      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+110.9 Say uPRM      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+123.9 Say vENT*uPRM Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+136.9 Say vSAL      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+149.9 Say uPRM      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+162.9 Say vSAL*uPRM Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+175.9 Say uSLD      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+188.9 Say uPRM      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+201.9 Say uSLD*uPRM Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
      OTHERWISE
           @vLIN,mCLN+139.9 Say vENT      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+159.9 Say vSAL      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+179.9 Say uSLD      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
 ENDCASE
 IF ptPo="1"
      STORE 0 TO vpAg, vlIn, veNt, vsAl, usLd, upRm
 ENDIF
ENDPROC
*
PROCEDURE Rin_2112z
 PARAMETER ptPo
 DO CASE
      CASE ptPo="1" .AND. cmEs="01"
           @vLIN,mCLN+57 Say "16 - Saldo Inicial al 01/"+cMES+"/"+cANO       Font "&mLetAri",7 Style "BT"
      CASE ptPo="1"
           @vLIN,mCLN+57 Say "Saldo al 01/"+cMES+"/"+cANO                    Font "&mLetAri",7 Style "BT"
      CASE ptPo="2"
           @vLIN,mCLN+57 Say "Vienen de la página "+AllTrim(Str(vPAG-1,5,0)) Font "&mLetAri",7 Style "BT"
 ENDCASE
 DO CASE
      CASE wtPo="1"
           @vLIN,mCLN+175.9 Say uSLD      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+188.9 Say uPRM      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
           @vLIN,mCLN+201.9 Say uSLD*uPRM Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
      OTHERWISE
           @vLIN,mCLN+179.9 Say uSLD      Font "&mLetAri",7 Style "BT" Pict "999,999.9999" Size 1,14.9
 ENDCASE
ENDPROC
*
PROCEDURE Xls_2112z
 STORE 0 TO veNt, vsAl, usLd, viNi
 SELECT kaRdex
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)
 SET NEAR OFF
 DO CASE
      CASE EOF()
           GOTO BOTTOM
           IF ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                RETURN
           ENDIF
      CASE ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
           SKIP -1
           IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                RETURN
           ENDIF
 ENDCASE
 GOTO TOP
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)
 IF EOF()
      GOTO TOP
      SEEK ALLTRIM(vcOd)+"*"
      IF f2990mes<SUBSTR(DTOC(dfEm), 4, 2)
           GOTO TOP
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                SUBSTR(DTOC(dfEm), 4, 2)
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ELSE
                SKIP -1
           ENDIF
           STORE 0 TO veNt, vsAl, viNi
           STORE f2990sld TO usLd
           IF vrEs=2
                STORE usLd TO viNi
           ENDIF
           STORE SUBSTR(DTOC(dfEm), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(dfEm), 7, 4) TO caNo
           DO cbX_2112z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO riX_2112z WITH "1"
           DO rfX_2112z WITH "1"
      ENDIF
      RETURN
 ENDIF
 GOTO TOP
 SET NEAR ON
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
      SUBSTR(DTOC(dfEm), 1, 2)
 SET NEAR OFF
 SKIP -1
 IF BOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
      STORE 0 TO usLd, viNi
 ELSE
      STORE f2990sld TO usLd, viNi
 ENDIF
 GOTO TOP
 IF SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)<>"0101"
      SET NEAR ON
 ENDIF
 SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
      SUBSTR(DTOC(dfEm), 1, 2)
 IF SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)<>"0101"
      SET NEAR OFF
 ENDIF
 IF SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)="0101"
      IF  .NOT. EOF() .AND. f2990tpo+f2990tpp="10"
           STORE 0 TO veNt, vsAl, usLd, viNi
           STORE f2990sld TO usLd
           IF vrEs=2
                STORE f2990sld TO viNi
           ENDIF
           STORE SUBSTR(DTOC(dfEm), 4, 2) TO cmEs
           STORE SUBSTR(DTOC(dfEm), 7, 4) TO caNo
           DO cbX_2112z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO riX_2112z WITH "1"
           IF vrEs=1
                STORE vlIn+1 TO vlIn
                STORE plIn+1 TO plIn
           ENDIF
           SKIP
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*" .OR.  ;
              f2990mes<>"01"
                DO rfX_2112z WITH "1"
                RETURN
           ENDIF
      ELSE
           GOTO TOP
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(dfEm), 7, 4)+ ;
                SUBSTR(DTOC(dfEm), 4, 2)+SUBSTR(DTOC(dfEm), 1, 2)
           SET NEAR OFF
      ENDIF
 ENDIF
 SELECT kaRdex
 IF vrEs=1
      STORE 1 TO meN1
 ENDIF
 STORE f2990ano TO caNo
 STORE f2990mes TO cmEs
 DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"  ;
    .AND. CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<=hfEm
      IF CTOD(f2990dia+"/"+f2990mes+"/"+f2990ano)<dfEm
           SKIP
           LOOP
      ENDIF
      IF vpAg=0 .OR. (plIn>mpAg-3 .AND. vrEs=1)
           DO cbX_2112z
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE vpAg=1
                     DO riX_2112z WITH "1"
                CASE vpAg>1
                     DO riX_2112z WITH "2"
           ENDCASE
           IF vrEs=1
                STORE vlIn+1 TO vlIn
                STORE plIn+1 TO plIn
           ENDIF
      ENDIF
      STORE f2990sld TO usLd
      DO CASE
           CASE f2990tpo="1" .AND. f2990tpp<>"0"
                STORE veNt+f2990can TO veNt
           CASE f2990tpo="2"
                STORE vsAl+f2990can TO vsAl
      ENDCASE
      IF vrEs=1
           STORE f2990tdo TO ptDo
           DO CASE
                CASE f2990tdo="CO"
                     IF f2990tpo="1" .OR. f2990td1="NC"
                          STORE f2990td1 TO ptDo
                     ENDIF
                     IF f2990srf="000" .OR. LEN(ALLTRIM(f2990srf))=0
                          STORE "" TO psEr
                     ELSE
                          STORE f2990srf TO psEr
                     ENDIF
                     STORE ALLTRIM(f2990fac) TO pfAc
                     SELECT tiPo_doc
                     SEEK ptDo
                     IF  .NOT. EOF()
                          STORE f9311td1 TO ptDo
                     ENDIF
                     SELECT kaRdex
                CASE f2990tdo="GI"
                     STORE "Ing" TO ptDo
                     STORE f2990ser TO psEr
                     STORE f2990doc TO pfAc
                CASE f2990tdo="GS"
                     STORE "Sal" TO ptDo
                     STORE f2990ser TO psEr
                     STORE f2990doc TO pfAc
                OTHERWISE
                     STORE f2990tdo TO ptDo
                     STORE f2990ser TO psEr
                     STORE f2990doc TO pfAc
                     SELECT tiPo_doc
                     SEEK ptDo
                     IF  .NOT. EOF()
                          STORE f9311td1 TO ptDo
                     ENDIF
                     SELECT kaRdex
           ENDCASE
           pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn,02)).meRge
           pxLs.raNge(pxLs.ceLls(vlIn,05), pxLs.ceLls(vlIn,06)).meRge
           pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn,09)).meRge
           pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn, ;
                     06)).hoRizontalalignment = 3
           pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn, ;
                     09)).hoRizontalalignment = 1
           pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn, ;
                     09)).nuMberformat = "@"
           pxLs.raNge(pxLs.ceLls(vlIn,10), pxLs.ceLls(vlIn, ;
                     12)).nuMberformat = "###,###,##0.00"
           pxLs.ceLls(vlIn, 01).vaLue = f2990dia+"/"+f2990mes+"/"+f2990ano
           pxLs.ceLls(vlIn, 03).vaLue = ptDo
           pxLs.ceLls(vlIn, 04).vaLue = psEr
           DO CASE
                CASE LEN(ALLTRIM(f2990rem))>0
                     pxLs.ceLls(vlIn, 05).vaLue = pfAc+" - GR:"+f2990sr1+ ;
                               "-"+f2990rem
                OTHERWISE
                     pxLs.ceLls(vlIn, 05).vaLue = pfAc
           ENDCASE
           DO CASE
                CASE f2990tdo="FA" .OR. f2990tdo="BO"
                     pxLs.ceLls(vlIn, 07).vaLue = "01"
                CASE f2990tdo="CO" .AND. f2990td1="NC"
                     STORE AT("FA:", f2990nom) TO pnUm
                     STORE SUBSTR(f2990nom, pnUm, 100) TO pfRa
                     STORE SUBSTR(pfRa, 1, AT(" ", pfRa)) TO pfRa
                     STORE ALLTRIM(pfRa) TO pfRa
                     IF LEN(pfRa)<8
                          STORE " " TO pfRa
                     ENDIF
                     pxLs.ceLls(vlIn, 07).vaLue = "06 - "+pfRa
                CASE f2990tdo="CO" .AND. SUBSTR(f2990ped, 1, 1)="I"
                     pxLs.ceLls(vlIn, 07).vaLue = "18 - "+SUBSTR(f2990nom,  ;
                               1, 12)
                CASE f2990tdo="CO"
                     pxLs.ceLls(vlIn, 07).vaLue = "02"
                CASE f2990tdo="GR" .AND. f2990ten="02"
                     pxLs.ceLls(vlIn, 07).vaLue = "11"
                CASE f2990tdo="GI" .AND. f2990nom="GR"
                     pxLs.ceLls(vlIn, 07).vaLue = "21 - "+f2990nom
                CASE f2990tdo="GI" .AND. f2990nom="NC"
                     pxLs.ceLls(vlIn, 07).vaLue = "24 - "+f2990nom
                CASE f2990tdo="GI" .AND. f2990ten="02"
                     pxLs.ceLls(vlIn, 07).vaLue = "99 - Transf: "+f2990nom
                CASE f2990tdo="GI"
                     pxLs.ceLls(vlIn, 07).vaLue = "99"
                CASE f2990tdo="GS" .AND. f2990ten="01"
                     pxLs.ceLls(vlIn, 07).vaLue = "99 - Transf: "+f2990nom
                CASE f2990tdo="GS"
                     pxLs.ceLls(vlIn, 07).vaLue = "99 - "+f2990nom
           ENDCASE
           DO CASE
                CASE f2990tpo="1"
                     pxLs.ceLls(vlIn, 10).vaLue = f2990can
                CASE f2990tpo="2"
                     pxLs.ceLls(vlIn, 11).vaLue = f2990can
           ENDCASE
           pxLs.ceLls(vlIn, 12).vaLue = f2990sld
           STORE vlIn+1 TO vlIn
           STORE plIn+1 TO plIn
           IF meN1>=meNn
                EXIT
           ENDIF
           STORE meN1+1 TO meN1
      ENDIF
      SKIP
 ENDDO
 DO rfX_2112z WITH "1"
ENDPROC
*
PROCEDURE CbX_2112z
 IF vpAg<>0 .AND. vrEs=1
      STORE mpAg-1 TO plIn
      STORE mpAg*tpAg TO vlIn
      pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn,09)).meRge
      pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn, ;
                09)).hoRizontalalignment = 3
      pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn,09)).nuMberformat = "@"
      pxLs.raNge(pxLs.ceLls(vlIn,10), pxLs.ceLls(vlIn,12)).nuMberformat =  ;
                "###,###,##0.00"
      pxLs.ceLls(vlIn, 07).vaLue = "Van a la página "+ALLTRIM(STR(vpAg+1,  ;
                5, 0))
      pxLs.ceLls(vlIn, 10).vaLue = veNt
      pxLs.ceLls(vlIn, 11).vaLue = vsAl
      pxLs.ceLls(vlIn, 12).vaLue = usLd
      WITH pxLs.raNge(pxLs.ceLls(vlIn,7),pxLs.ceLls(vlIn,12))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
      ENDWITH
      STORE vlIn+1 TO vlIn
      STORE 0 TO plIn
 ENDIF
 STORE vpAg+1 TO vpAg
 IF vrEs=1
      STORE tpAg+1 TO tpAg
      IF tpAg<>1
           STORE 1 TO plIn
      ELSE
           STORE 1 TO vlIn, plIn
      ENDIF
 ENDIF
 IF vrEs=1 .OR. tpGg=0
      IF tpGg=0
           STORE 1 TO vlIn, plIn
      ENDIF
      STORE 1 TO tpGg
      pxLs.ceLls(vlIn, 01).seLect
      DO CASE
           CASE wtPo="1"
                pxLs.ceLls(vlIn, 01).vaLue =  ;
                          "Formato 12.1: Registro de Inventario permanente en Unidades Fisicas - Detalle del Inventario Permanente en Unidades Fisicas"
           OTHERWISE
                pxLs.ceLls(vlIn, 01).vaLue =  ;
                          "Formato 12.1: Registro de Inventario permanente en Unidades Fisicas - Detalle del Inventario Permanente en Unidades Fisicas"
      ENDCASE
      pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
      pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 01).foNt.siZe = 14
      pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      STORE vlIn+2 TO vlIn
      STORE plIn+2 TO plIn
      IF vpAg=1
           pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn+10,8)).inSert
      ELSE
           pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn+07,8)).inSert
      ENDIF
      pxLs.ceLls(vlIn, 01).vaLue = "Periodo"
      pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
      pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 01).foNt.siZe = 11
      pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      pxLs.ceLls(vlIn, 06).vaLue = ": "+cmEs+" / "+caNo
      pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
      pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 06).foNt.siZe = 11
      pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
      pxLs.ceLls(vlIn, 06).nuMberformat = "@"
      IF vrEs=1
           pxLs.ceLls(vlIn, 12).vaLue = "Página:  "+ALLTRIM(STR(vpAg, 4, 0))
           pxLs.ceLls(vlIn, 12).hoRizontalalignment = 4
           pxLs.ceLls(vlIn, 12).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 12).foNt.siZe = 11
           pxLs.ceLls(vlIn, 12).foNt.boLd = .T.
           pxLs.ceLls(vlIn, 12).nuMberformat = "@"
      ENDIF
      IF vpAg=1
           STORE vlIn+1 TO vlIn
           STORE plIn+1 TO plIn
           pxLs.ceLls(vlIn, 01).vaLue = "RUC"
           pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
           pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 01).foNt.siZe = 11
           pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
           pxLs.ceLls(vlIn, 01).nuMberformat = "@"
           pxLs.ceLls(vlIn, 06).vaLue = ": "+mrUc
           pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
           pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 06).foNt.siZe = 11
           pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
           pxLs.ceLls(vlIn, 06).nuMberformat = "@"
           STORE vlIn+1 TO vlIn
           STORE plIn+1 TO plIn
           pxLs.ceLls(vlIn, 01).vaLue =  ;
                     "Apellidos y Nombres, Denominacion o Razon Social"
           pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
           pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 01).foNt.siZe = 11
           pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
           pxLs.ceLls(vlIn, 01).nuMberformat = "@"
           pxLs.ceLls(vlIn, 06).vaLue = ": "+mrAz
           pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
           pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 06).foNt.siZe = 11
           pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
           pxLs.ceLls(vlIn, 06).nuMberformat = "@"
           STORE vlIn+1 TO vlIn
           STORE plIn+1 TO plIn
           pxLs.ceLls(vlIn, 01).vaLue = "Establecimiento"
           pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
           pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 01).foNt.siZe = 11
           pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
           pxLs.ceLls(vlIn, 01).nuMberformat = "@"
           pxLs.ceLls(vlIn, 06).vaLue = ": "+mdIr
           pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
           pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
           pxLs.ceLls(vlIn, 06).foNt.siZe = 11
           pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
           pxLs.ceLls(vlIn, 06).nuMberformat = "@"
      ENDIF
      IF vrEs=2
           STORE vlIn+1 TO vlIn
           STORE plIn+1 TO plIn
           pxLs.ceLls(vlIn, 01).vaLue = "Codigo de la Existencia"
           pxLs.ceLls(vlIn, 03).vaLue = "Tipo"
           pxLs.ceLls(vlIn, 05).vaLue = "Descripcion"
           pxLs.ceLls(vlIn, 08).vaLue = "Unidad de Medida"
           pxLs.ceLls(vlIn, 09).vaLue = "Saldo Inicial"
           pxLs.ceLls(vlIn, 10).vaLue = "Entradas"
           pxLs.ceLls(vlIn, 11).vaLue = "Salida"
           pxLs.ceLls(vlIn, 12).vaLue = "Saldo"
           pxLs.raNge(pxLs.ceLls(vlIn,1), pxLs.ceLls(vlIn,02)).meRge
           pxLs.raNge(pxLs.ceLls(vlIn,3), pxLs.ceLls(vlIn,04)).meRge
           pxLs.raNge(pxLs.ceLls(vlIn,5), pxLs.ceLls(vlIn,07)).meRge
           pxLs.raNge(pxLs.ceLls(vlIn,9), pxLs.ceLls(vlIn, ;
                     12)).hoRizontalalignment = 1
           WITH pxLs.raNge(pxLs.ceLls(vlIn,1),pxLs.ceLls(vlIn,12))
                .boRders.liNestyle = 7
                .boRders(1).weIght = 2
                .boRders(2).weIght = 2
                .boRders(3).weIght = 2
                .boRders(4).weIght = 2
                .foNt.naMe = "Times New Roman"
                .foNt.siZe = 11
                .foNt.boLd = .T.
                .foNt.coLorindex = 1
                .inTerior.coLorindex = 15
                .veRticalalignment = 2
           ENDWITH
           STORE vlIn+1 TO vlIn
           STORE plIn+1 TO plIn
      ENDIF
 ENDIF
 IF vrEs=1
      STORE vlIn+1 TO vlIn
      STORE plIn+1 TO plIn
      pxLs.ceLls(vlIn, 01).seLect
      pxLs.ceLls(vlIn, 01).vaLue = "Codigo de la Existencia"
      pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
      pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 01).foNt.siZe = 11
      pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      pxLs.ceLls(vlIn, 06).vaLue = ": "+vcOd
      pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
      pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 06).foNt.siZe = 11
      pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
      pxLs.ceLls(vlIn, 06).nuMberformat = "@"
      STORE vlIn+1 TO vlIn
      STORE plIn+1 TO plIn
      pxLs.ceLls(vlIn, 01).vaLue = "Tipo"
      pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
      pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 01).foNt.siZe = 11
      pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      pxLs.ceLls(vlIn, 06).vaLue = ": 01 - Mercaderia"
      pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
      pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 06).foNt.siZe = 11
      pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
      pxLs.ceLls(vlIn, 06).nuMberformat = "@"
      STORE vlIn+1 TO vlIn
      STORE plIn+1 TO plIn
      pxLs.ceLls(vlIn, 01).vaLue = "Descripcion"
      pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
      pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 01).foNt.siZe = 11
      pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      pxLs.ceLls(vlIn, 06).vaLue = ": "+vdEs
      pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
      pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 06).foNt.siZe = 11
      pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
      pxLs.ceLls(vlIn, 06).nuMberformat = "@"
      STORE vlIn+1 TO vlIn
      STORE plIn+1 TO plIn
      pxLs.ceLls(vlIn, 01).vaLue = "Codigo de Unidad de Medida"
      pxLs.ceLls(vlIn, 01).hoRizontalalignment = 1
      pxLs.ceLls(vlIn, 01).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 01).foNt.siZe = 11
      pxLs.ceLls(vlIn, 01).foNt.boLd = .T.
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      pxLs.ceLls(vlIn, 06).vaLue = ": "+vnUc
      pxLs.ceLls(vlIn, 06).hoRizontalalignment = 2
      pxLs.ceLls(vlIn, 06).foNt.naMe = "Arial"
      pxLs.ceLls(vlIn, 06).foNt.siZe = 11
      pxLs.ceLls(vlIn, 06).foNt.boLd = .F.
      pxLs.ceLls(vlIn, 06).nuMberformat = "@"
      STORE vlIn+2 TO vlIn
      STORE plIn+2 TO plIn
      pxLs.ceLls(vlIn, 01).vaLue =  ;
                "Doc.de Traslado,Comprobante de Pago,Documento interno o similar"
      pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn,06)).meRge
      pxLs.raNge(pxLs.ceLls(vlIn,10), pxLs.ceLls(vlIn,12)).meRge
      pxLs.ceLls(vlIn, 01).nuMberformat = "@"
      STORE vlIn+1 TO vlIn
      STORE plIn+1 TO plIn
      pxLs.ceLls(vlIn, 01).vaLue = "Fecha"
      pxLs.ceLls(vlIn, 03).vaLue = "Tipo"
      pxLs.ceLls(vlIn, 04).vaLue = "Serie"
      pxLs.ceLls(vlIn, 05).vaLue = "Numero"
      pxLs.ceLls(vlIn, 07).vaLue = "Tipo de Operacion"
      pxLs.ceLls(vlIn, 10).vaLue = "Entradas"
      pxLs.ceLls(vlIn, 11).vaLue = "Salidas"
      pxLs.ceLls(vlIn, 12).vaLue = "Saldo Final"
      pxLs.raNge(pxLs.ceLls(vlIn+0,1), pxLs.ceLls(vlIn,02)).meRge
      pxLs.raNge(pxLs.ceLls(vlIn+0,5), pxLs.ceLls(vlIn,06)).meRge
      pxLs.raNge(pxLs.ceLls(vlIn-1,7), pxLs.ceLls(vlIn,09)).meRge
      pxLs.raNge(pxLs.ceLls(vlIn+0,1), pxLs.ceLls(vlIn,12)).nuMberformat = "@"
      pxLs.raNge(pxLs.ceLls(vlIn-1,1), pxLs.ceLls(vlIn, ;
                12)).hoRizontalalignment = 3
      WITH pxLs.raNge(pxLs.ceLls(vlIn-1,1),pxLs.ceLls(vlIn,12))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
      ENDWITH
      STORE vlIn+1 TO vlIn
      STORE plIn+1 TO plIn
 ENDIF
ENDPROC
*
PROCEDURE RiX_2112z
 PARAMETER ptPo
 IF vrEs<>1
      RETURN
 ENDIF
 pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn,09)).meRge
 pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn,09)).hoRizontalalignment = 1
 pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn,09)).nuMberformat = "@"
 pxLs.raNge(pxLs.ceLls(vlIn,10), pxLs.ceLls(vlIn,12)).nuMberformat =  ;
           "###,###,##0.00"
 DO CASE
      CASE ptPo="1" .AND. cmEs="01"
           pxLs.ceLls(vlIn, 07).vaLue = "16 - Saldo Inicial al 01/"+cmEs+ ;
                     "/"+caNo
      CASE ptPo="1"
           pxLs.ceLls(vlIn, 07).vaLue = "Saldo al 01/"+cmEs+"/"+caNo
      CASE ptPo="2"
           pxLs.ceLls(vlIn, 07).vaLue = "Vienen a la página "+ ;
                     ALLTRIM(STR(vpAg+1, 5, 0))
 ENDCASE
 pxLs.ceLls(vlIn, 12).vaLue = usLd
ENDPROC
*
PROCEDURE RfX_2112z
 PARAMETER ptPo
 IF vrEs=1
      STORE mpAg-1 TO plIn
      STORE mpAg*tpAg TO vlIn
      pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn,09)).meRge
      pxLs.raNge(pxLs.ceLls(vlIn,07), pxLs.ceLls(vlIn, ;
                09)).hoRizontalalignment = 3
      pxLs.raNge(pxLs.ceLls(vlIn,01), pxLs.ceLls(vlIn,09)).nuMberformat = "@"
      pxLs.raNge(pxLs.ceLls(vlIn,10), pxLs.ceLls(vlIn,12)).nuMberformat =  ;
                "###,###,##0.00"
      DO CASE
           CASE ptPo="1"
                pxLs.ceLls(vlIn, 07).vaLue = "Totales y Saldos"
           CASE ptPo="2"
                pxLs.ceLls(vlIn, 07).vaLue = "Van a la página "+ ;
                          ALLTRIM(STR(vpAg+1, 5, 0))
      ENDCASE
      pxLs.ceLls(vlIn, 10).vaLue = veNt
      pxLs.ceLls(vlIn, 11).vaLue = vsAl
      pxLs.ceLls(vlIn, 12).vaLue = usLd
      WITH pxLs.raNge(pxLs.ceLls(vlIn,7),pxLs.ceLls(vlIn,12))
           .boRders.liNestyle = 7
           .boRders(1).weIght = 2
           .boRders(2).weIght = 2
           .boRders(3).weIght = 2
           .boRders(4).weIght = 2
           .foNt.naMe = "Times New Roman"
           .foNt.siZe = 11
           .foNt.boLd = .T.
           .foNt.coLorindex = 1
           .inTerior.coLorindex = 15
           .veRticalalignment = 2
      ENDWITH
      STORE vlIn+1 TO vlIn
      DO CASE
           CASE ptPo="1"
                STORE 0 TO vpAg, plIn, veNt, vsAl, usLd, viNi
           CASE ptPo="2"
                STORE 0 TO plIn
      ENDCASE
 ELSE
      IF meN1>=meNn
           RETURN
      ENDIF
      STORE meN1+1 TO meN1
      STORE vlIn+1 TO vlIn
      pxLs.ceLls(vlIn, 01).seLect
      pxLs.ceLls(vlIn, 01).vaLue = vcOd
      pxLs.ceLls(vlIn, 03).vaLue = "01 - Mercaderia"
      pxLs.ceLls(vlIn, 05).vaLue = vdEs
      pxLs.ceLls(vlIn, 08).vaLue = vnUc
      pxLs.ceLls(vlIn, 09).vaLue = viNi
      pxLs.ceLls(vlIn, 10).vaLue = veNt
      pxLs.ceLls(vlIn, 11).vaLue = vsAl
      pxLs.ceLls(vlIn, 12).vaLue = usLd
      pxLs.raNge(pxLs.ceLls(vlIn,9), pxLs.ceLls(vlIn,12)).nuMberformat =  ;
                "###,###,##0.0000"
      pxLs.raNge(pxLs.ceLls(vlIn,9), pxLs.ceLls(vlIn, ;
                12)).hoRizontalalignment = 1
 ENDIF
ENDPROC
*
