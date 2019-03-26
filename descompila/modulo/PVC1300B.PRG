 = INKEY(0.01)
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
      CASE vsW1=2
           SELECT teMporal_doc
 ENDCASE
 IF vsW0<>csW0
      STORE vsW0 TO csW0
      DO orD_1300b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE SPACE(07) TO idOc
 ENDIF
 IF LEN(ALLTRIM(idOc))=0 .OR. (vsW0=1 .AND. (itDo+isEr+idOc+"*">vtDo+vsEr+ ;
    vdOc+"*" .OR. utDo+usEr+udOc+"*"<vtDo+vsEr+vdOc+"*")) .OR. (vsW0=2  ;
    .AND. (UPPER(inOm)+"*">UPPER(vnOm)+"*" .OR. UPPER(unOm)+"*"< ;
    UPPER(vnOm)+"*")) .OR. (vsW0=3 .AND. (ifEm>vfEm .OR. ufEm<vfEm)) .OR.  ;
    (vsW0=4 .AND. (UPPER(inTt)+"*">UPPER(vnTt)+"*" .OR. UPPER(unTt)+"*"< ;
    UPPER(vnTt)+"*"))
      GOTO TOP
      SET NEAR ON
      DO CASE
           CASE vsW0=1
                SEEK vtDo+vsEr+vdOc
           CASE vsW0=2
                SEEK ALLTRIM(UPPER(vnOm))
           CASE vsW0=3
                SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                     SUBSTR(DTOC(vfEm), 1, 2)
           CASE vsW0=4
                SEEK ALLTRIM(UPPER(vnTt))
      ENDCASE
      SET NEAR OFF
      IF EOF()
           GOTO BOTTOM
      ENDIF
      DO paN_1300b
      DO muE_1300b WITH "i", "v"
      STORE ifIl TO vfIl
 ELSE
      DO seE_1300b WITH "v"
      IF EOF()
           GOTO TOP
           SET NEAR ON
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK ALLTRIM(UPPER(vnOm))
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)
                CASE vsW0=4
                     SEEK ALLTRIM(UPPER(vnTt))
           ENDCASE
           SET NEAR OFF
           IF EOF()
                GOTO BOTTOM
           ENDIF
           DO muE_1300b WITH "F", "v"
      ENDIF
      DO seE_1300b WITH "i"
      STORE 00 TO cfIl
      STORE ifIl TO vfIl
      DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
           IF f1300tdo+f1300ser+f1300doc=vtDo+vsEr+vdOc
                STORE vfIl TO cfIl
                EXIT
           ENDIF
           STORE vfIl+1 TO vfIl
           SKIP
      ENDDO
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_1300b WITH "v", "i"
      ENDIF
 ENDIF
 DO seE_1300b WITH "v"
 IF EOF()
      SET NEAR ON
      DO seE_1300b WITH "i"
      SET NEAR OFF
      DO paN_1300b
      DO muE_1300b WITH "i", "v"
      DO seE_1300b WITH "v"
      STORE ifIl TO vfIl
 ENDIF
 DO diS_1300b WITH "R"
 STORE vsW1 TO csW1
 STORE 99 TO mkEy
 DO WHILE .T.
      mkEy = INKEY(0, "HM")
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_1300b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_1300b WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                DO diS_1300b WITH "N"
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_F1
                DO hl1_1300b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Right
                DO CASE
                     CASE vsW6=3
                          STORE 1 TO vsW6
                     OTHERWISE
                          STORE vsW6+1 TO vsW6
                ENDCASE
                DO p02_1300a
                DO caM_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Left
                DO CASE
                     CASE vsW6=1
                          STORE 3 TO vsW6
                     OTHERWISE
                          STORE vsW6-1 TO vsW6
                ENDCASE
                DO p02_1300a
                DO caM_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F6
                DO prEsiona WITH "1", "OPCION", mfI0-3.3, mcO0-0.6
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO coLbln
                IF vsW0=4
                     STORE 1 TO vsW0
                ELSE
                     STORE vsW0+1 TO vsW0
                ENDIF
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+0.8 Say "Número:"           Font "&mLetRom",13 Style "BT"
                     CASE vsW0=2
                          @iFIL-4,mCO0+0.8 Say "Cliente:"          Font "&mLetRom",13 Style "BT"
                     CASE vsW0=3
                          @iFIL-4,mCO0+0.8 Say "Fecha de Emisión:" Font "&mLetRom",13 Style "BT"
                     CASE vsW0=4
                          @iFIL-4,mCO0+0.8 Say "Titular:"          Font "&mLetRom",13 Style "BT"
                ENDCASE
                SET READBORDER ON
                DO CASE
                     CASE vsW0=1
                          @iFIL-4,mCO0+16.0 Get vTDO Font "&mLetRom",11 Style "NQ" Size 1,3.2 Pict "!!"      Color ,&mColBlN
                          @iFIL-4,mCO0+21.5 Get vSER Font "&mLetRom",11 Style "NQ" Size 1,3.5 Pict "999"     Color ,&mColBlN
                          @iFIL-4,mCO0+27.0 Get vDOC Font "&mLetRom",11 Style "NQ" Size 1,9   Pict "9999999" Color ,&mColBlN
                     CASE vsW0=2
                          @iFIL-4,mCO0+14.0 Get vNOM Font "&mLetRom",11 Style "NQ" Size 1,32 Pict "@S32"    Color ,&mColBlN
                     CASE vsW0=3
                          @iFIL-4,mCO0+29.0 Get vFEM Font "&mLetRom",11 Style "NQ" Size 1,10.5              Color ,&mColBlN
                     CASE vsW0=4
                          @iFIL-4,mCO0+16.0 Get vNTT Font "&mLetRom",11 Style "NQ" Size 1,30 Pict "@S30"    Color ,&mColBlN
                ENDCASE
                READ TIMEOUT 0.01
                SET READBORDER OFF
                DO caM_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F7 .AND. wtPo="6" .AND. (f1300tdo="CT" .OR. vtDo="PC")
                STORE "No se puede marcar un Documento que no sea Factura/Boleta/NP..."  ;
                      TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="6" .AND. f1300est$"89"
                STORE "No se puede marcar un Documento ANULADO..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="6" .AND. f1300cmm="P"
                STORE "No se puede marcar un Documento en Proceso..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="6" .AND. f1300cmm="T"
                STORE "No se puede marcar un Documento Terminado..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="6" .AND. f1300cmm=" "
                STORE "No se puede marcar un Documento NO Aplazable..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="6"
                DO CASE
                     CASE vsW1=1
                          SELECT caB_fact
                     CASE vsW1=2
                          SELECT teMporal_doc
                ENDCASE
                STORE f1300tdo TO xtDo
                STORE f1300ser TO xsEr
                STORE f1300doc TO xdOc
                STORE SUBSTR(f1300nom, 1, 20) TO xnOm
                SELECT tmP_cargos
                SET ORDER TO FTM4DOC
                GOTO TOP
                SEEK xtDo+xsEr+xdOc
                IF  .NOT. EOF()
                     SET ORDER TO
                     DELETE FOR ftM4tdo+ftM4ser+ftM4doc=xtDo+xsEr+xdOc
                     PACK
                     REINDEX
                ELSE
                     SELECT itE_fact
                     SEEK xtDo+xsEr+xdOc
                     IF EOF()
                          STORE "No hay cortes en este documento..." TO mmSj
                          DO poNmsj
                          = INKEY(0.2)
                     ELSE
                          SELECT deT_fact
                          SET FILTER TO
                          GOTO TOP
                          SEEK xtDo+xsEr+xdOc
                          DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+ ;
                             f1301doc=xtDo+xsEr+xdOc
                               IF f1301esp=0
                                    SKIP
                                    LOOP
                               ENDIF
                               STORE f1301cod TO vcOd
                               SELECT prOductos
                               SET FILTER TO
                               SEEK ALLTRIM(vcOd)+"*"
                               IF LEN(ALLTRIM(f2111tam))=0
                                    SELECT deT_fact
                                    SKIP
                                    LOOP
                               ENDIF
                               SET FILTER TO ALLTRIM(f2111bas)+"*"=ALLTRIM(vcOd)+"*" .AND. f2111sto>0 .AND. ALLTRIM(f2111cod)+"*"<>ALLTRIM(vcOd)+"*"
                               GOTO TOP
                               IF BOF()
                                    STORE "Planchas no tienen Stock..." TO mmSj
                                    DO poNmsj
                                    = INKEY(0.2)
                                    SET FILTER TO
                                    SELECT deT_fact
                                    SKIP
                                    LOOP
                               ENDIF
                               SET FILTER TO
                               STORE f2111cod TO xbAs
                               STORE f2111esp TO xeSp
                               STORE f2111tam TO xtAm
                               STORE SUBSTR(f2111des, 1, 30) TO xdEs
                               SELECT itE_fact
                               SEEK xtDo+xsEr+xdOc+ALLTRIM(vcOd)+"*"
                               IF  .NOT. EOF()
                                    SELECT tmP_cargos
                                    APPEND BLANK
                                    REPLACE ftM4tdo WITH xtDo
                                    REPLACE ftM4ser WITH xsEr
                                    REPLACE ftM4doc WITH xdOc
                                    REPLACE ftM4nom WITH xnOm
                                    REPLACE ftM4cod WITH vcOd
                                    REPLACE ftM4des WITH xdEs
                                    REPLACE ftM4esp WITH xeSp
                                    REPLACE ftM4tam WITH xtAm
                                    REPLACE ftM4pla WITH xbAs
                               ENDIF
                               SELECT deT_fact
                               SKIP
                          ENDDO
                     ENDIF
                ENDIF
                = INKEY(0.01)
                STORE 01 TO vsW3
                STORE 99 TO mkEy
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_1300b WITH "R"
                STORE 99 TO mkEy
           CASE mkEy=k_Tab .AND. wtPo="6"
                SELECT tmP_cargos
                GOTO TOP
                IF  .NOT. EOF()
                     STORE "No se han marcado documentos con F7..." TO mmSj
                     DO poNmsj
                     STORE 99 TO mkEy
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_fact
                          CASE vsW1=2
                               SELECT teMporal_doc
                     ENDCASE
                     LOOP
                ENDIF
                PRIVATE pfRa, pnOm
                SELECT caB_fact
                DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT tmP_cargos
                SET ORDER TO FTM4COD
                GOTO TOP
                STORE "*" TO vcOd
                STORE "" TO xdEs
                DO WHILE  .NOT. EOF()
                     IF ALLTRIM(ftM4cod)+"*"<>ALLTRIM(vcOd)+"*"
                          IF vcOd<>"*"
                               STORE "" TO pnOm
                               DO WHILE .T.
                                    IF AT(" ", xdEs)=0
                                         STORE pnOm+ALLTRIM(xdEs)+".IMP"  ;
                                          TO pnOm
                                         EXIT
                                    ELSE
                                         STORE pnOm+SUBSTR(xdEs, 1, AT( ;
                                          " ", xdEs)-1)+"_" TO pnOm
                                         STORE SUBSTR(xdEs, AT(" ", xdEs)+ ;
                                          1, 100) TO xdEs
                                    ENDIF
                               ENDDO
                               SELECT tmP_plc
                               GOTO TOP
                               STORE "CORTES\"+pnOm TO pnOm
                               Copy to &pNOM SDF
                          ENDIF
                          SELECT tmP_cargos
                          STORE ftM4cod TO vcOd
                          STORE ftM4pla TO xbAs
                          STORE ftM4esp TO xeSp
                          STORE ftM4tam TO xtAm
                          STORE 0 TO viTe
                          STORE ALLTRIM(STR(xeSp, 5, 2))+" MM "+ ;
                                ALLTRIM(xbAs)+" "+SUBSTR(xtAm, 1, 8) TO vfAm
                          STORE SUBSTR(ftM4des, 1, 40) TO xdEs
                          SELECT tmP_plc
                          ZAP
                          APPEND BLANK
                          REPLACE frAse WITH "[PIECES]"
                     ENDIF
                     SELECT tmP_cargos
                     STORE ftM4tdo TO xtDo
                     STORE ftM4ser TO xsEr
                     STORE ftM4doc TO xdOc
                     STORE ftM4nom TO xnOm
                     SELECT caB_fact
                     SEEK xtDo+xsEr+xdOc
                     IF  .NOT. EOF()
                          IF  .NOT. RLOCK()
                               DO reG_lock WITH xtDo+xsEr+xdOc
                               IF mkEy=k_Esc
                                    RETURN
                               ENDIF
                          ELSE
                               RLOCK()
                          ENDIF
                          REPLACE f1300cmm WITH "P"
                          UNLOCK
                     ENDIF
                     SELECT itE_fact
                     SEEK xtDo+xsEr+xdOc+ALLTRIM(vcOd)+"*"
                     DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+ ;
                        f1302doc+ALLTRIM(f1302cod)+"*"=xtDo+xsEr+xdOc+ ;
                        ALLTRIM(vcOd)+"*"
                          IF f1302opc="S" .OR. f1302mla=0 .OR. f1302man=0
                               SKIP
                               LOOP
                          ENDIF
                          STORE f1302mla*1000 TO xmLa
                          STORE f1302man*1000 TO xmAn
                          STORE f1302ctd TO xcTd
                          STORE f1302cm1 TO xcM1
                          STORE f1302cm2 TO xcM2
                          STORE viTe+1 TO viTe
                          STORE "" TO pfRa
                          DO CASE
                               CASE viTe<10
                                    STORE "N"+STR(viTe, 1, 0)+"=;" TO pfRa
                               CASE viTe<100
                                    STORE "N"+STR(viTe, 2, 0)+"=;" TO pfRa
                               CASE viTe<1000
                                    STORE "N"+STR(viTe, 3, 0)+"=;" TO pfRa
                               CASE viTe<10000
                                    STORE "N"+STR(viTe, 4, 0)+"=;" TO pfRa
                          ENDCASE
                          DO CASE
                               CASE xcTd<10
                                    STORE pfRa+STR(xcTd, 1, 0)+";" TO pfRa
                               CASE xcTd<100
                                    STORE pfRa+STR(xcTd, 2, 0)+";" TO pfRa
                               CASE xcTd<1000
                                    STORE pfRa+STR(xcTd, 3, 0)+";" TO pfRa
                               CASE xcTd<10000
                                    STORE pfRa+STR(xcTd, 4, 0)+";" TO pfRa
                               CASE xcTd<100000
                                    STORE pfRa+STR(xcTd, 5, 0)+";" TO pfRa
                          ENDCASE
                          STORE pfRa+"B="+ALLTRIM(STR(xmLa, 4, 0))+";" TO pfRa
                          STORE pfRa+"H="+ALLTRIM(STR(xmAn, 4, 0))+";" TO pfRa
                          IF LEN(ALLTRIM(xcM2))=0
                               STORE pfRa+"CL="+SUBSTR(xnOm, 1, 20)+";" TO pfRa
                          ELSE
                               STORE pfRa+"CL="+SUBSTR(xcM2, 1, 3)+"__"+ ;
                                     SUBSTR(xnOm, 1, 20)+";" TO pfRa
                          ENDIF
                          STORE pfRa+"ORD="+xtDo+":"+xsEr+"-"+xdOc+";" TO pfRa
                          STORE pfRa+"FAM="+vfAm TO pfRa
                          DO CASE
                               CASE LEN(ALLTRIM(xcM2))=0
                                    STORE pfRa+";"+"MOL=0-0-0-0" TO pfRa
                               CASE f1302ca1+f1302ca2+f1302ca3+f1302ca4=0
                                    STORE pfRa+";"+"MOL=0-0-0-0" TO pfRa
                               OTHERWISE
                                    STORE pfRa+";"+"MOL=" TO pfRa
                                    IF f1302ca1=0
                                         STORE pfRa+"0-" TO pfRa
                                    ELSE
                                         DO CASE
                                              CASE f1302por<10
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 1, 0)+ ;
                                                    "-" TO pfRa
                                              OTHERWISE
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 2, 0)+ ;
                                                    "-" TO pfRa
                                         ENDCASE
                                    ENDIF
                                    IF f1302ca2=0
                                         STORE pfRa+"0-" TO pfRa
                                    ELSE
                                         DO CASE
                                              CASE f1302por<10
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 1, 0)+ ;
                                                    "-" TO pfRa
                                              OTHERWISE
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 2, 0)+ ;
                                                    "-" TO pfRa
                                         ENDCASE
                                    ENDIF
                                    IF f1302ca3=0
                                         STORE pfRa+"0-" TO pfRa
                                    ELSE
                                         DO CASE
                                              CASE f1302por<10
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 1, 0)+ ;
                                                    "-" TO pfRa
                                              OTHERWISE
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 2, 0)+ ;
                                                    "-" TO pfRa
                                         ENDCASE
                                    ENDIF
                                    IF f1302ca4=0
                                         STORE pfRa+"0" TO pfRa
                                    ELSE
                                         DO CASE
                                              CASE f1302por<10
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 1, 0) TO pfRa
                                              OTHERWISE
                                                   STORE pfRa+ ;
                                                    STR(f1302por, 2, 0) TO pfRa
                                         ENDCASE
                                    ENDIF
                          ENDCASE
                          STORE pfRa+";"+"DES="+xdEs TO pfRa
                          SELECT tmP_plc
                          APPEND BLANK
                          REPLACE frAse WITH pfRa
                          SELECT itE_fact
                          SKIP
                     ENDDO
                     SELECT tmP_cargos
                     SKIP
                ENDDO
                STORE "" TO pnOm
                STORE ALLTRIM(xdEs) TO xdEs
                DO WHILE .T.
                     IF AT(" ", xdEs)=0
                          STORE pnOm+ALLTRIM(xdEs)+".IMP" TO pnOm
                          EXIT
                     ELSE
                          STORE pnOm+SUBSTR(xdEs, 1, AT(" ", xdEs)-1)+"_"  ;
                                TO pnOm
                          STORE SUBSTR(xdEs, AT(" ", xdEs)+1, 100) TO xdEs
                     ENDIF
                ENDDO
                SELECT tmP_plc
                GOTO TOP
                STORE "CORTES\"+pnOm TO pnOm
                Copy to &pNOM SDF
                SELECT tmP_cargos
                ZAP
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_fact
                     CASE vsW1=2
                          SELECT teMporal_doc
                ENDCASE
                DO seE_1300b WITH "i"
                DO paN_1300b
                DO muE_1300b WITH "i", "v"
                DO seE_1300b WITH "v"
                STORE ifIl TO vfIl
                DO diS_1300b WITH "R"
                RELEASE pfRa, pnOm
                STORE 99 TO mkEy
           CASE mkEy=k_F7 .AND. wtPo="1" .AND. (f1300tdo="CT" .OR.  ;
                f1300tdo="NP")
                STORE "No se puede marcar un Documento que no sea Factura/Boleta/Percepción..."  ;
                      TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="1" .AND. f1300est="8"
                STORE "No se puede marcar un Documento dado de Baja..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="1" .AND. f1300est="9"
                STORE "No se puede marcar un Documento Anulado..." TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="1" .AND. (vtDo="CT" .OR. vtDo="NP"  ;
                .OR. vtDo="PC")
                STORE "No se puede marcar una Cotización, Nota de Pedido o Percepción..."  ;
                      TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="2" .AND. mgRa=2 .AND. (f1300tdo= ;
                "CT" .OR. f1300tdo="PC")
                STORE "No se puede cancelar una Cotización o una Percepción..."  ;
                      TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="2" .AND. mgRa=2 .AND. f1300est="8"
                STORE "No se puede cancelar un Documento dado de Baja..."  ;
                      TO mmSj
           CASE mkEy=k_F8 .AND. wtPo="2" .AND. mgRa=2 .AND. f1300est="9"
                STORE "No se puede cancelar un Documento Anulado..." TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="1" .AND. vtDo="PC" .AND.  ;
                SUBSTR(vsEr, 1, 1)<>"T"
                STORE "No está permitido seleccionar este tipo de documento..."  ;
                      TO mmSj
           CASE mkEy=k_F7 .AND. wtPo="1" .AND. vtDo="PC" .AND.  ;
                SUBSTR(vsEr, 1, 1)="T"
                SELECT tmP_cargos
                GOTO TOP
                DO CASE
                     CASE  .NOT. EOF() .AND. ftM4tdo<>"PC"
                          STORE "No está permitido este tipo de documento..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE EOF() .OR. ( .NOT. EOF() .AND. ftM4tdo="PC")
                          DO CASE
                               CASE vsW1=1
                                    SELECT caB_fact
                               CASE vsW1=2
                                    SELECT teMporal_doc
                          ENDCASE
                          STORE 1 TO vsW3
                          STORE f1300tdo TO xtDo
                          STORE f1300ser TO xsEr
                          STORE f1300doc TO xdOc
                          STORE f1300cli TO xcLi
                          STORE f1300nom TO xnOm
                          STORE f1300ntt TO xnTt
                          STORE f1300ven TO xvEn
                          STORE f1300nve TO xnVe
                          STORE f1300fem TO xfEm
                          STORE f1300dia TO xdIa
                          STORE f1300mon TO xmOn
                          STORE f1300tot TO xtOt
                          STORE f1300est TO xeSt
                          IF LEN(ALLTRIM(f1300tit))<>0
                               STORE f1300tit TO xtIt
                          ELSE
                               STORE f1300cli TO xtIt
                               STORE f1300nom TO xnTt
                          ENDIF
                          SELECT tmP_cargos
                          SET ORDER TO FTM4TIT
                          SEEK xtIt+xtDo+xsEr+xdOc
                          IF  .NOT. EOF()
                               DELETE
                               PACK
                               REINDEX
                          ELSE
                               SEEK xtIt
                               IF EOF()
                                    GOTO TOP
                                    IF  .NOT. BOF()
                                         STORE  ;
                                          "No se puede escoger Clientes Titulares diferentes..."  ;
                                          TO mmSj
                                    ELSE
                                         APPEND BLANK
                                         REPLACE ftM4tit WITH xtIt
                                         REPLACE ftM4ntt WITH xnTt
                                         REPLACE ftM4tdo WITH xtDo
                                         REPLACE ftM4ser WITH xsEr
                                         REPLACE ftM4doc WITH xdOc
                                         REPLACE ftM4cli WITH xcLi
                                         REPLACE ftM4nom WITH xnOm
                                         REPLACE ftM4ven WITH xvEn
                                         REPLACE ftM4nve WITH xnVe
                                         REPLACE ftM4fem WITH xfEm
                                         REPLACE ftM4fve WITH xfEm+xdIa
                                         REPLACE ftM4mon WITH xmOn
                                         REPLACE ftM4tot WITH xtOt
                                         REPLACE ftM4acu WITH 0
                                    ENDIF
                               ELSE
                                    APPEND BLANK
                                    REPLACE ftM4tit WITH xtIt
                                    REPLACE ftM4ntt WITH xnTt
                                    REPLACE ftM4tdo WITH xtDo
                                    REPLACE ftM4ser WITH xsEr
                                    REPLACE ftM4doc WITH xdOc
                                    REPLACE ftM4cli WITH xcLi
                                    REPLACE ftM4nom WITH xnOm
                                    REPLACE ftM4ven WITH xvEn
                                    REPLACE ftM4nve WITH xnVe
                                    REPLACE ftM4fem WITH xfEm
                                    REPLACE ftM4fve WITH xfEm+xdIa
                                    REPLACE ftM4mon WITH xmOn
                                    REPLACE ftM4tot WITH xtOt
                                    REPLACE ftM4acu WITH 0
                               ENDIF
                          ENDIF
                     OTHERWISE
                          STORE "No están permitidas Percepciones adicionales"  ;
                                TO mmSj
                          DO poNmsj
                ENDCASE
                DO CASE
                     CASE vsW1=1
                          SELECT caB_fact
                     CASE vsW1=2
                          SELECT teMporal_doc
                ENDCASE
                STORE 99 TO mkEy
           CASE ((mkEy=k_F7 .OR. mkEy=k_F8) .AND. wtPo="1") .OR. (mkEy= ;
                k_F7 .AND. wtPo="2")
                STORE 0 TO vsW5
                IF wtPo="1"
                     SELECT tmP_cargos
                     GOTO TOP
                     DO CASE
                          CASE mkEy=k_F7 .AND.  .NOT. BOF() .AND. vsW3=2
                               STORE "Se ha seleccionado Impresión por Clientes."+ ;
                                     CHR(13)+CHR(13) TO mmSj
                               STORE mmSj+ ;
                                     "Desmarque con F8 todos los documentos del"+ ;
                                     CHR(13)+CHR(13) TO mmSj
                               STORE mmSj+ ;
                                     "del mismo Vendedor y recién puede usar esta"+ ;
                                     CHR(13)+CHR(13) TO mmSj
                               STORE mmSj+"función." TO mmSj
                               DO poNmsj
                          CASE mkEy=k_F8 .AND.  .NOT. BOF() .AND. vsW3=1
                               STORE "Se ha seleccionado Impresión por Vendedor."+ ;
                                     CHR(13)+CHR(13) TO mmSj
                               STORE mmSj+ ;
                                     "Desmarque con F8 todos los documentos del"+ ;
                                     CHR(13)+CHR(13) TO mmSj
                               STORE mmSj+ ;
                                     "del mismo Cliente y recién puede usar esta"+ ;
                                     CHR(13)+CHR(13) TO mmSj
                               STORE mmSj+"función." TO mmSj
                               DO poNmsj
                          OTHERWISE
                               DO CASE
                                    CASE vsW1=1
                                         SELECT caB_fact
                                    CASE vsW1=2
                                         SELECT teMporal_doc
                               ENDCASE
                               STORE 1 TO vsW5
                     ENDCASE
                ELSE
                     STORE 1 TO vsW5
                ENDIF
                IF vsW5=1
                     DO CASE
                          CASE mkEy=k_F7
                               STORE 1 TO vsW3
                          CASE mkEy=k_F8
                               STORE 2 TO vsW3
                     ENDCASE
                     STORE f1300tdo TO xtDo
                     STORE f1300ser TO xsEr
                     STORE f1300doc TO xdOc
                     STORE f1300cli TO xcLi
                     STORE f1300nom TO xnOm
                     STORE f1300ntt TO xnTt
                     STORE f1300ven TO xvEn
                     STORE f1300nve TO xnVe
                     STORE f1300fem TO xfEm
                     STORE f1300dia TO xdIa
                     STORE f1300mon TO xmOn
                     STORE f1300tot TO xtOt
                     IF LEN(ALLTRIM(f1300tit))<>0
                          STORE f1300tit TO xtIt
                     ELSE
                          STORE f1300cli TO xtIt
                          STORE f1300nom TO xnTt
                     ENDIF
                     SELECT tmP_cargos
                     DO CASE
                          CASE vsW3=1
                               SET ORDER TO FTM4TIT
                               SEEK xtIt+xtDo+xsEr+xdOc
                          CASE vsW3=2
                               SET ORDER TO FTM4VEN
                               SEEK xvEn+xtIt+xtDo+xsEr+xdOc
                     ENDCASE
                     IF  .NOT. EOF()
                          DELETE
                          PACK
                          REINDEX
                     ELSE
                          DO CASE
                               CASE vsW3=1
                                    SEEK xtIt
                               CASE vsW3=2
                                    SEEK xvEn
                          ENDCASE
                          IF EOF()
                               GOTO TOP
                               IF  .NOT. BOF()
                                    DO CASE
                                         CASE vsW3=1
                                              STORE  ;
                                               "No se puede escoger Clientes Titulares diferentes..."  ;
                                               TO mmSj
                                         CASE vsW3=2
                                              STORE  ;
                                               "No se puede escoger Vendedores diferentes..."  ;
                                               TO mmSj
                                    ENDCASE
                               ELSE
                                    APPEND BLANK
                                    REPLACE ftM4tit WITH xtIt
                                    REPLACE ftM4ntt WITH xnTt
                                    REPLACE ftM4tdo WITH xtDo
                                    REPLACE ftM4ser WITH xsEr
                                    REPLACE ftM4doc WITH xdOc
                                    REPLACE ftM4cli WITH xcLi
                                    REPLACE ftM4nom WITH xnOm
                                    REPLACE ftM4ven WITH xvEn
                                    REPLACE ftM4nve WITH xnVe
                                    REPLACE ftM4fem WITH xfEm
                                    REPLACE ftM4fve WITH xfEm+xdIa
                                    REPLACE ftM4mon WITH xmOn
                                    REPLACE ftM4tot WITH xtOt
                                    REPLACE ftM4acu WITH 0
                               ENDIF
                          ELSE
                               APPEND BLANK
                               REPLACE ftM4tit WITH xtIt
                               REPLACE ftM4ntt WITH xnTt
                               REPLACE ftM4tdo WITH xtDo
                               REPLACE ftM4ser WITH xsEr
                               REPLACE ftM4doc WITH xdOc
                               REPLACE ftM4cli WITH xcLi
                               REPLACE ftM4nom WITH xnOm
                               REPLACE ftM4ven WITH xvEn
                               REPLACE ftM4nve WITH xnVe
                               REPLACE ftM4fem WITH xfEm
                               REPLACE ftM4fve WITH xfEm+xdIa
                               REPLACE ftM4mon WITH xmOn
                               REPLACE ftM4tot WITH xtOt
                               REPLACE ftM4acu WITH 0
                          ENDIF
                     ENDIF
                     SELECT tmP_cargos
                     GOTO TOP
                     IF BOF()
                          STORE 0 TO vsW3
                     ENDIF
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_fact
                     CASE vsW1=2
                          SELECT teMporal_doc
                ENDCASE
                DO diS_1300b WITH "R"
           CASE mkEy=k_F8 .AND. wtPo="2" .AND. mgRa=2
                DO caN_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_1300b WITH "R"
           CASE mkEy=k_Enter .AND. f1300est="8"
                STORE "Documento se encuentra dado de Baja..." TO mmSj
           CASE mkEy=k_Enter .AND. f1300est="9"
                STORE "Documento se encuentra Anulado..." TO mmSj
           CASE mkEy=k_Enter .AND. f1300tdo="PC"
                SELECT peR_fact
                SEEK vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pvC1300e
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_fact
                     CASE vsW1=2
                          SELECT teMporal_doc
                ENDCASE
                DO diS_1300b WITH "R"
           CASE mkEy=k_Enter .AND. f1300tdo<>"PC"
                SELECT caB_fact
                DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_fact
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     STORE 00 TO tvAl
                     SELECT deT_fact
                     GOTO TOP
                     SEEK vtDo+vsEr+vdOc
                     DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+ ;
                        f1301doc=vtDo+vsEr+vdOc
                          IF vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC"
                               STORE tvAl+f1301to1 TO tvAl
                          ELSE
                               STORE tvAl+f1301to2 TO tvAl
                          ENDIF
                          SKIP
                     ENDDO
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_fact
                          CASE vsW1=2
                               SELECT teMporal_doc
                     ENDCASE
                     STORE 1 TO vsW2
                     DO CASE
                          CASE (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC")  ;
                               .AND. ROUND(f1300net, 0)<>ROUND(tvAl, 0)  ;
                               .AND. f1300pgd=0 .AND. f1300dtc=0 .AND.  ;
                               f1300dcl=0
                               STORE "Detalle no CONICIDE con total..."+ ;
                                     STR(f1300net, 10, 2)+" - "+STR(tvAl,  ;
                                     10, 2) TO mmSj
                               DO poNmsj
                               = INKEY(2)
                          CASE vtDo<>"FA" .AND. vtDo<>"FE" .AND. vtDo<> ;
                               "FC" .AND. ROUND(f1300tot, 0)<>ROUND(tvAl,  ;
                               0) .AND. f1300pgd=0 .AND. f1300dtc=0 .AND.  ;
                               f1300dcl=0
                               STORE "Detalle no CONICIDE con total..."+ ;
                                     STR(f1300net, 10, 2)+" - "+STR(tvAl,  ;
                                     10, 2) TO mmSj
                               DO poNmsj
                               = INKEY(2)
                          OTHERWISE
                               STORE 1 TO vsW2
                     ENDCASE
                     IF vsW2=1
                          SAVE SCREEN TO vpAn_11
                          DO pvC1300c
                          IF mkEy=k_Esc
                               EXIT
                          ENDIF
                          RESTORE SCREEN FROM vpAn_11
                     ENDIF
                ENDIF
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_1300b WITH "R"
           CASE mkEy=k_Alt_a .AND. f1300tdo<>"PC"
                SELECT caB_fact
                DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SELECT deT_fact
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE "Documento no tiene Detalle..." TO mmSj
                ELSE
                     SAVE SCREEN TO vpAn_11
                     DO pvC1300c
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_1300b WITH "R"
           CASE mkEy=k_Ctrl_del .AND. f1300est="9" .AND. wtPo="2"
                STORE "Documento ya se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. f1300est<>"9" .AND. wtPo="3"
                STORE "Documento NO se encuentra anulado..." TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2" .AND. (f1300tdo="FC" .OR.  ;
                f1300tdo="BC" .OR. f1300tdo="FE" .OR. f1300tdo="BE")  ;
                .AND. f1300cm2="Anulado con Nota"
                STORE "Documento se encuentra anulado con Nota de Crédito..."  ;
                      TO mmSj
           CASE mkEy=k_Ctrl_del .AND. wtPo="2"
                DO anU_1300b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_del .AND. wtPo="3"
                DO elI_1300b
                WAIT CLEAR
                UNLOCK ALL
                FLUSH
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                = INKEY(0.01)
                STORE 99 TO mkEy
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F9
                SET READBORDER ON
                DO opC_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                SET READBORDER OFF
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Ctrl_o
                STORE vtDo TO xtDo
                STORE vsEr TO xsEr
                STORE vdOc TO xdOc
                DO peR_1300b
                STORE xtDo TO vtDo
                STORE xsEr TO vsEr
                STORE xdOc TO vdOc
                SELECT caB_fact
                DO seE_1300b WITH "v"
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_p
                SELECT tmP_cargos
                GOTO TOP
                DO CASE
                     CASE EOF() .AND. vtDo<>"PC"
                          STORE "No hay Documentos seleccionados para generar e imprimir Percepciones..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE  .NOT. EOF() .AND. ftM4tdo<>"PC"
                          STORE "No hay Documentos seleccionados para generar e imprimir Percepciones..."  ;
                                TO mmSj
                          DO poNmsj
                     CASE EOF() .AND. vtDo="PC" .AND. SUBSTR(vsEr, 1, 1)="T"
                          STORE "No hay Documentos seleccionados para imprimir Percepciones..."  ;
                                TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE 99 TO mkEy
                          STORE "N" TO moPc
                          IF  .NOT. EOF()
                               DO prE_docum WITH  ;
                                  "¿Desea Generar e imprimir Percepción?"
                          ELSE
                               DO prE_docum WITH "¿Desea imprimir Percepción?"
                          ENDIF
                          IF moPc$"Ss"
                               SET READBORDER ON
                               DO q1_0000a
                               DO pvI1300z
                               DO p1_0000a
                               SET READBORDER OFF
                               DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                          ENDIF
                          = INKEY(0.01)
                          STORE 99 TO mkEy
                          SELECT tmP_cargos
                          ZAP
                ENDCASE
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_s .AND. wtPo="6" .AND. f1300cmm$"A " .AND.  ;
                (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="BO"  ;
                .OR. vtDo="BE" .OR. vtDo="BC" .OR. vtDo="TK" .OR. vtDo="NP")
                SELECT itE_fact
                SEEK vtDo+vsEr+vdOc
                IF EOF() .OR. f1302tdo+f1302ser+f1302doc<>vtDo+vsEr+vdOc
                     STORE "Documento no se puede marcar como APLAZABLE"  ;
                           TO mmSj
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_fact
                          CASE vsW1=2
                               SELECT teMporal_doc
                     ENDCASE
                     LOOP
                ENDIF
                DO CASE
                     CASE vsW1=1
                          SELECT caB_fact
                     CASE vsW1=2
                          SELECT teMporal_doc
                ENDCASE
                IF f1300cmm="A"
                     ptX1 = "¿Desea QUITAR Aplazable a este Documento?"
                ELSE
                     ptX1 = "¿Desea Poner como Aplazable a este Documento?"
                ENDIF
                DO CASE
                     CASE vtDo="TK"
                          ptX2 = "Ticket No.:"+vsEr+"-"+vdOc
                     CASE vtDo="TF"
                          ptX2 = "Ticket Factura No.:"+vsEr+"-"+vdOc
                     CASE vtDo="TB"
                          ptX2 = "Ticket Boleta No.:"+vsEr+"-"+vdOc
                     CASE vtDo="FA"
                          ptX2 = "Factura No.:"+vsEr+"-"+vdOc
                     CASE vtDo="FE"
                          ptX2 = "Factura Electrónica No. F:"+vsEr+"-"+vdOc
                     CASE vtDo="FC"
                          ptX2 = "Factura Electrónica SOL No. E:"+vsEr+"-"+vdOc
                     CASE vtDo="BO"
                          ptX2 = "Boleta de Venta No.:"+vsEr+"-"+vdOc
                     CASE vtDo="BE"
                          ptX2 = "Boleta de Venta Electrónica No. B:"+ ;
                                 vsEr+"-"+vdOc
                     CASE vtDo="BC"
                          ptX2 = "Boleta de Venta Electrónica SOL No. EB:"+ ;
                                 vsEr+"-"+vdOc
                     CASE vtDo="NP"
                          ptX2 = "Nota de Pedido No.:"+vsEr+"-"+vdOc
                ENDCASE
                poPc = MESSAGEBOX(ptX1+" "+ptX2, 0036, " ")
                IF poPc=7
                     UNLOCK ALL
                     RETURN
                ENDIF
                SELECT caB_fact
                DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                IF f1300cmm="A"
                     REPLACE f1300cmm WITH " "
                ELSE
                     REPLACE f1300cmm WITH "A"
                ENDIF
                UNLOCK
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_s .AND. wtPo="6" .AND. (vtDo="FA" .OR. vtDo= ;
                "FE" .OR. vtDo="FC" .OR. vtDo="BO" .OR. vtDo="BE" .OR.  ;
                vtDo="BC" .OR. vtDo="TK" .OR. vtDo="TF" .OR. vtDo="TB"  ;
                .OR. vtDo="NP")
                STORE "Estados solo pueden ser Aplazable o vacio" TO mmSj
           CASE mkEy=k_Alt_z .AND. wtPo="6" .AND. f1300cmm$"PT" .AND.  ;
                (vtDo="FA" .OR. vtDo="FE" .OR. vtDo="FC" .OR. vtDo="BO"  ;
                .OR. vtDo="BE" .OR. vtDo="BC" .OR. vtDo="TK" .OR. vtDo= ;
                "TF" .OR. vtDo="TB" .OR. vtDo="NP")
                IF f1300cmm="P"
                     ptX1 = "¿Desea TERMINAR este Documento?"
                ELSE
                     ptX1 = "¿Desea DEVOLVER-DESMARCAR este Documento?"
                ENDIF
                DO CASE
                     CASE vtDo="TK"
                          ptX2 = "Ticket No.:"+vsEr+"-"+vdOc
                     CASE vtDo="TF"
                          ptX2 = "Ticket Factura No.:"+vsEr+"-"+vdOc
                     CASE vtDo="TB"
                          ptX2 = "Ticket Boleta No.:"+vsEr+"-"+vdOc
                     CASE vtDo="FA"
                          ptX2 = "Factura No.:"+vsEr+"-"+vdOc
                     CASE vtDo="FE"
                          ptX2 = "Factura Electrónica No. F:"+vsEr+"-"+vdOc
                     CASE vtDo="FC"
                          ptX2 = "Factura Electrónica SOL No. E:"+vsEr+"-"+vdOc
                     CASE vtDo="BO"
                          ptX2 = "Boleta de Venta No.:"+vsEr+"-"+vdOc
                     CASE vtDo="BE"
                          ptX2 = "Boleta de Venta Electrónica No. B:"+ ;
                                 vsEr+"-"+vdOc
                     CASE vtDo="BC"
                          ptX2 = "Boleta de Venta Electrónica SOL No. EB:"+ ;
                                 vsEr+"-"+vdOc
                     CASE vtDo="NP"
                          ptX2 = "Nota de Pedido No.:"+vsEr+"-"+vdOc
                ENDCASE
                poPc = MESSAGEBOX(ptX1+" "+ptX2, 0036, " ")
                IF poPc=7
                     UNLOCK ALL
                     RETURN
                ENDIF
                SELECT caB_fact
                DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SEEK vtDo+vsEr+vdOc
                IF EOF()
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                IF f1300cmm="P"
                     REPLACE f1300cmm WITH "T"
                ELSE
                     REPLACE f1300cmm WITH " "
                ENDIF
                UNLOCK
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Alt_z .AND. wtPo="6" .AND. (vtDo="FA" .OR. vtDo= ;
                "FE" .OR. vtDo="FC" .OR. vtDo="BO" .OR. vtDo="BE" .OR.  ;
                vtDo="BC" .OR. vtDo="TK" .OR. vtDo="TF" .OR. vtDo="TB"  ;
                .OR. vtDo="NP")
                STORE "Estados solo pueden ser En Proceso o terminado" TO mmSj
           CASE (mkEy=k_Ctrl_o .OR. mkEy=k_Alt_s .OR. mkEy=k_Alt_z .OR.  ;
                mkEy=k_Alt_a) .AND. wtPo="1"
                = INKEY(0.01)
                SELECT tmP_cargos
                GOTO TOP
                IF BOF()
                     STORE "No se ha seleccionado ningún documento..." TO mmSj
                ELSE
                     DO q1_0000a
                     DO CASE
                          CASE mkEy=k_Ctrl_o
                               DO imP_1300b WITH "O"
                          CASE mkEy=k_Alt_s
                               DO imP_1300b WITH "S"
                          CASE mkEy=k_Alt_z
                               DO imP_1300b WITH "E"
                          CASE mkEy=k_Alt_a
                               DO imP_1300b WITH "A"
                     ENDCASE
                     DO p1_0000a
                     DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 99 TO mkEy
                     STORE 00 TO vsW3
                     SELECT tmP_cargos
                     ZAP
                     REINDEX
                     DO CASE
                          CASE vsW1=1
                               SELECT caB_fact
                          CASE vsW1=2
                               SELECT teMporal_doc
                     ENDCASE
                     STORE vfIl TO cfIl
                     DO seE_1300b WITH "i"
                     DO paN_1300b
                     DO seE_1300b WITH "v"
                     STORE cfIl TO vfIl
                ENDIF
                DO esT_1300b
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO diS_1300b WITH "R"
           CASE mkEy=k_Home
                GOTO TOP
                DO CASE
                     CASE f1300tdo+f1300ser+f1300doc=itDo+isEr+idOc .AND.  ;
                          vtDo+vsEr+vdOc=itDo+isEr+idOc
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=itDo+isEr+idOc
                                    DO paN_1300b
                               OTHERWISE
                                    DO seE_1300b WITH "v"
                                    DO diS_1300b WITH "N"
                          ENDCASE
                          STORE ifIl TO vfIl
                          DO muE_1300b WITH "i", "v"
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO BOTTOM
                DO CASE
                     CASE f1300tdo+f1300ser+f1300doc=utDo+usEr+udOc .AND.  ;
                          vtDo+vsEr+vdOc=utDo+usEr+udOc
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vtDo+vsEr+vdOc=utDo+usEr+udOc
                                    SKIP -INT(ffIl-ifIl)
                                    DO paN_1300b
                               OTHERWISE
                                    DO seE_1300b WITH "v"
                                    DO diS_1300b WITH "N"
                          ENDCASE
                          STORE ufIl TO vfIl
                          DO muE_1300b WITH "u", "v"
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "N"
                          SKIP
                          IF vtDo+vsEr+vdOc=utDo+usEr+udOc
                               DO coLsc1
                               DO suBe WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1300a WITH ffIl, ffIl+1
                               DO muE_1300b WITH "F", "v"
                               DO muE_1300b WITH "F", "u"
                               STORE ufIl TO vfIl
                               SKIP -INT(ffIl-ifIl)
                               DO muE_1300b WITH "F", "i"
                               SKIP INT(ffIl-ifIl)
                          ELSE
                               DO muE_1300b WITH "F", "v"
                               STORE vfIl+1 TO vfIl
                          ENDIF
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "N"
                          SKIP -1
                          IF vtDo+vsEr+vdOc=itDo+isEr+idOc
                               DO coLsc1
                               DO baJa WITH ifIl, icLn, ffIl, ucLn, 1
                               DO liN_1300a WITH ifIl, ifIl+1
                               DO muE_1300b WITH "F", "v"
                               DO muE_1300b WITH "F", "i"
                               STORE ifIl TO vfIl
                               IF ufIl<ffIl
                                    STORE ufIl+1 TO ufIl
                               ELSE
                                    SKIP INT(ffIl-ifIl)
                                    DO muE_1300b WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_1300b WITH "F", "v"
                               STORE vfIl-1 TO vfIl
                          ENDIF
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_1300b WITH "u"
                SKIP
                DO CASE
                     CASE EOF()
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_1300b
                          STORE ifIl TO vfIl
                          DO muE_1300b WITH "i", "v"
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_1300b WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF()
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffIl-ifIl)
                          IF BOF()
                               GOTO TOP
                          ENDIF
                          DO paN_1300b
                          STORE ifIl TO vfIl
                          DO muE_1300b WITH "i", "v"
                          DO seE_1300b WITH "v"
                          DO diS_1300b WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_1300b WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_1300b
 DO pn1_1300b WITH "1"
