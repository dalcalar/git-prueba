 SET CENTURY ON
 STORE 99 TO mkEy
 DO suC_9991a
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 GOTO TOP
 DO veR_lock
 IF BOF() .OR. EOF()
      STORE "Archivo Utilitario de Sucursales vacío" TO mmSj
      STORE mmSj+"..."+CHR(13)+CHR(13)+ ;
            "PRESIONAR UNA TECLA PARA REGRESAR AL MENÚ..." TO mmSj
      WAIT WINDOW NOCLEAR ALLTRIM(mmSj)
      WAIT CLEAR
      DO deL_file1
      RETURN
 ENDIF
 STORE 00 TO meRr
 PUBLIC vfBi, vcBi, vtB1, vpAt, vbLa, vtIe, vnTi, vtDo, vsEr, vdOc, vaNo,  ;
        vmEs, vnUm
 PUBLIC vlEt, vmEm, vfEm, vdB1, vdB2, vpT1
 STORE SPACE(70) TO vbLa, vnTi, vpT1
 STORE SPACE(02) TO vtIe
 STORE 99 TO mkEy
 IF  .NOT. FILE("PKUNZIP.EXE")
      STORE "PKUNZIP.EXE no se encuentra en esta carpeta..." TO mmSj
      DO poNmsj
      = INKEY(0.05)
      DO deL_files
      RETURN
 ENDIF
 SELECT tiEndas
 SEEK "01"
 DO veR_lock
 IF EOF()
      STORE "Lugar de Data Principal no creado..." TO mmSj
      DO poNmsj
      = INKEY(0.05)
      DO deL_files
      RETURN
 ENDIF
 STORE f9991pth TO vpAt
 SET NEAR ON
 SEEK "03"
 SET NEAR OFF
 DO veR_lock
 IF EOF()
      STORE "No hay Tiendas o Sucursales registradas..." TO mmSj
      DO poNmsj
      = INKEY(0.05)
      DO deL_files
      RETURN
 ENDIF
 STORE f9991cod TO vtIe
 STORE f9991nom TO vnTi
 STORE f9991pth TO vpT1
 SET READBORDER ON
 DO p00_9991a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9991a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9991a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT tiEndas
                SET FILTER TO f9991cod>"02"
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay Sucursales registradas..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                DO prEsiona WITH "2", "CONSU2", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                SET FILTER TO
                IF mkEy=k_Enter
                     DO coLbln
                     STORE f9991cod TO vtIe
                     STORE f9991nom TO vnTi
                     STORE f9991pth TO vpT1
                     @mFI0+11,mCO0+47 Say AllTrim(vNTI)+": "+vPT1 Font "&mLetRom",11 Style "BQ" Size 1,57 Pict "@S60"
                ENDIF
                DO prEsiona WITH "1", "CONSU2", vfBi, vcBi
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_9991a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9991a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Down .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Tab
                STORE "Estás en el único campo..." TO mmSj
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end .OR. mkEy= ;
                k_Ctrl_left .OR. mkEy=k_Up
                STORE "Estás en el único campo..." TO mmSj
           CASE mkEy=k_Enter
                DO veR_9991a
                IF mkEy<>99
                     DO deT_9991a
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
      DO coLbln
      STORE 99 TO mkEy
      @mFI0+9,mCO0+43 Edit vPAT Font "&mLetRom",11 Style "BQ" Size 1,64,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_9991a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vpAt))=0
           STORE "Path o Ubicación de los datos que se van a juntar no puede estar vacío..."  ;
                 TO mmSj
      CASE LEN(ALLTRIM(vtIe))=0
           STORE "Código de Sucursal no puede estar vacío..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_9991a
 PRIVATE ppAn, pdIr
 STORE CURDIR() TO pdIr
 CLEAR GETS
 CLEAR READ
 DO coLsc7
 STORE ALLTRIM(vpT1) TO vdB1
 If .not.Directory("&vDB1")
      STORE "No hay Carpeta de Información para Copia de Seguridad" TO mmSj
      DO poNmsj
      = INKEY(0)
      RETURN
 ENDIF
 Set Defa to &vDB1
 vdB2 = GETFILE("ZIP", "Escoger un Archivo .ZIP:", "Escoger", 0,  ;
        "Copias de Seguridad")
 Define Window pPAN at mFI0+4,mCO0+10 to mFI0+10,mCO0+mUCO-10 in Screen Title "" System MDI NoClose NoFloat NoGrow NoMinimize NoZoom Style "NT" Font "&mLetAri",8 Color Scheme 7
 ACTIVATE WINDOW ppAn
 CLOSE INDEXES
 CLOSE DATABASES
 Set Defa to &pDIR
 DO suC_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vdB2))=0
      STORE "No se escogio nunguna Copia..." TO mmSj
      DO poNmsj
      = INKEY(5)
      DEACTIVATE WINDOW ppAn
      RETURN
 ELSE
      DO coLsc7
      @1.5,09 Say "DESEMPAQUETANDO..." Font "&mLetRom",14 Style "BQ"
      Set Defa to &vDB1
      DELETE FILE "COPIA.ZIP"
      Copy File &vDB2 to COPIA.ZIP
      RUN Pkunzip COPIA.ZIP
      DEACTIVATE WINDOW ppAn
 ENDIF
 = INKEY(0.01)
 DEACTIVATE WINDOW ppAn
 Set Defa to &pDIR
 DO coLsc7
 @mFI0+17,mCO0+8 Say "Pedidos"                 Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO peD_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Documentos de Ventas"    Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO faC_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Guías de Remisión"       Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO reM_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Compras/Gastos"          Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO cpR_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Guías de Ingresos"       Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO inG_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Guías de Salida"         Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO saL_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Ordenes de Compra"       Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO orD_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Ingresos a Caja"         Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO inC_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Salidas de Caja"         Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO saC_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Ingresos a Bancos"       Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO inB_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Salidas de Bancos"       Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO saB_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Notas de Débito/Crédito" Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO noT_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Letras de Clientes"      Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO le1_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Letras de Proveedores"   Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO le2_9991a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Borrando Temporales"     Font "&mLetRom",12 Style "BQ" Size 1,76,80
 Set Defa to &vDB1
 STORE "*.DBF" TO vdB2
 Delete File &vDB2
 STORE "*.CDX" TO vdB2
 Delete File &vDB2
 Set Defa to &pDIR
 DO coLsc7
 @mFI0+17.0,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+19.0,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+21.0,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Suc_9991a
 STORE 01 TO meRr
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Tiendas
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9991COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO meRr
ENDPROC
*
PROCEDURE Ped_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1200"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Ped_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1201"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Ped_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1201DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1202"+meXt TO mdBf
 Use &mDBF Shared Alias Ite_Ped_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1202DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1203"+meXt TO mdBf
 Use &mDBF Shared Alias Ser_Ped_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1203DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1204"+meXt TO mdBf
 Use &mDBF Shared Alias Con_Ped_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1204DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1200"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Ped_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1201"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Ped_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1201tdo+f1201ser+f1201doc+STR(f1201ite, 2, 0) TAG f1201doc
 SELECT 9
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1202"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ite_Ped_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1202tdo+f1202ser+f1202doc+ALLTRIM(f1202cod)+"*"+STR(f1202rcc,  ;
       3, 0) TAG f1202doc
 SELECT 10
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1203"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ser_Ped_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1203tdo+f1203ser+f1203doc+ALLTRIM(f1203cod)+"*"+f1203ped+ ;
       f1203sec TAG f1203doc
 SELECT 11
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1204"+meXt TO mdBf
 Use &mDBF Exclusive Alias Con_Ped_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1204tdo+f1204ser+f1204doc+ALLTRIM(f1204cod)+"*"+ ;
       ALLTRIM(f1204cdg)+"*" TAG f1204doc
 STORE 00 TO meRr
 SELECT caB_ped_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f1200tdo TO vtDo
      STORE f1200ser TO vsEr
      STORE f1200doc TO vdOc
      STORE f1200fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_ped_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_ped_copia
           SCATTER NAME vmEm
           SELECT caB_ped_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_ped_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_ped_copia
                SCATTER NAME vmEm
                SELECT deT_ped_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_ped_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT itE_ped_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+f1202doc=vtDo+ ;
              vsEr+vdOc
                SELECT itE_ped_copia
                SCATTER NAME vmEm
                SELECT itE_ped_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT itE_ped_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT seR_ped_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1203tdo+f1203ser+f1203doc=vtDo+ ;
              vsEr+vdOc
                SELECT seR_ped_copia
                SCATTER NAME vmEm
                SELECT seR_ped_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT seR_ped_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT coN_ped_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1204tdo+f1204ser+f1204doc=vtDo+ ;
              vsEr+vdOc
                SELECT coN_ped_copia
                SCATTER NAME vmEm
                SELECT coN_ped_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT coN_ped_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_ped_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Fac_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1300"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Fac_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1301"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Fac_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1301DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1302"+meXt TO mdBf
 Use &mDBF Shared Alias Ite_Fac_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1303"+meXt TO mdBf
 Use &mDBF Shared Alias Ser_Fac_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1303DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpAt)+"FV"+mcIi+"1304"+meXt TO mdBf
 Use &mDBF Shared Alias Con_Fac_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1304DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1300"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Fac_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1301"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Fac_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1301tdo+f1301ser+f1301doc+STR(f1301ite, 2, 0) TAG f1301doc
 SELECT 9
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1302"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ite_Fac_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1302tdo+f1302ser+f1302doc+ALLTRIM(f1302cod)+"*"+STR(f1302rcc,  ;
       3, 0) TAG f1302doc
 SELECT 10
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1303"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ser_Fac_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1303tdo+f1303ser+f1303doc+ALLTRIM(f1303cod)+"*"+f1303ped+ ;
       f1303sec TAG f1303doc
 SELECT 11
 STORE ALLTRIM(vpT1)+"FV"+mcIi+"1304"+meXt TO mdBf
 Use &mDBF Exclusive Alias Con_Fac_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f1304tdo+f1304ser+f1304doc+ALLTRIM(f1304cod)+"*"+ ;
       ALLTRIM(f1304cdg)+"*" TAG f1304doc
 STORE 00 TO meRr
 SELECT caB_fac_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      STORE f1300fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_fac_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_fac_copia
           SCATTER NAME vmEm
           SELECT caB_fac_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_fac_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_fac_copia
                SCATTER NAME vmEm
                SELECT deT_fac_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_fac_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT itE_fac_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtDo+ ;
              vsEr+vdOc
                SELECT itE_fac_copia
                SCATTER NAME vmEm
                SELECT itE_fac_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT itE_fac_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT seR_fac_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+f1303doc=vtDo+ ;
              vsEr+vdOc
                SELECT seR_fac_copia
                SCATTER NAME vmEm
                SELECT seR_fac_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT seR_fac_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT coN_fac_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtDo+ ;
              vsEr+vdOc
                SELECT coN_fac_copia
                SCATTER NAME vmEm
                SELECT coN_fac_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT coN_fac_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_fac_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Rem_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2600"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Rem_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2600DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2601"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Rem_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2601DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2602"+meXt TO mdBf
 Use &mDBF Shared Alias Ite_Rem_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2602DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2603"+meXt TO mdBf
 Use &mDBF Shared Alias Ser_Rem_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2603DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2604"+meXt TO mdBf
 Use &mDBF Shared Alias Con_Rem_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2604DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2600"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Rem_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2601"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Rem_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2601tdo+f2601ser+f2601doc+STR(f2601ite, 2, 0) TAG f2601doc
 SELECT 9
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2602"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ite_Rem_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2602tdo+f2602ser+f2602doc+ALLTRIM(f2602cod)+"*"+STR(f2602rcc,  ;
       3, 0) TAG f2602doc
 SELECT 10
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2603"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ser_Rem_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2603tdo+f2603ser+f2603doc+ALLTRIM(f2603cod)+"*"+f2603ped+ ;
       f2603sec TAG f2603doc
 SELECT 11
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2604"+meXt TO mdBf
 Use &mDBF Exclusive Alias Con_Rem_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2604tdo+f2604ser+f2604doc+ALLTRIM(f2604cod)+"*"+ ;
       ALLTRIM(f2604cdg)+"*" TAG f2604doc
 STORE 00 TO meRr
 SELECT caB_rem_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2600tdo TO vtDo
      STORE f2600ser TO vsEr
      STORE f2600doc TO vdOc
      STORE f2600fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_rem_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_rem_copia
           SCATTER NAME vmEm
           SELECT caB_rem_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_rem_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2601tdo+f2601ser+f2601doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_rem_copia
                SCATTER NAME vmEm
                SELECT deT_rem_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_rem_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT itE_rem_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2602tdo+f2602ser+f2602doc=vtDo+ ;
              vsEr+vdOc
                SELECT itE_rem_copia
                SCATTER NAME vmEm
                SELECT itE_rem_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT itE_rem_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT seR_rem_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2603tdo+f2603ser+f2603doc=vtDo+ ;
              vsEr+vdOc
                SELECT seR_rem_copia
                SCATTER NAME vmEm
                SELECT seR_rem_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT seR_rem_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT coN_rem_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2604tdo+f2604ser+f2604doc=vtDo+ ;
              vsEr+vdOc
                SELECT coN_rem_copia
                SCATTER NAME vmEm
                SELECT coN_rem_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT coN_rem_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_rem_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Cpr_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2400"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Cpr_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2401"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Cpr_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2402"+meXt TO mdBf
 Use &mDBF Shared Alias Ite_Cpr_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2402DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2403"+meXt TO mdBf
 Use &mDBF Shared Alias Ser_Cpr_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2403DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2400"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Cpr_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2401"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Cpr_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2401tdo+f2401ser+f2401doc+STR(f2401ite, 2, 0) TAG f2401doc
 SELECT 8
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2402"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ite_Cpr_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2402tdo+f2402ser+f2402doc+ALLTRIM(f2402cod)+"*"+STR(f2402rcc,  ;
       3, 0) TAG f2402doc
 SELECT 9
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2403"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ser_Cpr_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2403tdo+f2403ser+f2403doc+ALLTRIM(f2403cod)+"*"+f2403ped+ ;
       f2403sec TAG f2403doc
 STORE 00 TO meRr
 SELECT caB_cpr_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2400tdo TO vtDo
      STORE f2400ser TO vsEr
      STORE f2400doc TO vdOc
      STORE f2400fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_cpr_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_cpr_copia
           SCATTER NAME vmEm
           SELECT caB_cpr_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_cpr_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_cpr_copia
                SCATTER NAME vmEm
                SELECT deT_cpr_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_cpr_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT itE_cpr_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2402tdo+f2402ser+f2402doc=vtDo+ ;
              vsEr+vdOc
                SELECT itE_cpr_copia
                SCATTER NAME vmEm
                SELECT itE_cpr_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT itE_cpr_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT seR_cpr_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2403tdo+f2403ser+f2403doc=vtDo+ ;
              vsEr+vdOc
                SELECT seR_cpr_copia
                SCATTER NAME vmEm
                SELECT seR_cpr_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT seR_cpr_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_cpr_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Ing_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2700"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Ing_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2700DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2701"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Ing_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2701DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2702"+meXt TO mdBf
 Use &mDBF Shared Alias Ite_Ing_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2702DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2703"+meXt TO mdBf
 Use &mDBF Shared Alias Ser_Ing_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2703DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2700"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Ing_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2701"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Ing_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2701tdo+f2701ser+f2701doc+STR(f2701ite, 4, 0) TAG f2701doc
 SELECT 8
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2702"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ite_Ing_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2702tdo+f2702ser+f2702doc+ALLTRIM(f2702cod)+"*"+STR(f2702rcc,  ;
       3, 0) TAG f2702doc
 SELECT 9
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2703"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ser_Ing_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2703tdo+f2703ser+f2703doc+ALLTRIM(f2703cod)+"*"+f2703ped+ ;
       f2703sec TAG f2703doc
 STORE 00 TO meRr
 SELECT caB_ing_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2700tdo TO vtDo
      STORE f2700ser TO vsEr
      STORE f2700doc TO vdOc
      STORE f2700fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_ing_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_ing_copia
           SCATTER NAME vmEm
           SELECT caB_ing_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_ing_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2701tdo+f2701ser+f2701doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_ing_copia
                SCATTER NAME vmEm
                SELECT deT_ing_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_ing_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT itE_ing_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2702tdo+f2702ser+f2702doc=vtDo+ ;
              vsEr+vdOc
                SELECT itE_ing_copia
                SCATTER NAME vmEm
                SELECT itE_ing_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT itE_ing_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT seR_ing_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2703tdo+f2703ser+f2703doc=vtDo+ ;
              vsEr+vdOc
                SELECT seR_ing_copia
                SCATTER NAME vmEm
                SELECT seR_ing_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT seR_ing_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_ing_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Sal_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2800"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Sal_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2800DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2801"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Sal_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2801DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2802"+meXt TO mdBf
 Use &mDBF Shared Alias Ite_Sal_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2802DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2803"+meXt TO mdBf
 Use &mDBF Shared Alias Ser_Sal_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2803DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2800"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Sal_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2801"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Sal_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2801tdo+f2801ser+f2801doc+STR(f2801ite, 4, 0) TAG f2801doc
 SELECT 8
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2802"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ite_Sal_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2802tdo+f2802ser+f2802doc+ALLTRIM(f2802cod)+"*"+STR(f2802rcc,  ;
       3, 0) TAG f2802doc
 SELECT 9
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2803"+meXt TO mdBf
 Use &mDBF Exclusive Alias Ser_Sal_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2803tdo+f2803ser+f2803doc+ALLTRIM(f2803cod)+"*"+f2803ped+ ;
       f2803sec TAG f2803doc
 STORE 00 TO meRr
 SELECT caB_sal_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2800tdo TO vtDo
      STORE f2800ser TO vsEr
      STORE f2800doc TO vdOc
      STORE f2800fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_sal_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_sal_copia
           SCATTER NAME vmEm
           SELECT caB_sal_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_sal_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2801tdo+f2801ser+f2801doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_sal_copia
                SCATTER NAME vmEm
                SELECT deT_sal_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_sal_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT itE_sal_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2802tdo+f2802ser+f2802doc=vtDo+ ;
              vsEr+vdOc
                SELECT itE_sal_copia
                SCATTER NAME vmEm
                SELECT itE_sal_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT itE_sal_copia
                SKIP
                DO veR_lock
           ENDDO
           SELECT seR_sal_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2803tdo+f2803ser+f2803doc=vtDo+ ;
              vsEr+vdOc
                SELECT seR_sal_copia
                SCATTER NAME vmEm
                SELECT seR_sal_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT seR_sal_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_sal_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Ord_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2910"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Ord_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2910DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FA"+mcIi+"2911"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Ord_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2911DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2910"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Ord_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpT1)+"FA"+mcIi+"2911"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Ord_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f2911tdo+f2911ser+f2911doc+STR(f2911ite, 4, 0) TAG f2911doc
 STORE 00 TO meRr
 SELECT caB_ord_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f2910tdo TO vtDo
      STORE f2910ser TO vsEr
      STORE f2910doc TO vdOc
      STORE f2910fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_ord_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_ord_copia
           SCATTER NAME vmEm
           SELECT caB_ord_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_ord_copia
           SEEK vtDo+vsEr+vdOc
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_ord_copia
                SCATTER NAME vmEm
                SELECT deT_ord_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_ord_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_ord_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE InC_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3510"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3510NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3511"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3511NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3510"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3511"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f3511ano+f3511mes+f3511ser+f3511num+f3511tdo+f3511sr1+f3511doc  ;
       TAG f3511num
 STORE 00 TO meRr
 SELECT caB_caj_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3510ano TO vaNo
      STORE f3510mes TO vmEs
      STORE f3510ser TO vsEr
      STORE f3510num TO vnUm
      STORE CTOD(f3510dia+"/"+vmEs+"/"+vaNo) TO vfEm
      @mFI0+19,mCO0+8 Say vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                            Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_caj_destino
      SEEK vaNo+vmEs+vsEr+vnUm
      DO veR_lock
      IF EOF()
           SELECT caB_caj_copia
           SCATTER NAME vmEm
           SELECT caB_caj_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_caj_copia
           SEEK vtDo+vsEr+vnUm
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f3511ano+f3511mes+f3511ser+ ;
              f3511num=vaNo+vmEs+vsEr+vnUm
                SELECT deT_caj_copia
                SCATTER NAME vmEm
                SELECT deT_caj_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_caj_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_caj_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE SaC_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3520"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3520NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3521"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3521NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3520"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3521"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f3521ano+f3521mes+f3521ser+f3521num+f3521tdo+f3521sr1+f3521doc  ;
       TAG f3521num
 STORE 00 TO meRr
 SELECT caB_caj_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3520ano TO vaNo
      STORE f3520mes TO vmEs
      STORE f3520ser TO vsEr
      STORE f3520num TO vnUm
      STORE CTOD(f3520dia+"/"+vmEs+"/"+vaNo) TO vfEm
      @mFI0+19,mCO0+8 Say vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                            Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_caj_destino
      SEEK vaNo+vmEs+vsEr+vnUm
      DO veR_lock
      IF EOF()
           SELECT caB_caj_copia
           SCATTER NAME vmEm
           SELECT caB_caj_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_caj_copia
           SEEK vtDo+vsEr+vnUm
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f3521ano+f3521mes+f3521ser+ ;
              f3521num=vaNo+vmEs+vsEr+vnUm
                SELECT deT_caj_copia
                SCATTER NAME vmEm
                SELECT deT_caj_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_caj_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_caj_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE InB_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3530"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3530NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3531"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3531NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3530"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3531"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f3531ano+f3531mes+f3531ser+f3531num+f3531tdo+f3531sr1+f3531doc  ;
       TAG f3531num
 STORE 00 TO meRr
 SELECT caB_caj_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3530ano TO vaNo
      STORE f3530mes TO vmEs
      STORE f3530ser TO vsEr
      STORE f3530num TO vnUm
      STORE CTOD(f3530dia+"/"+vmEs+"/"+vaNo) TO vfEm
      @mFI0+19,mCO0+8 Say vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                            Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_caj_destino
      SEEK vaNo+vmEs+vsEr+vnUm
      DO veR_lock
      IF EOF()
           SELECT caB_caj_copia
           SCATTER NAME vmEm
           SELECT caB_caj_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_caj_copia
           SEEK vtDo+vsEr+vnUm
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f3531ano+f3531mes+f3531ser+ ;
              f3531num=vaNo+vmEs+vsEr+vnUm
                SELECT deT_caj_copia
                SCATTER NAME vmEm
                SELECT deT_caj_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_caj_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_caj_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE SaB_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3540"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3540NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3541"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Caj_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3541NUM
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3540"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3541"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Caj_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f3541ano+f3541mes+f3541ser+f3541num+f3541tdo+f3541sr1+f3541doc  ;
       TAG f3541num
 STORE 00 TO meRr
 SELECT caB_caj_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3540ano TO vaNo
      STORE f3540mes TO vmEs
      STORE f3540ser TO vsEr
      STORE f3540num TO vnUm
      STORE CTOD(f3540dia+"/"+vmEs+"/"+vaNo) TO vfEm
      @mFI0+19,mCO0+8 Say vANO+"-"+vMES+"-"+vSER+"-"+vNUM Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                            Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_caj_destino
      SEEK vaNo+vmEs+vsEr+vnUm
      DO veR_lock
      IF EOF()
           SELECT caB_caj_copia
           SCATTER NAME vmEm
           SELECT caB_caj_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_caj_copia
           SEEK vtDo+vsEr+vnUm
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f3541ano+f3541mes+f3541ser+ ;
              f3541num=vaNo+vmEs+vsEr+vnUm
                SELECT deT_caj_copia
                SCATTER NAME vmEm
                SELECT deT_caj_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_caj_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_caj_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Not_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3610"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Not_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3610DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3611"+meXt TO mdBf
 Use &mDBF Shared Alias Det_Not_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3611DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3610"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Not_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3611"+meXt TO mdBf
 Use &mDBF Exclusive Alias Det_Not_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 INDEX ON f3611tdo+f3611ser+f3611doc+STR(f3611ite, 2, 0) TAG f3611doc
 STORE 00 TO meRr
 SELECT caB_not_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3610tdo TO vtDo
      STORE f3610ser TO vsEr
      STORE f3610doc TO vdOc
      STORE f3610fem TO vfEm
      @mFI0+19,mCO0+8 Say vTDO+":"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                   Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_not_destino
      SEEK vtDo+vsEr+vdOc
      DO veR_lock
      IF EOF()
           SELECT caB_not_copia
           SCATTER NAME vmEm
           SELECT caB_not_destino
           APPEND BLANK
           GATHER NAME vmEm
           SELECT deT_not_copia
           SEEK vtDo+vsEr+vnUm
           DO veR_lock
           DO WHILE  .NOT. EOF() .AND. f3611tdo+f3611ser+f3611doc=vtDo+ ;
              vsEr+vdOc
                SELECT deT_not_copia
                SCATTER NAME vmEm
                SELECT deT_not_destino
                APPEND BLANK
                GATHER NAME vmEm
                SELECT deT_not_copia
                SKIP
                DO veR_lock
           ENDDO
      ENDIF
      SELECT caB_not_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Le1_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3110"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Let_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3110LET
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3110"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Let_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO meRr
 SELECT caB_let_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3110ser TO vsEr
      STORE f3110let TO vlEt
      STORE f3110fem TO vfEm
      @mFI0+19,mCO0+8 Say "LE:"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_let_destino
      SEEK vsEr+vlEt
      DO veR_lock
      IF EOF()
           SELECT caB_let_copia
           SCATTER NAME vmEm
           SELECT caB_let_destino
           APPEND BLANK
           GATHER NAME vmEm
      ENDIF
      SELECT caB_let_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE Le2_9991a
 STORE 01 TO meRr
 SELECT 2
 STORE ALLTRIM(vpAt)+"FC"+mcIi+"3210"+meXt TO mdBf
 Use &mDBF Shared Alias Cab_Let_Destino
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F3210LET
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 STORE ALLTRIM(vpT1)+"FC"+mcIi+"3210"+meXt TO mdBf
 Use &mDBF Exclusive Alias Cab_Let_Copia
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO meRr
 SELECT caB_let_copia
 GOTO TOP
 DO veR_lock
 DO WHILE  .NOT. EOF()
      STORE f3210ser TO vsEr
      STORE f3210let TO vlEt
      STORE f3210fem TO vfEm
      @mFI0+19,mCO0+8 Say "LE:"+vSER+"-"+vDOC Font "&mLetRom",12 Style "BQ" Size 1,76,80
      @mFI0+21,mCO0+8 Say vFEM                Font "&mLetRom",12 Style "BQ" Size 1,76,80
      SELECT caB_let_destino
      SEEK vsEr+vlEt
      DO veR_lock
      IF EOF()
           SELECT caB_let_copia
           SCATTER NAME vmEm
           SELECT caB_let_destino
           APPEND BLANK
           GATHER NAME vmEm
      ENDIF
      SELECT caB_let_copia
      SKIP
      DO veR_lock
 ENDDO
 SELECT 2
 USE
 SELECT 3
 USE
 SELECT 4
 USE
 SELECT 5
 USE
 SELECT 6
 USE
 SELECT 7
 USE
 SELECT 8
 USE
 SELECT 9
 USE
 SELECT 10
 USE
 SELECT 11
 USE
