 SET CENTURY ON
 STORE 99 TO mkEy
 DO suC_9998a
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
 SELECT suCursales
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
 DO p00_9998a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_9998a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_9998a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT suCursales
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
                DO hl1_9998a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_9998a WITH "1"
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
                DO veR_9998a
                IF mkEy<>99
                     DO deT_9998a
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
PROCEDURE Ver_9998a
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
PROCEDURE Det_9998a
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
 DO suC_9998a
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
 @mFI0+17,mCO0+8 Say "Documentos de Ventas"    Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO faC_9998a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+17,mCO0+8 Say "Notas de Débito/Crédito" Font "&mLetRom",12 Style "BQ" Size 1,76,80
 DO noT_9998a
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
PROCEDURE Suc_9998a
 STORE 01 TO meRr
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "9991", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Sucursales
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
PROCEDURE Fac_9998a
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
      IF f1300tdo="CT" .OR. f1300tdo="NP"
           SKIP
           DO veR_lock
           LOOP
      ENDIF
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
PROCEDURE Not_9998a
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
PROCEDURE P00_9998a
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
 DO tiT_0000a WITH "Actualizar información de Ventas Contable de Sucursales"
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
 @mFI0+05.0,mCO0+03 Say "Para esto la copia de seguridad tiene que estar empaquetada y llamarse COPIAxx.ZIP.Y tie-"  Font "&mLetAri",11 Style "NQ"
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
PROCEDURE Clp_9998a
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
PROCEDURE Hl1_9998a
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