ENDPROC
*
PROCEDURE Pa1_1300b
 DO pn1_1300b WITH "2"
ENDPROC
*
PROCEDURE Pn1_1300b
 PARAMETER ptPo
 STORE ifIl TO vfIl, ufIl
 DO muE_1300b WITH "F", "i"
 DO muE_1300b WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      DO CASE
           CASE ptPo="2" .AND. f1300tdo+f1300ser+f1300doc=xtDo+xsEr+xdOc
                STORE vfIl TO cfIl
           OTHERWISE
                DO diS_1300b WITH "N"
      ENDCASE
      DO muE_1300b WITH "F", "u"
      STORE vfIl TO ufIl
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF ufIl+1<=ffIl
      DO coLsc1
      @ ufIl+1, icLn CLEAR TO ffIl+1, ucLn
      DO liN_1300a WITH ufIl, ffIl+1
 ENDIF
ENDPROC
*
PROCEDURE Dis_1300b
 PARAMETER ptIp
 PRIVATE peSt, psIg, pnOm, pdIr, pfEm, pnFp, pcM1
 PRIVATE pcOd, ptPp, pcTd, psWg, psWd, ppUl
 PRIVATE pvDg
 PRIVATE psWw
 PRIVATE ppLg
 PRIVATE pvId
 PRIVATE pcTd
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
      CASE vsW1=2
           SELECT teMporal_doc
 ENDCASE
 STORE f1300tdo TO xtD1
 STORE f1300ser TO xsE1
 STORE f1300doc TO xdO1
 STORE f1300cli+":"+f1300nom TO pnOm
 STORE ALLTRIM(f1300dir)+","+f1300dis TO pdIr
 DO CASE
      CASE f1300mon=1
           STORE msIg TO psIg
      CASE f1300mon=2
           STORE "US$" TO psIg
      OTHERWISE
           STORE "   " TO psIg
 ENDCASE
 DO CASE
      CASE vsW6=1
           STORE f1300fem TO pfEm
      CASE vsW6=2
           STORE f1300fem+f1300dia TO pfEm
      CASE vsW6=3
           STORE f1300fde TO pfEm
 ENDCASE
 IF wtPo="6"
      STORE " " TO pnFp
 ELSE
      STORE f1300nfp TO pnFp
 ENDIF
 IF f1300est$"89" .OR. f1300cm2="Anulado"
      STORE f1300cm2 TO pcM1
 ELSE
      STORE f1300cm1 TO pcM1
 ENDIF
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO CASE
      CASE f1300est="1"
           STORE "Dig" TO peSt
           DO CASE
                CASE ptIp="N"
                     SET COLOR TO RGB(0,0,128,192,192,192)
                CASE ptIp="R"
                     DO coLblz
           ENDCASE
      CASE f1300est="2" .AND. f1300can="2" .AND. mgRa=2
           STORE "Can" TO peSt
      CASE f1300est="2"
           STORE "Imp" TO peSt
           DO CASE
                CASE ptIp="N"
                     SET COLOR TO RGB(155,0,0,192,192,192)
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      CASE f1300est="3"
           STORE "Gen" TO peSt
           DO CASE
                CASE ptIp="N"
                     SET COLOR TO RGB(155,0,0,192,192,192)
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      CASE f1300est="8"
           STORE "Baj" TO peSt
           STORE "*** D E   B A J A ***"+ALLTRIM(SUBSTR(f1300nom, 1, 20))+ ;
                 "***"+f1300usu TO pnOm
      CASE f1300est="9"
           STORE "Anu" TO peSt
           STORE "*** A N U L A D O ***"+ALLTRIM(SUBSTR(f1300nom, 1, 20))+ ;
                 "***"+f1300usu TO pnOm
      OTHERWISE
           STORE "   " TO peSt
 ENDCASE
 @vFIL,mCO0+20.2 Say pEST Font "&mLetAri",9 Style "NQ" Size 1,4.2
 DO CASE
      CASE ptIp="N"
           DO coLsc1
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 IF vsW3<>0
      STORE f1300ven TO xvE1
      IF LEN(ALLTRIM(f1300tit))<>0
           STORE f1300tit TO xtI1
      ELSE
           STORE f1300cli TO xtI1
      ENDIF
      SELECT tmP_cargos
      DO CASE
           CASE wtPo="6"
                SET ORDER TO FTM4DOC
                SEEK xtD1+xsE1+xdO1
           CASE vsW3=1
                SET ORDER TO FTM4TIT
                SEEK xtI1+xtD1+xsE1+xdO1
           CASE vsW3=2
                SET ORDER TO FTM4VEN
                SEEK xvE1+xtI1+xtD1+xsE1+xdO1
      ENDCASE
      IF  .NOT. EOF()
           DO CASE
                CASE ptIp="N"
                     DO coLscr
                CASE ptIp="R"
                     DO coLblr
           ENDCASE
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caB_fact
           CASE vsW1=2
                SELECT teMporal_doc
      ENDCASE
 ENDIF
 @vFIL,mCO0+000.0 Say F1300TDO Font "&mLetAri",9 Style "NQ" Size 1,03.3
 @vFIL,mCO0+004.4 Say F1300SER Font "&mLetAri",9 Style "NQ" Size 1,04.0
 @vFIL,mCO0+009.4 Say F1300DOC Font "&mLetAri",9 Style "NQ" Size 1,09.8
 @vFIL,mCO0+025.5 Say pFEM     Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFIL,mCO0+039.1 Say pNOM     Font "&mLetAri",9 Style "NQ" Size 1,55.0 Pict "@S57"
 @vFIL,mCO0+095.3 Say pDIR     Font "&mLetAri",9 Style "NQ" Size 1,33.2 Pict "@S35"
 @vFIL,mCO0+129.5 Say pNFP     Font "&mLetAri",9 Style "NQ" Size 1,14.9 Pict "@S16"
 @vFIL,mCO0+145.5 Say pCM1     Font "&mLetAri",9 Style "NQ" Size 1,28.5 Pict "@S30"
 DO CASE
      CASE f1300tot>999999
           @vFIL,mCO0+179.8 Say F1300TOT  Font "&mLetAri",9 Style "NQ" Pict "9999999.99" Size 1,13.9
      CASE f1300tot>0
           @vFIL,mCO0+179.8 Say F1300TOT  Font "&mLetAri",9 Style "NQ" Pict "999,999.99" Size 1,13.9
      OTHERWISE
           @vFIL,mCO0+179.8 Say Space(10) Font "&mLetAri",9 Style "NQ" Size 1,13.9
 ENDCASE
 IF f1300pgd<>0
      DO CASE
           CASE ptIp="N"
                DO coLscv
           CASE ptIp="R"
                DO coLblv
      ENDCASE
 ENDIF
 @vFIL,mCO0+175 Say pSIG Font "&mLetAri",9 Style "BQ" Size 1,4.8
 STORE 0 TO psWw, psWg, psWd, ppUl, ppLg, pvDg
 IF wtPo="6"
      SELECT deT_fact
      GOTO TOP
      SEEK xtD1+xsE1+xdO1
      IF ptIp="R"
           DO coLsc3
           STORE ffIl+2.3 TO vfFs
           STORE vfFs+7 TO ffFs
      ENDIF
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=xtD1+xsE1+xdO1
           STORE f1301cod TO pcOd
           STORE 0 TO pcTd, psWw, ppLg
           STORE 1 TO ptPp
           SELECT prOductos
           SEEK ALLTRIM(pcOd)+"*"
           IF  .NOT. EOF()
                STORE f2111tip TO ptPp
                SELECT tiP_prod
                SEEK ptPp
                IF  .NOT. EOF()
                     STORE f9211tpo TO ptPp
                ENDIF
           ENDIF
           IF (ptPp>3 .AND. ptPp<10) .OR. ptPp=11
                SELECT itE_fact
                GOTO TOP
                SEEK xtD1+xsE1+xdO1+ALLTRIM(pcOd)+"*"
                IF  .NOT. EOF()
                     STORE 0 TO pcTd
                     STORE 0 TO pvId
                     DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+ ;
                        f1302doc+ALLTRIM(f1302cod)+"*"=xtD1+xsE1+xdO1+ ;
                        ALLTRIM(pcOd)+"*"
                          IF f1302opc="S"
                               STORE 1 TO psWw
                          ELSE
                               STORE pcTd+f1302ctd TO pcTd
                          ENDIF
                          IF f1302un1="P" .OR. f1302un2="P"
                               STORE 1 TO ppLg
                          ENDIF
                          IF pvId=0 .AND. f1302man<>0
                               STORE 1 TO pvId
                          ENDIF
                          SKIP
                     ENDDO
                     IF pvId=1
                          STORE 1 TO pvDg
                          DO CASE
                               CASE psWw=1 .AND. pcTd=0 .AND. psWg=0
                                    STORE 1 TO psWg
                               CASE psWw=0 .AND. pcTd<>0
                                    STORE 3 TO psWg
                                    STORE 3 TO psWw
                          ENDCASE
                     ENDIF
                ENDIF
                SELECT deT_fact
           ENDIF
           SELECT deT_fact
           IF ptIp="R" .AND. vfFs<ffFs+1
                @vFFS,vCO3+000.4 Say F1301ITE Font "&mLetAri",9 Style "NQ" Size 1,2.7 Pict "99"
                @vFFS,vCO3+004.1 Say F1301DCR Font "&mLetAri",9 Style "NQ" Size 1,65.0 Pict "@S68"
                @vFFS,vCO3+070.2 Say F1301CAN Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                @vFFS,vCO3+098.4 Say F1301REF Font "&mLetAri",9 Style "NQ" Size 1,07.0 Pict "@S07"
                @vFFS,vCO3+106.4 Say F1301PIE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                @vFFS,vCO3+124.2 Say F1301NUV Font "&mLetAri",9 Style "NQ" Size 1,09.4
                @vFFS,vCO3+134.6 Say F1301COD Font "&mLetAri",9 Style "NQ" Size 1,13.5 Pict "@S15"
                @vFFS,vCO3+149.1 Say F1301PRE Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                @vFFS,vCO3+166.9 Say F1301PDC Font "&mLetAri",9 Style "NQ" Size 1,08.4 Pict "99.999"
                @vFFS,vCO3+176.4 Say F1301TO2 Font "&mLetAri",9 Style "NQ" Size 1,16.7 Pict "999,999.9999"
                STORE vfFs+1 TO vfFs
           ENDIF
           SELECT deT_fact
           SKIP
      ENDDO
      IF ptIp="R" .AND. vfFs<ffFs
           @ vfFs-0.0, icL1 CLEAR TO ffFs+1.0, ucL1
           @ vfFs-0.1, icL1 TO vfFs-0.1, ucL1
           DO liN_1300c IN PVC1300C WITH vfFs-1.1, ffFs+1.1
      ENDIF
      IF ptIp="R"
           DO p01_1300a
      ENDIF
      DO CASE
           CASE vsW1=1
                SELECT caB_fact
           CASE vsW1=2
                SELECT teMporal_doc
      ENDCASE
      IF pvDg=1
           DO CASE
                CASE ptIp="N"
                     DO coLscv
                CASE ptIp="R"
                     DO coLblv
           ENDCASE
           @vFIL,mCO0+129.5 Say "[M]" Font "&mLetAri",9 Style "BQ" Size 1,10
      ENDIF
      DO CASE
           CASE ptIp="N"
                DO coLscr
           CASE ptIp="R"
                DO coLblr
      ENDCASE
      DO CASE
           CASE psWg=1 .AND. ppLg=1
                @vFIL,mCO0+133.5 Say "[@]"     Font "&mLetAri",9 Style "BQ" Size 1,3.2
                DO CASE
                     CASE ptIp="N"
                          DO coLscz
                     CASE ptIp="R"
                          DO coLblz
                ENDCASE
                @vFIL,mCO0+137.5 Say "[P]"     Font "&mLetAri",9 Style "BQ" Size 1,3
           CASE psWg=1
                @vFIL,mCO0+133.5 Say "[@]"     Font "&mLetAri",9 Style "BQ" Size 1,3.2
           CASE psWg=3 .AND. ppLg=1
                @vFIL,mCO0+133.5 Say "[X]"     Font "&mLetAri",9 Style "BQ" Size 1,3
                DO CASE
                     CASE ptIp="N"
                          DO coLscz
                     CASE ptIp="R"
                          DO coLblz
                ENDCASE
                @vFIL,mCO0+137.5 Say "[P]"     Font "&mLetAri",9 Style "BQ" Size 1,3
           CASE psWg=3 .AND. pcTd<>0
                @vFIL,mCO0+133.5 Say "[X]"     Font "&mLetAri",9 Style "BQ" Size 1,3
           CASE ppLg=1
                DO CASE
                     CASE ptIp="N"
                          DO coLscz
                     CASE ptIp="R"
                          DO coLblz
                ENDCASE
                @vFIL,mCO0+133.5 Say "[P]"     Font "&mLetAri",9 Style "BQ" Size 1,3
      ENDCASE
      DO CASE
           CASE f1300cmm="A"
                DO CASE
                     CASE ptIp="N"
                          DO coLscr
                     CASE ptIp="R"
                          DO coLblr
                ENDCASE
                @vFIL,mCO0+170.6 Say "[A]"         Font "&mLetAri",9 Style "BQ" Size 1,3
           CASE f1300cmm="T"
                DO CASE
                     CASE ptIp="N"
                          DO coLscv
                     CASE ptIp="R"
                          DO coLblv
                ENDCASE
                @vFIL,mCO0+170.6 Say "[T]"         Font "&mLetAri",9 Style "BQ" Size 1,3
           CASE f1300cmm="P"
                DO CASE
                     CASE ptIp="N"
                          DO coLscv
                     CASE ptIp="R"
                          DO coLblv
                ENDCASE
                @vFIL,mCO0+170.6 Say "[P]"         Font "&mLetAri",9 Style "BQ" Size 1,3
           OTHERWISE
                DO CASE
                     CASE ptIp="N"
                          DO coLsc1
                     CASE ptIp="R"
                          DO coLbln
                ENDCASE
                @vFIL,mCO0+170.6 Say "__"          Font "&mLetAri",9 Style "NQ" Size 1,3
      ENDCASE
      DO CASE
           CASE ptIp="N"
                DO coLsc1
           CASE ptIp="R"
                DO coLbln
      ENDCASE
      IF psWd=1 .AND. vsW6=3
           @vFIL,mCO0+25.5 Say "Falta" Font "&mLetAri",9 Style "BQI" Size 1,12.3
      ENDIF
 ENDIF
 RELEASE peSt, psIg, pnOm, pdIr, pcOd, ptPp, psWg, psWw, ppUl, ppLg, pvId,  ;
         pvDg, pcTd
