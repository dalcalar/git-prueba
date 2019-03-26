 SET CENTURY ON
 PUBLIC afIl, x, ntM1, ntM2
 STORE "0000" TO ntM1
 STORE "0001" TO ntM2
 STORE 01 TO meRr
 DIMENSION afIl[10, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM1CPT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DES"
 afIl[x, 2] = "C"
 afIl[x, 3] = 50
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1DCR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 25
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TPO"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TIP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1AFP"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1POR"
 afIl[x, 2] = "N"
 afIl[x, 3] = 6
 afIl[x, 4] = 3
 STORE x+1 TO x
 afIl[x, 1] = "FTM1MND"
 afIl[x, 2] = "N"
 afIl[x, 3] = 1
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1FOR"
 afIl[x, 2] = "C"
 afIl[x, 3] = 70
 afIl[x, 4] = 0
 STORE x+1 TO x
 afIl[x, 1] = "FTM1TOT"
 afIl[x, 2] = "N"
 afIl[x, 3] = 12
 afIl[x, 4] = 2
 STORE "TM01"+ntM1+".DBF" TO mdBf
 DO WHILE .T.
      ntM1 = STRTRAN(STR(VAL(ntM1)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM1+".DBF" TO mdBf
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
 CLOSE DATABASES
 DIMENSION afIl[1, 4]
 STORE 1 TO x
 afIl[x, 1] = "FTM2CPT"
 afIl[x, 2] = "C"
 afIl[x, 3] = 4
 afIl[x, 4] = 0
 STORE "TM01"+ntM2+".DBF" TO mdBf
 DO WHILE .T.
      ntM2 = STRTRAN(STR(VAL(ntM2)+1, 4, 0), " ", "0")
      STORE "TM01"+ntM2+".DBF" TO mdBf
      If .not.File("&mDBF")
           EXIT
      ENDIF
      IF ntM2="9999"
           STORE "Error: muchos Archivos Temporales..." TO mmSj
           DO poNmsj
           RETURN
      ENDIF
 ENDDO
 CREATE TABLE (mdBf) FROM ARRAY afIl
 Use &mDBF Exclusive
 INDEX ON ftM2cpt TAG ftM2cpt
 CLOSE DATABASES
 CLOSE INDEXES
 RELEASE afIl, x
 STORE 99 TO mkEy
 SELECT 1
 DO abR_0000a IN PUX0000A WITH "4240", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Cabecera
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4240BOL
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 2
 DO abR_0000a IN PUX0000A WITH "4241", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared Alias Detalle
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4241BOL
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 3
 DO abR_0000a IN PUX0000A WITH "4200", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Trabajadores
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4200COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 4
 DO abR_0000a IN PUX0000A WITH "4210", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Conceptos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4210COD
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 5
 DO abR_0000a IN PUX0000A WITH "4211", "K"
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 Use &mDBF Shared NoUpdate Alias Fijos
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO F4211TRA
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 6
 STORE "TM01"+ntM1+".DBF" TO mdBf
 Use &mDBF Exclusive Alias Temporal
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 7
 STORE "TM01"+ntM2+".DBF" TO mdBf
 Use &mDBF Exclusive Alias Existe
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SET ORDER TO FTM2CPT
 IF mkEy=k_Esc
      DO deL_file1
      RETURN
 ENDIF
 SELECT 8
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
 STORE 00 TO meRr
 PUBLIC viTe, xiTe, viT1, ciTx, viOm, vcO0, vuCo, icLn, ucLn, vcLn, vfB1,  ;
        vfB2, vfB3
 PUBLIC vcB1, vcB2, vcB3, vsEr, vdOc, vsWw, vrEc, irEc, frEc, urEc, crEc,  ;
        vfIl, ifIl
 PUBLIC ufIl, ffIl, cfIl, vfFr, ifFr, ufFr, ffFr, cfFr, vtB1, vcOd, ccOd,  ;
        vaPp, vaPm
 PUBLIC vnOm, vdNi, vdIr, vdIs, vfIn, vfCe, vfNa, vlNa, vsSo, vsPp, vnAc,  ;
        vfEm, vdFe
 PUBLIC vhFe, vmOn, vcPt, xcPt, icPt, ucPt, vcP1, vdCp, xdCp, idCp, udCp,  ;
        vdEs, xdEs
 PUBLIC vdCr, xdCr, vmNd, xmNd, vfOr, cfOr, xfOr, vtOt, xtOt, vtIp, xtIp,  ;
        vaFp, xaFp
 PUBLIC vpOr, xpOr, vtPo, xtPo, vuSe, vtDi, vcAr, vaRe, vfOt, vnUm, tiNg,  ;
        tdCt, taPo
 PUBLIC xfOt
 PUBLIC vpAn_11
 STORE 99 TO mkEy
 STORE 01 TO viTe, viOm, vmOn, vrEc, irEc, vtPo
 STORE 00 TO viT1, vuSe, urEc, frEc, vtIp, vaFp, vpOr, tiNg, tdCt, taPo
 STORE "BP" TO vtDo
 STORE SPACE(70) TO vdIr
 STORE SPACE(80) TO vnOm
 STORE SPACE(08) TO vfOt, vdNi
 STORE SPACE(25) TO vdCr, vdIs
 STORE SPACE(50) TO vcAr, vaRe, vdEs
 STORE SPACE(04) TO vcOd, ccOd, vcPt, xcPt
 STORE DATE() TO vfEm, vdFe, vhFe
 STORE CTOD("  /  /    ") TO vfIn, vfCe
 SET READBORDER ON
 DO p00_4240a WITH "0"
 IF mkEy=k_Esc
      DO deL_files
      RETURN
 ENDIF
 DO p1_0000a
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_4240a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4240a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE (mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_Ctrl_del) .AND. viTe<>1
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .OR. mkEy=k_F3
                = INKEY(0.01)
                SELECT trAbajadores
                SET FILTER TO f4200est<>"9"
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay datos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     SET FILTER TO
                     DO poNmsj
                     LOOP
                ENDIF
                IF mkEy=k_F3
                     SET FILTER TO (AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f4200nom)))<>0 .OR. AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f4200app)))<>0 .OR. AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f4200apm)))<>0) .AND. f1101est<>"9"
                     SET FILTER TO
                     GOTO TOP
                     DO veR_lock
                     IF BOF() .OR. EOF()
                          STORE "No hay Trabajadores que contengan la palabra o frase..."  ;
                                TO mmSj
                          STORE 99 TO mkEy
                          SET FILTER TO
                          DO poNmsj
                          LOOP
                     ENDIF
                     DO prEsiona WITH "2", "BUSCAR", vfB2, vcB2
                ELSE
                     DO prEsiona WITH "2", "CONSUL", vfB1, vcB1
                ENDIF
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO orD_0000a WITH "4200", "K", "F4200NOM", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy=k_F3
                     GOTO TOP
                ELSE
                     SET NEAR ON
                     SEEK UPPER(ALLTRIM(vnOm))
                     SET NEAR OFF
                ENDIF
                DO veR_lock
                DO q1_0000a
                SET CONFIRM ON
                ACTIVATE POPUP vtB1 REST
                SET CONFIRM OFF
                DO p1_0000a
                DO orD_0000a WITH "4200", "K", "F4200COD", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET FILTER TO
                IF mkEy=k_Enter
                     DO coL_fondo
                     STORE f4200cod TO vcOd
                     STORE f4200nca TO vcAr
                     STORE f4200nar TO vaRe
                     STORE f4200ele TO vdNi
                     STORE f4200dir TO vdIr
                     STORE f4200ndi TO vdIs
                     STORE f4200fot TO vfOt
                     STORE f4200fna TO vfNa
                     STORE f4200lna TO vlNa
                     STORE f4200sso TO vsSo
                     STORE f4200spp TO vsPp
                     STORE f4200nac TO vnAc
                     STORE ALLTRIM(f4200app) TO vaPp
                     STORE ALLTRIM(f4200apm) TO vaPm
                     STORE ALLTRIM(f4200nom) TO vnOm
                     STORE vaPp+" "+vaPm+" "+vnOm TO vnOm
                     DO noM_4240a WITH "2"
                     DO caR_4240a WITH "2"
                     DO foT_4240a
                     DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del
                = INKEY(0.01)
                DO coLbln
                STORE 1 TO viTe
                STORE SPACE(04) TO vcOd
                STORE SPACE(70) TO vdIr
                STORE SPACE(80) TO vnOm
                STORE SPACE(08) TO vfOt, vdNi
                STORE SPACE(15) TO vsSo, vsPp
                STORE SPACE(50) TO vaRe, vcAr
                STORE SPACE(25) TO vdIs, vlNa, vnAc
                STORE CTOD("  /  /    ") TO vfNa
                DO noM_4240a WITH "2"
                DO caR_4240a WITH "2"
                DO foT_4240a
                DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
                IF mkEy=k_Esc
                     EXIT
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_4240a
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=4
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. viTe<3
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right
                DO veR_4240a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=4
                               STORE 99 TO mkEy
                               DO deT_4240a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_4240a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=4
                               STORE 99 TO mkEy
                               DO deT_4240a
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               STORE 99 TO mkEy
                          CASE viTe<4
                               STORE 4 TO ciTx
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<=ciTx .AND. mkEy<>99
                                    DO veR_4240a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               IF mkEy<>99
                                    DO deT_4240a
                                    IF mkEy=k_Esc
                                         EXIT
                                    ENDIF
                                    STORE 99 TO mkEy
                               ENDIF
                               STORE 99 TO mkEy
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE 1 TO viTe
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end
                STORE 4 TO ciTx
                DO WHILE viTe<ciTx .AND. mkEy<>99
                     DO veR_4240a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Tab
                STORE 4 TO ciTx
                DO WHILE viTe<=ciTx .AND. mkEy<>99
                     DO veR_4240a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ENDIF
                ENDDO
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                IF mkEy<>99
                     DO deT_4240a
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
      IF viTe<>viT1
           DO coL_fondo
           STORE viTe TO viT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,120
           DO CASE
                CASE viTe=1
                     @mMF2,mMC2+46 Say "ESCOGER EL TRABAJADOR..."                                       Font "&mLetRom",9 Style "BQ"
                CASE viTe=2
                     @mMF2,mMC2+41 Say "LA FECHA TIENE QUE SER VÁLIDA..."                               Font "&mLetRom",9 Style "BQ"
                CASE viTe=3
                     @mMF2,mMC2+32 Say "DIGITAR LA FECHA INICIAL, DEBE SER VÁLIDA..."                   Font "&mLetRom",9 Style "BQ"
                CASE viTe=4
                     @mMF2,mMC2+33 Say "DIGITAR LA FECHA FINAL, DEBE SER VÁLIDA..."                     Font "&mLetRom",9 Style "BQ"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE viTe=01 .AND. LEN(ALLTRIM(vcOd))<>0
                DO coLsc7
                DO noM_4240a WITH "2"
                mkEy = INKEY(0, "HM")
                DO coL_fondo
                DO noM_4240a WITH "2"
           OTHERWISE
                DO CASE
                     CASE viTe=1
                          DO noM_4240a WITH "1"
                     CASE viTe=2
                          DO feM_4240a WITH "1"
                     CASE viTe=3
                          DO inI_4240a WITH "1"
                     CASE viTe=4
                          DO fiN_4240a WITH "1"
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_4240a
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcOd))=0
           STORE "Trabajador debe estar registrado..." TO mmSj
      CASE viTe=1 .AND. LEN(ALLTRIM(vnOm))=0
           STORE "Trabajador debe estar registrado..." TO mmSj
      CASE viTe=1 .AND. (LEN(ALLTRIM(ccOd))=0 .OR. vcOd<>ccOd)
           SELECT teMporal
           ZAP
           REINDEX
           SELECT exIste
           ZAP
           REINDEX
           SELECT fiJos
           SEEK vcOd
           DO veR_lock
           STORE 1 TO vrEc, irEc
           STORE 0 TO frEc, urEc, tiNg, tdCt, taPo
           DO WHILE  .NOT. EOF() .AND. f4211tra=vcOd
                STORE f4211cpt TO vcPt
                STORE f4211mon TO vmNd
                STORE f4211for TO vfOr
                STORE f4211tot TO vtOt
                SELECT coNceptos
                SEEK vcPt
                DO veR_lock
                IF EOF()
                     STORE "Concepto eliminado..." TO vdEs
                     STORE SPACE(50) TO vdEs
                     STORE SPACE(25) TO vdCr
                     STORE 0 TO vtIp, vaFp, vpOr
                ELSE
                     STORE f4210des TO vdEs
                     STORE f4210dcr TO vdCr
                     STORE f4210tip TO vtIp
                     STORE f4210afp TO vaFp
                     STORE f4210por TO vpOr
                ENDIF
                IF LEN(ALLTRIM(vfOr))<>0 .AND. AT("[", vfOr)<>0
                     STORE vfOr TO cfOr
                     DO WHILE .T.
                          IF AT("[", cfOr)=0
                               EXIT
                          ENDIF
                          STORE AT("[", cfOr) TO vnUm
                          STORE SUBSTR(cfOr, AT("[", cfOr)+1, 4) TO vcP1
                          SELECT fiJos
                          SEEK vcOd+vcP1
                          DO veR_lock
                          IF EOF()
                               STORE "0" TO vcP1
                          ELSE
                               STORE ALLTRIM(STR(f4211tot, 12, 2)) TO vcP1
                          ENDIF
                          IF vnUm=1
                               STORE vcP1+SUBSTR(cfOr, vnUm+6, 50) TO cfOr
                          ELSE
                               STORE SUBSTR(cfOr, 1, vnUm-1)+vcP1+ ;
                                     SUBSTR(cfOr, vnUm+6, 50) TO cfOr
                          ENDIF
                     ENDDO
                     STORE ALLTRIM(cfOr) TO cfOr
                     Store &cFOR*vTOT    to vTOT
                     SELECT fiJos
                     SEEK vcOd+vcPt
                     DO veR_lock
                ENDIF
                SELECT teMporal
                APPEND BLANK
                STORE vrEc TO frEc
                REPLACE ftM1cpt WITH vcPt
                REPLACE ftM1des WITH vdEs
                REPLACE ftM1dcr WITH vdCr
                REPLACE ftM1mnd WITH vmNd
                REPLACE ftM1for WITH vfOr
                REPLACE ftM1tot WITH vtOt
                REPLACE ftM1tip WITH vtIp
                REPLACE ftM1tpo WITH 1
                REPLACE ftM1afp WITH vaFp
                REPLACE ftM1por WITH vpOr
                STORE RECNO() TO frEc
                SELECT exIste
                APPEND BLANK
                REPLACE ftM2cpt WITH vcPt
                DO CASE
                     CASE vtIp=1
                          STORE tiNg+vtOt TO tiNg
                     CASE vtIp=2
                          STORE tdCt+vtOt TO tdCt
                     CASE vtIp=3
                          STORE taPo+vtOt TO taPo
                ENDCASE
                STORE vrEc+1 TO vrEc
                SELECT fiJos
                SKIP
                DO veR_lock
           ENDDO
           SELECT teMporal
           IF frEc>0
                GOTO TOP
                DO paN_4240b IN PKI4240B
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 1 TO vrEc
           ELSE
                DO coL_fondo
                @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
                DO liN_4240a IN PKI4240A WITH ifIl, ffIl+1.1
           ENDIF
           STORE ifIl TO vfIl
           STORE 1 TO viTe
           DO toT_4240a
      CASE viTe=2 .AND. AT(" ", DTOC(vfEm))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=3 .AND. AT(" ", DTOC(vdFe))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=4 .AND. AT(" ", DTOC(vhFe))<>0
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=4 .AND. MONTH(vdFe)<>MONTH(vhFe) .AND. vtPa=1
           STORE "Mes de Fecha de Inicio y de Fecha Final debe ser el mismo..."  ;
                 TO mmSj
      CASE viTe=4 .AND. YEAR(vdFe)<>YEAR(vhFe) .AND. vtPa=1
           STORE "Año de Fecha de Inicio y de Fecha Final debe ser el mismo..."  ;
                 TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_4240a
 SET READBORDER OFF
 DO prEsiona WITH "4", "BOT_MA04", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 DO p2_0000a
 DO pkI4240b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q2_0000a
 SET READBORDER ON
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "DESCAR", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF mkEy=k_Tab
      DO grA_4240a
      WAIT CLEAR
      UNLOCK ALL
      = INKEY(0.01)
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 99 TO mkEy
      STORE 01 TO viTe
 ENDIF
 DO p1_0000a
 STORE 0 TO viT1
 = INKEY(0.01)
