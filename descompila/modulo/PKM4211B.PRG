 = INKEY(0.01)
 SELECT tmP_fijos
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_4211b
      CASE viOm=01
           DO liM_4211b
      CASE viOm=02
           GOTO vrEc
           DO muE_4211b
 ENDCASE
 DO diS_4211b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO WHILE .T.
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4211b
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Clic
                IF viOm=01
                     DO blA_4211b
                ELSE
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                EXIT
           CASE mkEy=k_F1
                DO hl1_4211b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_4211b
                ELSE
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                EXIT
           CASE mkEy=k_F2 .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_F3 .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_del .AND. viTe<>01
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. viOm=01
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE mkEy=k_Ctrl_del .AND. viTe=01 .AND. LEN(ALLTRIM(vcPt))=0
                STORE "No se ha seleccionado un Concepto..." TO mmSj
           CASE (mkEy=k_Ctrl_end .OR. mkEy=k_Pgdn) .AND. viOm=01
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_end .AND. frEc=vrEc) .OR. (mkEy=k_Pgdn .AND.  ;
                frEc=urEc)
                STORE "Este es el Fin de la Hoja..." TO mmSj
                STORE 99 TO mkEy
           CASE (mkEy=k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up) .AND.  ;
                vrEc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Pgup .AND. irEc=01
                STORE "Estás en el inicio del Archivo..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=01 .AND. viOm=01
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_Ctrl_left .AND. viTe=02 .AND. viOm=02
                STORE "No se puede retroceder más..." TO mmSj
                STORE 99 TO mkEy
           CASE mkEy=k_F2 .AND. viTe=01
                = INKEY(0.01)
                SELECT coNceptos
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay Conceptos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                STORE 99 TO mkEy
                STORE 01 TO meRr
                SET ORDER TO F4210DES
                IF mkEy<>99
                     STORE k_Esc TO mkEy
                     RETURN
                ENDIF
                STORE 00 TO meRr
                SET NEAR ON
                SEEK UPPER(vdEs)
                SET NEAR OFF
                DO veR_lock
                DO q2_0000a
                ACTIVATE POPUP vtB2 REST
                DO p2_0000a
                STORE 01 TO meRr
                SET ORDER TO F4210COD
                IF mkEy=k_Enter
                     STORE 00 TO meRr
                     STORE f4210cod TO ccPt
                     SELECT exIste
                     SEEK ccPt
                     IF  .NOT. EOF()
                          STORE "Concepto ya registrado..." TO mmSj
                          STORE 99 TO mkEy
                     ELSE
                          DO coLbln
                          SELECT coNceptos
                          STORE f4210cod TO vcPt
                          STORE f4210des TO vdEs
                          STORE f4210tip TO vtIp
                          STORE f4210afp TO vtAf
                          STORE f4210por TO vpOr
                          IF LEN(ALLTRIM(vaFp))=0
                               STORE 00 TO vpAf
                          ELSE
                               SELECT afP
                               DO CASE
                                    CASE vtAf=2
                                         STORE f9515obl TO vpAf
                                    CASE vtAf=3
                                         STORE f9515seg TO vpAf
                                    CASE vtAf=4
                                         STORE f9515com TO vpAf
                                    CASE vtAf=5
                                         STORE f9515otr TO vpAf
                                    OTHERWISE
                                         STORE 0.00 TO vpAf
                               ENDCASE
                          ENDIF
                          SELECT coNceptos
                          @vFIL,mCO0+03.6 Say vCPT Font "&mLetAri",8 Style "NQ" Size 1,04.5 Pict "9999"
                          @vFIL,mCO0+08.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,41.1 Pict "@S45"
                          @vFIL,mCO0+54.6 Say vPAF Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
                          DO CASE
                               CASE vtIp=0
                                    @vFIL,mCO0+50.6 Say "    " Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=1
                                    @vFIL,mCO0+50.6 Say "Ingr" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=2
                                    @vFIL,mCO0+50.6 Say "Dcto" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=3
                                    @vFIL,mCO0+50.6 Say "Apor" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=4
                                    @vFIL,mCO0+50.6 Say "Otro" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                          ENDCASE
                          LOOP
                     ENDIF
                ENDIF
                IF mkEy<>99
                     STORE k_Esc TO mkEy
                     RETURN
                ENDIF
                SELECT tmP_fijos
           CASE mkEy=k_F3 .AND. viTe=01
                = INKEY(0.01)
                SELECT coNceptos
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay Conceptos registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                SET FILTER TO AT(UPPER(ALLTRIM(vdEs)), UPPER(ALLTRIM(f4210des)))<>0
                GOTO TOP
                DO veR_lock
                IF BOF() .OR. EOF()
                     STORE "No hay Conceptos registrados que contengan palabra o frase..."  ;
                           TO mmSj
                     SET FILTER TO
                     STORE 99 TO mkEy
                     DO poNmsj
                     LOOP
                ENDIF
                STORE 99 TO mkEy
                STORE 01 TO meRr
                SET ORDER TO F4210DES
                IF mkEy<>99
                     STORE k_Esc TO mkEy
                     RETURN
                ENDIF
                STORE 00 TO meRr
                DO q1_0000a
                ACTIVATE POPUP vtB2 REST
                DO p1_0000a
                STORE 01 TO meRr
                SET ORDER TO F4210COD
                IF mkEy=k_Enter
                     STORE 00 TO meRr
                     STORE f4210cod TO ccPt
                     SELECT exIste
                     SEEK ccPt
                     IF  .NOT. EOF()
                          STORE "Concepto ya registrado..." TO mmSj
                          STORE 99 TO mkEy
                     ELSE
                          DO coLbln
                          SELECT coNceptos
                          STORE f4210cod TO vcPt
                          STORE f4210des TO vdEs
                          STORE f4210tip TO vtIp
                          STORE f4210afp TO vtAf
                          STORE f4210por TO vpOr
                          SET FILTER TO
                          IF LEN(ALLTRIM(vaFp))=0
                               STORE 00 TO vpAf
                          ELSE
                               SELECT afP
                               DO CASE
                                    CASE vtAf=2
                                         STORE f9515obl TO vpAf
                                    CASE vtAf=3
                                         STORE f9515seg TO vpAf
                                    CASE vtAf=4
                                         STORE f9515com TO vpAf
                                    CASE vtAf=5
                                         STORE f9515otr TO vpAf
                                    OTHERWISE
                                         STORE 0.00 TO vpAf
                               ENDCASE
                          ENDIF
                          SELECT coNceptos
                          @vFIL,mCO0+03.6 Say vCPT Font "&mLetAri",8 Style "NQ" Size 1,04.5 Pict "9999"
                          @vFIL,mCO0+08.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,41.1 Pict "@S45"
                          @vFIL,mCO0+54.6 Say vPAF Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
                          DO CASE
                               CASE vtIp=0
                                    @vFIL,mCO0+50.6 Say "    " Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=1
                                    @vFIL,mCO0+50.6 Say "Ingr" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=2
                                    @vFIL,mCO0+50.6 Say "Dcto" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                               CASE vtIp=3
                                    @vFIL,mCO0+50.6 Say "Apor" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                          ENDCASE
                          LOOP
                     ENDIF
                ENDIF
                SELECT coNceptos
                SET FILTER TO
                IF mkEy<>99
                     STORE k_Esc TO mkEy
                     RETURN
                ENDIF
                SELECT tmP_fijos
           CASE mkEy=k_Ctrl_del .AND. viTe=01
                DO coLbln
                STORE 00 TO vtIp, vtAf, vpAf, vpOr
                STORE SPACE(04) TO vcPt
                STORE SPACE(50) TO vdEs
                @vFIL,mCO0+03.6 Say vCPT Font "&mLetAri",8 Style "NQ" Size 1,04.5 Pict "9999"
                @vFIL,mCO0+08.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,41.1 Pict "@S45"
                @vFIL,mCO0+54.6 Say vPAF Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
                DO CASE
                     CASE vtIp=0
                          @vFIL,mCO0+50.6 Say "    " Font "&mLetAri",8 Style "NQ" Size 1,3.4
                     CASE vtIp=1
                          @vFIL,mCO0+50.6 Say "Ingr" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                     CASE vtIp=2
                          @vFIL,mCO0+50.6 Say "Dcto" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                     CASE vtIp=3
                          @vFIL,mCO0+50.6 Say "Apor" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                     CASE vtIp=4
                          @vFIL,mCO0+50.6 Say "Otro" Font "&mLetAri",8 Style "NQ" Size 1,3.4
                ENDCASE
           CASE mkEy=k_Ctrl_left
                STORE viTe-1 TO viTe
                STORE 99 TO mkEy
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=01 .OR.  ;
                ftM1cpt<>vcPt .OR. ftM1des<>vdEs .OR. ftM1tot<>vtOt .OR.  ;
                ftM1dia<>vdIa .OR. ftM1mes<>vmEs .OR. ftM1ope<>voPe)
                DO CASE
                     CASE viTe=01 .AND. LEN(ALLTRIM(vcPt))=0
                          STORE "Descripción tiene que pertenecer a algún Concepto..."  ;
                                TO mmSj
                     CASE viTe=01 .AND. LEN(ALLTRIM(vdEs))=0
                          STORE "Descripción no puede estar vacía..." TO mmSj
                     CASE viTe=05 .AND. LEN(ALLTRIM(voPe))<>0
                          STORE UPPER(voPe) TO voPe
                          DO CASE
                               CASE AT("ING", voPe)<>0 .AND. vtIp=1
                                    STORE  ;
                                     "No se puede poner el Total de Ingresos en un Concepto de INGRESO..."  ;
                                     TO mmSj
                               CASE AT("DCT", voPe)<>0 .AND. vtIp=1
                                    STORE  ;
                                     "No se puede poner el Total de Descuentos en un Concepto de DESCUENTO..."  ;
                                     TO mmSj
                               CASE AT("APO", voPe)<>0 .AND. vtIp=1
                                    STORE  ;
                                     "No se puede poner el Total de Aportes en un Concepto de APORTE..."  ;
                                     TO mmSj
                               CASE AT("]", voPe)<>0 .AND. AT("[", voPe)=0
                                    STORE  ;
                                     "Falta Corchete inicial...            "  ;
                                     TO mmSj
                               CASE AT("[%]", voPe)<>0 .AND. vtAf<2
                                    STORE  ;
                                     "Concepto no está ligado a AFP...     "  ;
                                     TO mmSj
                               CASE AT("[", voPe)<>0 .AND. SUBSTR(voPe,  ;
                                    AT("[", voPe)+1, 2)<>"%]" .AND.  ;
                                    SUBSTR(voPe, AT("[", voPe)+1, 3)<> ;
                                    "%C]" .AND. SUBSTR(voPe, AT("[",  ;
                                    voPe)+5, 1)<>"]"
                                    STORE  ;
                                     "La Operación completa debe ser [%] o [%C] o [concepto]..."  ;
                                     TO mmSj
                               CASE AT("[", voPe)<>0
                                    STORE AT("[", voPe) TO vnUm
                                    STORE ALLTRIM(voPe) TO coPe
                                    DO WHILE .T.
                                         vtMp = SUBSTR(coPe, vnUm+1, 4)
                                         IF vtMp>="0001" .AND. vtMp<="9999"
                                              IF vtMp=vcPt
                                                   STORE  ;
                                                    "Concepto de Operación no puede ser igual al Concepto de este Item..."  ;
                                                    TO mmSj
                                                   EXIT
                                              ENDIF
                                              SELECT exIste
                                              SEEK vtMp
                                              IF EOF()
                                                   STORE  ;
                                                    "Concepto no ha sido ingresado a este Trabajador..."  ;
                                                    TO mmSj
                                                   EXIT
                                              ENDIF
                                              IF LEN(ALLTRIM(coPe))<=6
                                                   EXIT
                                              ENDIF
                                              STORE SUBSTR(coPe, vnUm+6)  ;
                                               TO coPe
                                         ELSE
                                              STORE SUBSTR(coPe, vnUm+1)  ;
                                               TO coPe
                                         ENDIF
                                         IF AT("[", coPe)=0
                                              EXIT
                                         ENDIF
                                         STORE AT("[", coPe) TO vnUm
                                    ENDDO
                                    SELECT tmP_fijos
                          ENDCASE
                          SELECT tmP_fijos
                          IF LEN(ALLTRIM(mmSj))=0
                               DO opE_4211b
                               DO coL_fondo
                               @fFIL+2.2,mCO0+12 Say AllTrim(cOPE)+" = "+AllTrim(Str(vRES,15,2)) Font "&mLetAri",8 Style "NQ" Size 1,95
                          ENDIF
                ENDCASE
                IF LEN(ALLTRIM(mmSj))=0 .AND. viTe<05
                     STORE viTe+1 TO viTe
                     STORE 99 TO mkEy
                ENDIF
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. viTe<05
                STORE viTe+1 TO viTe
                STORE 99 TO mkEy
           CASE mkEy=k_Alt_del .AND. viOm=02
                = INKEY(0.01)
                DO coL_fondo
                DO suBe WITH vfIl, mcO0+003.6, ffIl, mcO0+123.3, 1
                IF frEc=urEc
                     @ ufIl, mcO0+0.4 CLEAR TO ufIl+1, mcO0+2.9
                     STORE frEc-1 TO frEc
                     STORE urEc-1 TO urEc
                     STORE ufIl-1 TO ufIl
                ELSE
                     STORE frEc-1 TO frEc
                     STORE vfIl TO cfIl
                     STORE vrEc TO crEc
                     STORE ffIl TO vfIl
                     STORE urEc+1 TO vrEc
                     GOTO vrEc
                     STORE vrEc-1 TO vrEc
                     DO muE_4211b
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfIl TO vfIl
                     STORE crEc TO vrEc
                     GOTO vrEc
                ENDIF
                DELETE
                PACK
                SELECT exIste
                SEEK vcPt
                DELETE
                PACK
                SELECT tmP_fijos
                DO caL_4211b
                DO cl1_4211b
                DO coL_fondo
                @fFIL+1.1,mCO0+015.0 Say tOT1+tOT2 Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
                @fFIL+1.1,mCO0+047.6 Say tING      Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
                @fFIL+1.1,mCO0+078.0 Say tDCT      Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
                @fFIL+1.1,mCO0+110.0 Say tAPO      Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_4211b
                ELSE
                     DO liM_4211b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=01 .OR. ftM1cpt<>vcPt .OR. ftM1des<> ;
                vdEs .OR. ftM1tot<>vtOt .OR. ftM1dia<>vdIa .OR. ftM1mes<> ;
                vmEs .OR. ftM1ope<>voPe)
                DO ve1_4211b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vcPt))<>0 .AND.  ;
                LEN(ALLTRIM(vdEs))<>0
                IF viOm=1 .OR. ftM1cpt<>vcPt .OR. ftM1des<>vdEs .OR.  ;
                   ftM1tot<>vtOt .OR. ftM1dia<>vdIa .OR. ftM1mes<>vmEs  ;
                   .OR. ftM1ope<>voPe
                     DO opE_4211b
                     DO grA_4211b
                ENDIF
      ENDCASE
      DO CASE
           CASE mkEy=k_Tab
                IF viOm=1
                     DO blA_4211b
                ELSE
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                SELECT tmP_fijos
                GOTO TOP
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=1
                STORE 99 TO mkEy
           CASE mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down
                DO diS_4211b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO suBe WITH ifIl, mcO0+000.4, ffIl, mcO0+123.3, 1
                     STORE irEc+1 TO irEc
                     IF urEc<frEc
                          STORE urEc+1 TO urEc
                     ENDIF
                ELSE
                     STORE vfIl+1 TO vfIl
                ENDIF
                STORE vrEc+1 TO vrEc
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_4211b
                ELSE
                     DO liM_4211b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Up
                IF viOm=1
                     DO blA_4211b
                ELSE
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO baJa WITH ifIl, mcO0+000.4, ffIl, mcO0+001.9, 1
                     DO baJa WITH ifIl, mcO0+003.6, ffIl, mcO0+007.1, 1
                     DO baJa WITH ifIl, mcO0+008.7, ffIl, mcO0+048.9, 1
                     DO baJa WITH ifIl, mcO0+050.6, ffIl, mcO0+052.9, 1
                     DO baJa WITH ifIl, mcO0+054.6, ffIl, mcO0+059.5, 1
                     DO baJa WITH ifIl, mcO0+061.2, ffIl, mcO0+071.5, 1
                     DO baJa WITH ifIl, mcO0+073.2, ffIl, mcO0+075.3, 1
                     DO baJa WITH ifIl, mcO0+077.0, ffIl, mcO0+079.2, 1
                     DO baJa WITH ifIl, mcO0+080.8, ffIl, mcO0+106.3, 1
                     DO baJa WITH ifIl, mcO0+108.0, ffIl, mcO0+117.7, 1
                     DO baJa WITH ifIl, mcO0+119.4, ffIl, mcO0+122.3, 1
                     STORE irEc-1 TO irEc
                     IF ufIl<ffIl
                          STORE ufIl+1 TO ufIl
                     ELSE
                          STORE urEc-1 TO urEc
                     ENDIF
                ELSE
                     STORE vfIl-1 TO vfIl
                ENDIF
                STORE vrEc-1 TO vrEc
                GOTO vrEc
                DO muE_4211b
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_home
                IF vrEc>frEc
                     DO blA_4211b
                ELSE
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_4211b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_4211b
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_end
                DO diS_4211b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_4211b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ELSE
                     DO diS_4211b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_4211b
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgup
                DO diS_4211b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO irEc
                SKIP -INT(ffIl-ifIl+1)
                DO paN_4211b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_4211b
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgdn
                DO diS_4211b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urEc
                SKIP
                DO paN_4211b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_4211b
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      STORE k_Enter TO mkEy
      DO coL_fondo
      DO CASE
           CASE viTe=01
                @mMF2,mMC2 Say "SE DEBE SELECCIONAR UN CONCEPTO, ES UN CAMPO DE 50 CARACTERES ALFANUMÉRICOS..." Font "&mLetRom",9 Style "BQ" Size 1,113
           CASE viTe=02
                @mMF2,mMC2 Say "ESTE CAMPO ES DE 6 ENTEROS Y 2 DECIMALES, SI NO SE USA PUEDE SER CERO..." Font "&mLetRom",9 Style "BQ" Size 1,113
           CASE viTe=03 .OR. viTe=04
                @mMF2,mMC2 Say "ESTE CAMPO ES DE 2 DÍGITOS, SI NO SE USA PUEDE SER CERO..." Font "&mLetRom",9 Style "BQ" Size 1,113
           CASE viTe=05
                @mMF2,mMC2 Say "ESTE CAMPO ES DE 50 CARACTERES ALFANUMÉRICOS, (FÓRMULAS O CÁLCULOS)..." Font "&mLetRom",9 Style "BQ" Size 1,113
      ENDCASE
      DO coLbln
      DO CASE
           CASE viTe=01 .AND. LEN(ALLTRIM(vcPt))<>0
                DO prEsiona WITH "1", "ITEMS", vfIl, mcO0+39
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                @vFIL,mCO0+8.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,30.1 Pict "@S35" Color Scheme 1
                mkEy = INKEY(0, "HM")
                @vFIL,mCO0+8.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,30.1 Pict "@S35"
           OTHERWISE
                DO CASE
                     CASE viTe=01
                          DO prEsiona WITH "1", "ITEMS", vfIl, mcO0+39
                          IF mkEy=k_Esc
                               RETURN
                          ENDIF
                          @vFIL,mCO0+08.7 Edit vDES Font "&mLetAri",8 Style "NQ" Size 1,30.1,70
                     CASE viTe=02
                          @vFIL,mCO0+61.4 Get  vTOT Font "&mLetAri",8 Style "NQ" Size 1,10.7 Pict "999999.99" Color ,&mColBlN
                     CASE viTe=03
                          @vFIL,mCO0+73.4 Get  vDIA Font "&mLetAri",8 Style "NQ" Size 1,02.5 Pict "99"        Color ,&mColBlN
                     CASE viTe=04
                          @vFIL,mCO0+77.2 Get  vMES Font "&mLetAri",8 Style "NQ" Size 1,02.5 Pict "99"        Color ,&mColBlN
                     CASE viTe=05
                          @vFIL,mCO0+80.8 Edit vOPE Font "&mLetAri",8 Style "NQ" Size 1,26.5,50
                ENDCASE
                SET CURSOR ON
                READ
                SET CURSOR OFF
      ENDCASE
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_4211b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_4211b
      DO diS_4211b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      @ vfIl, mcO0+000.4 CLEAR TO ffIl+1, mcO0+123.3
 ENDIF