ENDPROC
*
PROCEDURE P00_9991a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 23 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+10.9 TO vfBi
 STORE mcO0+115.9 TO vcBi
 DO CASE
      CASE mrEs="1"
           Define Popup vTB1 from mFI0+12.4,mCO0+50.6 to mFI0+mUFI+1,mCO0+119.5 Font "&mLetCou",11 Style "NQ" Prompt Field F9991NOM Scroll Color Scheme 10 Footer "CONSULTA DE SUCURSALES"
      CASE mrEs="2"
           Define Popup vTB1 from mFI0+12.4,mCO0+50.6 to mFI0+mUFI+4,mCO0+119.5 Font "&mLetCou",11 Style "NQ" Prompt Field F9991NOM Scroll Color Scheme 10 Footer "CONSULTA DE SUCURSALES"
      OTHERWISE
           Define Popup vTB1 from mFI0+12.4,mCO0+50.6 to mFI0+mUFI+6,mCO0+119.5 Font "&mLetCou",12 Style "NQ" Prompt Field F9991NOM Scroll Color Scheme 10 Footer "CONSULTA DE SUCURSALES"
 ENDCASE
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Actualizar información de Sucursales"
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLscz
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+00.5,mCO0+03 Say "Este proceso pasa los Archivos que se encuentran en el Disco Extraíble, Diskette, CD u"     Font "&mLetAri",11 Style "NQ"
 @mFI0+02.0,mCO0+03 Say "otro Dispositivo de almacenamiento, a la Base de Datos que contiene todas las Sucursa-"     Font "&mLetAri",11 Style "NQ"
 @mFI0+03.5,mCO0+03 Say "les y además actualiza la Sucursal."                                                        Font "&mLetAri",11 Style "NQ"
 @mFI0+05.0,mCO0+03 Say "Para esto la copia de seguridad tiene que estar empaquetada y llamarse COPIA.ZIP. Y tie-"   Font "&mLetAri",11 Style "NQ"
 @mFI0+06.5,mCO0+03 Say "nen que seleccionar la Sucursal a la que pertenece esta información."                       Font "&mLetAri",11 Style "NQ"
 @mFI0+09.0,mCO0+03 Say "Ubicación de la PRINCIPAL:"                                                                 Font "&mLetRom",11 Style "BQ"
 @mFI0+11.0,mCO0+03 Say "Ubicación de la Tienda/Sucursal:"                                                           Font "&mLetRom",11 Style "BQ"
 DO coLbln
 @mFI0+09.0,mCO0+43 Edit vPAT Font "&mLetRom",11 Style "BQ" Size 1,64.0,70
 @mFI0+11.0,mCO0+47 Edit vNTI Font "&mLetRom",11 Style "BQ" Size 1,57.0,70
 DO coLblr
 @mFI0+15.0,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..." Font "&mLetRom",14 Style "BTI"
 DO coLsc7
 @mFI0+17.0,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+19.0,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 @mFI0+21.0,mCO0+08 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,76,80
 READ TIMEOUT 0.01
 DO coLbln
 @mFI0+11,mCO0+47 Say AllTrim(vNTI)+": "+vPT1 Font "&mLetRom",11 Style "BQ" Size 1,57 Pict "@S60"
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSU2", vfBi, vcBi
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_9991a
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
      CASE mfIl>=vfBi-0.021 .AND. mfIl<=vfBi+1.45 .AND. mcCc>=vcBi-0.200  ;
           .AND. mcCc<=vcBi+4.20
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_9991a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de cada Sucursal en su respec-"
 @ pfIl+01, 02 SAY  ;
   "tiva Ubicación en la Red o PC y actualiza el Sistema general que contie-"
 @ pfIl+02, 02 SAY "ne todas las Sucursales."
 @ pfIl+04, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+09, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 15 SAY "ESC" STYLE "BT"
 @ pfIl+07, 15 SAY "F10" STYLE "BT"
 @ pfIl+08, 15 SAY "F1" STYLE "BT"
 @ pfIl+09, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+06, 27 SAY "Regresar al Menú Principal"
 @ pfIl+07, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+08, 27 SAY "Ayuda del Programa"
 @ pfIl+09, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vfBi, vcBi, vtB1, vpAt, vbLa, vtIe, vnTi, vtDo, vsEr, vdOc, vaNo,  ;
         vmEs, vnUm
 RELEASE vlEt, vmEm, vfEm, vdB1, vdB2, vpT1
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