ENDPROC
*
PROCEDURE Gra_4240a
 = INKEY(0.01)
 STORE msEr(03) TO vsEr
 SELECT nuMeracion
 SEEK vtDo+vsEr
 IF EOF()
      DO nuEvo_rg
      REPLACE f9999tdo WITH vtDo
      REPLACE f9999ser WITH vsEr
      REPLACE f9999num WITH "0000000"
      UNLOCK
 ENDIF
 SEEK vtDo+vsEr
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE f9999num TO vdOc
 STORE STRTRAN(STR(VAL(vdOc)+1, 7, 0), " ", "0") TO vdOc
 ptX2 = "BOLETA DE PAGO No.:"+vsEr+"-"+vdOc
 SELECT caBecera
 SEEK vsEr+vdOc
 DO veR_lock
 IF  .NOT. EOF()
      UNLOCK ALL
      ptX1 = "Este Documento ya está Registrado"+CHR(13)+"Cambiar Numeración"
      poPc = MESSAGEBOX(ptX1, 0048, ptX2)
      STORE SPACE(07) TO vdOc
      RETURN
 ENDIF
 ptX1 = "¿Desea Grabar este Documento?"
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      RETURN
 ENDIF
 DO grAbar WITH "1"
 WAIT WINDOW NOWAIT "Grabando Numeración..."
 SELECT nuMeracion
 REPLACE f9999num WITH vdOc
 WAIT WINDOW NOWAIT "Grabando Cabecera..."
 SELECT caBecera
 DO nuEvo_rg
 REPLACE f4240ser WITH vsEr
 REPLACE f4240bol WITH vdOc
 REPLACE f4240mon WITH vmOn
 REPLACE f4240fem WITH vfEm
 REPLACE f4240dfe WITH vdFe
 REPLACE f4240hfe WITH vhFe
 REPLACE f4240cod WITH vcOd
 REPLACE f4240nom WITH vnOm
 REPLACE f4240dni WITH vdNi
 REPLACE f4240dir WITH vdIr
 REPLACE f4240dis WITH vdIs
 REPLACE f4240car WITH vcAr
 REPLACE f4240are WITH vaRe
 REPLACE f4240fin WITH vfIn
 REPLACE f4240fce WITH vfCe
 REPLACE f4240fna WITH vfNa
 REPLACE f4240lna WITH vlNa
 REPLACE f4240sso WITH vsSo
 REPLACE f4240spp WITH vsPp
 REPLACE f4240nac WITH vnAc
 REPLACE f4240ing WITH tiNg
 REPLACE f4240dct WITH tdCt
 REPLACE f4240apo WITH taPo
 REPLACE f4240est WITH "1"
 REPLACE f4240usu WITH muSu
 REPLACE f4240maq WITH mmAq
 REPLACE f4240dat WITH DATE()
 REPLACE f4240tim WITH TIME()
 UNLOCK
 SELECT teMporal
 GOTO TOP
 STORE 00 TO vrEc
 DO WHILE  .NOT. EOF()
      IF ftM1tot=0
           SKIP
           LOOP
      ENDIF
      WAIT WINDOW NOWAIT "Grabando: "+ftM1cpt
      STORE ftM1cpt TO vcPt
      STORE ftM1des TO vdEs
      STORE ftM1dcr TO vdCr
      STORE ftM1tpo TO vtPo
      STORE ftM1tip TO vtIp
      STORE ftM1afp TO vaFp
      STORE ftM1por TO vpOr
      STORE ftM1mnd TO vmNd
      STORE ftM1for TO vfOr
      STORE ftM1tot TO vtOt
      STORE vrEc+1 TO vrEc
      SELECT deTalle
      DO nuEvo_rg
      REPLACE f4241ser WITH vsEr
      REPLACE f4241bol WITH vdOc
      REPLACE f4241ite WITH vrEc
      REPLACE f4241cpt WITH vcPt
      REPLACE f4241des WITH vdEs
      REPLACE f4241dcr WITH vdCr
      REPLACE f4241tpo WITH vtPo
      REPLACE f4241tip WITH vtIp
      REPLACE f4241afp WITH vaFp
      REPLACE f4241por WITH vpOr
      REPLACE f4241mnd WITH vmNd
      REPLACE f4241for WITH vfOr
      REPLACE f4241tot WITH vtOt
      UNLOCK
      SELECT teMporal
      SKIP
 ENDDO
 UNLOCK ALL
 SELECT teMporal
 ZAP
 SELECT exIste
 ZAP
 REINDEX
 FLUSH
 = INKEY(0.01)
 WAIT CLEAR
 STORE ifIl TO vfIl
 STORE DATE() TO vfEm, vdFe, vhFe
 STORE SPACE(04) TO vcOd
 STORE SPACE(70) TO vdIr
 STORE SPACE(80) TO vnOm
 STORE SPACE(08) TO vfOt, vdNi
 STORE SPACE(15) TO vsSo, vsPp
 STORE SPACE(50) TO vaRe, vcAr
 STORE SPACE(25) TO vdIs, vlNa, vnAc
 STORE CTOD("  /  /    ") TO vfNa
 STORE 99 TO mkEy
 STORE 01 TO irEc, vrEc, viOm
 STORE 00 TO frEc, urEc, crEc, cfIl
 DO coL_fondo
 DO noM_4240a WITH "2"
 DO caR_4240a WITH "2"
 DO coLbln
 DO feM_4240a WITH "2"
 DO inI_4240a WITH "2"
 DO fiN_4240a WITH "2"
 DO toT_4240a
 DO foT_4240a
 DO moN_4240a
 READ TIMEOUT 0.01
 DO coL_fondo
 @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
 DO liN_4240a WITH ifIl, ffIl+1.1
 = INKEY(0.01)
 RELEASE ptX1, ptX2, poPc, pnUm
