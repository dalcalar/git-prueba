 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vtDo, vsEr, vdOc, vdO1, vfEm, vcLi, vnOm, vdIr, vnDi,  ;
        vrUc, veLe
 PUBLIC vtEl, vdTc, vdCl, vvEn, vnVe, vfPa, vnFp, vdIa, vsWg, vpIg, vnEt,  ;
        vtOt, vcM1
 PUBLIC vcOp, veSt, vuSu, vdAt, vtIm, vdCt, vmOn, vsUc, viTe, vcOd, ccOd,  ;
        vdEs, vdCr
 PUBLIC vuNv, vcAn, vpRe, vdEs, vdCr, vcUv, vnUv, vcUc, vnUc, vlA1, vlA2,  ;
        vaN1, vaN2
 PUBLIC veSp, vtPo, vmEd, vpIe, vrCc, voPc, vuN1, vuN2, vmLa, vmAn, vp11,  ;
        vp12, vp21
 PUBLIC vp22, vcTd
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0006a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0006a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0006a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0006a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0006a
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
PROCEDURE Det_0006a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1300", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Cabecera
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1300DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1301", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Detalle
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
 Use &mDBF Exclusive Alias Detalle_2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1302DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Sucursales
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1102COD
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
 STORE ALLTRIM(vpAt)+"VEN\FV011200.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Cabecera_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1200DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 10
 STORE ALLTRIM(vpAt)+"VEN\FV011201.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1201DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 11
 STORE ALLTRIM(vpAt)+"VEN\FV011202.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Detalle_2_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1202DOC
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT caBecera_control
 GOTO TOP
 DO coLsc7
 DO WHILE  .NOT. EOF()
      STORE f1200tdo TO vtDo
      STORE f1200ser TO vsEr
      STORE f1200doc TO vdOc
      STORE f1200do1 TO vdO1
      IF LEN(ALLTRIM(vdO1))=0
           STORE vdOc TO vdO1
      ENDIF
      STORE f1200fem TO vfEm
      STORE f1200cli TO vcLi
      STORE f1200nom TO vnOm
      STORE f1200dir TO vdIr
      STORE f1200dis TO vnDi
      STORE f1200ruc TO vrUc
      STORE f1200ele TO veLe
      STORE f1200tel TO vtEl
      STORE f1200dtc TO vdTc
      STORE f1200dcl TO vdCl
      STORE f1200ven TO vvEn
      STORE f1200fpa TO vfPa
      STORE f1200dia TO vdIa
      STORE f1200swd TO vsWg
      STORE f1200pig TO vpIg
      STORE f1200tot TO vtOt
      IF vpIg=0
           STORE f1200net TO vnEt
      ELSE
           STORE ROUND(vtOt/(1+(vpIg/100)), 2) TO vnEt
      ENDIF
      STORE f1200cm1 TO vcM1
      STORE f1200cop TO vcOp
      STORE f1200est TO veSt
      STORE f1200usu TO vuSu
      STORE f1200dat TO vdAt
      STORE f1200tim TO vtIm
      STORE f1200dct+f1200dco TO vdCt
      STORE VAL(f1200mon) TO vmOn
      STORE ALLTRIM(LOWER(f1200nve)) TO vnVe
      STORE SUBSTR(UPPER(vnVe), 1, 1)+SUBSTR(vnVe, 2, 50) TO vnVe
      STORE ALLTRIM(LOWER(f1200nfp)) TO vnFp
      STORE SUBSTR(UPPER(vnFp), 1, 1)+SUBSTR(vnFp, 2, 50) TO vnFp
      @mFI0+12,mCO0+5 Say "[ "+vTDO+":"+vSER+"-"+vDOC+" ]  - "+Dtoc(vFEM) Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      IF f1200cli="0000"
           STORE SPACE(04) TO vcLi
           STORE SPACE(02) TO vsUc
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
           STORE "01" TO vsUc
           SELECT clIentes
           SEEK vcLi
           IF  .NOT. EOF()
                STORE f1101nom TO vnOm
                STORE f1101ruc TO vrUc
                SELECT suCursales
                SEEK vcLi+vsUc
                IF  .NOT. EOF()
                     STORE f1102dir TO vdIr
                     STORE f1102ndi TO vnDi
                ENDIF
           ENDIF
      ENDIF
      SELECT caBecera
      SEEK vtDo+vsEr+"0"+vdO1
      IF  .NOT. EOF()
      ELSE
           APPEND BLANK
           REPLACE f1300tdo WITH vtDo
           REPLACE f1300ser WITH vsEr
           REPLACE f1300doc WITH "0"+vdO1
           REPLACE f1300tit WITH SPACE(04)
           REPLACE f1300ntt WITH SPACE(70)
           REPLACE f1300cli WITH vcLi
           REPLACE f1300suc WITH vsUc
           REPLACE f1300nom WITH vnOm
           REPLACE f1300dir WITH vdIr
           REPLACE f1300dis WITH vnDi
           REPLACE f1300dep WITH SPACE(25)
           REPLACE f1300ruc WITH vrUc
           REPLACE f1300ele WITH veLe
           REPLACE f1300tel WITH vtEl
           REPLACE f1300tra WITH SPACE(04)
           REPLACE f1300lug WITH SPACE(70)
           REPLACE f1300lud WITH SPACE(25)
           REPLACE f1300lup WITH SPACE(25)
           REPLACE f1300ppn WITH SPACE(70)
           REPLACE f1300ppa WITH SPACE(70)
           REPLACE f1300ppd WITH SPACE(25)
           REPLACE f1300ppp WITH SPACE(25)
           REPLACE f1300ven WITH vvEn
           REPLACE f1300nve WITH vnVe
           REPLACE f1300com WITH 0
           REPLACE f1300tec WITH SPACE(02)
           REPLACE f1300nte WITH SPACE(50)
           REPLACE f1300dtc WITH vdTc
           REPLACE f1300dcl WITH vdCl
           REPLACE f1300swg WITH 2
           REPLACE f1300pgd WITH vdCt
           REPLACE f1300fem WITH vfEm
           REPLACE f1300fde WITH vfEm
           REPLACE f1300mon WITH vmOn
           REPLACE f1300fpa WITH vfPa
           REPLACE f1300nfp WITH vnFp
           REPLACE f1300dia WITH vdIa
           REPLACE f1300tfp WITH .F.
           REPLACE f1300pig WITH vpIg
           REPLACE f1300net WITH vnEt
           REPLACE f1300igv WITH vtOt-vnEt
           REPLACE f1300int WITH 0
           REPLACE f1300tot WITH vtOt
           REPLACE f1300srp WITH SPACE(03)
           REPLACE f1300ped WITH SPACE(07)
           REPLACE f1300cm1 WITH vcM1
           REPLACE f1300cm2 WITH SPACE(70)
           REPLACE f1300cop WITH vcOp
           REPLACE f1300est WITH veSt
           REPLACE f1300can WITH "1"
           REPLACE f1300det WITH "S"
           REPLACE f1300usu WITH vuSu
           REPLACE f1300dat WITH vdAt
           REPLACE f1300tim WITH vtIm
           REPLACE f1300maq WITH SPACE(30)
           IF veSt<>"9"
                STORE 1 TO viTe
                SELECT deTalle_control
                SEEK vtDo+vsEr+vdOc
                DO WHILE  .NOT. EOF() .AND. f1201tdo+f1201ser+f1201doc= ;
                   vtDo+vsEr+vdOc
                     STORE f1201cod TO vcOd, ccOd
                     STORE f1201des TO vdEs, vdCr
                     STORE f1201uni TO vuNv
                     STORE f1201can TO vcAn
                     STORE f1201pre TO vpRe
                     IF f1201tpo="A" .AND. f1201cor="S"
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
                     REPLACE f1301tdo WITH vtDo
                     REPLACE f1301ser WITH vsEr
                     REPLACE f1301doc WITH "0"+vdO1
                     REPLACE f1301ite WITH viTe
                     REPLACE f1301cod WITH vcOd
                     REPLACE f1301des WITH vdEs
                     REPLACE f1301dcr WITH vdCr
                     REPLACE f1301cuc WITH vcUc
                     REPLACE f1301nuc WITH vnUc
                     REPLACE f1301cuv WITH vcUv
                     REPLACE f1301nuv WITH vnUv
                     REPLACE f1301med WITH vmEd
                     REPLACE f1301can WITH vcAn
                     REPLACE f1301pie WITH vpIe
                     REPLACE f1301sol WITH vpRe
                     REPLACE f1301usd WITH vpRe
                     REPLACE f1301pre WITH vpRe
                     REPLACE f1301pdc WITH 0
                     REPLACE f1301dct WITH 0
                     REPLACE f1301md1 WITH 2
                     REPLACE f1301md2 WITH 2
                     REPLACE f1301md3 WITH 1
                     REPLACE f1301lar WITH 0
                     REPLACE f1301la1 WITH vlA1
                     REPLACE f1301la2 WITH vlA2
                     REPLACE f1301la3 WITH 0
                     REPLACE f1301la4 WITH 0
                     REPLACE f1301la5 WITH 0
                     REPLACE f1301la6 WITH 0
                     REPLACE f1301la7 WITH 0
                     REPLACE f1301la8 WITH 0
                     REPLACE f1301la9 WITH 0
                     REPLACE f1301anc WITH 0
                     REPLACE f1301an1 WITH vaN1
                     REPLACE f1301an2 WITH vaN2
                     REPLACE f1301an3 WITH 0
                     REPLACE f1301an4 WITH 0
                     REPLACE f1301an5 WITH 0
                     REPLACE f1301an6 WITH 0
                     REPLACE f1301an7 WITH 0
                     REPLACE f1301an8 WITH 0
                     REPLACE f1301an9 WITH 0
                     REPLACE f1301alt WITH 0
                     REPLACE f1301al1 WITH 0
                     REPLACE f1301al2 WITH 0
                     REPLACE f1301al3 WITH 0
                     REPLACE f1301al4 WITH 0
                     REPLACE f1301al5 WITH 0
                     REPLACE f1301al6 WITH 0
                     REPLACE f1301al7 WITH 0
                     REPLACE f1301al8 WITH 0
                     REPLACE f1301al9 WITH 0
                     REPLACE f1301esp WITH veSp
                     REPLACE f1301ref WITH SPACE(60)
                     REPLACE f1301pes WITH 0
                     REPLACE f1301pr1 WITH vpRe
                     REPLACE f1301to1 WITH (vpRe*vcAn)/(1+(vpIg/100))
                     REPLACE f1301to2 WITH vpRe*vcAn
                     SELECT deTalle_2_control
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(ccOd)+"*"
                     DO WHILE  .NOT. EOF() .AND. f1202tdo+f1202ser+ ;
                        f1202doc+ALLTRIM(f1202cod)+"*"=vtDo+vsEr+vdOc+ ;
                        ALLTRIM(ccOd)+"*"
                          STORE f1202rcc TO vrCc
                          STORE f1202opc TO voPc
                          STORE f1202un1 TO vuN1
                          STORE f1202un2 TO vuN2
                          STORE f1202mla TO vmLa
                          STORE f1202man TO vmAn
                          STORE f1202p11 TO vp11
                          STORE f1202p12 TO vp12
                          STORE f1202p21 TO vp21
                          STORE f1202p22 TO vp22
                          STORE f1202ctd TO vcTd
                          STORE f1202pie TO vpIe
                          IF vpIe=0 .AND. vtPo=6
                               STORE ROUND(vmLa*vcTd, 4) TO vpIe
                          ENDIF
                          SELECT deTalle_2
                          APPEND BLANK
                          REPLACE f1302tdo WITH vtDo
                          REPLACE f1302ser WITH vsEr
                          REPLACE f1302doc WITH "0"+vdO1
                          REPLACE f1302cod WITH vcOd
                          REPLACE f1302rcc WITH vrCc
                          REPLACE f1302opc WITH voPc
                          REPLACE f1302un1 WITH vuN1
                          REPLACE f1302un2 WITH vuN2
                          REPLACE f1302mla WITH vmLa
                          REPLACE f1302man WITH vmAn
                          REPLACE f1302p11 WITH vp11
                          REPLACE f1302p12 WITH vp12
                          REPLACE f1302p21 WITH vp21
                          REPLACE f1302p22 WITH vp22
                          REPLACE f1302ctd WITH vcTd
                          REPLACE f1302ca1 WITH 0
                          REPLACE f1302ca2 WITH 0
                          REPLACE f1302por WITH 0
                          REPLACE f1302pie WITH vpIe
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
PROCEDURE P00_0006a
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
 DO tiT_0000a WITH "Pasar las Ventas de CONTROL a SAM-VITRAL"
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
PROCEDURE Clp_0006a
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
PROCEDURE Hl1_0006a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de Maestros y Utilitarios de"
 @ pfIl+01, 02 SAY "Ventas de CONTROL a SAM."
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
 RELEASE vpAt, vbLa, vtDo, vsEr, vdOc, vdO1, vfEm, vcLi, vnOm, vdIr, vnDi,  ;
         vrUc, veLe
 RELEASE vtEl, vdTc, vdCl, vvEn, vnVe, vfPa, vnFp, vdIa, vsWg, vpIg, vnEt,  ;
         vtOt, vcM1
 RELEASE vcOp, veSt, vuSu, vdAt, vtIm, vdCt, vmOn, vsUc, viTe, vcOd, ccOd,  ;
         vdEs, vdCr
 RELEASE vuNv, vcAn, vpRe, vdEs, vdCr, vcUv, vnUv, vcUc, vnUc, vlA1, vlA2,  ;
         vaN1, vaN2
 RELEASE veSp, vtPo, vmEd, vpIe, vrCc, voPc, vuN1, vuN2, vmLa, vmAn, vp11,  ;
         vp12, vp21
 RELEASE vp22, vcTd
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