ENDPROC
*
PROCEDURE Dis_4211b
 PARAMETER ptIp
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
           @vFIL,mCO0+8.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,41.1 Pict "@S50"
      CASE ptIp="R"
           DO coLbln
           IF viOm=1
                @vFIL,mCO0+8.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,30.1 Pict "@S35"
           ELSE
                @vFIL,mCO0+8.7 Say vDES Font "&mLetAri",8 Style "NQ" Size 1,41.1 Pict "@S50"
           ENDIF
 ENDCASE
 @vFIL,mCO0+0.4 Say vREC Font "&mLetAri",8 Style "NQ" Size 1,2.5 Pict "99"
 @vFIL,mCO0+3.6 Say vCPT Font "&mLetAri",8 Style "NQ" Size 1,4.5 Pict "9999"
 DO CASE
      CASE vtIp=0
           @vFIL,mCO0+50.6 Say "    " Font "&mLetAri",8 Style "NQ" Size 1,3.4
      CASE vtIp=1
           @vFIL,mCO0+50.6 Say "Ingr" Font "&mLetAri",8 Style "NQ" Size 1,3.4
      CASE vtIp=2
           @vFIL,mCO0+50.6 Say "Dcto" Font "&mLetAri",8 Style "NQ" Size 1,3.4
      CASE vtIp=3
           @vFIL,mCO0+50.6 Say "Apor" Font "&mLetAri",8 Style "NQ" Size 1,3.4
      CASE vtIp=4
           @vFIL,mCO0+50.6 Say "Otro" Font "&mLetAri",8 Style "NQ" Size 1,3.4
 ENDCASE
 @vFIL,mCO0+054.6 Say vPAF Font "&mLetAri",8 Style "NQ" Size 1,05.9 Pict "99.99"
 @vFIL,mCO0+061.2 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.2
 @vFIL,mCO0+061.4 Say vTOT Font "&mLetAri",8 Style "NQ" Size 1,10.7 Pict "99,999.99"
 @vFIL,mCO0+072.1 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.3
 @vFIL,mCO0+073.2 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.2
 @vFIL,mCO0+073.4 Say vDIA Font "&mLetAri",8 Style "NQ" Size 1,02.5 Pict "99"
 @vFIL,mCO0+076.0 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.3
 @vFIL,mCO0+077.0 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.2
 @vFIL,mCO0+077.2 Say vMES Font "&mLetAri",8 Style "NQ" Size 1,02.5 Pict "99"
 @vFIL,mCO0+079.8 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.3
 @vFIL,mCO0+080.8 Say "  " Font "&mLetAri",8 Style "NQ" Size 1,00.2
 @vFIL,mCO0+080.9 Say vOPE Font "&mLetAri",8 Style "NQ" Size 1,26.3 Pict "@S30"
 DO opE_4211b
 DO coL_fondo
 @fFIL+2.2,mCO0+12 Say AllTrim(cOPE)+" = "+AllTrim(Str(vRES,15,2)) Font "&mLetAri",8 Style "NQ" Size 1,95
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFIL,mCO0+108.0 Say vRES Font "&mLetAri",8 Style "NQ" Size 1,10.7 Pict "99,999.99"
 DO prEsiona WITH "1", "DESCAN", vfIl, mcO0+119.5
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Bla_4211b
 DO coL_fondo
 @ vfIl, mcO0+000.4 CLEAR TO vfIl+1, mcO0+123.3