ENDPROC
*
PROCEDURE Lin_4240a
 PARAMETER piNi, pfIn
 DO coLsc3
 @ piNi, icLn+03.1 TO pfIn, icLn+03.1
 @ piNi, icLn+53.8 TO pfIn, icLn+53.8
 DO CASE
      CASE mrEs>="2"
           @ piNi, icLn+84.4 TO pfIn, icLn+84.4
           @ piNi, icLn+97.0 TO pfIn, icLn+97.0
 ENDCASE
 @ piNi, vcLn-00.4 TO pfIn, vcLn-00.4
 @ piNi, vcLn+14.2 TO pfIn, vcLn+14.2
 @ piNi, vcLn+28.8 TO pfIn, vcLn+28.8
 @ piNi, ucLn-04.4 TO pfIn, ucLn-04.4
ENDPROC
*
PROCEDURE P00_4240a
 PARAMETER ptPo
 DO ptA_0000a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO viT1
 STORE irEc TO vrEc
 STORE 22.5 TO muFi
 STORE 124 TO muCo, vuCo
 STORE (mwCo-muCo)/2 TO mmC2
 IF mrEs>"1"
      STORE vuCo+32 TO vuCo
 ENDIF
 DO CASE
      CASE mrEs="2"
           STORE muCo+32 TO muCo
           STORE muFi+6 TO muFi
      CASE mrEs="3"
           STORE muCo+76 TO muCo
           STORE muFi+18 TO muFi
      CASE mrEs="4"
           STORE muCo+76 TO muCo
           STORE muFi+08 TO muFi
      CASE mrEs>="5"
           STORE muCo+76 TO muCo
           STORE muFi+20 TO muFi
 ENDCASE
 STORE (mwFi-muFi)/2 TO mfI0
 STORE mfI0-0.4 TO mfI0
 STORE mfI0+muFi+1 TO mmF2
 STORE (mwCo-muCo)/2 TO mcO0, icLn
 STORE icLn+vuCo TO ucLn
 STORE INT(mfI0+10.7) TO ifIl, ufIl, vfIl
 STORE INT(muFi)-1 TO ffIl
 STORE mfI0+01.7 TO ifFr, ufFr, vfFr
 STORE INT(muFi)-1 TO ffFr
 STORE mfI0+0.30 TO vfB1, vfB2, vfB3
 DO CASE
      CASE mrEs="1"
           STORE mcO0+79.4 TO vcB1
           STORE icLn+76.2 TO vcLn
      CASE mrEs="2"
           STORE mcO0+115.2 TO vcB1
           STORE icLn+108.2 TO vcLn
      CASE mrEs>="3"
           STORE mcO0+139.2 TO vcB1
           STORE icLn+108.2 TO vcLn
 ENDCASE
 STORE vcB1+4 TO vcB2
 STORE vcB2+4 TO vcB3
 STORE mcO0+muCo-25.5 TO vcO0
 Define Popup vTB1 from mFI0+1.7,mCO0+.1 to fFIL+5,vCO0-1 Font "&mLetAri",12 Style "NQ" Prompt Field F4200COD+": "+AllTrim(F4200APP)+" "+AllTrim(F4200APM)+" "+AllTrim(F4200NOM) Scroll Color Scheme 10 Footer "CONSULTA DE TRABAJADORES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 DO tiT_0000a WITH "Boletas de Pago x Trabajador nuevas"
 DO coL_boton
 @ mmF1, 00 CLEAR TO mmF1+3.1, mwCo
 DO coL_fondo
 DO cuAdro WITH mfI0, mcO0, mfI0+7.2, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH ifIl-1.8, icLn, ffIl+5, ucLn
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO cuAdro WITH mmF2, mcO0, mmF2+1, mcO0+muCo
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coL_fondo
 @ mfI0+0.2, vcO0-00.3 TO mfI0+3.4, vcO0+25.5 PATTERN 1 COLOR SCHEME 7
 @mFI0+0.2,mCO0+01.0 Say "Trabajador" Font "&mLetRom",13 Style "BT"
 @mFI0+1.9,mCO0+09.0 Say "Cargo"      Font "&mLetRom",12 Style "BT" Color 1/1
 @mFI0+3.4,mCO0+09.0 Say "Area"       Font "&mLetRom",12 Style "BT" Color 1/1
 @mFI0+1.0,vCO0+02.0 Say "Moneda"     Font "&mLetRom",12 Style "BT" Color 1/1
 @mFI0+5.5,mCO0+01.0 Say "Emisión"    Font "&mLetRom",12 Style "BT"
 @mFI0+5.5,mCO0+32.0 Say "Desde"      Font "&mLetRom",12 Style "BT"
 @mFI0+5.5,mCO0+60.5 Say "Hasta"      Font "&mLetRom",12 Style "BT"
 @ ifIl-1.8, icLn TO ifIl-0.2, ucLn+00.3 PATTERN 1 COLOR SCHEME 7
 @ ffIl+1.2, icLn-00.4 TO ffIl+1.2, ucLn+00.3
 @ ffIl+1.2, vcLn-00.4 TO ffIl+2.8, ucLn-04.2 PATTERN 1 COLOR SCHEME 7
 @ ffIl+2.9, vcLn+12.1 TO ffIl+4.7, vcLn+30.6 PATTERN 1 COLOR SCHEME 7
 DO liN_4240a WITH ifIl-1.8, ffIl+1.2
 @ ffIl+1.2, vcLn+14.2 TO ffIl+2.8, vcLn+28.9
 @iFIL-1.7,iCLN+00.5 Say "It"            Font "&mLetRom",12 Style "BT"
 @iFIL-1.7,iCLN+03.8 Say "Concepto"      Font "&mLetRom",12 Style "BT"
 @iFIL-1.7,vCLN+01.1 Say "Ingresos"      Font "&mLetRom",12 Style "BT"
 @iFIL-1.7,vCLN+16.7 Say "Dctos."        Font "&mLetRom",12 Style "BT"
 @iFIL-1.7,vCLN+30.3 Say "Aportac."      Font "&mLetRom",12 Style "BT"
 @fFIL+3.1,vCLN-11.0 Say "Neto recibido" Font "&mLetRom",14 Style "BT" Color 1
 DO CASE
      CASE mrEs="1"
           @iFIL-1.7,iCLN+54.3 Say "Descripc.Abrev."    Font "&mLetRom",12 Style "BT"
      CASE mrEs>="2"
           @iFIL-1.7,iCLN+54.3 Say "Descripc.Abreviada" Font "&mLetRom",12 Style "BT"
           @iFIL-1.7,iCLN+87.8 Say "Tipo"               Font "&mLetRom",12 Style "BT"
           @iFIL-1.7,iCLN+98.0 Say "% Fijo"             Font "&mLetRom",12 Style "BT"
 ENDCASE
 DO coLbln
 DO noM_4240a WITH "1"
 DO caR_4240a WITH "1"
 DO feM_4240a WITH "1"
 DO inI_4240a WITH "1"
 DO fiN_4240a WITH "1"
 DO moN_4240a
 READ TIMEOUT 0.01
 DO toT_4240a
 DO foT_4240a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfB2, vcB2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "BOT_MA03", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vfIl TO cfIl
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      IF irEc<=frEc
           GOTO irEc
           DO paN_4240b IN PKI4240B
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           GOTO BOTTOM
           DO coL_fondo
           @ ifIl, icLn CLEAR TO ffIl+1.1, ucLn
           DO liN_4240a IN PKI4240A WITH ifIl, ffIl+1.15
           STORE ifIl TO cfIl, vfIl
           STORE RECNO()+1 TO vrEc, irEc
      ENDIF
 ENDIF
 STORE cfIl TO vfIl
