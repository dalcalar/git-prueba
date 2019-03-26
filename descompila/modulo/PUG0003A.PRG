 SET CENTURY ON
 STORE 99 TO mkEy
 PUBLIC vpAt, vbLa, vtIp, vdEs, vdCt, vvEn, vnOm, vcOd, vdIr, vdIs, vdPt,  ;
        vrUc, veLe
 PUBLIC vtL1, vtL2, vtL3, veSt, vuSu, vdAt, vtIm, vsW0, vdC1, vdC2, vtAm,  ;
        vnU1, vnUm
 PUBLIC vnDi, vnDp
 STORE 99 TO mkEy
 STORE SPACE(80) TO vbLa
 STORE "C:\CONTROL\DATA\"+SPACE(70) TO vpAt
 SET READBORDER ON
 DO p00_0003a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_0003a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_0003a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hl1_0003a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Enter
                DO q1_0000a
                DO deT_0003a
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
PROCEDURE Det_0003a
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "1101", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "1102", "V"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Sucursal
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1102COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "9110", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Tipos_Clientes
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "9113", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive Alias Vendedores
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9113COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "9114", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Departamentos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9114DPT
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 6
 DO abR_0000a IN PUX0000A WITH "9115", "U"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Distritos
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9115NO1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 7
 STORE ALLTRIM(vpAt)+"VEN\FV011101.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF Exclusive NoUpdate Alias Clientes_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F1101COD
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 8
 STORE ALLTRIM(vpAt)+"UTI\FU019110.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF NoUpdate Exclusive Alias Tipos_Clientes_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9110TIP
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT 9
 STORE ALLTRIM(vpAt)+"UTI\FU019111.DBF" TO mdBf
 DO veR_0000a IN PUX0000A
 IF mkEy=k_Esc
      RETURN
 ENDIF
 Use &mDBF NoUpdate Exclusive Alias Vendedores_Control
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET ORDER TO F9111VEN
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SELECT tiPos_clientes_control
 GOTO TOP
 DO coLsc7
 DO WHILE  .NOT. EOF()
      STORE f9110tip TO vtIp
      STORE f9110dct TO vdCt
      STORE ALLTRIM(LOWER(f9110des)) TO vdEs
      STORE SUBSTR(UPPER(vdEs), 1, 1)+SUBSTR(vdEs, 2, 80) TO vdEs
      @mFI0+12,mCO0+5 Say "["+vTIP+"] - ["+vDES+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT tiPos_clientes
      SEEK vtIp
      IF EOF()
           APPEND BLANK
           REPLACE f9110tip WITH vtIp
           REPLACE f9110nti WITH vdEs
           REPLACE f9110dct WITH vdCt
           REPLACE f9110max WITH 0
      ENDIF
      SELECT tiPos_clientes_control
      SKIP
 ENDDO
 SELECT veNdedores_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f9111ven TO vvEn
      STORE ALLTRIM(LOWER(f9111nom)) TO vnOm
      STORE SUBSTR(UPPER(vnOm), 1, 1)+SUBSTR(vnOm, 2, 80) TO vnOm
      @mFI0+14,mCO0+5 Say "["+vVEN+"] - ["+vNOM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      SELECT veNdedores
      SEEK vtIp
      IF EOF()
           APPEND BLANK
           REPLACE f9113cod WITH vvEn
           REPLACE f9113nom WITH vnOm
           REPLACE f9113com WITH 0
      ENDIF
      SELECT veNdedores_control
      SKIP
 ENDDO
 SELECT clIentes_control
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE f1101cod TO vcOd
      STORE f1101tip TO vtIp
      STORE f1101ruc TO vrUc
      STORE f1101ele TO veLe
      STORE f1101tl1 TO vtL1
      STORE f1101tl2 TO vtL2
      STORE f1101tl3 TO vtL3
      STORE f1101dct TO vdCt
      STORE f1101est TO veSt
      STORE f1101usu TO vuSu
      STORE f1101dat TO vdAt
      STORE f1101tim TO vtIm
      STORE ALLTRIM(LOWER(f1101dis)) TO vnDi
      STORE SUBSTR(UPPER(vnDi), 1, 1)+SUBSTR(vnDi, 2, 50) TO vnDi
      DO diS_0003a WITH vnDi
      STORE ALLTRIM(LOWER(f1101nom)) TO vnOm
      STORE SUBSTR(UPPER(vnOm), 1, 1)+SUBSTR(vnOm, 2, 80) TO vnOm
      STORE ALLTRIM(LOWER(f1101dir)) TO vdIr
      STORE SUBSTR(UPPER(vdIr), 1, 1)+SUBSTR(vdIr, 2, 80) TO vdIr
      @mFI0+16,mCO0+5 Say "["+vCOD+"] - ["+vNOM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      DO noM_0003a WITH vnOm, mfI0+18
      DO diR_0003a WITH vdIr, mfI0+20
      SELECT diStritos
      SEEK UPPER(vnDi)
      IF EOF()
           STORE "00" TO vdIs
           STORE "01" TO vdPt
      ELSE
           STORE f9115dis TO vdIs
           STORE f9115dpt TO vdPt
           STORE f9115nom TO vnDi
      ENDIF
      SELECT dePartamentos
      SEEK vdPt
      IF EOF()
           STORE SPACE(30) TO vnDp
      ELSE
           STORE f9114nom TO vnDp
      ENDIF
      SELECT clIentes
      SEEK vcOd
      IF EOF()
           APPEND BLANK
           REPLACE f1101cod WITH vcOd
           REPLACE f1101tip WITH vtIp
           REPLACE f1101dct WITH vdCt
           REPLACE f1101nom WITH vnOm
           REPLACE f1101ali WITH SPACE(20)
           REPLACE f1101ruc WITH vrUc
           REPLACE f1101ele WITH veLe
           REPLACE f1101med WITH 1
           REPLACE f1101ven WITH SPACE(02)
           REPLACE f1101lis WITH 0
           REPLACE f1101li2 WITH 0
           REPLACE f1101li3 WITH 0
           REPLACE f1101gir WITH SPACE(30)
           REPLACE f1101lic WITH SPACE(20)
           REPLACE f1101reg WITH SPACE(20)
           REPLACE f1101ini WITH CTOD("  /  /    ")
           REPLACE f1101cre WITH 2
           REPLACE f1101mon WITH 1
           REPLACE f1101tot WITH 0
           REPLACE f1101est WITH veSt
           REPLACE f1101usu WITH vuSu
           REPLACE f1101dat WITH vdAt
           REPLACE f1101tim WITH vtIm
           SELECT suCursal
           APPEND BLANK
           REPLACE f1102cod WITH vcOd
           REPLACE f1102suc WITH "01"
           REPLACE f1102dir WITH vdIr
           REPLACE f1102dpt WITH vdPt
           REPLACE f1102dis WITH vdIs
           REPLACE f1102ndi WITH vnDi
           REPLACE f1102ndp WITH vnDp
           REPLACE f1102ent WITH SPACE(70)
           REPLACE f1102dp1 WITH SPACE(02)
           REPLACE f1102die WITH SPACE(02)
           REPLACE f1102nd1 WITH SPACE(50)
           REPLACE f1102np1 WITH SPACE(50)
           REPLACE f1102ct1 WITH SPACE(50)
           REPLACE f1102ca1 WITH SPACE(30)
           REPLACE f1102tl1 WITH vtL1
           REPLACE f1102an1 WITH SPACE(04)
           REPLACE f1102fa1 WITH SPACE(10)
           REPLACE f1102mai WITH SPACE(30)
           REPLACE f1102ct2 WITH SPACE(50)
           REPLACE f1102ca2 WITH SPACE(30)
           REPLACE f1102tl2 WITH vtL2
           REPLACE f1102an2 WITH SPACE(04)
           REPLACE f1102fa2 WITH SPACE(10)
           REPLACE f1102ma2 WITH SPACE(30)
           REPLACE f1102ct3 WITH SPACE(50)
           REPLACE f1102ca3 WITH SPACE(30)
           REPLACE f1102tl3 WITH vtL3
           REPLACE f1102an3 WITH SPACE(04)
           REPLACE f1102fa3 WITH SPACE(10)
           REPLACE f1102ma3 WITH SPACE(30)
           REPLACE f1102alq WITH 1
           REPLACE f1102ano WITH SPACE(04)
           REPLACE f1102usu WITH vuSu
           REPLACE f1102dat WITH vdAt
           REPLACE f1102tim WITH vtIm
      ENDIF
      SELECT clIentes_control
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Dis_0003a
 PARAMETER puNi
 DO CASE
      CASE puNi="San juan de lurigancho" .OR. puNi="San juan de l." .OR.  ;
           puNi="S.j.de lurigancho" .OR. puNi="S.j. de lurigancho" .OR.  ;
           puNi="S.j.l." .OR. puNi="S.j.l" .OR. puNi="Sjl." .OR. puNi= ;
           "Sjl" .OR. puNi="Nuevo san juan"
           STORE "San Juan de Lurigancho" TO puNi
      CASE puNi="San juan de miraflores" .OR. puNi="San juan de m." .OR.  ;
           puNi="S.j.de miraflores" .OR. puNi="S.j. de miraflores" .OR.  ;
           puNi="S.j.m." .OR. puNi="S.j.m" .OR. puNi="Sjm." .OR. puNi="Sjm"
           STORE "San Juan de Miraflores" TO puNi
      CASE puNi="Jesus maria" .OR. puNi="J.m."
           STORE "Jesus Maria" TO puNi
      CASE puNi="Los olivos"
           STORE "Los Olivos" TO puNi
      CASE puNi="Villa el salvador" .OR. puNi="V. el salvador" .OR. puNi= ;
           "V.el salvador" .OR. puNi="V.e.s." .OR. puNi="V.e.s"
           STORE "Villa el Salvador" TO puNi
      CASE puNi="San martin de porres" .OR. puNi="San martin de porras"  ;
           .OR. puNi="S.m.p." .OR. puNi="S.m.p" .OR. puNi="Smp." .OR.  ;
           puNi="Smp"
           STORE "San Martín de Porres" TO puNi
 ENDCASE