ENDPROC
*
PROCEDURE Lim_4211b
 STORE SPACE(04) TO vcPt
 STORE SPACE(50) TO vdEs, voPe
 STORE 01 TO viOm, viTe
 STORE 00 TO vtOt, vdIa, vmEs, vrEs, vtAf, vpAf, vpOr, vtIp
ENDPROC
*
PROCEDURE Mue_4211b
 SELECT tmP_fijos
 STORE ftM1cpt TO vcPt
 STORE ftM1des TO vdEs
 STORE ftM1tot TO vtOt
 STORE ftM1dia TO vdIa
 STORE ftM1mes TO vmEs
 STORE ftM1ope TO voPe
 STORE ftM1res TO vrEs
 STORE ftM1taf TO vtAf
 STORE ftM1tip TO vtIp
 STORE ftM1por TO vpOr
 STORE ftM1paf TO vpAf
 STORE 02 TO viOm
 DO CASE
      CASE viTe<02
           STORE 02 TO viTe
      CASE viTe>05
           STORE 02 TO viTe
 ENDCASE
ENDPROC
*
PROCEDURE Gra_4211b
 SELECT tmP_fijos
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
      SELECT exIste
      APPEND BLANK
      REPLACE ftM2cpt WITH vcPt
      REPLACE ftM2res WITH vrEs
      SELECT tmP_fijos
 ENDIF
 REPLACE ftM1cpt WITH vcPt
 REPLACE ftM1des WITH vdEs
 REPLACE ftM1tot WITH vtOt
 REPLACE ftM1dia WITH vdIa
 REPLACE ftM1mes WITH vmEs
 REPLACE ftM1ope WITH voPe
 REPLACE ftM1taf WITH vtAf
 REPLACE ftM1tip WITH vtIp
 REPLACE ftM1por WITH vpOr
 REPLACE ftM1paf WITH vpAf
 REPLACE ftM1res WITH vrEs
 DO caL_4211b
 DO cl1_4211b
 DO muE_4211b
 DO coL_fondo
 @fFIL+1.1,mCO0+015.0 Say tOT1+tOT2 Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
 @fFIL+1.1,mCO0+047.6 Say tING      Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
 @fFIL+1.1,mCO0+078.0 Say tDCT      Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
 @fFIL+1.1,mCO0+110.0 Say tAPO      Pict "999,999.99" Font "&mLetAri",8 Style "NQ" Size 1,11.9