ENDPROC
*
PROCEDURE Opc_1300b
 DO rs2_1300a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 STORE vpAl TO cpAl
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_1300b
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET READBORDER ON
           DO rs2_1300a
           IF mkEy=k_Esc
                RETURN
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
           CASE mkEy=k_F12
                DO rs1_1300b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SET READBORDER ON
                DO rs2_1300a
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_F1
                DO hl2_1300b
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                STORE cpAl TO vpAl
                EXIT
           CASE mkEy=k_Enter .AND. LEN(ALLTRIM(vpAl))=0
                STORE 01 TO vsW1
                STORE SPACE(70) TO vpAl
                EXIT
           CASE mkEy=k_Enter
                SELECT teMporal_doc
                ZAP
                REINDEX
                SELECT caB_fact
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1300nom)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1300ntt)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)),  ;
                        UPPER(ALLTRIM(f1300cm1)))<>0 .OR.  ;
                        AT(UPPER(ALLTRIM(vpAl)), UPPER(ALLTRIM(f1300cm2)))<>0
                          DO muE_1300a
                          DO grA_1300a
                          SELECT caB_fact
                     ENDIF
                     SKIP
                ENDDO
                SELECT teMporal_doc
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE 01 TO vsW1
                     STORE SPACE(70) TO vpAl, cpAl
                     STORE "Palabra no encontrada..." TO mmSj
                     DO poNmsj
                ELSE
                     STORE 02 TO vsW1
                     STORE 00 TO csW1
                     EXIT
                ENDIF
      ENDCASE
      DO coLbln
      STORE k_Enter TO mkEy
      @iFIL+1.8,mCO0+61.5 Edit vPAL Font "&mLetAri",8 Style "NQ" Size 1,70,70
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 RESTORE SCREEN FROM vpAn_11
 IF vsW1<>csW1
      DO CASE
           CASE vsW1=1
                SELECT caB_fact
           CASE vsW1=2
                SELECT teMporal_doc
      ENDCASE
      DO orD_1300b
      IF mkEy=k_Esc
           RETURN
      ENDIF
      GOTO TOP
      DO paN_1300b
      STORE vsW1 TO csW1
      STORE ifIl TO vfIl
      DO muE_1300b WITH "i", "v"
 ENDIF
 DO coLsc1
 @mFI0+mUFI-1.3,mCO0+11 Say vPAL Size 1,70 Pict "@S70" Font "&mLetRom",9 Style "BQ"