ENDPROC
*
PROCEDURE Fot_4240a
 IF mrEs<"3"
      RETURN
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"DIB\"+ALLTRIM(UPPER(vfOt))+".BMP" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"DIB\"+ALLTRIM(UPPER(vfOt))+".BMP" TO mdBf
 ENDIF
 If File("&mDBF")
      @iFIL,uCLN+10 Say "&mDBF" BitMap Style "B" Size 15,33 Stretch
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      DO coLbln
      @ ifIl+0, ucLn+10 TO ifIl+15, ucLn+43 PATTERN 1
      @iFIL+4,uCLN+23 Say "SIN"  Font "&mLetRom",14 Style "BT"
      @iFIL+7,uCLN+21 Say "FOTO" Font "&mLetRom",14 Style "BT"
 ENDIF
ENDPROC
*
PROCEDURE Nom_4240a
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1" .AND. mrEs="1"
           @mFI0+0.25,mCO0+19 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,50,80
      CASE ptIp="1" .AND. mrEs="2"
           @mFI0+0.25,mCO0+19 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,80,80
      CASE ptIp="1"
           @mFI0+0.25,mCO0+19 Edit vNOM Font "&mLetRom",11 Style "NQ" Size 1,100,80
      CASE ptIp="2" .AND. mrEs="1"
           @mFI0+0.25,mCO0+19 Say  vNOM Font "&mLetRom",11 Style "NQ" Size 1,50 Pict "@S52"
      CASE ptIp="2" .AND. mrEs="2"
           @mFI0+0.25,mCO0+19 Say  vNOM Font "&mLetRom",11 Style "NQ" Size 1,80 Pict "@S82"
      CASE ptIp="2"
           @mFI0+0.25,mCO0+19 Say  vNOM Font "&mLetRom",11 Style "NQ" Size 1,100 Pict "@S82"
 ENDCASE