ENDPROC
*
PROCEDURE Cal_4211b
 STORE 00 TO tiNg, tdCt, taPo, toT1, toT2
 SELECT tmP_fijos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ftM1tip<>1
           SKIP
           LOOP
      ENDIF
      STORE ftM1cpt TO vcPt
      STORE ftM1tip TO vtIp
      STORE ftM1por TO vpOr
      STORE ftM1paf TO vpAf
      STORE ftM1tot TO vtOt
      STORE ftM1dia TO vdIa
      STORE ftM1mes TO vmEs
      STORE ftM1ope TO voPe
      DO opE_4211b
      STORE tiNg+vrEs TO tiNg
      REPLACE ftM1res WITH vrEs
      SELECT exIste
      SEEK vcPt
      REPLACE ftM2res WITH vrEs
      SELECT tmP_fijos
      SKIP
 ENDDO
 SELECT tmP_fijos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ftM1tip<>2
           SKIP
           LOOP
      ENDIF
      STORE ftM1cpt TO vcPt
      STORE ftM1tip TO vtIp
      STORE ftM1por TO vpOr
      STORE ftM1paf TO vpAf
      STORE ftM1tot TO vtOt
      STORE ftM1dia TO vdIa
      STORE ftM1mes TO vmEs
      STORE ftM1ope TO voPe
      DO opE_4211b
      STORE tdCt+vrEs TO tdCt
      REPLACE ftM1res WITH vrEs
      SELECT exIste
      SEEK vcPt
      REPLACE ftM2res WITH vrEs
      SELECT tmP_fijos
      SKIP
 ENDDO
 SELECT tmP_fijos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ftM1tip<>3
           SKIP
           LOOP
      ENDIF
      STORE ftM1cpt TO vcPt
      STORE ftM1tip TO vtIp
      STORE ftM1por TO vpOr
      STORE ftM1paf TO vpAf
      STORE ftM1tot TO vtOt
      STORE ftM1dia TO vdIa
      STORE ftM1mes TO vmEs
      STORE ftM1ope TO voPe
      DO opE_4211b
      STORE taPo+vrEs TO taPo
      REPLACE ftM1res WITH vrEs
      SELECT exIste
      SEEK vcPt
      REPLACE ftM2res WITH vrEs
      SELECT tmP_fijos
      SKIP
 ENDDO
 SELECT tmP_fijos
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF ftM1tip<>4
           SKIP
           LOOP
      ENDIF
      STORE ftM1cpt TO vcPt
      STORE ftM1tip TO vtIp
      STORE ftM1por TO vpOr
      STORE ftM1paf TO vpAf
      STORE ftM1tot TO vtOt
      STORE ftM1dia TO vdIa
      STORE ftM1mes TO vmEs
      STORE ftM1ope TO voPe
      DO opE_4211b
      IF vrEs>=0
           STORE toT1+vrEs TO toT1
      ELSE
           STORE toT2+vrEs TO toT2
      ENDIF
      REPLACE ftM1res WITH vrEs
      SELECT exIste
      SEEK vcPt
      REPLACE ftM2res WITH vrEs
      SELECT tmP_fijos
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Cl1_4211b
 SELECT tmP_fijos
 GOTO irEc
 STORE ifIl TO cfIl
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      IF RECNO()=vrEc
           DO coLbln
      ELSE
           DO coL_fondo
      ENDIF
      @cFIL,mCO0+108 Say FTM1RES Font "&mLetAri",8 Style "NQ" Size 1,10.7 Pict "99,999.99"
      STORE cfIl+1 TO cfIl
      SKIP
 ENDDO
 IF vrEc<=frEc
      GOTO vrEc
 ENDIF