ENDPROC
*
PROCEDURE Cam_1300b
 STORE 00 TO cfIl
 STORE vsW0 TO csW0
 DO muE_1300b WITH "v", "x"
 DO orD_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 GOTO TOP
 DO seE_1300b WITH "i"
 DO pa1_1300b
 IF cfIl=0
      STORE ifIl TO vfIl
      DO muE_1300b WITH "i", "v"
 ELSE
      STORE cfIl TO vfIl
      DO muE_1300b WITH "x", "v"
 ENDIF
 DO seE_1300b WITH "v"
 DO diS_1300b WITH "R"
ENDPROC
*
PROCEDURE Est_1300b
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
      CASE vsW1=2
           SELECT teMporal_doc
 ENDCASE
 DO orD_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO seE_1300b WITH "v"
 IF EOF() .OR. BOF()
      SET NEAR ON
      DO seE_1300b WITH "v"
      SET NEAR OFF
      IF EOF() .OR. BOF()
           GOTO TOP
           SET NEAR ON
           DO seE_1300b WITH "i"
           SET NEAR OFF
      ENDIF
      DO muE_1300b WITH "F", "x"
      GOTO TOP
      SET NEAR ON
      DO seE_1300b WITH "i"
      SET NEAR OFF
      STORE 00 TO cfIl
      DO pa1_1300b
      IF cfIl=0
           STORE ifIl TO vfIl
           DO muE_1300b WITH "i", "v"
      ELSE
           STORE cfIl TO vfIl
           DO muE_1300b WITH "x", "v"
      ENDIF
 ENDIF
 DO seE_1300b WITH "v"
 IF  .NOT. EOF() .AND.  .NOT. BOF()
      DO diS_1300b WITH "R"
 ENDIF
ENDPROC
*
PROCEDURE AnS_1300b
 SELECT deT_ing_caja
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Caja..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(1)
      = INKEY(1)
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Bancos..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(1)
      = INKEY(1)
      RETURN
 ENDIF
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE "1" TO ctP1
 STORE "2" TO ctI1
 STORE "V" TO ceSt
 STORE f1300mon TO cmOn
 STORE f1300tot TO ctOt
 STORE SUBSTR(DTOC(f1300fde), 1, 2) TO cdI1
 STORE SUBSTR(DTOC(f1300fde), 4, 2) TO cmE1
 STORE SUBSTR(DTOC(f1300fde), 7, 4) TO caN1
 SELECT ctAs_tot_vtas
 SEEK vtDo+vsEr
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT peNd_vtas
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 SELECT coP_prod
 ZAP
 REINDEX
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           SELECT deT_fact
           SKIP
           LOOP
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT prO_tot
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           DO nuEvo_rg
           REPLACE f2118cod WITH vcOd
           REPLACE f2118sto WITH 0
           REPLACE f2118caj WITH 0
           REPLACE f2118cpe WITH 0
           REPLACE f2118cjp WITH 0
           REPLACE f2118sts WITH 0
           REPLACE f2118orp WITH 0
           REPLACE f2118vcp WITH 0
           REPLACE f2118vcs WITH 0
           REPLACE f2118prm WITH 0
           UNLOCK
           SEEK ALLTRIM(vcOd)+"*"
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH ALLTRIM(vcOd)+"*"
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SELECT coP_prod
      APPEND BLANK
      REPLACE ftM2cod WITH vcOd
      SELECT deT_fact
      SKIP
 ENDDO
 SELECT coN_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtDo+vsEr+vdOc
      STORE f1304cdg TO vcOd
      SELECT coP_prod
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           APPEND BLANK
           REPLACE ftM2cod WITH vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT coN_fact
                SKIP
                LOOP
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                DO nuEvo_rg
                REPLACE f2118cod WITH vcOd
                REPLACE f2118sto WITH 0
                REPLACE f2118caj WITH 0
                REPLACE f2118cpe WITH 0
                REPLACE f2118cjp WITH 0
                REPLACE f2118sts WITH 0
                REPLACE f2118orp WITH 0
                REPLACE f2118vcp WITH 0
                REPLACE f2118vcs WITH 0
                REPLACE f2118prm WITH 0
                UNLOCK
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT coN_fact
      SKIP
 ENDDO
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT itE_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtDo+vsEr+vdOc
      STORE f1302cod TO vcOd
      STORE f1302rcc TO vrEc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT seR_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+f1303doc=vtDo+vsEr+vdOc
      STORE f1303cod TO vcOd
      STORE f1303ped TO vpD1
      STORE f1303sec TO vsEc
      STORE f1303mot TO vmOt
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
      SELECT kaRdex_series
      SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+caN1+cmE1+cdI1+ctI1+ctP1+ ;
           vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+ ;
                   caN1+cmE1+cdI1+ctI1+ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2991cod WITH SPACE(mtMa)
           DELETE
           UNLOCK
      ENDIF
      DO grA_serie IN PAI2700A
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           RETURN
      ENDIF
      SELECT seR_fact
 ENDDO
 SELECT coN_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtDo+vsEr+vdOc
      STORE f1304cod TO vcOd
      STORE f1304cdg TO vcDg
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT peR_fact
 SEEK vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1305ser+f1305doc=vsEr+vdOc
      STORE f1305sr1 TO vsR1
      STORE f1305fac TO vfAc
      SEEK vsEr+vdOc+vsR1+vfAc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vsEr+vdOc+vsR1+vfAc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT itE_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1302tdo WITH SPACE(02)
      REPLACE f1302ser WITH SPACE(03)
      REPLACE f1302doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1303tdo WITH SPACE(02)
      REPLACE f1303ser WITH SPACE(03)
      REPLACE f1303doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT coN_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1304tdo WITH SPACE(02)
      REPLACE f1304ser WITH SPACE(03)
      REPLACE f1304doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT peR_fact
 DO WHILE .T.
      SEEK vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1305ser WITH SPACE(03)
      REPLACE f1305doc WITH SPACE(07)
      REPLACE f1305sr1 WITH SPACE(03)
      REPLACE f1305fac WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT ctAs_tot_vtas
 SEEK vtDo+vsEr
 IF  .NOT. EOF()
      DO CASE
           CASE cmOn=1
                REPLACE f3502to1 WITH f3502to1-ctOt+0.05
           CASE cmOn=2
                REPLACE f3502to2 WITH f3502to2-ctOt+0.05
      ENDCASE
      UNLOCK
 ENDIF
 SELECT peNd_vtas
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      REPLACE f3500tot WITH 0.05
      UNLOCK
 ENDIF
 SELECT deT_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      IF f1301ite=1
           SKIP
           IF EOF() .OR. f1301tdo+f1301ser+f1301doc<>vtDo+vsEr+vdOc
                EXIT
           ENDIF
      ENDIF
      REPLACE f1301tdo WITH SPACE(02)
      REPLACE f1301ser WITH SPACE(03)
      REPLACE f1301doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT deT_fact
 GOTO TOP
 SEEK vtDo+vsEr+vdOc
 REPLACE f1301cod WITH "S000000"
 REPLACE f1301des WITH "Servicio"
 REPLACE f1301dcr WITH "Servicio"
 REPLACE f1301can WITH 1
 REPLACE f1301pie WITH 1
 REPLACE f1301nuv WITH "NIU - Unidad"
 REPLACE f1301nuc WITH "NIU - Unidad"
 REPLACE f1301sol WITH 0.05
 REPLACE f1301pre WITH 0.05
 REPLACE f1301pro WITH 0.05
 REPLACE f1301pdc WITH 0
 REPLACE f1301dct WITH 0
 REPLACE f1301lar WITH 0
 REPLACE f1301la1 WITH 0
 REPLACE f1301la2 WITH 0
 REPLACE f1301la3 WITH 0
 REPLACE f1301la4 WITH 0
 REPLACE f1301la5 WITH 0
 REPLACE f1301la6 WITH 0
 REPLACE f1301la7 WITH 0
 REPLACE f1301la8 WITH 0
 REPLACE f1301la9 WITH 0
 REPLACE f1301anc WITH 0
 REPLACE f1301an1 WITH 0
 REPLACE f1301an2 WITH 0
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
 REPLACE f1301esp WITH 0
 REPLACE f1301pr1 WITH 0.04
 REPLACE f1301to1 WITH 0.04
 REPLACE f1301to2 WITH 0.05
 UNLOCK
 SELECT coP_prod
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM2cod TO vcOd
      SELECT prOductos
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 2 TO vsRr
      ELSE
           STORE f2111ser TO vsRr
      ENDIF
      SELECT kaRdex
      SEEK ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI1+ctP1+vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI1+ ;
                   ctP1+vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           REPLACE f2990cod WITH SPACE(mtMa)
           DELETE
           UNLOCK
      ENDIF
      SEEK ALLTRIM(vcOd)+"*"
      IF EOF()
           STORE 0 TO vsLd, vsLc
      ELSE
           SET NEAR ON
           SEEK ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI1+ctP1+vtDo+vsEr+vdOc
           SET NEAR OFF
           IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                IF EOF()
                     GOTO BOTTOM
                ELSE
                     SKIP -1
                ENDIF
           ENDIF
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
                SKIP
           ELSE
                STORE 0 TO vsLd, vsLc
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
      ENDIF
      DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
           STORE f2990ano TO caNo
           STORE f2990mes TO cmEs
           STORE f2990dia TO cdIa
           STORE f2990tpo TO ctPo
           STORE f2990tpp TO ctPp
           STORE f2990tdo TO ctDo
           STORE f2990ser TO csEr
           STORE f2990doc TO cdOc
           SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ ;
                   ctPp+ctDo+csEr+cdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           DO CASE
                CASE f2990tpo="1" .AND. f2990tpp="0"
                     STORE f2990can TO vsLd
                     STORE f2990caj TO vsLc
                CASE f2990tpo="1"
                     STORE vsLd+f2990can TO vsLd
                     STORE vsLc+f2990caj TO vsLc
                CASE f2990tpo="2"
                     STORE vsLd-f2990can TO vsLd
                     STORE vsLc-f2990caj TO vsLc
           ENDCASE
           REPLACE f2990sld WITH vsLd
           IF mcAj=1 .AND. vsRr=1
                REPLACE f2990caj WITH vsLc
           ENDIF
           UNLOCK
           SKIP
      ENDDO
      DO grA_stock IN PAI2700A WITH vcOd
      SELECT coP_prod
      SKIP
 ENDDO
 WAIT WINDOW NOWAIT "Cambiando Cabecera de Documentos de Venta..."
 SELECT caB_fact
 REPLACE f1300mon WITH 1
 REPLACE f1300net WITH 0.04
 REPLACE f1300igv WITH 0.01
 REPLACE f1300tot WITH 0.05
 REPLACE f1300usu WITH muSu
 REPLACE f1300dat WITH DATE()
 REPLACE f1300tim WITH TIME()
 IF vsW1=2
      SELECT teMporal_doc
      REPLACE f1300mon WITH 1
      REPLACE f1300net WITH 0.04
      REPLACE f1300igv WITH 0.01
      REPLACE f1300tot WITH 0.05
      REPLACE f1300usu WITH muSu
      REPLACE f1300dat WITH DATE()
      REPLACE f1300tim WITH TIME()
 ENDIF
