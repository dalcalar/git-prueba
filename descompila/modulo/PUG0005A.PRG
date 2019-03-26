 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vtDo, vsEr, vdOc, vfEm, vfEc, vpRv, vnOm, vdIr, vnDi,  ;
        vrUc, vtD1
 PUBLIC vsR1, vfAc, vsR2, vpIg, voRd, vcM1, vtOt, veSt, vuSu, vdAt, vtIm,  ;
        vmOn, vrEm
 PUBLIC vsW0, vsUc, vtPo, viTe, vcOd, ccOd, vdEs, vdCr, vuNv, vcAn, vpRe,  ;
        vcUv, vnUv
 PUBLIC vcUc, vnUc, vlA1, vlA2, vaN1, vaN2, veSp, vmEd, vpIe, vrCc, voPc,  ;
        vuN1, vuN2
 PUBLIC vmLa, vmAn, vp11, vp12, vp21, vp22, vcTd
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0005a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0005a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0005a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0005a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0005a
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
PROCEDURE Det_0005a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "2400", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2400DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "2401", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2401DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "2402", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle_2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2402DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "2101", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Proveedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "2102", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "2111", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Productos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2111COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 DO abR_0000a IN PUX0000A WITH "9211", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Tipos_Productos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9211TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 DO abR_0000a IN PUX0000A WITH "9213", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Unidades
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9213DES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 STORE ALLTRIM(vpAt)+"ALM\FA012220.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2220DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 STORE ALLTRIM(vpAt)+"ALM\FA012221.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2221DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 11
 STORE ALLTRIM(vpAt)+"ALM\FA012222.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_2_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F2222DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO coLsc7
 DO WHILE  .NOT. EOF()
      STORE f2220tdo TO vtDo
      STORE f2220ser TO vsEr
      STORE f2220doc TO vdOc
      STORE f2220fem TO vfEm
      STORE f2220fec TO vfEc
      STORE f2220prv TO vpRv
      STORE f2220nom TO vnOm
      STORE f2220dir TO vdIr
      STORE f2220dis TO vnDi
      STORE f2220ruc TO vrUc
      STORE f2220td1 TO vtD1
      STORE f2220sr1 TO vsR1
      STORE f2220fac TO vfAc
      STORE f2220sr2 TO vsR2
      STORE f2220pig TO vpIg
      STORE f2220ord TO voRd
      STORE f2220cm1 TO vcM1
      STORE f2220tot TO vtOt
      STORE f2220est TO veSt
      STORE f2220usu TO vuSu
      STORE f2220dat TO vdAt
      STORE f2220tim TO vtIm
      @mFI0+12,mCO0+5 Say "["+vTDO+":"+vSER+"-"+vDOC+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      STORE VAL(f2220mon) TO vmOn
      STORE ALLTRIM(f2220rem) TO vrEm
      IF f2220prv="0000"
           STORE SPACE(04) TO vpRv
           STORE SPACE(02) TO vsUc
           STORE 2 TO vsW0
           STORE ALLTRIM(LOWER(vnDi)) TO vnDi
           STORE SUBSTR(UPPER(vnDi), 1, 1)+SUBSTR(vnDi, 2, 50) TO vnDi
           DO diS_0003a IN PUG0003A WITH vnDi
           STORE ALLTRIM(LOWER(vnOm)) TO vnOm
           STORE SUBSTR(UPPER(vnOm), 1, 1)+SUBSTR(vnOm, 2, 80) TO vnOm
           STORE ALLTRIM(LOWER(vdIr)) TO vdIr
           STORE SUBSTR(UPPER(vdIr), 1, 1)+SUBSTR(vdIr, 2, 80) TO vdIr
           DO noM_0003a IN PUG0003A WITH vnOm, 0
           DO diR_0003a IN PUG0003A WITH vdIr, 0
      ELSE
           STORE 1 TO vsW0
           STORE "01" TO vsUc
           SELECT prOveedores
           SEEK vpRv
           IF  .NOT. EOF()
                STORE f2101nom TO vnOm
                STORE f2101ruc TO vrUc
                SELECT suCursales
                SEEK vpRv+vsUc
                IF  .NOT. EOF()
                     STORE f2102dir TO vdIr
                     STORE f2102dis TO vnDi
                ENDIF
           ENDIF
      ENDIF
      IF LEN(vrEm)<>0
           STORE "0"+vrEm TO vrEm
      ENDIF
      DO CASE
           CASE vtDo="CO"
                STORE 1 TO vtPo
           CASE vtDo="GA"
                STORE 2 TO vtPo
           CASE vtDo="NP"
                STORE 3 TO vtPo
      ENDCASE
      SELECT caBecera
      SEEK vtDo+vsEr+"0"+vdOc
      IF EOF()
           APPEND BLANK
           REPLACE f2400tdo WITH vtDo
           REPLACE f2400ser WITH vsEr
           REPLACE f2400doc WITH "0"+vdOc
           REPLACE f2400sw0 WITH vsW0
           REPLACE f2400prv WITH vpRv
           REPLACE f2400suc WITH vsUc
           REPLACE f2400nom WITH vnOm
           REPLACE f2400tit WITH SPACE(04)
           REPLACE f2400nti WITH SPACE(70)
           REPLACE f2400dir WITH vdIr
           REPLACE f2400dis WITH vnDi
           REPLACE f2400ruc WITH vrUc
           REPLACE f2400mon WITH vmOn
           REPLACE f2400fem WITH vfEm
           REPLACE f2400fin WITH vfEc
           REPLACE f2400reg WITH vfEm
           REPLACE f2400td1 WITH vtD1
           REPLACE f2400sr1 WITH vsR1
           REPLACE f2400fac WITH vfAc
           REPLACE f2400sr2 WITH vsR2
           REPLACE f2400rem WITH vrEm
           REPLACE f2400sor WITH "001"
           REPLACE f2400ord WITH voRd
           REPLACE f2400ped WITH SPACE(07)
           REPLACE f2400pla WITH SPACE(10)
           REPLACE f2400tig WITH 1
           REPLACE f2400dec WITH 1
           REPLACE f2400pig WITH vpIg
           REPLACE f2400cco WITH SPACE(02)
           REPLACE f2400ncc WITH SPACE(50)
           REPLACE f2400tpo WITH vtPo
           REPLACE f2400fpa WITH SPACE(02)
           REPLACE f2400nfp WITH SPACE(50)
           REPLACE f2400dia WITH 0
           REPLACE f2400cm1 WITH vcM1
           REPLACE f2400cm2 WITH SPACE(70)
           REPLACE f2400val WITH ROUND(vtOt/(1+(vpIg/100)), 2)
           REPLACE f2400dct WITH 0
           REPLACE f2400net WITH f2400val
           REPLACE f2400igv WITH f2400tot-f2400val
           REPLACE f2400red WITH 0
           REPLACE f2400tot WITH ROUND(vtOt, 2)
           REPLACE f2400nt1 WITH 0
           REPLACE f2400ig1 WITH 0
           REPLACE f2400to1 WITH 0
           REPLACE f2400tra WITH "1"
           REPLACE f2400tds WITH SPACE(02)
           REPLACE f2400ses WITH SPACE(02)
           REPLACE f2400dos WITH SPACE(02)
           REPLACE f2400cdg WITH SPACE(mtMa)
           REPLACE f2400mn1 WITH 1
           REPLACE f2400cos WITH 0
           REPLACE f2400est WITH veSt
           REPLACE f2400usu WITH vuSu
           REPLACE f2400dat WITH vdAt
           REPLACE f2400tim WITH vtIm
           REPLACE f2400maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vtDo+vsEr+vdOc
                DO WHILE  .NOT. EOF() .AND. f2221tdo+f2221ser+f2221doc= ;
                   vtDo+vsEr+vdOc
                     STORE f2221cod TO vcOd, ccOd
                     STORE f2221des TO vdEs, vdCr
                     STORE f2221uni TO vuNv
                     STORE f2221can TO vcAn
                     STORE f2221pre TO vpRe
                     IF f2221tpo="A" .AND. f2221cor="S"
                          STORE ALLTRIM(vcOd)+"C" TO vcOd
                     ENDIF
                     SELECT prOductos
                     SEEK ALLTRIM(vcOd)+"*"
                     IF  .NOT. EOF()
                          STORE f2111des TO vdEs
                          STORE f2111dcr TO vdCr
                          STORE f2111cuv TO vcUv
                          STORE f2111nuv TO vnUv
                          STORE f2111cuc TO vcUc
                          STORE f2111nuc TO vnUc
                          STORE f2111la1 TO vlA1
                          STORE f2111la2 TO vlA2
                          STORE f2111an1 TO vaN1
                          STORE f2111an2 TO vaN2
                          STORE f2111esp TO veSp
                          STORE f2111tip TO vtPo
                          SELECT tiPos_productos
                          SEEK vtPo
                          IF EOF()
                               STORE 1 TO vtPo
                          ELSE
                               STORE f9211tpo TO vtPo
                          ENDIF
                     ELSE
                          STORE 0 TO vlA1, vlA2, vaN1, vaN2, veSp
                          DO unI_0000a IN PUG0000a WITH vuNv
                          SELECT unIdades
                          SEEK UPPER(vuNv)
                          IF EOF()
                               STORE SPACE(02) TO vcUv, vcUc
                          ELSE
                               STORE f9213uni TO vcUv, vcUc
                          ENDIF
                          STORE vuNv TO vnUv, vnUc
                          STORE 1 TO vtPo
                     ENDIF
                     DO CASE
                          CASE vlA2=0 .AND. vaN2=0
                               STORE 1 TO vmEd
                          CASE vlA1=0 .AND. vaN1=0
                               STORE 2 TO vmEd
                     ENDCASE
                     DO CASE
                          CASE vtPo=1 .OR. vtPo=10
                               STORE 0 TO vpIe
                          CASE vtPo=2 .AND. vmEd=1
                               STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
                          CASE vtPo=2 .AND. vmEd=2
                               STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
                          CASE vtPo=3
                               STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
                          CASE vtPo=4
                               STORE ROUND((vlA1*vaN1)*vcAn, 4) TO vpIe
                          CASE vtPo>=5 .AND. vtPo<=6
                               STORE vcAn TO vpIe
                     ENDCASE
                     SELECT deTalle
                     APPEND BLANK
                     REPLACE f2401tdo WITH vtDo
                     REPLACE f2401ser WITH vsEr
                     REPLACE f2401doc WITH "0"+vdOc
                     REPLACE f2401ite WITH viTe
                     REPLACE f2401cod WITH vcOd
                     REPLACE f2401des WITH vdEs
                     REPLACE f2401dcr WITH vdCr
                     REPLACE f2401cuv WITH vcUv
                     REPLACE f2401nuv WITH vnUv
                     REPLACE f2401cuc WITH vcUc
                     REPLACE f2401nuc WITH vnUc
                     REPLACE f2401med WITH vmEd
                     REPLACE f2401can WITH vcAn
                     REPLACE f2401caj WITH 0
                     REPLACE f2401pre WITH vpRe
                     REPLACE f2401co1 WITH 0
                     REPLACE f2401co2 WITH 0
                     REPLACE f2401pie WITH vpIe
                     REPLACE f2401la1 WITH vlA1
                     REPLACE f2401la2 WITH vlA2
                     REPLACE f2401an1 WITH vaN1
                     REPLACE f2401an2 WITH vaN2
                     REPLACE f2401esp WITH veSp
                     REPLACE f2401tpo WITH vtPo
                     SELECT deTalle_2_control
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(ccOd)+"*"
                     DO WHILE  .NOT. EOF() .AND. f2222tdo+f2222ser+ ;
                        f2222doc+ALLTRIM(f2222cod)+"*"=vtDo+vsEr+vdOc+ ;
                        ALLTRIM(ccOd)+"*"
                          STORE f2222rcc TO vrCc
                          STORE f2222opc TO voPc
                          STORE f2222un1 TO vuN1
                          STORE f2222un2 TO vuN2
                          STORE f2222mla TO vmLa
                          STORE f2222man TO vmAn
                          STORE f2222p11 TO vp11
                          STORE f2222p12 TO vp12
                          STORE f2222p21 TO vp21
                          STORE f2222p22 TO vp22
                          STORE f2222ctd TO vcTd
                          STORE f2222pie TO vpIe
                          IF vpIe=0 .AND. vtPo=6
                               STORE ROUND(vmLa*vcTd, 4) TO vpIe
                          ENDIF
                          SELECT deTalle_2
                          APPEND BLANK
                          REPLACE f2402tdo WITH vtDo
                          REPLACE f2402ser WITH vsEr
                          REPLACE f2402doc WITH "0"+vdOc
                          REPLACE f2402cod WITH vcOd
                          REPLACE f2402rcc WITH vrCc
                          REPLACE f2402opc WITH voPc
                          REPLACE f2402un1 WITH vuN1
                          REPLACE f2402un2 WITH vuN2
                          REPLACE f2402mla WITH vmLa
                          REPLACE f2402man WITH vmAn
                          REPLACE f2402p11 WITH vp11
                          REPLACE f2402p12 WITH vp12
                          REPLACE f2402p21 WITH vp21
                          REPLACE f2402p22 WITH vp22
                          REPLACE f2402ctd WITH vcTd
                          REPLACE f2402ca1 WITH 0
                          REPLACE f2402ca2 WITH 0
                          REPLACE f2402por WITH 0
                          REPLACE f2402pie WITH vpIe
                          SELECT deTalle_2_control
                          SKIP
                     ENDDO
                     STORE viTe+1 TO viTe
                     SELECT deTalle_control
                     SKIP
                ENDDO
           ENDIF
      ENDIF
      SELECT caBecera_control
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE P00_0005a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 14 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-1 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Pasar los Compras de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa el Archivo Maestro y los utilitarios de Compras" Font "&mLetRom",13 Style "BQ"
 @mFI0+04,mCO0+10 Say "de CONTROL a SAM. Grabando nuevos y actualizando anteriores.     " Font "&mLetRom",13 Style "BQ"
 @mFI0+10,mCO0+05 Say "Path:"                                                             Font "&mLetRom",13 Style "BQ"
 DO coLblr
 @mFI0+07,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."          Font "&mLetRom",14 Style "BTI"
 DO coLbln
 @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
 DO coLsc7
 @mFI0+12,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_0005a
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
PROCEDURE Hl1_0005a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de Maestros y Utilitarios de"
 @ pfIl+01, 02 SAY "Compras de CONTROL a SAM."
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
 RELEASE vpAt, vbLa, vtDo, vsEr, vdOc, vfEm, vfEc, vpRv, vnOm, vdIr, vnDi,  ;
         vrUc, vtD1
 RELEASE vsR1, vfAc, vsR2, vpIg, voRd, vcM1, vtOt, veSt, vuSu, vdAt, vtIm,  ;
         vmOn, vrEm
 RELEASE vsW0, vsUc, vtPo, viTe, vcOd, ccOd, vdEs, vdCr, vuNv, vcAn, vpRe,  ;
         vcUv, vnUv
 RELEASE vcUc, vnUc, vlA1, vlA2, vaN1, vaN2, veSp, vmEd, vpIe, vrCc, voPc,  ;
         vuN1, vuN2
 RELEASE vmLa, vmAn, vp11, vp12, vp21, vp22, vcTd
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