ENDPROC
*
PROCEDURE Ope_4211b
 STORE voPe TO coPe
 IF LEN(ALLTRIM(coPe))<>0
      STORE 00 TO vsW0, vnU1
      STORE ALLTRIM(voPe) TO coPe
      DO WHILE .T.
           IF AT("DT", coPe)<>0
                STORE 01 TO vsW0
                STORE AT("DT", coPe) TO vnUm
                IF INT(vdTr)=vdTr
                     STORE ALLTRIM(STR(vdTr, 5, 0)) TO voP1
                ELSE
                     STORE ALLTRIM(STR(vdTr, 5, 2)) TO voP1
                ENDIF
                STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+2) TO coPe
           ENDIF
           IF AT("TOT", coPe)<>0
                STORE 01 TO vsW0
                STORE AT("TOT", coPe) TO vnUm
                IF INT(vtOt)=vtOt
                     STORE ALLTRIM(STR(vtOt, 12, 0)) TO voP1
                ELSE
                     STORE ALLTRIM(STR(vtOt, 12, 2)) TO voP1
                ENDIF
                STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
           ENDIF
           IF AT("DIA", coPe)<>0
                STORE 01 TO vsW0
                STORE AT("DIA", coPe) TO vnUm
                STORE ALLTRIM(STR(vdIa, 2, 0)) TO voP1
                STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
           ENDIF
           IF AT("MES", coPe)<>0
                STORE 01 TO vsW0
                STORE AT("MES", coPe) TO vnUm
                STORE ALLTRIM(STR(vmEs, 2, 0)) TO voP1
                STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
           ENDIF
           IF AT("[%]", coPe)<>0
                STORE 01 TO vsW0
                STORE AT("[%]", coPe) TO vnUm
                IF INT(vpAf)=vpAf
                     STORE ALLTRIM(STR(vpAf, 5, 0))+"/100" TO voP1
                ELSE
                     STORE ALLTRIM(STR(vpAf, 5, 2))+"/100" TO voP1
                ENDIF
                STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
           ENDIF
           IF AT("[%C]", coPe)<>0
                STORE 01 TO vsW0
                STORE AT("[%C]", coPe) TO vnUm
                IF INT(vpOr)=vpOr
                     STORE ALLTRIM(STR(vpOr, 5, 0))+"/100" TO voP1
                ELSE
                     STORE ALLTRIM(STR(vpOr, 5, 2))+"/100" TO voP1
                ENDIF
                STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+4) TO coPe
           ENDIF
           DO CASE
                CASE vtIp=1
                     DO op2_4211b
                     DO op3_4211b
                CASE vtIp=2
                     DO op1_4211b
                     DO op3_4211b
                CASE vtIp=3
                     DO op1_4211b
                     DO op2_4211b
                CASE vtIp=4
                     DO op1_4211b
                     DO op2_4211b
                     DO op3_4211b
           ENDCASE
           IF AT("[", coPe)<>0 .AND. vnU1=0
                STORE 1 TO vnU1
                DO WHILE .T.
                     IF AT("[", coPe, vnU1)=0
                          EXIT
                     ENDIF
                     STORE AT("[", coPe, vnU1) TO vnUm
                     IF SUBSTR(coPe, vnUm+5, 1)="]"
                          STORE SUBSTR(coPe, vnUm+1, 4) TO vtMp
                          SELECT exIste
                          SEEK vtMp
                          IF  .NOT. EOF()
                               STORE 01 TO vsW0
                               IF INT(ftM2res)=ftM2res
                                    STORE ALLTRIM(STR(ftM2res, 12, 0)) TO voP1
                               ELSE
                                    STORE ALLTRIM(STR(ftM2res, 12, 2)) TO voP1
                               ENDIF
                               STORE SUBSTR(coPe, 1, vnUm-1)+voP1+ ;
                                     SUBSTR(coPe, vnUm+6) TO coPe
                          ENDIF
                     ENDIF
                     STORE vnU1+1 TO vnU1
                ENDDO
                SELECT tmP_fijos
           ENDIF
           IF vsW0=00
                EXIT
           ENDIF
           STORE 00 TO vsW0
      ENDDO
      STORE 03 TO meRr
      Store Round(&cOPE,2) to vRES
      IF mkEy=k_Esc
           STORE 99 TO mkEy
           STORE 00 TO vrEs
      ENDIF
      = INKEY(0.01)
 ELSE
      STORE vtOt TO vrEs
 ENDIF
 SELECT tmP_fijos