ENDPROC
*
PROCEDURE AnC_1300b
 PRIVATE piTe, pfEc, pdIa, pmEs, paNo, psW0
 STORE 1 TO psW0
 IF psW0=1
      STORE DATE() TO pfEc
      STORE SUBSTR(DTOC(DATE()), 1, 2) TO pdIa
      STORE SUBSTR(DTOC(DATE()), 4, 2) TO pmEs
      STORE SUBSTR(DTOC(DATE()), 7, 4) TO paNo
 ENDIF
 DO grAbar WITH "1"
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 DO muE_1300a IN PVC1300A
 DO CASE
      CASE vtDo="FA" .OR. vtDo="BO"
           STORE "NC" TO xtDo
           STORE msEr(05) TO xsEr
      CASE vtDo="FE"
           STORE "N1" TO xtDo
           STORE "F"+SUBSTR(msEr(12), 2, 2) TO xsEr
      CASE vtDo="BE"
           STORE "N1" TO xtDo
           STORE "B"+SUBSTR(msEr(12), 2, 2) TO xsEr
      CASE vtDo="FC"
           STORE "N3" TO xtDo
           STORE "E"+SUBSTR(msEr(16), 2, 2) TO xsEr
      CASE vtDo="BC"
           STORE "N3" TO xtDo
           STORE "EB"+SUBSTR(msEr(16), 3, 1) TO xsEr
 ENDCASE
 IF psW0=1
      SELECT nuMeracion
      IF (vtDo="FC" .OR. vtDo="BC") .AND. cuLt=1
           SELECT nuMeracion3
      ENDIF
      SEEK xtDo+xsEr
      IF EOF()
           DO nuEvo_rg
           REPLACE f9999tdo WITH xtDo
           REPLACE f9999ser WITH xsEr
           REPLACE f9999num WITH "0000000"
           UNLOCK
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH xtDo+xsEr
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9999num TO xdOc
      STORE STRTRAN(STR(VAL(xdOc)+1, 7, 0), " ", "0") TO xdOc
      REPLACE f9999num WITH xdOc
 ELSE
      STORE SUBSTR(xcM2, 34, 7) TO xdOc
 ENDIF
 IF psW0<>3
      STORE "GI" TO xtD2
      STORE "A"+SUBSTR(msEr(03), 2, 2) TO xsE2
      SELECT nuMeracion
      SEEK xtD2+xsE2
      IF EOF()
           DO nuEvo_rg
           REPLACE f9999tdo WITH xtD2
           REPLACE f9999ser WITH xsE2
           REPLACE f9999num WITH "0000000"
           UNLOCK
      ENDIF
      IF  .NOT. RLOCK()
           DO reG_lock WITH xtD2+xsE2
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9999num TO xdO2
      STORE STRTRAN(STR(VAL(xdO2)+1, 7, 0), " ", "0") TO xdO2
      REPLACE f9999num WITH xdO2
 ENDIF
 SELECT caB_nota
 IF psW0=1
      DO nuEvo_rg
      REPLACE f3610tdo WITH xtDo
      REPLACE f3610ser WITH xsEr
      REPLACE f3610doc WITH xdOc
      REPLACE f3610tit WITH xtIt
      REPLACE f3610nti WITH xnTt
      REPLACE f3610cli WITH xcLi
      REPLACE f3610suc WITH xsUc
      REPLACE f3610nom WITH xnOm
      REPLACE f3610dir WITH xdIr
      REPLACE f3610dis WITH xdIs
      REPLACE f3610dep WITH xdEp
      REPLACE f3610ruc WITH xrUc
      REPLACE f3610ele WITH xdNi
      REPLACE f3610tel WITH xtEl
      REPLACE f3610fem WITH pfEc
      REPLACE f3610fre WITH pfEc
      REPLACE f3610ven WITH xvEn
      REPLACE f3610nve WITH xnVe
      REPLACE f3610pig WITH xpIg
      REPLACE f3610cm1 WITH vtDo+":"+vsEr+"-"+vdOc
      REPLACE f3610cm2 WITH DTOC(xfEm)
      REPLACE f3610mon WITH xmOn
      REPLACE f3610net WITH xnEt
      REPLACE f3610igv WITH xiGv
      REPLACE f3610tot WITH xtOt
      REPLACE f3610est WITH "2"
      REPLACE f3610usu WITH muSu
      REPLACE f3610dat WITH DATE()
      REPLACE f3610tim WITH TIME()
      UNLOCK
 ELSE
      SEEK xtDo+xsEr+xdOc
      STORE f3610fem TO pfEc
      STORE SUBSTR(DTOC(pfEc), 1, 2) TO pdIa
      STORE SUBSTR(DTOC(pfEc), 4, 2) TO pmEs
      STORE SUBSTR(DTOC(pfEc), 7, 4) TO paNo
      IF psW0=3
           REPLACE f3610tot WITH xtOt
      ENDIF
 ENDIF
 IF psW0<>3
      SELECT tiPo_ing_caja
      SET FILTER TO f9314opc=6
      GOTO TOP
      IF EOF()
           STORE "ZZ" TO vtIp
           STORE "Aplicación de Nota de Crédito" TO vnTi
      ELSE
           STORE f9314tip TO vtIp
           STORE f9314nti TO vnTi
      ENDIF
      SELECT caMbio
      SEEK pfEc
      IF EOF()
           STORE 1 TO xtCa
      ELSE
           STORE f9111tc3 TO xtCa
      ENDIF
      STORE "V1" TO xtD3
      STORE "A"+SUBSTR(msEr(03), 2, 2) TO xsE3
      SELECT nuMeracionc
      SEEK paNo+pmEs+xtD3+xsE3
      IF EOF()
           DO nuEvo_rg
           REPLACE f9397ano WITH paNo
           REPLACE f9397mes WITH pmEs
           REPLACE f9397tdo WITH xtD3
           REPLACE f9397ser WITH xsE3
           REPLACE f9397num WITH "0000000"
           UNLOCK
      ENDIF
      SEEK paNo+pmEs+xtD3+xsE3
      IF  .NOT. RLOCK()
           DO reG_lock WITH paNo+pmEs+xtD3+xsE3
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      STORE f9397num TO xdO3
      STORE STRTRAN(STR(VAL(xdO3)+1, 7, 0), " ", "0") TO xdO3
      REPLACE f9397num WITH xdO3
      SELECT caB_ing_caja
      DO nuEvo_rg
      REPLACE f3510ano WITH paNo
      REPLACE f3510mes WITH pmEs
      REPLACE f3510ser WITH xsE3
      REPLACE f3510num WITH xdO3
      REPLACE f3510dia WITH pdIa
      REPLACE f3510tpo WITH 6
      REPLACE f3510tpp WITH 1
      REPLACE f3510caj WITH 0
      REPLACE f3510tip WITH vtIp
      REPLACE f3510nti WITH vnTi
      REPLACE f3510tca WITH xtCa
      REPLACE f3510mon WITH xmOn
      REPLACE f3510tot WITH 0
      DO CASE
           CASE xtDo="N1"
                REPLACE f3510glo WITH "NC:"+SUBSTR(xsEr, 1, 1)+"0"+ ;
                        SUBSTR(xsEr, 2, 2)+"-"+xdOc+" / "+vtDo+":"+vsEr+ ;
                        "-"+vdOc
           CASE xtDo="N3" .AND. xsEr="E0"
                REPLACE f3510glo WITH "NC:E0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc+ ;
                        " / "+vtDo+":"+vsEr+"-"+vdOc
           CASE xtDo="N3" .AND. xsEr="EB"
                REPLACE f3510glo WITH "NC:EB0"+SUBSTR(xsEr, 3, 1)+"-"+ ;
                        xdOc+" / "+vtDo+":"+vsEr+"-"+vdOc
           OTHERWISE
                REPLACE f3510glo WITH xtDo+":"+xsEr+"-"+xdOc+" / "+vtDo+ ;
                        ":"+vsEr+"-"+vdOc
      ENDCASE
      REPLACE f3510rcb WITH " "
      REPLACE f3510srl WITH " "
      REPLACE f3510let WITH " "
      REPLACE f3510dnc WITH 2
      REPLACE f3510est WITH "2"
      REPLACE f3510usu WITH muSu
      REPLACE f3510dat WITH DATE()
      REPLACE f3510tim WITH TIME()
      UNLOCK
      SELECT deT_ing_caja
      DO nuEvo_rg
      REPLACE f3511ano WITH paNo
      REPLACE f3511mes WITH pmEs
      REPLACE f3511ser WITH xsE3
      REPLACE f3511num WITH xdO3
      REPLACE f3511tdo WITH xtDo
      REPLACE f3511sr1 WITH xsEr
      REPLACE f3511doc WITH xdOc
      REPLACE f3511pag WITH xtOt
      DO nuEvo_rg
      REPLACE f3511ano WITH paNo
      REPLACE f3511mes WITH pmEs
      REPLACE f3511ser WITH xsE3
      REPLACE f3511num WITH xdO3
      REPLACE f3511tdo WITH vtDo
      REPLACE f3511sr1 WITH vsEr
      REPLACE f3511doc WITH vdOc
      REPLACE f3511pag WITH xtOt
      UNLOCK
      SELECT caB_ingr
      DO nuEvo_rg
      REPLACE f2700tdo WITH xtD2
      REPLACE f2700ser WITH xsE2
      REPLACE f2700doc WITH xdO2
      REPLACE f2700tip WITH "ZZ"
      REPLACE f2700nti WITH "Devolución con Nota de Crédito"
      REPLACE f2700tpp WITH 2
      REPLACE f2700fem WITH pfEc
      DO CASE
           CASE xtDo="N1"
                REPLACE f2700cm1 WITH "NC:"+SUBSTR(xsEr, 1, 1)+"0"+ ;
                        SUBSTR(xsEr, 2, 2)+"-"+xdOc
           CASE xtDo="N3" .AND. xsEr="EB"
                REPLACE f2700cm1 WITH "NC:EB0"+SUBSTR(xsEr, 3, 1)+"-"+xdOc
           CASE xtDo="N3"
                REPLACE f2700cm1 WITH "NC:E0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc
           OTHERWISE
                REPLACE f2700cm1 WITH xtDo+":"+xsEr+"-"+xdOc
      ENDCASE
      REPLACE f2700est WITH "2"
      REPLACE f2700usu WITH muSu
      REPLACE f2700maq WITH mmAq
      REPLACE f2700dat WITH DATE()
      REPLACE f2700tim WITH TIME()
      UNLOCK
 ENDIF
 IF psW0=1
      SELECT deT_nota
      DO nuEvo_rg
      REPLACE f3611tdo WITH xtDo
      REPLACE f3611ser WITH xsEr
      REPLACE f3611doc WITH xdOc
      REPLACE f3611ite WITH 1
      REPLACE f3611cod WITH "01"
      REPLACE f3611des WITH  ;
              "Anulación de la Operación por no llegar a un acuerdo comercial"
      REPLACE f3611cuv WITH " "
      REPLACE f3611nuv WITH " "
      REPLACE f3611pre WITH 0
      REPLACE f3611tot WITH 0
 ENDIF
 SELECT deT_fact
 GOTO TOP
 STORE 2 TO piTe
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301cod TO vcOd
      STORE f1301des TO vdEs
      STORE f1301dcr TO vdCr
      STORE f1301cuv TO vcUv
      STORE f1301nuv TO vnUv
      STORE f1301cuc TO vcUc
      STORE f1301nuc TO vnUc
      STORE f1301med TO vmEd
      STORE f1301can TO vcAn
      STORE f1301la1 TO vlA1
      STORE f1301la2 TO vlA2
      STORE f1301an1 TO vaN1
      STORE f1301an2 TO vaN2
      STORE f1301esp TO veSp
      STORE f1301to1 TO vtO1
      STORE f1301to2 TO vtO2
      SELECT deT_nota
      IF psW0=3
           SEEK xtDo+xsEr+xdOc+STR(piTe, 2, 0)
           IF  .NOT. EOF()
                REPLACE f3611tdo WITH " "
                DELETE
           ENDIF
      ENDIF
      IF psW0=1 .OR. psW0=3
           DO nuEvo_rg
           REPLACE f3611tdo WITH xtDo
           REPLACE f3611ser WITH xsEr
           REPLACE f3611doc WITH xdOc
           REPLACE f3611ite WITH piTe
           REPLACE f3611cod WITH vcOd
           REPLACE f3611des WITH vdEs
           REPLACE f3611cuv WITH vcUv
           REPLACE f3611nuv WITH vnUv
           REPLACE f3611can WITH vcAn
           REPLACE f3611pre WITH vtO1/vcAn
           REPLACE f3611tot WITH vtO2
      ENDIF
      IF psW0<>3
           SELECT deT_ingr
           DO nuEvo_rg
           REPLACE f2701tdo WITH xtD2
           REPLACE f2701ser WITH xsE2
           REPLACE f2701doc WITH xdO2
           REPLACE f2701ite WITH piTe-1
           REPLACE f2701cod WITH vcOd
           REPLACE f2701des WITH vdEs
           REPLACE f2701dcr WITH vdCr
           REPLACE f2701cuv WITH vcUv
           REPLACE f2701nuv WITH vnUv
           REPLACE f2701cuc WITH vcUc
           REPLACE f2701nuc WITH vnUc
           REPLACE f2701med WITH vmEd
           REPLACE f2701can WITH vcAn
           REPLACE f2701caj WITH 0
           REPLACE f2701cos WITH 0
           REPLACE f2701pie WITH 0
           REPLACE f2701la1 WITH vlA1
           REPLACE f2701an1 WITH vaN1
           REPLACE f2701la2 WITH vlA2
           REPLACE f2701an2 WITH vaN2
           REPLACE f2701esp WITH veSp
           REPLACE f2701tpo WITH 1
      ENDIF
      STORE piTe+1 TO piTe
      IF psW0<>3
           SELECT kaRdex
           DO nuEvo_rg
           REPLACE f2990cod WITH vcOd
           REPLACE f2990ano WITH paNo
           REPLACE f2990mes WITH pmEs
           REPLACE f2990dia WITH pdIa
           REPLACE f2990tpp WITH "1"
           REPLACE f2990tpo WITH "1"
           REPLACE f2990tra WITH "1"
           REPLACE f2990can WITH vcAn
           REPLACE f2990caj WITH 0
           REPLACE f2990sld WITH 0
           REPLACE f2990slc WITH 0
           REPLACE f2990sls WITH 0
           REPLACE f2990scs WITH 0
           REPLACE f2990cos WITH 0
           REPLACE f2990dct WITH 0
           REPLACE f2990gas WITH 0
           REPLACE f2990prm WITH 0
           REPLACE f2990tdo WITH xtD2
           REPLACE f2990ser WITH xsE2
           REPLACE f2990doc WITH xdO2
           REPLACE f2990sr1 WITH SPACE(03)
           REPLACE f2990rem WITH SPACE(07)
           REPLACE f2990td1 WITH SPACE(02)
           REPLACE f2990srf WITH SPACE(03)
           REPLACE f2990fac WITH SPACE(20)
           REPLACE f2990ped WITH SPACE(07)
           REPLACE f2990sor WITH SPACE(03)
           REPLACE f2990ord WITH SPACE(07)
           REPLACE f2990emi WITH pfEc
           REPLACE f2990fem WITH pfEc
           REPLACE f2990tit WITH SPACE(04)
           REPLACE f2990cli WITH SPACE(04)
           REPLACE f2990nom WITH xtDo+":"+xsEr+"-"+xdOc
           REPLACE f2990pig WITH miGv
           REPLACE f2990mon WITH 1
           REPLACE f2990tne WITH 0
           REPLACE f2990tig WITH 0
           REPLACE f2990tfa WITH 0
           REPLACE f2990ten WITH SPACE(02)
           UNLOCK
           SKIP -1
           IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990sld TO vsLd
                STORE f2990slc TO vsLc
           ELSE
                STORE 0 TO vsLd, vsLc
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"+paNo+pmEs+pdIa+"1"+"1"+xtD2+xsE2+xdO2
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                REPLACE f2990slc WITH vsLc
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
      ENDIF
      SELECT deT_fact
      SKIP
 ENDDO
 IF psW0=1
      WAIT WINDOW NOWAIT "Anulando Cabecera de Documentos de Venta..."
      SELECT caB_fact
      DO CASE
           CASE xtDo="N1"
                REPLACE f1300cm2 WITH "Anulado con NC:"+SUBSTR(xsEr, 1,  ;
                        1)+"0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc
           CASE xtDo="N3" .AND. xsEr="EB"
                REPLACE f1300cm2 WITH "Anulado con NC:EB0"+SUBSTR(xsEr, 3,  ;
                        1)+"-"+xdOc
           CASE xtDo="N3"
                REPLACE f1300cm2 WITH "Anulado con NC:E0"+SUBSTR(xsEr, 2,  ;
                        2)+"-"+xdOc
           OTHERWISE
                REPLACE f1300cm2 WITH "Anulado con NC:"+xsEr+"-"+xdOc
      ENDCASE
      REPLACE f1300usu WITH muSu
      REPLACE f1300dat WITH DATE()
      REPLACE f1300tim WITH TIME()
      UNLOCK
      IF vsW1=2
           SELECT teMporal_doc
           DO CASE
                CASE xtDo="N1"
                     REPLACE f1300cm2 WITH "Anulado con NC:"+SUBSTR(xsEr,  ;
                             1, 1)+"0"+SUBSTR(xsEr, 2, 2)+"-"+xdOc
                CASE xtDo="N3" .AND. xsEr="EB"
                     REPLACE f1300cm2 WITH "Anulado con NC:EB0"+ ;
                             SUBSTR(xsEr, 3, 1)+"-"+xdOc
                CASE xtDo="N3"
                     REPLACE f1300cm2 WITH "Anulado con NC:E0"+ ;
                             SUBSTR(xsEr, 2, 2)+"-"+xdOc
                OTHERWISE
                     REPLACE f1300cm2 WITH "Anulado con NC:"+xsEr+"-"+xdOc
           ENDCASE
           REPLACE f1300usu WITH muSu
           REPLACE f1300dat WITH DATE()
           REPLACE f1300tim WITH TIME()
           UNLOCK
      ENDIF
      SELECT peNd_vtas
      DO nuEvo_rg
      REPLACE f3500tdo WITH xtDo
      REPLACE f3500ser WITH xsEr
      REPLACE f3500doc WITH xdOc
      REPLACE f3500ruc WITH xrUc
      REPLACE f3500ven WITH xvEn
      REPLACE f3500nve WITH xnVe
      REPLACE f3500tec WITH xtEc
      REPLACE f3500nte WITH xnTe
      REPLACE f3500tit WITH xtIt
      REPLACE f3500nti WITH xnTt
      REPLACE f3500cli WITH xcLi
      REPLACE f3500suc WITH xsUc
      REPLACE f3500nom WITH xnOm
      REPLACE f3500fpa WITH xfPa
      REPLACE f3500nfp WITH xnFp
      REPLACE f3500fem WITH pfEc
      REPLACE f3500fve WITH pfEc
      REPLACE f3500mon WITH xmOn
      REPLACE f3500can WITH "2"
      REPLACE f3500pig WITH xpIg
      REPLACE f3500tot WITH xtOt
      REPLACE f3500acu WITH xtOt
      IF f3500tot-f3500acu=0
           REPLACE f3500est WITH "@"
      ENDIF
      UNLOCK
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           REPLACE f3500acu WITH f3500acu+xtOt
           IF f3500tot-f3500acu=0
                REPLACE f3500est WITH "@"
           ENDIF
           UNLOCK
      ENDIF
 ELSE
      IF psW0=3
           SELECT peNd_vtas
           SEEK xtDo+xsEr+xdOc
           IF  .NOT. EOF()
                REPLACE f3500tot WITH xtOt
                IF f3500tot-f3500acu=0
                     REPLACE f3500est WITH "@"
                ENDIF
                UNLOCK
           ENDIF
      ENDIF
 ENDIF
 UNLOCK ALL
 STORE "NOTA DE CREDITO "+xtDo+":"+xsEr+"-"+xdOc+" CREADA" TO mmSj
 DO poNmsj
 = INKEY(1)
 RELEASE piTe, pfEc, pdIa, pmEs, paNo, psW0
