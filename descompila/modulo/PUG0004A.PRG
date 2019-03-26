 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vtIp, vdEs, vnOm, vcOd, vdIr, vrUc, vtL1, vtL2, vtL3,  ;
        veSt, vuSu
 PUBLIC vdAt, vtIm, vsW0, vdC1, vdC2, vtAm, vnU1, vnUm, vnDi
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0004a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0004a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0004a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0004a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0004a
                EXIT
      ENDCASE
      DO coLbln
      SET CURSOR ON
      @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Det_0004a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Proveedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Sucursal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "9210", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Tipos_Proveedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 STORE ALLTRIM(vpAt)+"ALM\FA012101.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Proveedores_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 STORE ALLTRIM(vpAt)+"UTI\FU019210.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF NoUpdate Exclusive Alias Tipos_Proveedores_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9210TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tiPos_proveedores_control
 GOTO TOP
 DO coLsc7
 DO WHILE  .NOT. EOF()
      STORE f9210tip TO vtIp
      STORE ALLTRIM(LOWER(f9210des)) TO vdEs
      STORE SUBSTR(UPPER(vdEs), 1, 1)+SUBSTR(vdEs, 2, 80) TO vdEs
      @mFI0+12,mCO0+5 Say "["+vTIP+"] - ["+vDES+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT tiPos_proveedores
      SEEK vtIp
      IF EOF()
           APPEND BLANK
           REPLACE f9210tip WITH vtIp
           REPLACE f9210nti WITH vdEs
      ENDIF
      SELECT tiPos_proveedores_control
      SKIP
 ENDDO
 SELECT prOveedores_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f2101cod TO vcOd
      STORE f2101tip TO vtIp
      STORE f2101ruc TO vrUc
      STORE f2101tl1 TO vtL1
      STORE f2101tl2 TO vtL2
      STORE f2101tl3 TO vtL3
      STORE f2101est TO veSt
      STORE f2101usu TO vuSu
      STORE f2101dat TO vdAt
      STORE f2101tim TO vtIm
      STORE ALLTRIM(LOWER(f2101dis)) TO vnDi
      STORE SUBSTR(UPPER(vnDi), 1, 1)+SUBSTR(vnDi, 2, 50) TO vnDi
      DO diS_0003a IN PUG0003A WITH vnDi
      STORE ALLTRIM(LOWER(f2101nom)) TO vnOm
      STORE SUBSTR(UPPER(vnOm), 1, 1)+SUBSTR(vnOm, 2, 80) TO vnOm
      STORE ALLTRIM(LOWER(f2101dir)) TO vdIr
      STORE SUBSTR(UPPER(vdIr), 1, 1)+SUBSTR(vdIr, 2, 80) TO vdIr
      @mFI0+14,mCO0+5 Say "["+vCOD+"] - ["+vNOM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      DO noM_0003a IN PUG0003A WITH vnOm, mfI0+16
      DO diR_0003a IN PUG0003A WITH vdIr, mfI0+18
      SELECT prOveedores
      SEEK vcOd
      IF EOF()
           APPEND BLANK
           REPLACE f2101cod WITH vcOd
           REPLACE f2101tip WITH vtIp
           REPLACE f2101nom WITH vnOm
           REPLACE f2101ruc WITH vrUc
           REPLACE f2101tpo WITH 1
           REPLACE f2101est WITH veSt
           REPLACE f2101usu WITH vuSu
           REPLACE f2101dat WITH vdAt
           REPLACE f2101tim WITH vtIm
           SELECT suCursal
           APPEND BLANK
           REPLACE f2102cod WITH vcOd
           REPLACE f2102suc WITH "01"
           REPLACE f2102cre WITH 2
           REPLACE f2102tot WITH 0
           REPLACE f2102mai WITH SPACE(30)
           REPLACE f2102dir WITH vdIr
           REPLACE f2102dis WITH vnDi
           REPLACE f2102ent WITH SPACE(70)
           REPLACE f2102die WITH SPACE(02)
           REPLACE f2102ct1 WITH SPACE(50)
           REPLACE f2102ct2 WITH SPACE(50)
           REPLACE f2102ct3 WITH SPACE(50)
           REPLACE f2102ca1 WITH SPACE(30)
           REPLACE f2102ca2 WITH SPACE(30)
           REPLACE f2102ca3 WITH SPACE(30)
           REPLACE f2102tl1 WITH vtL1
           REPLACE f2102tl2 WITH vtL2
           REPLACE f2102tl3 WITH vtL3
           REPLACE f2102an1 WITH SPACE(04)
           REPLACE f2102an2 WITH SPACE(04)
           REPLACE f2102an3 WITH SPACE(04)
           REPLACE f2102fa1 WITH SPACE(10)
           REPLACE f2102fa2 WITH SPACE(10)
           REPLACE f2102fa3 WITH SPACE(10)
           REPLACE f2102usu WITH vuSu
           REPLACE f2102dat WITH vdAt
           REPLACE f2102tim WITH vtIm
      ENDIF
      SELECT prOveedores_control
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_0004a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 20 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Pasar los Proveedores de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa el Archivo Maestro y los utilitarios de Proveedores" Font "&mLetRom",13 Style "BQ"
 @mFI0+04,mCO0+10 Say "de CONTROL a SAM. Grabando nuevos y actualizando anteriores.         " Font "&mLetRom",13 Style "BQ"
 @mFI0+10,mCO0+05 Say "Path:"                                                                 Font "&mLetRom",13 Style "BQ"
 DO coLblr
 @mFI0+07,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."              Font "&mLetRom",14 Style "BTI"
 DO coLbln
 @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
 DO coLsc7
 @mFI0+12,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+14,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+16,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+18,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_0004a
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
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_0004a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de Maestros y Utilitarios de"
 @ pfIl+01, 02 SAY "Proveedores de CONTROL a SAM."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 25 SAY ":" STYLE "BT"
 @ pfIl+06, 25 SAY ":" STYLE "BT"
 @ pfIl+07, 25 SAY ":" STYLE "BT"
 @ pfIl+08, 25 SAY ":" STYLE "BT"
 @ pfIl+05, 15 SAY "ESC" STYLE "BT"
 @ pfIl+06, 15 SAY "F10" STYLE "BT"
 @ pfIl+07, 15 SAY "F1" STYLE "BT"
 @ pfIl+08, 15 SAY "ENTER" STYLE "BT"
 @ pfIl+05, 27 SAY "Regresar al Menú Principal"
 @ pfIl+06, 27 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 27 SAY "Ayuda del Programa"
 @ pfIl+08, 27 SAY "Iniciar el Proceso"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO deL_file1
 RELEASE vpAt, vbLa, vtIp, vdEs, vnOm, vcOd, vdIr, vrUc, vtL1, vtL2, vtL3,  ;
         veSt, vuSu
 RELEASE vdAt, vtIm, vsW0, vdC1, vdC2, vtAm, vnU1, vnUm, vnDi
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