ENDPROC
*
PROCEDURE Nom_0003a
 PARAMETER pnOm, pfIl
 DO WHILE .T.
      STORE 0 TO vsW0
      DO CASE
           CASE AT("  ", pnOm)<>0
                STORE 1 TO vsW0
                STORE "  " TO vdC2
                STORE " " TO vdC1
           CASE AT("srl.", pnOm)<>0
                STORE 1 TO vsW0
                STORE "srl." TO vdC2
                STORE "S.R.L." TO vdC1
           CASE AT("srl", pnOm)<>0
                STORE 1 TO vsW0
                STORE "srl" TO vdC2
                STORE "S.R.L." TO vdC1
           CASE AT("s.r.l.", pnOm)<>0
                STORE 1 TO vsW0
                STORE "s.r.l." TO vdC2
                STORE "S.R.L." TO vdC1
           CASE AT("s.r.l", pnOm)<>0
                STORE 1 TO vsW0
                STORE "s.r.l" TO vdC2
                STORE "S.R.L." TO vdC1
           CASE AT(" sac.", pnOm)<>0
                STORE 1 TO vsW0
                STORE " sac." TO vdC2
                STORE " S.A.C. " TO vdC1
           CASE AT(" sac ", pnOm)<>0
                STORE 1 TO vsW0
                STORE " sac " TO vdC2
                STORE " S.A.C. " TO vdC1
           CASE AT(" s.a.c.", pnOm)<>0
                STORE 1 TO vsW0
                STORE " s.a.c." TO vdC2
                STORE " S.A.C." TO vdC1
           CASE AT(" s.a.c", pnOm)<>0
                STORE 1 TO vsW0
                STORE " s.a.c" TO vdC2
                STORE " S.A.C." TO vdC1
           CASE AT(" sa.", pnOm)<>0
                STORE 1 TO vsW0
                STORE " sa." TO vdC2
                STORE " S.A." TO vdC1
           CASE AT(" sa ", pnOm)<>0
                STORE 1 TO vsW0
                STORE " sa " TO vdC2
                STORE " S.A. " TO vdC1
           CASE AT(" s.a.", pnOm)<>0
                STORE 1 TO vsW0
                STORE " s.a." TO vdC2
                STORE " S.A." TO vdC1
           CASE AT("eirl.", pnOm)<>0
                STORE 1 TO vsW0
                STORE "eirl." TO vdC2
                STORE "E.I.R.L." TO vdC1
           CASE AT("eirl", pnOm)<>0
                STORE 1 TO vsW0
                STORE "eirl" TO vdC2
                STORE "E.I.R.L." TO vdC1
           CASE AT("e.i.r.l.", pnOm)<>0
                STORE 1 TO vsW0
                STORE "e.i.r.l." TO vdC2
                STORE "E.I.R.L." TO vdC1
           CASE AT("e.i.r.l", pnOm)<>0
                STORE 1 TO vsW0
                STORE "e.i.r.l" TO vdC2
                STORE "E.I.R.L." TO vdC1
           CASE AT(" cia.", pnOm)<>0
                STORE 1 TO vsW0
                STORE " cia." TO vdC2
                STORE " Cia." TO vdC1
           CASE AT(" cia ", pnOm)<>0
                STORE 1 TO vsW0
                STORE " cia " TO vdC2
                STORE " Cia." TO vdC1
      ENDCASE
      IF vsW0=0
           EXIT
      ENDIF
      STORE LEN(vdC2) TO vtAm
      STORE AT(vdC2, pnOm) TO vnUm
      STORE LEN(pnOm)-(vnUm+vtAm)+1 TO vnU1
      IF vnUm=1
           STORE vdC1+SUBSTR(pnOm, vnUm+vtAm, vnU1) TO pnOm
      ELSE
           STORE SUBSTR(pnOm, 1, vnUm-1)+vdC1+SUBSTR(pnOm, vnUm+vtAm,  ;
                 vnU1) TO pnOm
      ENDIF
      IF pfIl<>0
           @pFIL,mCO0+5 Say "["+pNOM+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Dir_0003a
 PARAMETER pdIr, pfIl
 DO WHILE .T.
      STORE 0 TO vsW0
      DO CASE
           CASE AT("  ", pdIr)<>0
                STORE 1 TO vsW0
                STORE "  " TO vdC2
                STORE " " TO vdC1
           CASE AT("Av ", pdIr)<>0
                STORE 1 TO vsW0
                STORE "Av  " TO vdC2
                STORE "Av. " TO vdC1
           CASE AT("Avenida ", pdIr)<>0
                STORE 1 TO vsW0
                STORE "Avenida " TO vdC2
                STORE "Av. " TO vdC1
           CASE AT("Jr ", pdIr)<>0
                STORE 1 TO vsW0
                STORE "Jr  " TO vdC2
                STORE "Jr. " TO vdC1
           CASE AT("Psj ", pdIr)<>0
                STORE 1 TO vsW0
                STORE "Psj " TO vdC2
                STORE "Psj. " TO vdC1
           CASE AT(" mz ", pdIr)<>0
                STORE 1 TO vsW0
                STORE " mz " TO vdC2
                STORE " Mz " TO vdC1
           CASE AT(" mza. ", pdIr)<>0
                STORE 1 TO vsW0
                STORE " mza. " TO vdC2
                STORE " Mz " TO vdC1
           CASE AT(" lote ", pdIr)<>0
                STORE 1 TO vsW0
                STORE " lote " TO vdC2
                STORE " Lote " TO vdC1
           CASE AT(" lot ", pdIr)<>0
                STORE 1 TO vsW0
                STORE " lot " TO vdC2
                STORE " Lote " TO vdC1
           CASE AT(" int.", pdIr)<>0
                STORE 1 TO vsW0
                STORE " int." TO vdC2
                STORE " Int." TO vdC1
      ENDCASE
      IF vsW0=0
           EXIT
      ENDIF
      STORE LEN(vdC2) TO vtAm
      STORE AT(vdC2, pdIr) TO vnUm
      STORE LEN(pdIr)-(vnUm+vtAm)+1 TO vnU1
      IF vnUm=1
           STORE vdC1+SUBSTR(pdIr, vnUm+vtAm, vnU1) TO pdIr
      ELSE
           STORE SUBSTR(pdIr, 1, vnUm-1)+vdC1+SUBSTR(pdIr, vnUm+vtAm,  ;
                 vnU1) TO pdIr
      ENDIF
      IF pfIl<>0
           @pFIL,mCO0+5 Say "["+pDIR+"]" Font "&mLetRom",12 Style "BQ" Size 1,80 Pict "@S80"
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE P00_0003a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 22 TO muFi
 STORE 124 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO tiT_0000a WITH "Pasar los Clientes de CONTROL a SAM-VITRAL"
 DO coLsc3
 DO cuAdro WITH mfI0, mcO0, mfI0+muFi, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_boton
 @ mmF1, 0 CLEAR TO mmF1+3.1, mwCo
 DO coLsc3
 @mFI0+02,mCO0+10 Say "Este proceso pasa el Archivo Maestro y los utilitarios de Clientes" Font "&mLetRom",13 Style "BQ"
 @mFI0+04,mCO0+10 Say "de CONTROL a SAM. Grabando nuevos y actualizando anteriores.      " Font "&mLetRom",13 Style "BQ"
 @mFI0+10,mCO0+05 Say "Path:"                                                              Font "&mLetRom",13 Style "BQ"
 DO coLblr
 @mFI0+07,mCO0+12 Say "Pulsar ENTER para empezar el Proceso o ESC para Salir..."           Font "&mLetRom",14 Style "BTI"
 DO coLbln
 @mFI0+10,mCO0+14 Edit vPAT Font "&mLetRom",12 Style "BQ" Size 1,73.5,80
 DO coLsc7
 @mFI0+12,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+14,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+16,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+18,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 @mFI0+20,mCO0+05 Edit vBLA Font "&mLetRom",12 Style "BQ" Size 1,80,80
 READ TIMEOUT 0.01
 DO prEsiona WITH "4", "R_CONS20", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_0003a
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
PROCEDURE Hl1_0003a
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Este programa, pasa y actualiza los datos de Maestros y Utilitarios de"
 @ pfIl+01, 02 SAY "Clientes de CONTROL a SAM."
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
 RELEASE vpAt, vbLa, vtIp, vdEs, vdCt, vvEn, vnOm, vcOd, vdIr, vdIs, vdPt,  ;
         vrUc, veLe
 RELEASE vtL1, vtL2, vtL3, veSt, vuSu, vdAt, vtIm, vsW0, vdC1, vdC2, vtAm,  ;
         vnU1, vnUm
 RELEASE vnDi, vnDp
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