ENDPROC
*
PROCEDURE Anu_1300b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 DO CASE
      CASE vtDo="NP" .OR. vtDo="CT" .OR. vtDo="PC"
           DIMENSION vtBx[4]
           STORE "Cliente no quiere" TO vtBx[1]
           STORE "Se malogró la impresión" TO vtBx[2]
           STORE "Datos errados" TO vtBx[3]
           STORE "Error del Sistema" TO vtBx[4]
      CASE vtDo="FA" .OR. vtDo="BO" .OR. vtDo="TK" .OR. vtDo="TF" .OR.  ;
           vtDo="TB"
           DIMENSION vtBx[5]
           STORE "Cliente no quiere" TO vtBx[1]
           STORE "Se malogró la impresión" TO vtBx[2]
           STORE "Datos errados" TO vtBx[3]
           STORE "Error del Sistema" TO vtBx[4]
           STORE "Anulación de Operación c/Nota de Crédito" TO vtBx[5]
      CASE (vtDo="FC" .OR. vtDo="BC") .AND. mfEl<>"2"
           DIMENSION vtBx[3]
           STORE "Anulación de Operación c/Nota de Crédito" TO vtBx[1]
           STORE "Error Comunicación" TO vtBx[2]
           STORE "Anulación Especial con Servicio" TO vtBx[3]
      OTHERWISE
           DIMENSION vtBx[2]
           STORE "Anulación de Operación c/Nota de Crédito" TO vtBx[1]
           STORE "Error Comunicación" TO vtBx[2]
 ENDCASE
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300CM1", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+":"+vsEr+"-"+vdOc
 IF  .NOT. EOF() .AND. f1300est<>"9"
      STORE "No se puede anular Documento porque tiene Percepción:"+ ;
            f1300tdo+":"+f1300ser+"-"+f1300doc TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 IF  .NOT. EOF() .AND. f1300cm2="Anulado con Nota"
      STORE "Documento porque ya está ANULADO con la NOTA DE CRÉDITO: "+ ;
            SUBSTR(f1300cm2, 31, 12) TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 ptX1 = "¿Desea Anular este Documento?"
 DO CASE
      CASE vtDo="TK"
           ptX2 = "Ticket No.:"+vsEr+"-"+vdOc
      CASE vtDo="TF"
           ptX2 = "Ticket Factura No.:"+vsEr+"-"+vdOc
      CASE vtDo="TB"
           ptX2 = "Ticket Boleta No.:"+vsEr+"-"+vdOc
      CASE vtDo="FA"
           ptX2 = "Factura No.:"+vsEr+"-"+vdOc
      CASE vtDo="FE"
           ptX2 = "Factura Electrónica No. F:"+vsEr+"-"+vdOc
      CASE vtDo="FC"
           ptX2 = "Factura Electrónica SOL No. E:"+vsEr+"-"+vdOc
      CASE vtDo="BO"
           ptX2 = "Boleta de Venta No.:"+vsEr+"-"+vdOc
      CASE vtDo="BE"
           ptX2 = "Boleta de Venta Electrónica No. B:"+vsEr+"-"+vdOc
      CASE vtDo="BC"
           ptX2 = "Boleta de Venta Electrónica SOL No. EB:"+vsEr+"-"+vdOc
      CASE vtDo="NP"
           ptX2 = "Nota de Pedido No.:"+vsEr+"-"+vdOc
      CASE vtDo="PC"
           ptX2 = "Percepción No.:"+vsEr+"-"+vdOc
      CASE vtDo="CT"
           ptX2 = "Cotización No.:"+vsEr+"-"+vdOc
      OTHERWISE
           ptX2 = "SIN DOCUMENTO No.:"+vsEr+"-"+vdOc
 ENDCASE
 poPc = MESSAGEBOX(ptX1+" "+ptX2, 0036, " ")
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO q1_0000a
 SAVE SCREEN TO vpAn_11
 STORE k_Enter TO mkEy
 STORE 1 TO vmOt
 DO coLbln
 DO CASE
      CASE vtDo="NP" .OR. vtDo="CT" .OR. vtDo="PC"
           @ mfI0+3.5, mcO0+40 TO mfI0+13.0, mcO0+75 PATTERN 1
           @mFI0+4.0,mCO0+44 Say "Motivo de Anulación" Font "&mLetAri",9 Style "BQ"
           @mFI0+5.5,mCO0+42 Get vMOT                  Font "&mLetAri",9 Style "NQ" Default vMOT Function "*RVT &vTBX[1];&vTBX[2];&vTBX[3];&vTBX[4]" Size 1.5,20
      CASE vtDo="FA" .OR. vtDo="BO" .OR. vtDo="TK" .OR. vtDo="TF" .OR.  ;
           vtDo="TB"
           @ mfI0+3.5, mcO0+40 TO mfI0+14.5, mcO0+92 PATTERN 1
           @mFI0+4.0,mCO0+44 Say "Motivo de Anulación" Font "&mLetAri",9 Style "BQ"
           @mFI0+5.5,mCO0+41 Get vMOT                  Font "&mLetAri",9 Style "NQ" Default vMOT Function "*RVT &vTBX[1];&vTBX[2];&vTBX[3];&vTBX[4];&vTBX[5]" Size 1.5,20
      CASE (vtDo="FC" .OR. vtDo="BC") .AND. mfEl<>"2"
           @ mfI0+3.5, mcO0+40 TO mfI0+11.0, mcO0+92 PATTERN 1
           @mFI0+4.0,mCO0+49 Say "Motivo de Anulación" Font "&mLetAri",9 Style "BQ"
           @mFI0+5.5,mCO0+41 Get vMOT                  Font "&mLetAri",9 Style "NQ" Default vMOT Function "*RVT &vTBX[1];&vTBX[2];&vTBX[3]" Size 1.5,20
      OTHERWISE
           @ mfI0+3.5, mcO0+40 TO mfI0+09.5, mcO0+92 PATTERN 1
           @mFI0+4.0,mCO0+44 Say "Motivo de Anulación" Font "&mLetAri",9 Style "BQ"
           @mFI0+5.5,mCO0+41 Get vMOT                  Font "&mLetAri",9 Style "NQ" Default vMOT Function "*RVT &vTBX[1];&vTBX[2]" Size 1.5,20
 ENDCASE
 SET CONFIRM ON
 READ
 SET CONFIRM OFF
 RESTORE SCREEN FROM vpAn_11
 DO p1_0000a
 STORE 99 TO mkEy
 DO grAbar WITH "4"
 DO CASE
      CASE LASTKEY()=k_Esc
           STORE "ANULACION CANCELADA..." TO mmSj
           DO poNmsj
           = INKEY(1)
           = INKEY(1)
           RELEASE ptX1, ptX2, poPc, vtBx
           RETURN
      CASE vtDo="NP" .OR. vtDo="CT" .OR. vtDo="PC"
      CASE (vtDo="FA" .OR. vtDo="BO" .OR. vtDo="TK" .OR. vtDo="TF" .OR.  ;
           vtDo="TB") .AND. vmOt<>5
      CASE (vtDo="FC" .OR. vtDo="BC") .AND. vmOt=2 .AND. mfEl<>"2"
      CASE (vtDo="FE" .OR. vtDo="BE") .AND. vmOt=2 .AND. mfEl<>"2"
      CASE (vtDo="FC" .OR. vtDo="BC") .AND. vmOt=3 .AND. mfEl<>"2"
           DO anS_1300b
           RELEASE ptX1, ptX2, poPc, vtBx
           RETURN
      OTHERWISE
           DO anC_1300b
           RELEASE ptX1, ptX2, poPc, vtBx
           RETURN
 ENDCASE
 SELECT deT_ing_caja
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Caja..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(1)
      = INKEY(1)
      RETURN
 ENDIF
 SELECT deT_ing_bancos
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      STORE "No se puede anular Documento porque tiene Pagos en Bancos..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0.01)
      RETURN
 ENDIF
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE 99 TO mkEy
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 STORE "1" TO ctP1
 STORE "2" TO ctI1
 STORE "V" TO ceSt
 STORE f1300mon TO cmOn
 STORE f1300tot TO ctOt
 STORE SUBSTR(DTOC(f1300fde), 1, 2) TO cdI1
 STORE SUBSTR(DTOC(f1300fde), 4, 2) TO cmE1
 STORE SUBSTR(DTOC(f1300fde), 7, 4) TO caN1
 IF vtDo<>"CT"
      SELECT ctAs_tot_vtas
      SEEK vtDo+vsEr
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
      SELECT peNd_vtas
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           IF  .NOT. RLOCK()
                DO reG_lock WITH vtDo+vsEr+vdOc
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
      ENDIF
 ENDIF
 IF vtDo<>"CT"
      SELECT coP_prod
      ZAP
      REINDEX
      SELECT deT_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           STORE f1301cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                SELECT deT_fact
                SKIP
                LOOP
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     STORE 99 TO mkEy
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT prO_tot
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                DO nuEvo_rg
                REPLACE f2118cod WITH vcOd
                REPLACE f2118sto WITH 0
                REPLACE f2118caj WITH 0
                REPLACE f2118cpe WITH 0
                REPLACE f2118cjp WITH 0
                REPLACE f2118sts WITH 0
                REPLACE f2118orp WITH 0
                REPLACE f2118vcp WITH 0
                REPLACE f2118vcs WITH 0
                REPLACE f2118prm WITH 0
                UNLOCK
                SEEK ALLTRIM(vcOd)+"*"
           ENDIF
           IF  .NOT. RLOCK()
                DO reG_lock WITH ALLTRIM(vcOd)+"*"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ELSE
                RLOCK()
           ENDIF
           SELECT coP_prod
           APPEND BLANK
           REPLACE ftM2cod WITH vcOd
           SELECT deT_fact
           SKIP
      ENDDO
      SELECT coN_fact
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtDo+vsEr+vdOc
           STORE f1304cdg TO vcOd
           SELECT coP_prod
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                APPEND BLANK
                REPLACE ftM2cod WITH vcOd
                SELECT prOductos
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     SELECT coN_fact
                     SKIP
                     LOOP
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                SELECT prO_tot
                SEEK ALLTRIM(vcOd)+"*"
                IF EOF()
                     DO nuEvo_rg
                     REPLACE f2118cod WITH vcOd
                     REPLACE f2118sto WITH 0
                     REPLACE f2118caj WITH 0
                     REPLACE f2118cpe WITH 0
                     REPLACE f2118cjp WITH 0
                     REPLACE f2118sts WITH 0
                     REPLACE f2118orp WITH 0
                     REPLACE f2118vcp WITH 0
                     REPLACE f2118vcs WITH 0
                     REPLACE f2118prm WITH 0
                     UNLOCK
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
           ENDIF
           SELECT coN_fact
           SKIP
      ENDDO
 ENDIF
 SELECT deT_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
      STORE f1301ite TO vrEc
      SEEK vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+STR(vrEc, 2, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT itE_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1302tdo+f1302ser+f1302doc=vtDo+vsEr+vdOc
      STORE f1302cod TO vcOd
      STORE f1302rcc TO vrEc
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+STR(vrEc, 3, 0)
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT seR_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1303tdo+f1303ser+f1303doc=vtDo+vsEr+vdOc
      STORE f1303cod TO vcOd
      STORE f1303ped TO vpD1
      STORE f1303sec TO vsEc
      STORE f1303mot TO vmOt
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
      IF vtDo<>"CT"
           SELECT kaRdex_series
           SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+vsEc+caN1+cmE1+cdI1+ctI1+ ;
                ctP1+vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+ALLTRIM(vpD1)+ ;
                        vsEc+caN1+cmE1+cdI1+ctI1+ctP1+vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2991cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           DO grA_serie IN PAI2700A
           IF mkEy=k_Esc
                STORE 99 TO mkEy
                RETURN
           ENDIF
      ENDIF
      SELECT seR_fact
 ENDDO
 SELECT coN_fact
 SEEK vtDo+vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1304tdo+f1304ser+f1304doc=vtDo+vsEr+vdOc
      STORE f1304cod TO vcOd
      STORE f1304cdg TO vcDg
      SEEK vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc+ALLTRIM(vcOd)+"*"+ALLTRIM(vcDg)+"*"
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT peR_fact
 SEEK vsEr+vdOc
 DO WHILE  .NOT. EOF() .AND. f1305ser+f1305doc=vsEr+vdOc
      STORE f1305sr1 TO vsR1
      STORE f1305fac TO vfAc
      SEEK vsEr+vdOc+vsR1+vfAc
      IF  .NOT. RLOCK()
           DO reG_lock WITH vsEr+vdOc+vsR1+vfAc
           IF mkEy=k_Esc
                WAIT CLEAR
                = INKEY(0.01)
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
      SKIP
 ENDDO
 SELECT itE_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1302tdo WITH SPACE(02)
      REPLACE f1302ser WITH SPACE(03)
      REPLACE f1302doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT seR_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1303tdo WITH SPACE(02)
      REPLACE f1303ser WITH SPACE(03)
      REPLACE f1303doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT coN_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1304tdo WITH SPACE(02)
      REPLACE f1304ser WITH SPACE(03)
      REPLACE f1304doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 SELECT peR_fact
 DO WHILE .T.
      SEEK vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1305ser WITH SPACE(03)
      REPLACE f1305doc WITH SPACE(07)
      REPLACE f1305sr1 WITH SPACE(03)
      REPLACE f1305fac WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 IF vtDo<>"CT"
      SELECT ctAs_tot_vtas
      SEEK vtDo+vsEr
      IF  .NOT. EOF()
           DO CASE
                CASE cmOn=1
                     REPLACE f3502to1 WITH f3502to1-ctOt
                CASE cmOn=2
                     REPLACE f3502to2 WITH f3502to2-ctOt
           ENDCASE
           UNLOCK
      ENDIF
      SELECT peNd_vtas
      SEEK vtDo+vsEr+vdOc
      IF  .NOT. EOF()
           REPLACE f3500tdo WITH SPACE(02)
           REPLACE f3500ser WITH SPACE(03)
           REPLACE f3500doc WITH SPACE(07)
           DELETE
           UNLOCK
      ENDIF
 ENDIF
 SELECT deT_fact
 DO WHILE .T.
      SEEK vtDo+vsEr+vdOc
      IF EOF()
           EXIT
      ENDIF
      REPLACE f1301tdo WITH SPACE(02)
      REPLACE f1301ser WITH SPACE(03)
      REPLACE f1301doc WITH SPACE(07)
      DELETE
      UNLOCK
 ENDDO
 IF vtDo<>"CT"
      SELECT coP_prod
      GOTO TOP
      DO WHILE  .NOT. EOF()
           STORE ftM2cod TO vcOd
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 2 TO vsRr
           ELSE
                STORE f2111ser TO vsRr
           ENDIF
           SELECT kaRdex
           SEEK ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI1+ctP1+vtDo+vsEr+vdOc
           IF  .NOT. EOF()
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ ;
                        ctI1+ctP1+vtDo+vsEr+vdOc
                     IF mkEy=k_Esc
                          STORE 99 TO mkEy
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                REPLACE f2990cod WITH SPACE(mtMa)
                DELETE
                UNLOCK
           ENDIF
           SEEK ALLTRIM(vcOd)+"*"
           IF EOF()
                STORE 0 TO vsLd, vsLc
           ELSE
                SET NEAR ON
                SEEK ALLTRIM(vcOd)+"*"+caN1+cmE1+cdI1+ctI1+ctP1+vtDo+vsEr+vdOc
                SET NEAR OFF
                IF EOF() .OR. ALLTRIM(f2990cod)+"*"<>ALLTRIM(vcOd)+"*"
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                SKIP -1
                IF  .NOT. BOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                     STORE f2990sld TO vsLd
                     STORE f2990slc TO vsLc
                     SKIP
                ELSE
                     STORE 0 TO vsLd, vsLc
                     SEEK ALLTRIM(vcOd)+"*"
                ENDIF
           ENDIF
           DO WHILE  .NOT. EOF() .AND. ALLTRIM(f2990cod)+"*"=ALLTRIM(vcOd)+"*"
                STORE f2990ano TO caNo
                STORE f2990mes TO cmEs
                STORE f2990dia TO cdIa
                STORE f2990tpo TO ctPo
                STORE f2990tpp TO ctPp
                STORE f2990tdo TO ctDo
                STORE f2990ser TO csEr
                STORE f2990doc TO cdOc
                SEEK ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ctPo+ctPp+ctDo+csEr+cdOc
                IF  .NOT. RLOCK()
                     DO reG_lock WITH ALLTRIM(vcOd)+"*"+caNo+cmEs+cdIa+ ;
                        ctPo+ctPp+ctDo+csEr+cdOc
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     RLOCK()
                ENDIF
                DO CASE
                     CASE f2990tpo="1" .AND. f2990tpp="0"
                          STORE f2990can TO vsLd
                          STORE f2990caj TO vsLc
                     CASE f2990tpo="1"
                          STORE vsLd+f2990can TO vsLd
                          STORE vsLc+f2990caj TO vsLc
                     CASE f2990tpo="2"
                          STORE vsLd-f2990can TO vsLd
                          STORE vsLc-f2990caj TO vsLc
                ENDCASE
                REPLACE f2990sld WITH vsLd
                IF mcAj=1 .AND. vsRr=1
                     REPLACE f2990caj WITH vsLc
                ENDIF
                UNLOCK
                SKIP
           ENDDO
           DO grA_stock IN PAI2700A WITH vcOd
           SELECT coP_prod
           SKIP
      ENDDO
 ENDIF
 WAIT WINDOW NOWAIT "Anulando Cabecera de Documentos de Venta..."
 SELECT caB_fact
 REPLACE f1300cm2 WITH vtBx(vmOt)
 REPLACE f1300est WITH "9"
 REPLACE f1300usu WITH muSu
 REPLACE f1300dat WITH DATE()
 REPLACE f1300tim WITH TIME()
 IF vsW1=2
      SELECT teMporal_doc
      REPLACE f1300cm2 WITH vtBx(vmOt)
      REPLACE f1300est WITH "9"
      REPLACE f1300usu WITH muSu
      REPLACE f1300dat WITH DATE()
      REPLACE f1300tim WITH TIME()
 ENDIF
 RELEASE ptX1, ptX2, poPc, vtBx
ENDPROC
*
PROCEDURE Eli_1300b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea ELIMINAR este Documento?"
 DO CASE
      CASE vtDo="TK"
           ptX2 = "Ticket No.:"+vsEr+"-"+vdOc
      CASE vtDo="TF"
           ptX2 = "Ticket Factura No.:"+vsEr+"-"+vdOc
      CASE vtDo="TB"
           ptX2 = "Ticket Boleta No.:"+vsEr+"-"+vdOc
      CASE vtDo="FA"
           ptX2 = "Factura No.:"+vsEr+"-"+vdOc
      CASE vtDo="FE"
           ptX2 = "Factura Electrónica No. F:"+vsEr+"-"+vdOc
      CASE vtDo="FC"
           ptX2 = "Factura Electrónica SOL No. E:"+vsEr+"-"+vdOc
      CASE vtDo="BO"
           ptX2 = "Boleta de Venta No.:"+vsEr+"-"+vdOc
      CASE vtDo="BE"
           ptX2 = "Boleta de Venta Electrónica No. B:"+vsEr+"-"+vdOc
      CASE vtDo="BC"
           ptX2 = "Boleta de Venta Electrónica SOL No. EB:"+vsEr+"-"+vdOc
      CASE vtDo="NP"
           ptX2 = "Nota de Pedido No.:"+vsEr+"-"+vdOc
      CASE vtDo="PC"
           ptX2 = "Percepción No.:"+vsEr+"-"+vdOc
      CASE vtDo="CT"
           ptX2 = "Cotización No.:"+vsEr+"-"+vdOc
      OTHERWISE
           ptX2 = "SIN DOCUMENTO No.:"+vsEr+"-"+vdOc
 ENDCASE
 poPc = MESSAGEBOX(ptX1+" "+ptX2, 0036, " ")
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "2"
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 REPLACE f1300tdo WITH SPACE(02)
 REPLACE f1300ser WITH SPACE(03)
 REPLACE f1300doc WITH SPACE(07)
 DELETE
 SELECT teMporal_doc
 DELETE
 PACK
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 DO CASE
      CASE vsW1=1
           SELECT caB_fact
      CASE vsW1=2
           SELECT teMporal_doc
 ENDCASE
 DO orD_1300b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 DO seE_1300b WITH "i"
 SET NEAR OFF
 DO paN_1300b
 STORE ifIl TO vfIl
 DO muE_1300b WITH "i", "v"
 DO seE_1300b WITH "v"
 DO diS_1300b WITH "R"
 STORE k_Tab TO mkEy
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE Can_1300b
 PRIVATE ptX1, ptX2, poPc
 = INKEY(0.01)
 ptX1 = "¿Desea que este documento se cancele automáticamente?"
 DO CASE
      CASE vtDo="TK"
           ptX2 = "Ticket No.:"+vsEr+"-"+vdOc
      CASE vtDo="TF"
           ptX2 = "Ticket Factura No.:"+vsEr+"-"+vdOc
      CASE vtDo="TB"
           ptX2 = "Ticket Boleta No.:"+vsEr+"-"+vdOc
      CASE vtDo="FA"
           ptX2 = "Factura No.:"+vsEr+"-"+vdOc
      CASE vtDo="FE"
           ptX2 = "Factura Electrónica No. F:"+vsEr+"-"+vdOc
      CASE vtDo="FC"
           ptX2 = "Factura Electrónica SOL No. E:"+vsEr+"-"+vdOc
      CASE vtDo="BO"
           ptX2 = "Boleta de Venta No.:"+vsEr+"-"+vdOc
      CASE vtDo="BE"
           ptX2 = "Boleta de Venta Electrónica No. B:"+vsEr+"-"+vdOc
      CASE vtDo="BC"
           ptX2 = "Boleta de Venta Electrónica SOL No. EB:"+vsEr+"-"+vdOc
      CASE vtDo="NP"
           ptX2 = "Nota de Pedido No.:"+vsEr+"-"+vdOc
      CASE vtDo="PC"
           ptX2 = "Percepción No.:"+vsEr+"-"+vdOc
      OTHERWISE
           ptX2 = "SIN DOCUMENTO No.:"+vsEr+"-"+vdOc
 ENDCASE
 poPc = MESSAGEBOX(ptX1, 0036, ptX2)
 IF poPc=7
      UNLOCK ALL
      RETURN
 ENDIF
 DO grAbar WITH "5"
 SELECT caB_fact
 DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SEEK vtDo+vsEr+vdOc
 IF EOF()
      STORE "Documento ha sido eliminado..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 IF  .NOT. RLOCK()
      DO reG_lock WITH vtDo+vsEr+vdOc
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ELSE
      RLOCK()
 ENDIF
 SELECT peNd_vtas
 SEEK vtDo+vsEr+vdOc
 IF  .NOT. EOF()
      IF  .NOT. RLOCK()
           DO reG_lock WITH vtDo+vsEr+vdOc
           IF mkEy=k_Esc
                WAIT CLEAR
                UNLOCK ALL
                RETURN
           ENDIF
      ELSE
           RLOCK()
      ENDIF
 ENDIF
 REPLACE f3500int WITH 0
 REPLACE f3500can WITH "2"
 IF f3500tot+f3500int-f3500acu=0
      REPLACE f3500fca WITH DATE()
      REPLACE f3500est WITH "@"
 ELSE
      REPLACE f3500fca WITH CTOD("  /  /    ")
      REPLACE f3500est WITH SPACE(01)
 ENDIF
 UNLOCK
 SELECT caB_fact
 REPLACE f1300can WITH "2"
 UNLOCK
 IF vsW1=2
      SELECT teMporal_doc
      REPLACE f1300can WITH "2"
 ENDIF
 UNLOCK ALL
 FLUSH
 WAIT CLEAR
 RELEASE ptX1, ptX2, poPc
ENDPROC
*
PROCEDURE ICP_1300b
ENDPROC
*
PROCEDURE Imp_1300b
 PARAMETER ptPo
 DO CASE
      CASE SUBSTR(DTOC(DATE()), 4, 2)="01"
           STORE "Enero" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="02"
           STORE "Febrero" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="03"
           STORE "Marzo" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="04"
           STORE "Abril" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="05"
           STORE "Mayo" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="06"
           STORE "Junio" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="07"
           STORE "Julio" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="08"
           STORE "Agosto" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="09"
           STORE "Setiembre" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="10"
           STORE "Octubre" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="11"
           STORE "Noviembre" TO cmEs
      CASE SUBSTR(DTOC(DATE()), 4, 2)="12"
           STORE "Diciembre" TO cmEs
 ENDCASE
 SELECT tmP_cargos
 SET ORDER TO
 GOTO BOTTOM
 STORE RECNO() TO vnUm
 DO CASE
      CASE vsW3=1
           SET ORDER TO FTM4TIT
      CASE vsW3=2
           SET ORDER TO FTM4VEN
 ENDCASE
 STORE 00 TO mvIs, vlIn, vpAg
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 SET DEVICE TO SCREEN
 SET READBORDER ON
 DO paGina
 SET READBORDER OFF
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO ipR_0000a
 IF mkEy=k_Esc
      STORE 99 TO mkEy
      RETURN
 ENDIF
 DO CASE
      CASE mcIa="NP" .AND. vsW3=1
           DO rp1_1300b WITH ptPo
      OTHERWISE
           DO rp2_1300b WITH ptPo
 ENDCASE
 DO fpR_0000a
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Rp1_1300b
 PARAMETER ptPo
 PRIVATE ptAm, pcLn, pnNn
 DO coLbln
 STORE 90 TO ptAm
 STORE 12 TO mcLn
 STORE 00 TO pcLn, pnNn
 GOTO TOP
 @vLIN,mCLN Say Space(01) Font "&mLetAri",9 Style "NQ"
 STORE vlIn+11.8 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN+10  Say FTM4NTT                  Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S33"
           @vLIN,mCLN+92  Say Substr(Dtoc(Date()),1,2) Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+99  Say Substr(Dtoc(Date()),4,2) Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+105 Say Substr(Dtoc(Date()),7,4) Font "&mLetAri",9 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+10  Say FTM4NTT                  Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S33"
           @vLIN,mCLN+92  Say Substr(Dtoc(Date()),1,2) Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+99  Say Substr(Dtoc(Date()),4,2) Font "&mLetAri",9 Style "NQ"
           @vLIN,mCLN+105 Say Substr(Dtoc(Date()),7,4) Font "&mLetAri",9 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.2 TO vlIn
 IF ftM4cli<>ftM4tit
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN+10 Say FTM4NOM Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S33"
           CASE mpRt="2"
                @vLIN,mCLN+10 Say FTM4NOM Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S33"
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 STORE vlIn+3.2 TO vlIn
 DO WHILE  .NOT. EOF()
      STORE pnNn+1 TO pnNn
      DO CASE
           CASE pnNn=vnUm .AND. mpRt="1"
                @vLIN,mCLN+pCLN+10 Say FTM4TDO+":"+FTM4SER+"-"+FTM4DOC     Font "&mLetAri",9 Style "NQ"
           CASE pnNn=vnUm .AND. mpRt="2"
                @vLIN,mCLN+pCLN+10 Say FTM4TDO+":"+FTM4SER+"-"+FTM4DOC     Font "&mLetSwi",9 Style "NQ"
           CASE mpRt="1"
                @vLIN,mCLN+pCLN+10 Say FTM4TDO+":"+FTM4SER+"-"+FTM4DOC+"," Font "&mLetAri",9 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN+pCLN+10 Say FTM4TDO+":"+FTM4SER+"-"+FTM4DOC+"," Font "&mLetSwi",9 Style "NQ"
      ENDCASE
      DO CASE
           CASE pcLn>70
                STORE vlIn+1.2 TO vlIn
                STORE 00 TO pcLn
           OTHERWISE
                STORE pcLn+20 TO pcLn
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      SKIP
 ENDDO
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+6 TO vlIn
 DO CASE
      CASE ptPo="S" .AND. mpRt="1"
           @vLIN,mCLN+30 Say "X" Font "&mLetRom",12 Style "BQ"
           STORE vlIn+2 TO vlIn
      CASE ptPo="S" .AND. mpRt="2"
           @vLIN,mCLN+30 Say "X" Font "&mLetRom",12 Style "BQ"
           STORE vlIn+2 TO vlIn
      CASE ptPo="O" .AND. mpRt="1"
           STORE vlIn+2 TO vlIn
           @vLIN,mCLN+30 Say "X" Font "&mLetRom",12 Style "BQ"
      CASE ptPo="O" .AND. mpRt="2"
           STORE vlIn+2 TO vlIn
           @vLIN,mCLN+30 Say "X" Font "&mLetRom",12 Style "BQ"
      CASE ptPo="E" .AND. mpRt="1"
           STORE vlIn+2 TO vlIn
           @vLIN,mCLN+30 Say "X" Font "&mLetRom",12 Style "BQ"
      CASE ptPo="E" .AND. mpRt="2"
           STORE vlIn+2 TO vlIn
           @vLIN,mCLN+30 Say "X" Font "&mLetRom",12 Style "BQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+2 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN+30 Say FTM4NVE Font "&mLetRom",12 Style "BQ"
      CASE mpRt="2"
           @vLIN,mCLN+30 Say FTM4NVE Font "&mLetRom",12 Style "BQ"
 ENDCASE
ENDPROC
*
PROCEDURE Rp2_1300b
 PARAMETER ptPo
 PRIVATE ptAm
 STORE 90 TO ptAm
 STORE 12 TO mcLn
 GOTO TOP
 DO coLbln
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN Say mRAZ Font "&mLetRom",14 Style "BQ"
 ENDCASE
 DO CASE
      CASE mpRt="1" .AND. mcIa="UN"
           @vLIN,mCLN+94 Say "Cusco, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="1" .AND. mcIa="PU"
           @vLIN,mCLN+94 Say "Puno, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="1" .AND. mcIa="SR"
           @vLIN,mCLN+94 Say "Juliaca, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="1"
           @vLIN,mCLN+94 Say "Lima, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2" .AND. mcIa="UN"
           @vLIN,mCLN+94 Say "Cusco, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2" .AND. mcIa="PU"
           @vLIN,mCLN+94 Say "Puno, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2" .AND. mcIa="SR"
           @vLIN,mCLN+94 Say "Juliaca, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+94 Say "Lima, "+Substr(Dtoc(Date()),1,2)+" de "+cMES+" de "+Substr(Dtoc(Date()),7,4) Font "&mLetRom",12 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.7 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say mDIR Font "&mLetSwi",9 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN Say mDIR Font "&mLetSwi",9 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE mpRt="1" .AND. ptPo="O" .AND. vnUm=1
           @vLIN,mCLN+38 Say "CARGO  DE DOCUMENTO ORIGINAL"        Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="O" .AND. vnUm=1
           @vLIN,mCLN+38 Say "CARGO  DE DOCUMENTO ORIGINAL"        Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="O"
           @vLIN,mCLN+36 Say "CARGOS DE DOCUMENTOS ORIGINALES"     Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="O"
           @vLIN,mCLN+36 Say "CARGOS DE DOCUMENTOS ORIGINALES"     Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="S" .AND. vnUm=1
           @vLIN,mCLN+41 Say "CARGO DE DOCUMENTO SUNAT"            Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="S" .AND. vnUm=1
           @vLIN,mCLN+41 Say "CARGO DE DOCUMENTO SUNAT"            Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="S"
           @vLIN,mCLN+40 Say "CARGOS DE DOCUMENTOS SUNAT"          Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="S"
           @vLIN,mCLN+40 Say "CARGOS DE DOCUMENTOS SUNAT"          Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="E" .AND. vnUm=1
           @vLIN,mCLN+41 Say "CARGO DE DOCUMENTO EMISOR"           Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="E" .AND. vnUm=1
           @vLIN,mCLN+41 Say "CARGO DE DOCUMENTO EMISOR"           Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="E"
           @vLIN,mCLN+40 Say "CARGOS DE DOCUMENTOS EMISOR"         Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="E"
           @vLIN,mCLN+40 Say "CARGOS DE DOCUMENTOS EMISOR"         Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="A" .AND. vnUm=1
           @vLIN,mCLN+41 Say "CARGO DE CONTROL ADMINISTRATIVO"     Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="A" .AND. vnUm=1
           @vLIN,mCLN+41 Say "CARGO DE CONTROL ADMINISTRATIVO"     Font "&mLetAri",13 Style "NQ"
      CASE mpRt="1" .AND. ptPo="A"
           @vLIN,mCLN+40 Say "CARGOS DE CONTROLES ADMINISTRATIVOS" Font "&mLetAri",13 Style "NQ"
      CASE mpRt="2" .AND. ptPo="A"
           @vLIN,mCLN+40 Say "CARGOS DE CONTROLES ADMINISTRATIVOS" Font "&mLetAri",13 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+3 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN+18 Say ":" Font "&mLetRom",12 Style "BQ"
           DO CASE
                CASE vsW3=1
                     @vLIN,mCLN    Say "Cliente Titular" Font "&mLetRom",12 Style "NQ"
                     @vLIN,mCLN+20 Say FTM4NTT           Font "&mLetRom",12 Style "NQ"
                CASE vsW3=2
                     @vLIN,mCLN    Say "Vendedor"        Font "&mLetRom",12 Style "NQ"
                     @vLIN,mCLN+20 Say FTM4NVE           Font "&mLetRom",12 Style "NQ"
           ENDCASE
      CASE mpRt="2"
           @vLIN,mCLN+18 Say ":" Font "&mLetRom",12 Style "BQ"
           DO CASE
                CASE vsW3=1
                     @vLIN,mCLN    Say "Cliente Titular" Font "&mLetRom",12 Style "NQ"
                     @vLIN,mCLN+20 Say FTM4NTT           Font "&mLetRom",12 Style "NQ"
                CASE vsW3=2
                     @vLIN,mCLN    Say "Vendedor"        Font "&mLetRom",12 Style "NQ"
                     @vLIN,mCLN+20 Say FTM4NVE           Font "&mLetRom",12 Style "NQ"
           ENDCASE
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.7 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN+18 Say ":"          Font "&mLetRom",12 Style "BQ"
           IF vnUm=1
                @vLIN,mCLN Say "Documento"  Font "&mLetRom",12 Style "NQ"
           ELSE
                @vLIN,mCLN Say "Documentos" Font "&mLetRom",12 Style "NQ"
           ENDIF
      CASE mpRt="2"
           @vLIN,mCLN+18 Say ":"          Font "&mLetRom",12 Style "BQ"
           IF vnUm=1
                @vLIN,mCLN Say "Documento"  Font "&mLetRom",12 Style "NQ"
           ELSE
                @vLIN,mCLN Say "Documentos" Font "&mLetRom",12 Style "NQ"
           ENDIF
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.7 TO vlIn
 DO WHILE  .NOT. EOF()
      DO CASE
           CASE mpRt="1"
                @vLIN,mCLN    Say FTM4TDO+":"+FTM4SER+"-"+FTM4DOC Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+20 Say FTM4FEM                         Font "&mLetAri",9 Style "NQ"
                @vLIN,mCLN+33 Say FTM4FVE                         Font "&mLetAri",9 Style "NQ"
           CASE mpRt="2"
                @vLIN,mCLN    Say FTM4TDO+":"+FTM4SER+"-"+FTM4DOC Font "&mLetSwi",9 Style "NQ"
                @vLIN,mCLN+20 Say FTM4FEM                         Font "&mLetSwi",9 Style "NQ"
                @vLIN,mCLN+33 Say FTM4FVE                         Font "&mLetSwi",9 Style "NQ"
      ENDCASE
      DO CASE
           CASE mpRt="1" .AND. vsW3=1 .AND. ftM4cli<>ftM4tit
                @vLIN,mCLN+48 Say FTM4NVE    Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S23"
                @vLIN,mCLN+78 Say FTM4NOM    Font "&mLetAri",9 Style "NQ" Size 1,30 Pict "@S33"
           CASE mpRt="1" .AND. vsW3=1
                @vLIN,mCLN+48 Say FTM4NVE    Font "&mLetAri",9 Style "NQ" Size 1,20 Pict "@S23"
           CASE mpRt="1" .AND. vsW3=2
                @vLIN,mCLN+48 Say FTM4NTT    Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S35"
                IF ftM4tit<>ftM4cli
                     @vLIN,mCLN+94 Say FTM4NOM Font "&mLetAri",9 Style "NQ" Size 1,32 Pict "@S35"
                ENDIF
           CASE mpRt="2" .AND. vsW3=1 .AND. ftM4cli<>ftM4tit
                @vLIN,mCLN+48 Say FTM4NVE    Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "@S23"
                @vLIN,mCLN+78 Say FTM4NOM    Font "&mLetSwi",9 Style "NQ" Size 1,30 Pict "@S33"
           CASE mpRt="2" .AND. vsW3=1
                @vLIN,mCLN+48 Say FTM4NVE    Font "&mLetSwi",9 Style "NQ" Size 1,20 Pict "@S23"
           CASE mpRt="2" .AND. vsW3=2
                @vLIN,mCLN+48 Say FTM4NTT    Font "&mLetSwi",9 Style "NQ" Size 1,32 Pict "@S35"
                IF ftM4tit<>ftM4cli
                     @vLIN,mCLN+94 Say FTM4NOM Font "&mLetSwi",9 Style "NQ" Size 1,32 Pict "@S35"
                ENDIF
      ENDCASE
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vlIn+1.2 TO vlIn
      SKIP
 ENDDO
 STORE vlIn+8 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN Say Replicate("_",22) Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN Say Replicate("_",22) Font "&mLetRom",12 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE vlIn+1.5 TO vlIn
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN+6 Say "Recibí Conforme" Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+6 Say "Recibí Conforme" Font "&mLetRom",12 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO CASE
      CASE mpRt="1"
           @vLIN,mCLN+50 Say "Fecha: ____/____/________" Font "&mLetRom",12 Style "NQ"
      CASE mpRt="2"
           @vLIN,mCLN+50 Say "Fecha: ____/____/________" Font "&mLetRom",12 Style "NQ"
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Ord_1300b
 STORE 99 TO mkEy
 DO CASE
      CASE vsW0=1 .AND. vsW1=1
           DO orD_0000a WITH "1300", "V", "F1300DOC", "A"
      CASE vsW0=2 .AND. vsW1=1
           DO orD_0000a WITH "1300", "V", "F1300NOM", "A"
      CASE vsW0=3 .AND. vsW1=1
           DO orD_0000a WITH "1300", "V", "F1300FEM", "A"
      CASE vsW0=4 .AND. vsW1=1
           DO orD_0000a WITH "1300", "V", "F1300NTT", "A"
      CASE vsW0=1
           DO orD_0000a WITH "TMP", "V", "F1300DOC", "A"
      CASE vsW0=2
           DO orD_0000a WITH "TMP", "V", "F1300NOM", "A"
      CASE vsW0=3
           DO orD_0000a WITH "TMP", "V", "F1300FEM", "A"
      CASE vsW0=4
           DO orD_0000a WITH "TMP", "V", "F1300NTT", "A"
 ENDCASE
ENDPROC
*
PROCEDURE See_1300b
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           DO CASE
                CASE vsW0=1
                     SEEK vtDo+vsEr+vdOc
                CASE vsW0=2
                     SEEK UPPER(vnOm)+vtDo+vsEr+vdOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtDo+vsEr+vdOc
                CASE vsW0=4
                     SEEK UPPER(vnTt)+vtDo+vsEr+vdOc
           ENDCASE
      CASE psEe="i"
           DO CASE
                CASE vsW0=1
                     SEEK itDo+isEr+idOc
                CASE vsW0=2
                     SEEK UPPER(inOm)+itDo+isEr+idOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4,  ;
                          2)+SUBSTR(DTOC(ifEm), 1, 2)+itDo+isEr+idOc
                CASE vsW0=4
                     SEEK UPPER(inTt)+itDo+isEr+idOc
           ENDCASE
      CASE psEe="u"
           DO CASE
                CASE vsW0=1
                     SEEK utDo+usEr+udOc
                CASE vsW0=2
                     SEEK UPPER(unOm)+utDo+usEr+udOc
                CASE vsW0=3
                     SEEK SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4,  ;
                          2)+SUBSTR(DTOC(ufEm), 1, 2)+utDo+usEr+udOc
                CASE vsW0=4
                     SEEK UPPER(unTt)+utDo+usEr+udOc
           ENDCASE
 ENDCASE