ENDPROC
*
PROCEDURE Car_4240a
 PARAMETER ptIp
 DO coL_fondo
 DO CASE
      CASE ptIp="1"
           @mFI0+1.9,mCO0+19 Edit vCAR Font "&mLetRom",11 Style "NQ" Size 1,50,50
           @mFI0+3.6,mCO0+19 Edit vARE Font "&mLetRom",11 Style "NQ" Size 1,50,50
      CASE ptIp="2"
           @mFI0+1.9,mCO0+19 Say  vCAR Font "&mLetRom",11 Style "NQ" Size 1,50 Pict "@S50"
           @mFI0+3.6,mCO0+19 Say  vARE Font "&mLetRom",11 Style "NQ" Size 1,50 Pict "@S50"
 ENDCASE
ENDPROC
*
PROCEDURE Mon_4240a
 @mFI0+0.4,vCO0+14 Get vMON Font "&mLetRom",12 Style "BQ" Function "*RVT S/.;US$" Default vMON
ENDPROC
*
PROCEDURE Fem_4240a
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1"
           @mFI0+5.5,mCO0+13 Get vFEM Font "&mLetRom",12 Style "NQ" Size 1,12.1 Color ,&mColBlN
      CASE ptIp="2"
           @mFI0+5.5,mCO0+13 Say vFEM Font "&mLetRom",12 Style "NQ" Size 1,12.1
 ENDCASE