ENDPROC
*
PROCEDURE Op1_4211b
 IF AT("ING", coPe)<>0
      STORE 01 TO vsW0
      STORE AT("ING", coPe) TO vnUm
      IF INT(tiNg)=tiNg
           STORE ALLTRIM(STR(tiNg, 12, 0)) TO voP1
      ELSE
           STORE ALLTRIM(STR(tiNg, 12, 2)) TO voP1
      ENDIF
      STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
      IF AT("ING", coPe)<>0
           STORE 01 TO vsW0
           STORE AT("ING", coPe) TO vnUm
           IF INT(tiNg)=tiNg
                STORE ALLTRIM(STR(tiNg, 12, 0)) TO voP1
           ELSE
                STORE ALLTRIM(STR(tiNg, 12, 2)) TO voP1
           ENDIF
           STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Op2_4211b
 IF AT("DCT", coPe)<>0
      STORE 01 TO vsW0
      STORE AT("DCT", coPe) TO vnUm
      IF INT(tdCt)=tdCt
           STORE ALLTRIM(STR(tdCt, 12, 0)) TO voP1
      ELSE
           STORE ALLTRIM(STR(tdCt, 12, 2)) TO voP1
      ENDIF
      STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
      IF AT("DCT", coPe)<>0
           STORE 01 TO vsW0
           STORE AT("DCT", coPe) TO vnUm
           IF INT(tdCt)=tdCt
                STORE ALLTRIM(STR(tdCt, 12, 0)) TO voP1
           ELSE
                STORE ALLTRIM(STR(tdCt, 12, 2)) TO voP1
           ENDIF
           STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Op3_4211b
 IF AT("APO", coPe)<>0
      STORE 01 TO vsW0
      STORE AT("APO", coPe) TO vnUm
      IF INT(taPo)=taPo
           STORE ALLTRIM(STR(taPo, 12, 0)) TO voP1
      ELSE
           STORE ALLTRIM(STR(taPo, 12, 2)) TO voP1
      ENDIF
      STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
      IF AT("APO", coPe)<>0
           STORE 01 TO vsW0
           STORE AT("APO", coPe) TO vnUm
           IF INT(taPo)=taPo
                STORE ALLTRIM(STR(taPo, 12, 0)) TO voP1
           ELSE
                STORE ALLTRIM(STR(taPo, 12, 2)) TO voP1
           ENDIF
           STORE SUBSTR(coPe, 1, vnUm-1)+voP1+SUBSTR(coPe, vnUm+3) TO coPe
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Ve1_4211b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vcPt))=0
           STORE "Descripción tiene que pertenecer a algún Concepto..." TO mmSj
      CASE LEN(ALLTRIM(vdEs))=0
           STORE "Descripción no puede estar vacía...                 " TO mmSj
      OTHERWISE
           IF LEN(ALLTRIM(voPe))<>0
                STORE UPPER(voPe) TO voPe
                DO CASE
                     CASE AT("ING", voPe)<>0 .AND. vtIp=1
                          STORE "No se puede poner el Total de Ingresos en un Concepto de INGRESO..."  ;
                                TO mmSj
                     CASE AT("DCT", voPe)<>0 .AND. vtIp=1
                          STORE "No se puede poner el Total de Descuentos en un Concepto de DESCUENTO..."  ;
                                TO mmSj
                     CASE AT("APO", voPe)<>0 .AND. vtIp=1
                          STORE "No se puede poner el Total de Aportes en un Concepto de APORTE..."  ;
                                TO mmSj
                     CASE AT("[%]", voPe)<>0 .AND. vtAf<2
                          STORE "Concepto no está ligado a AFP..." TO mmSj
                     CASE AT("]", voPe)<>0 .AND. AT("[", voPe)=0
                          STORE "Falta Corchete inicial...       " TO mmSj
                     CASE AT("[", voPe)<>0 .AND. SUBSTR(voPe, AT("[",  ;
                          voPe)+1, 2)<>"%]" .AND. SUBSTR(voPe, AT("[",  ;
                          voPe)+1, 3)<>"%C]" .AND. SUBSTR(voPe, AT("[",  ;
                          voPe)+5, 1)<>"]"
                          STORE "La Operación completa debe ser [%] o [%C] o [concepto]..."  ;
                                TO mmSj
                     CASE AT("[", voPe)<>0
                          STORE AT("[", voPe) TO vnUm
                          STORE ALLTRIM(voPe) TO coPe
                          DO WHILE .T.
                               vtMp = SUBSTR(coPe, vnUm+1, 4)
                               IF vtMp>="0001" .AND. vtMp<="9999"
                                    IF vtMp=vcPt
                                         STORE  ;
                                          "Concepto de Operación no puede ser igual al Concepto de este Item..."  ;
                                          TO mmSj
                                         EXIT
                                    ENDIF
                                    SELECT exIste
                                    SEEK vtMp
                                    IF EOF()
                                         STORE  ;
                                          "Concepto no ha sido ingresado a este Trabajador..."  ;
                                          TO mmSj
                                         EXIT
                                    ENDIF
                                    IF LEN(ALLTRIM(coPe))<=6
                                         EXIT
                                    ENDIF
                                    STORE SUBSTR(coPe, vnUm+6) TO coPe
                               ELSE
                                    STORE SUBSTR(coPe, vnUm+1) TO coPe
                               ENDIF
                               IF AT("[", coPe)=0
                                    EXIT
                               ENDIF
                               STORE AT("[", coPe) TO vnUm
                          ENDDO
                          SELECT tmP_fijos
                ENDCASE
                SELECT tmP_fijos
           ELSE
                STORE vtOt TO vrEs
           ENDIF
           IF LEN(ALLTRIM(mmSj))=0
                DO diS_4211b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Clp_4211b
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+21.80 .AND.  ;
           mcCc<=mmC1+36.80
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+36.80 .AND.  ;
           mcCc<=mmC1+45.80
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+45.80 .AND.  ;
           mcCc<=mmC1+54.60
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+54.60 .AND.  ;
           mcCc<=mmC1+63.40
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+63.40 .AND.  ;
           mcCc<=mmC1+72.40
           STORE k_F10 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+01 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+muCo
           = INKEY(0.01)
           STORE 99 TO mkEy
           DO CASE
                CASE mcCc>=mcO0+041.2 .AND. mcCc<=mcO0+043.8 .AND. viOm=1
                     STORE 01 TO viTe
                     STORE k_F2 TO mkEy
                CASE mcCc>=mcO0+043.8 .AND. mcCc<=mcO0+046.8 .AND. viOm=1
                     STORE 01 TO viTe
                     STORE k_F3 TO mkEy
                CASE mcCc>=mcO0+046.8 .AND. mcCc<=mcO0+049.8 .AND. viOm=1
                     STORE 01 TO viTe
                     STORE k_Ctrl_del TO mkEy
                CASE mcCc>=mcO0 .AND. mcCc<=mcO0+061.0 .AND. viOm=1
                     STORE 01 TO viTe
                CASE mcCc>=mcO0 .AND. mcCc<=mcO0+072.8
                     STORE 02 TO viTe
                CASE mcCc>=mcO0+072.8 .AND. mcCc<=mcO0+076.6
                     STORE 03 TO viTe
                CASE mcCc>=mcO0+076.6 .AND. mcCc<=mcO0+080.4
                     STORE 04 TO viTe
                CASE mcCc>=mcO0+080.4 .AND. mcCc<=mcO0+119.0
                     STORE 05 TO viTe
                CASE mcCc>=mcO0+119.0 .AND. mcCc<=mcO0+123.4
                     STORE k_Alt_del TO mkEy
           ENDCASE
      CASE mfIl>=ifIl-0.007 .AND. mfIl<=ufIl+0.992 .AND. mcCc>=mcO0 .AND.  ;
           mcCc<=mcO0+muCo
           = INKEY(0.01)
           STORE 99 TO mkEy
           DO CASE
                CASE viOm=1
                     DO blA_4211b
                CASE viOm=2
                     DO diS_4211b WITH "N"
           ENDCASE
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE 99 TO mkEy
           STORE RECNO() TO vrEc
           DO muE_4211b
           DO diS_4211b WITH "R"
           DO CASE
                CASE mcCc>=mcO0 .AND. mcCc<=mcO0+072.8
                     STORE 02 TO viTe
                CASE mcCc>=mcO0+072.8 .AND. mcCc<=mcO0+076.6
                     STORE 03 TO viTe
                CASE mcCc>=mcO0+076.6 .AND. mcCc<=mcO0+080.4
                     STORE 04 TO viTe
                CASE mcCc>=mcO0+080.4 .AND. mcCc<=mcO0+119.2
                     STORE 05 TO viTe
                CASE mcCc>=mcO0+119.0 .AND. mcCc<=mcO0+123.4
                     STORE k_Alt_del TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4211b
 = INKEY(0.01)
 ACTIVATE WINDOW mpAn_hlp
 @ 0.200, 01 SAY  ;
   "Los Conceptos x Item no pueden repetirse. En el campo de Operacion tiene"
 @ 1.200, 01 SAY "las siguientes caracteristicas:"
 @ 2.200, 01 SAY  ;
   "- Se pueden usar los signos +, -, * y /, se pueden usar () para operaciones"
 @ 3.200, 01 SAY "- Los días trabajados es DT"
 @ 4.200, 01 SAY "- El resultado de un Concepto ya ingresado se pone entre []"
 @ 5.200, 01 SAY  ;
   "- La suma de los Ingresos es ING, de los Descuentos es DCT, de las Apor-"
 @ 6.200, 01 SAY "  taciones es APO"
 @ 7.200, 01 SAY  ;
   "- El campo de monto total es TOT, el de días es DIA, el de meses es MES"
 @ 8.200, 01 SAY  ;
   "- El % de AFP llamado desde un Concepto es [%], el % de un Concepto es"
 @ 9.200, 01 SAY "  [%C]"
 @ 10.200, 01 SAY  ;
   "- Para calcular un monto sin Decimales es INT(###), siendo ### una opera-"
 @ 11.200, 01 SAY "  cion o un monto"
 @ 13.200, 01 SAY "ENTER / CTRL ->" STYLE "BT"
 @ 13.200, 18 SAY ":" STYLE "BT"
 @ 14.200, 01 SAY "FLECHA ABAJO" STYLE "BT"
 @ 14.200, 18 SAY ":" STYLE "BT"
 @ 15.200, 01 SAY "FLECHA ARRIBA" STYLE "BT"
 @ 15.200, 18 SAY ":" STYLE "BT"
 @ 16.200, 01 SAY "<- CTRL" STYLE "BT"
 @ 16.200, 18 SAY ":" STYLE "BT"
 @ 17.200, 01 SAY "CTRL HOME" STYLE "BT"
 @ 17.200, 18 SAY ":" STYLE "BT"
 @ 18.200, 01 SAY "CTRL END" STYLE "BT"
 @ 18.200, 18 SAY ":" STYLE "BT"
 @ 19.200, 01 SAY "ALT DEL" STYLE "BT"
 @ 19.200, 18 SAY ":" STYLE "BT"
 @ 20.200, 01 SAY "PAGE DOWN" STYLE "BT"
 @ 20.200, 18 SAY ":" STYLE "BT"
 @ 21.200, 01 SAY "PAGE UP" STYLE "BT"
 @ 21.200, 18 SAY ":" STYLE "BT"
 @ 13.200, 39 SAY "ESC" STYLE "BT"
 @ 13.200, 44 SAY ":" STYLE "BT"
 @ 14.200, 39 SAY "F10" STYLE "BT"
 @ 14.200, 44 SAY ":" STYLE "BT"
 @ 15.200, 39 SAY "F1" STYLE "BT"
 @ 15.200, 44 SAY ":" STYLE "BT"
 @ 16.200, 39 SAY "TAB" STYLE "BT"
 @ 16.200, 44 SAY ":" STYLE "BT"
 @ 13.200, 19 SAY "Ir al siguiente campo"
 @ 14.200, 19 SAY "Ir a la línea siguiente"
 @ 15.200, 19 SAY "Ir a la línea anterior"
 @ 16.200, 19 SAY "Ir al campo anterior"
 @ 17.200, 19 SAY "Primera línea del Detalle"
 @ 18.200, 19 SAY "Última línea del Detalle"
 @ 19.200, 19 SAY "Borrar línea"
 @ 20.200, 19 SAY "Página siguiente"
 @ 21.200, 19 SAY "Página anterior"
 @ 13.200, 45 SAY "Regresar al Menú Principal"
 @ 14.200, 45 SAY "Cerrar y regresar a Windows"
 @ 15.200, 45 SAY "Ayuda del Programa"
 @ 16.200, 45 SAY "GRABAR"
 IF viTe=01
      @ 22.200, 01 SAY "F2" STYLE "BT"
      @ 22.200, 18 SAY ":" STYLE "BT"
      @ 23.200, 01 SAY "F3" STYLE "BT"
      @ 23.200, 18 SAY ":" STYLE "BT"
      @ 24.200, 01 SAY "CTRL DEL" STYLE "BT"
      @ 24.200, 18 SAY ":" STYLE "BT"
      @ 22.200, 19 SAY "Consulta de Conceptos registrados"
      @ 23.200, 19 SAY "Buscar palabra o frase y mostrarla en consulta"
      @ 24.200, 19 SAY "Des-Seleccionar Conceptos"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