ENDPROC
*
PROCEDURE Mue_1300b
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="i" .AND. pmU2="v"
           STORE itDo TO vtDo
           STORE isEr TO vsEr
           STORE idOc TO vdOc
           STORE inOm TO vnOm
           STORE ifEm TO vfEm
           STORE inTt TO vnTt
      CASE pmU1="v" .AND. pmU2="c"
           STORE vtDo TO ctDo
           STORE vsEr TO csEr
           STORE vdOc TO cdOc
           STORE vnOm TO cnOm
           STORE vfEm TO cfEm
           STORE vnTt TO cnTt
      CASE pmU1="v" .AND. pmU2="i"
           STORE vtDo TO itDo
           STORE vsEr TO isEr
           STORE vdOc TO idOc
           STORE vnOm TO inOm
           STORE vfEm TO ifEm
           STORE vnTt TO inTt
      CASE pmU1="v" .AND. pmU2="x"
           STORE vtDo TO xtDo
           STORE vsEr TO xsEr
           STORE vdOc TO xdOc
           STORE vnOm TO xnOm
           STORE vfEm TO xfEm
           STORE vnTt TO xnTt
      CASE pmU1="c" .AND. pmU2="v"
           STORE ctDo TO vtDo
           STORE csEr TO vsEr
           STORE cdOc TO vdOc
           STORE cnOm TO vnOm
           STORE cfEm TO vfEm
           STORE cnTt TO vnTt
      CASE pmU1="x" .AND. pmU2="v"
           STORE xtDo TO vtDo
           STORE xsEr TO vsEr
           STORE xdOc TO vdOc
           STORE xnOm TO vnOm
           STORE xfEm TO vfEm
           STORE xnTt TO vnTt
      CASE pmU1="u" .AND. pmU2="v"
           STORE utDo TO vtDo
           STORE usEr TO vsEr
           STORE udOc TO vdOc
           STORE unOm TO vnOm
           STORE ufEm TO vfEm
           STORE unTt TO vnTt
      CASE pmU1="F" .AND. pmU2="v"
           STORE f1300tdo TO vtDo
           STORE f1300ser TO vsEr
           STORE f1300doc TO vdOc
           STORE f1300nom TO vnOm
           STORE f1300fem TO vfEm
           STORE f1300ntt TO vnTt
      CASE pmU1="F" .AND. pmU2="u"
           STORE f1300tdo TO utDo
           STORE f1300ser TO usEr
           STORE f1300doc TO udOc
           STORE f1300nom TO unOm
           STORE f1300fem TO ufEm
           STORE f1300ntt TO unTt
      CASE pmU1="F" .AND. pmU2="i"
           STORE f1300tdo TO itDo
           STORE f1300ser TO isEr
           STORE f1300doc TO idOc
           STORE f1300nom TO inOm
           STORE f1300fem TO ifEm
           STORE f1300ntt TO inTt
      CASE pmU1="F" .AND. pmU2="x"
           STORE f1300tdo TO xtDo
           STORE f1300ser TO xsEr
           STORE f1300doc TO xdOc
           STORE f1300nom TO xnOm
           STORE f1300fem TO xfEm
           STORE f1300ntt TO xnTt
 ENDCASE