ENDPROC
*
PROCEDURE Ini_4240a
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1"
           @mFI0+5.5,mCO0+42 Get vDFE Font "&mLetRom",12 Style "NQ" Size 1,12.1 Color ,&mColBlN
      CASE ptIp="2"
           @mFI0+5.5,mCO0+42 Say vDFE Font "&mLetRom",12 Style "NQ" Size 1,12.1
 ENDCASE
ENDPROC
*
PROCEDURE Fin_4240a
 PARAMETER ptIp
 DO CASE
      CASE ptIp="1"
           @mFI0+5.5,mCO0+70 Get vHFE Font "&mLetRom",12 Style "NQ" Size 1,12.1 Color ,&mColBlN
      CASE ptIp="2"
           @mFI0+5.5,mCO0+70 Say vHFE Font "&mLetRom",12 Style "NQ" Size 1,12.1
 ENDCASE
ENDPROC
*
PROCEDURE Tot_4240a
 DO coLsc7
 @fFIL+1.4,vCLN+000.0 Say tING      Font "&mLetAri",9  Style "BQ" Size 1,11.6 Pict "999,999.99"
 @fFIL+1.4,vCLN+014.6 Say tDCT      Font "&mLetAri",9  Style "BQ" Size 1,11.6 Pict "999,999.99"
 @fFIL+1.4,vCLN+029.2 Say tAPO      Font "&mLetAri",9  Style "BQ" Size 1,11.6 Pict "999,999.99"
 @fFIL+3.1,vCLN+012.6 Say tING-tDCT Font "&mLetRom",12 Style "BQ" Size 1,12.5 Pict "9999,999.99"