ENDPROC
*
PROCEDURE Rs1_1300b
 SET READBORDER ON
 DO rs1_1300a
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET READBORDER OFF
 DO diS_1300b WITH "R"
 DO CASE
      CASE wtPo$"23"
           DO prEsiona WITH "4", "R_CONS03", mmF1, mmC1
      OTHERWISE
           DO prEsiona WITH "4", "R_CONS02", mmF1, mmC1
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "MOVIMI", mmF2, mmC2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "INTERN", mmF1+4, mcO0+muCo-10
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO acC_1200w IN PVI1200W WITH "1"
ENDPROC
*
PROCEDURE Clp_1300b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+33.4 .AND.  ;
           mcCc<=mmC1+41.8 .AND. wtPo$"23"
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+3.05 .AND. mcCc>=mmC1+24.8 .AND.  ;
           mcCc<=mmC1+33.4 .AND. wtPo="4"
           STORE k_Alt_s TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+41.8 .AND.  ;
           mcCc<=mmC1+50.60
           STORE k_F6 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.6 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_F9 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2 .AND. mcCc<= ;
           mmC2+03.60
           STORE k_Pgdn TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+03.6 .AND.  ;
           mcCc<=mmC2+07
           STORE k_Pgup TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+7 .AND.  ;
           mcCc<=mmC2+10.20
           STORE k_Up TO mkEy
      CASE mfIl>=mmF2 .AND. mfIl<=mmF2+01.08 .AND. mcCc>=mmC2+10.2 .AND.  ;
           mcCc<=mmC2+13.80
           STORE k_Down TO mkEy
      CASE mfIl>=vfIl-0.007 .AND. mfIl<=vfIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Enter TO mkEy
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           DO diS_1300b WITH "N"
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           DO seE_1300b WITH "i"
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           DO muE_1300b WITH "F", "v"
           DO diS_1300b WITH "R"
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_1300b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los Documentos en el or- "
 @ pfIl+01, 02 SAY  ;
   "den que se ha elegido. No totaliza, pero si se puede seleccionar parte de"
 @ pfIl+02, 02 SAY  ;
   "la información. Si la Moneda sale en Verde es porque el Documento tiene"
 @ pfIl+03, 02 SAY "Descuento."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 23 SAY ":" STYLE "BT"
 @ pfIl+08, 23 SAY ":" STYLE "BT"
 @ pfIl+09, 23 SAY ":" STYLE "BT"
 @ pfIl+10, 23 SAY ":" STYLE "BT"
 @ pfIl+07, 04 SAY "ESC" STYLE "BT"
 @ pfIl+08, 04 SAY "F10" STYLE "BT"
 @ pfIl+09, 04 SAY "F1" STYLE "BT"
 @ pfIl+10, 04 SAY "F6" STYLE "BT"
 @ pfIl+07, 25 SAY "Regresar a Cabecera"
 @ pfIl+08, 25 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 25 SAY "Ayuda del Programa"
 @ pfIl+10, 25 SAY "Cambio de Orden de Consulta"
 STORE pfIl+11 TO pfIl
 DO CASE
      CASE wtPo="1"
           @ pfIl+0, 23 SAY ":" STYLE "BT"
           @ pfIl+1, 23 SAY ":" STYLE "BT"
           @ pfIl+0, 04 SAY "F7" STYLE "BT"
           @ pfIl+1, 04 SAY "F8" STYLE "BT"
           @ pfIl+0, 25 SAY "Marca/Des-marca FA-BO-PC del mismo Cliente"
           @ pfIl+1, 25 SAY "Selecciona/Des-selecciona FA-BO para Cargo"
           @ pfIl+2, 25 SAY "del mismo Vendedor"
           STORE pfIl+3 TO pfIl
      CASE wtPo="2" .AND. mgRa=2
           @ pfIl+0, 23 SAY ":" STYLE "BT"
           @ pfIl+1, 23 SAY ":" STYLE "BT"
           @ pfIl+0, 04 SAY "F7" STYLE "BT"
           @ pfIl+1, 04 SAY "F8" STYLE "BT"
           @ pfIl+0, 25 SAY "Marca/Des-marca FA-BO del mismo Cliente"
           @ pfIl+1, 25 SAY "Cancelación automática"
           STORE pfIl+2 TO pfIl
      CASE wtPo="6"
           @ pfIl, 23 SAY ":" STYLE "BT"
           @ pfIl, 04 SAY "F7" STYLE "BT"
           @ pfIl, 25 SAY "Marca/Des-marca FA-BO-NP para Ordenar Cortes"
           STORE pfIl+1 TO pfIl
 ENDCASE
 @ pfIl+0, 23 SAY ":" STYLE "BT"
 @ pfIl+1, 23 SAY ":" STYLE "BT"
 @ pfIl+2, 23 SAY ":" STYLE "BT"
 @ pfIl+3, 23 SAY ":" STYLE "BT"
 @ pfIl+4, 23 SAY ":" STYLE "BT"
 @ pfIl+5, 23 SAY ":" STYLE "BT"
 @ pfIl+6, 23 SAY ":" STYLE "BT"
 @ pfIl+7, 23 SAY ":" STYLE "BT"
 @ pfIl+8, 23 SAY ":" STYLE "BT"
 @ pfIl+0, 04 SAY "F9" STYLE "BT"
 @ pfIl+1, 04 SAY "ENTER" STYLE "BT"
 @ pfIl+2, 04 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+3, 04 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+4, 04 SAY "FLECHAS -> <-" STYLE "BT"
 @ pfIl+5, 04 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+6, 04 SAY "PAGE UP" STYLE "BT"
 @ pfIl+7, 04 SAY "HOME" STYLE "BT"
 @ pfIl+8, 04 SAY "END" STYLE "BT"
 @ pfIl+0, 25 SAY "Buscar palabra o frase dentro del nombre"
 @ pfIl+1, 25 SAY "Visualizar Contenido completo del Documento"
 @ pfIl+2, 25 SAY "Línea inferior"
 @ pfIl+3, 25 SAY "Línea superior"
 @ pfIl+4, 25 SAY "Ver fecha de Emision/Vencimiento"
 @ pfIl+5, 25 SAY "Página siguiente"
 @ pfIl+6, 25 SAY "Página anterior"
 @ pfIl+7, 25 SAY "Primera línea"
 @ pfIl+8, 25 SAY "Última línea"
 STORE pfIl+9 TO pfIl
 DO CASE
      CASE wtPo="1"
           @ pfIl+0, 23 SAY ":" STYLE "BT"
           @ pfIl+1, 23 SAY ":" STYLE "BT"
           @ pfIl+2, 23 SAY ":" STYLE "BT"
           @ pfIl+3, 23 SAY ":" STYLE "BT"
           @ pfIl+4, 23 SAY ":" STYLE "BT"
           @ pfIl+0, 04 SAY "CTRL P" STYLE "BT"
           @ pfIl+1, 04 SAY "CTRL O" STYLE "BT"
           @ pfIl+2, 04 SAY "ALT S" STYLE "BT"
           @ pfIl+3, 04 SAY "ALT Z" STYLE "BT"
           @ pfIl+4, 04 SAY "ALT A" STYLE "BT"
           @ pfIl+0, 25 SAY "Generar/Imprimir Percepciones"
           @ pfIl+1, 25 SAY "Imprimir Cargos de Documentos Originales"
           @ pfIl+2, 25 SAY "Imprimir Cargos de Documentos Sunat"
           @ pfIl+3, 25 SAY "Imprimir Cargos de Documentos Emisior"
           @ pfIl+4, 25 SAY "Imprimir Cargos de Documentos C.Administrativo"
      CASE wtPo="2"
           @ pfIl, 23 SAY ":" STYLE "BT"
           @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl, 25 SAY "Anulación del Documento"
      CASE wtPo="3"
           @ pfIl, 23 SAY ":" STYLE "BT"
           @ pfIl, 04 SAY "CTRL DEL" STYLE "BT"
           @ pfIl, 25 SAY "Eliminación del Documento"
      CASE wtPo="6"
           @ pfIl+0, 23 SAY ":" STYLE "BT"
           @ pfIl+1, 23 SAY ":" STYLE "BT"
           @ pfIl+2, 23 SAY ":" STYLE "BT"
           @ pfIl+0, 04 SAY "ALT S" STYLE "BT"
           @ pfIl+1, 04 SAY "ALT Z" STYLE "BT"
           @ pfIl+2, 04 SAY "TAB" STYLE "BT"
           @ pfIl+0, 25 SAY "Marcar/Desmarcar para PASE-CORTES"
           @ pfIl+1, 25 SAY "Terminar o Devolver Documento"
           @ pfIl+2, 25 SAY "Pasar Documento para Cortes"
 ENDCASE
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Hl2_1300b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Esta búsqueda, se da en cualquier parte del nombre o Razón Social del"
 @ pfIl+01, 02 SAY  ;
   "Cliente.  Si la palabra o frase no se encuentra contenida en ninguno de"
 @ pfIl+02, 02 SAY  ;
   "los Clientes,  saldrá un mensaje,  en caso de encontrase se regresará"
 @ pfIl+03, 02 SAY "al Detalle."
 @ pfIl+05, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+07, 21 SAY ":" STYLE "BT"
 @ pfIl+08, 21 SAY ":" STYLE "BT"
 @ pfIl+09, 21 SAY ":" STYLE "BT"
 @ pfIl+10, 21 SAY ":" STYLE "BT"
 @ pfIl+07, 13 SAY "ESC" STYLE "BT"
 @ pfIl+08, 13 SAY "F10" STYLE "BT"
 @ pfIl+09, 13 SAY "F1" STYLE "BT"
 @ pfIl+10, 13 SAY "ENTER" STYLE "BT"
 @ pfIl+07, 23 SAY "Regresar a Detalle"
 @ pfIl+08, 23 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 23 SAY "Ayuda del Programa"
 @ pfIl+10, 23 SAY "Aceptar palabra y regresar al Detalle"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
PROCEDURE Per_1300b
 PRIVATE pdEs, phAs
 SAVE SCREEN TO ppAn_100
 DO coLplp
 @ ifIl-1, mcO0+19 TO ifIl+4, mcO0+72 PATTERN 1
 STORE "0000001" TO pdEs
 STORE "9999999" TO phAs
 DO coLbln
 SET READBORDER ON
 @iFIL+0,mCO0+20 Say "Desde Percepcion:" Font "&mLetRom",12 Style "BT"
 @iFIL+2,mCO0+20 Say "Hasta Percepcion:" Font "&mLetRom",12 Style "BT"
 @iFIL+0,mCO0+50 Say vSER                Font "&mLetRom",12 Style "NQ"
 @iFIL+2,mCO0+50 Say vSER                Font "&mLetRom",12 Style "NQ"
 @iFIL+0,mCO0+60 Get pDES Font "&mLetRom",12 Style "NQ" Size 1,9 Pict "9999999" Color ,&mColBlN
 @iFIL+2,mCO0+60 Get pHAS Font "&mLetRom",12 Style "NQ" Size 1,9 Pict "9999999" Color ,&mColBlN
 SET CURSOR ON
 READ
 SET CURSOR OFF
 SET READBORDER OFF
 IF mkEy=k_Esc
      RESTORE SCREEN FROM ppAn_100
      RETURN
 ENDIF
 DO q1_0000a
 DO ipR_0001a WITH "PC"
 DO inI_1300z IN FAC0000A WITH "PC"
 SELECT caB_fact
 GOTO TOP
 SEEK "PC"+vsEr+pdEs
 DO WHILE  .NOT. EOF() .AND. f1300tdo+f1300ser="PC"+vsEr .AND. f1300doc<=phAs
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      DO peR_1300z IN FACALEJO WITH "E", mpRf(25,3), mpRf(25,4), "1"
      SELECT caB_fact
      SKIP
 ENDDO
 DO fpR_0001a
 SET DEVICE TO SCREEN
 DO p1_0000a
 RESTORE SCREEN FROM ppAn_100
ENDPROC
*