ENDPROC
*
PROCEDURE Clp_4240a
 = INKEY(0.01)
 STORE 0 TO ciTx
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1-0.078 .AND. mfIl<=vfB1+1.207 .AND. mcCc>=vcB1-0.30  ;
           .AND. mcCc<=vcB1+3.9
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2-0.078 .AND. mfIl<=vfB2+1.207 .AND. mcCc>=vcB2-0.30  ;
           .AND. mcCc<=vcB2+3.9
           STORE 01 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB3-0.078 .AND. mfIl<=vfB3+1.207 .AND. mcCc>=vcB3-0.30  ;
           .AND. mcCc<=vcB3+3.9
           STORE 01 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mfI0+0.435 .AND. mfIl<=mfI0+1.792 .AND. mcCc>=vcO0+14.20  ;
           .AND. mcCc<=vcO0+23.3 .AND. vmOn<>1
           STORE 1 TO vmOn
           DO moN_4240a
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+1.792 .AND. mfIl<=mfI0+3.149 .AND. mcCc>=vcO0+14.20  ;
           .AND. mcCc<=vcO0+23.3 .AND. vmOn<>2
           STORE 2 TO vmOn
           DO moN_4240a
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.149 .AND. mfIl<=mfI0+1.507 .AND. mcCc>=mcO0+0.200  ;
           .AND. mcCc<=vcB1-0.1 .AND. viTe<>1
           STORE 1 TO viTe
      CASE mfIl>=mfI0+5.435 .AND. mfIl<=mfI0+7.007 .AND. mcCc>=mcO0+0.2  ;
           .AND. mcCc<=mcO0+28.2 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+5.435 .AND. mfIl<=mfI0+7.007 .AND. mcCc>=mcO0+31.6  ;
           .AND. mcCc<=mcO0+57.2 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+5.435 .AND. mfIl<=mfI0+7.007 .AND. mcCc>=mcO0+60.4  ;
           .AND. mcCc<=mcO0+85.20 .AND. viTe<>4
           STORE 4 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_4240a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Hl1_4240a
 PRIVATE pfIl
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 STORE 0.2 TO pfIl
 @ pfIl+0, 1 SAY  ;
   "En este programa se pueden generar Boletas de Pago nuevas. Aquí se"
 @ pfIl+1, 1 SAY "le asigna un número automático."
 STORE pfIl+3 TO pfIl
 @ pfIl, 1 SAY "Las teclas para movilizarse son:"
 STORE pfIl+2 TO pfIl
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+2, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "ESC" STYLE "BT"
 @ pfIl+1, 04 SAY "F10" STYLE "BT"
 @ pfIl+2, 04 SAY "F1" STYLE "BT"
 @ pfIl+1, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+2, 24 SAY "Ayuda del Programa"
 IF viTe=1
      @ pfIl, 24 SAY "Regresar al Menú Principal"
 ELSE
      @ pfIl, 24 SAY "Regresar al primer campo"
 ENDIF
 STORE pfIl+3 TO pfIl
 IF viTe=1
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "F2" STYLE "BT"
      @ pfIl+1, 04 SAY "F3" STYLE "BT"
      @ pfIl+0, 24 SAY "Consulta alfabética de Trabajadores registrados"
      @ pfIl+1, 24 SAY "Buscar palabra o frase y mostrarla en Consulta"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 22 SAY ":" STYLE "BT"
 @ pfIl+1, 22 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 04 SAY "CTRL ->" STYLE "BT"
 @ pfIl+0, 24 SAY "Ir al siguiente campo, llegando al final se graba"
 @ pfIl+1, 24 SAY "Ir al campo derecho, llegando al final se graba"
 STORE pfIl+2 TO pfIl
 IF viTe>2
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "<- CTRL" STYLE "BT"
      @ pfIl, 24 SAY "Ir al campo izquierdo"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl, 24 SAY "Ir al campo inferior, llegando al final se graba"
 STORE pfIl+1 TO pfIl
 IF viTe>1
      @ pfIl+0, 22 SAY ":" STYLE "BT"
      @ pfIl+1, 22 SAY ":" STYLE "BT"
      @ pfIl+2, 22 SAY ":" STYLE "BT"
      @ pfIl+0, 04 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl+1, 04 SAY "CTRL HOME" STYLE "BT"
      @ pfIl+2, 04 SAY "CTRL END" STYLE "BT"
      @ pfIl+0, 24 SAY "Ir al campo superior"
      @ pfIl+1, 24 SAY "Ir al primer campo"
      @ pfIl+2, 24 SAY "Ir al último campo"
      STORE pfIl+3 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 22 SAY ":" STYLE "BT"
      @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 24 SAY "Des-seleccionar Trabajador"
      STORE pfIl+1 TO pfIl
 ENDIF
 @ pfIl, 22 SAY ":" STYLE "BT"
 @ pfIl, 04 SAY "TAB" STYLE "BT"
 @ pfIl, 24 SAY "Pasar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO q2_0000a
 DO deL_file1
 RELEASE viTe, xiTe, viT1, ciTx, viOm, vcO0, vuCo, icLn, ucLn, vcLn, vfB1,  ;
         vfB2, vfB3
 RELEASE vcB1, vcB2, vcB3, vsEr, vdOc, vsWw, vrEc, irEc, frEc, urEc, crEc,  ;
         vfIl, ifIl
 RELEASE ufIl, ffIl, cfIl, vfFr, ifFr, ufFr, ffFr, cfFr, vtB1, vcOd, ccOd,  ;
         vaPp, vaPm
 RELEASE vnOm, vdNi, vdIr, vdIs, vfIn, vfCe, vfNa, vlNa, vsSo, vsPp, vnAc,  ;
         vfEm, vdFe
 RELEASE vhFe, vmOn, vcPt, xcPt, icPt, ucPt, vcP1, vdCp, xdCp, idCp, udCp,  ;
         vdEs, xdEs
 RELEASE vdCr, xdCr, vmNd, xmNd, vfOr, cfOr, xfOr, vtOt, xtOt, vtIp, xtIp,  ;
         vaFp, xaFp
 RELEASE vpOr, xpOr, vtPo, xtPo, vuSe, vtDi, vcAr, vaRe, vfOt, vnUm, tiNg,  ;
         tdCt, taPo
 RELEASE xfOt
 RELEASE vpAn_11
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
 DO deL_file2 WITH "1", "N"
 DO deL_file2 WITH "2", "S"
 RELEASE ntM1, ntM2
ENDPROC
*
