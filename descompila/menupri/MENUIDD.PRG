 = INKEY(0.01)
 @mFI0+6.9,mCO0+(((vCLN*6)-39))/2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH \\Grabar;\\Eliminar;\\Salir" Size 1.6,16,1
 @mFI0+8.8,mCO0+2                 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Ver Detalle de Menu"   Size 1.6,22,1 Color ,,1
 @fFIL+2,mCO0+(((vCLN*6)-39))/2   Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Grabar;Eliminar;Salir" Size 1.6,16,1
 READ TIMEOUT 0.01
 DO coLsc3
 DO CASE
      CASE mrEs="1" .AND. vnUm=1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=2
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=3
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=4
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=5
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=6
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=7
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=2
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=3
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=4
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=5
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=6
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=7
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs>"2" .AND. vnUm=1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=2
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=3
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=4
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=5
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=6
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=7
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
 ENDCASE
 STORE 99 TO mkEy
 SELECT teMporal
 ZAP
 SELECT coPia
 ZAP
 SELECT meNu1_tmp
 SEEK vnIv+STR(vnUm, 1, 0)
 DO WHILE  .NOT. EOF() .AND. niV=vnIv .AND. itE=vnUm
      STORE noM TO vdEs
      STORE co1 TO vcO1
      STORE co2 TO vcO2
      STORE prG TO vpRg
      STORE nv1 TO vnV1
      STORE nv2 TO vnV2
      STORE nv3 TO vnV3
      SELECT teMporal
      APPEND BLANK
      REPLACE ftM4des WITH vdEs
      REPLACE ftM4co1 WITH vcO1
      REPLACE ftM4co2 WITH vcO2
      REPLACE ftM4pro WITH vpRg
      REPLACE ftM4nv1 WITH vnV1
      REPLACE ftM4nv2 WITH vnV2
      REPLACE ftM4nv3 WITH vnV3
      STORE RECNO() TO frEc
      SELECT meNu1_tmp
      SKIP
 ENDDO
 STORE ifIl TO vfIl, ufIl
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
           DO liM_0000b
      OTHERWISE
           DO paN_0000b
           GOTO TOP
           DO muE_0000b
 ENDCASE
 STORE ifIl TO vfIl
 STORE 1 TO vrEc
 DO diS_0000b WITH "R"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      DO paN_0000a
      IF mrEs<>mrSs
           DO reS_0000b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_0000b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     IF viOm=01
                          DO blA_0000b
                     ELSE
                          DO diS_0000b WITH "N"
                     ENDIF
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F3 .AND. LEN(ALLTRIM(vdEs))=0
                STORE 99 TO mkEy
           CASE mkEy=k_F2
                = INKEY(0.01)
                SELECT prGmnu_tmp
                GOTO TOP
                IF BOF() .OR. EOF()
                     STORE "No hay Programas registrados..." TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT teMporal
                     LOOP
                ENDIF
                DO prG_0000b
                SELECT prGmnu_tmp
                SET ORDER TO PRG
                SET FILTER TO
                SELECT teMporal
           CASE mkEy=k_F3
                = INKEY(0.01)
                SELECT prGmnu_tmp
                SET FILTER TO AT(UPPER(ALLTRIM(vdEs)), UPPER(ALLTRIM(noM)))<>0 .OR. AT(UPPER(ALLTRIM(vdEs)), UPPER(ALLTRIM(co1+prG+co2)))<>0
                GOTO TOP
                IF BOF() .OR. EOF()
                     SET FILTER TO
                     STORE "No hay Programas registrados con ese dato..."  ;
                           TO mmSj
                     STORE 99 TO mkEy
                     DO poNmsj
                     SELECT teMporal
                     LOOP
                ENDIF
                DO prG_0000b
                SELECT prGmnu_tmp
                SET ORDER TO PRG
                SET FILTER TO
                SELECT teMporal
      ENDCASE
      DO CASE
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_0000b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                IF viOm=01
                     DO blA_0000b
                ELSE
                     DO diS_0000b WITH "N"
                ENDIF
                EXIT
           CASE mkEy=k_Ctrl_ins .AND. frEc=0
                STORE "No se puede insertar línea, porque no hay líneas grabadas..."  ;
                      TO mmSj
           CASE mkEy=k_Ctrl_ins .AND. viOm=1
                STORE "No se puede insertar línea, porque ésta no está grabada..."  ;
                      TO mmSj
           CASE mkEy=k_Alt_del .AND. viOm=1
                STORE "No se puede borrar la línea, porque ésta no está grabada..."  ;
                      TO mmSj
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
           CASE mkEy=k_Ctrl_ins .AND. viOm=2
                SELECT coPia
                ZAP
                SELECT teMporal
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     IF RECNO()=vrEc
                          DO liM_0000b
                          STORE "\-" TO vdEs
                          SELECT coPia
                          APPEND BLANK
                          DO gr1_0000b
                     ENDIF
                     SELECT teMporal
                     DO muE_0000b
                     SELECT coPia
                     APPEND BLANK
                     DO gr1_0000b
                     SELECT teMporal
                     SKIP
                ENDDO
                SELECT teMporal
                ZAP
                SELECT coPia
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     DO muE_0000b
                     SELECT teMporal
                     APPEND BLANK
                     DO gr1_0000b
                     STORE RECNO() TO frEc
                     SELECT coPia
                     SKIP
                ENDDO
                SELECT teMporal
                STORE vrEc TO crEc
                STORE vfIl TO cfIl
                GOTO irEc
                DO paN_0000b
                IF crEc>urEc
                     STORE urEc TO crEc
                     STORE ufIl TO cfIl
                ENDIF
                STORE crEc TO vrEc
                STORE cfIl TO vfIl
                GOTO vrEc
                DO muE_0000b
                DO diS_0000b WITH "N"
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right) .AND. (viOm=1 .OR.  ;
                ftM4des<>vdEs)
                DO CASE
                     CASE LEN(ALLTRIM(vdEs))=0
                          STORE "Descripción del Programa no puede estar vacía..."  ;
                                TO mmSj
                     CASE LEN(ALLTRIM(vpRg))=0 .AND. ALLTRIM(vdEs)<>"\-"
                          STORE "Programa debe haber sido escogido, no puede estar vacío..."  ;
                                TO mmSj
                     OTHERWISE
                          DO diS_0000b WITH "R"
                ENDCASE
                = INKEY(0.01)
           CASE mkEy=k_Alt_del .AND. viOm=2
                = INKEY(0.01)
                SELECT teMporal
                DO coL_fondo
                DO CASE
                     CASE mrEs="1"
                          DO suBe WITH vfIl, vcO0+5.3, ffIl, vcO0+125.6, 1
                     CASE mrEs="2"
                          DO suBe WITH vfIl, vcO0+5.3, ffIl, vcO0+156.2, 1
                     CASE mrEs="3"
                          DO suBe WITH vfIl, vcO0+5.3, ffIl, vcO0+196.6, 1
                     CASE mrEs>"3"
                          DO suBe WITH vfIl, vcO0+5.3, ffIl, vcO0+220.7, 1
                ENDCASE
                IF frEc=urEc
                     @ ufIl, vcO0+0.1 CLEAR TO ufIl+1, vcO0+4.3
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
                     DO muE_0000b
                     DO diS_0000b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     STORE cfIl TO vfIl
                     STORE crEc TO vrEc
                     GOTO vrEc
                ENDIF
                DELETE
                PACK
                IF vrEc<=frEc
                     GOTO vrEc
                     DO muE_0000b
                ELSE
                     DO liM_0000b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. (viOm=1 .OR. ftM4des<>vdEs .OR.  ;
                LEN(ALLTRIM(vpRg))=0)
                DO ve1_0000b
      ENDCASE
      DO CASE
           CASE LEN(ALLTRIM(mmSj))<>0 .AND. viOm=01 .AND. (mkEy= ;
                k_Ctrl_home .OR. mkEy=k_Pgup .OR. mkEy=k_Up .OR. mkEy= ;
                k_Ctrl_end .OR. mkEy=k_Pgdn .OR. mkEy=k_Tab)
                STORE SPACE(100) TO mmSj
           CASE LEN(ALLTRIM(mmSj))<>0
                DO poNmsj
                STORE 99 TO mkEy
           CASE mkEy<>99 .AND. LEN(ALLTRIM(vdEs))<>0 .AND.  ;
                (LEN(ALLTRIM(vpRg))<>0 .OR. ALLTRIM(vdEs)="\-")
                DO grA_0000b
      ENDCASE
      = INKEY(0.01)
      DO CASE
           CASE mkEy=k_Tab
                DO grI_0000b
                EXIT
           CASE (mkEy=k_Enter .OR. mkEy=k_Ctrl_right .OR. mkEy=k_Down)  ;
                .AND. viOm=2
                DO diS_0000b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF vfIl=ffIl
                     DO coL_fondo
                     DO CASE
                          CASE mrEs="1"
                               DO suBe WITH ifIl, vcO0+0.1, ffIl, vcO0+125.6, 1
                          CASE mrEs="2"
                               DO suBe WITH ifIl, vcO0+0.1, ffIl, vcO0+156.2, 1
                          CASE mrEs="3"
                               DO suBe WITH ifIl, vcO0+0.1, ffIl, vcO0+196.6, 1
                          CASE mrEs>"3"
                               DO suBe WITH ifIl, vcO0+0.1, ffIl, vcO0+220.7, 1
                     ENDCASE
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
                     DO muE_0000b
                ELSE
                     DO liM_0000b
                     IF vfIl=ufIl
                          STORE ufIl-1 TO ufIl
                     ENDIF
                ENDIF
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Up .AND. vrEc>1
                IF viOm=1
                     DO blA_0000b
                ELSE
                     DO diS_0000b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF vfIl=ifIl
                     DO coL_fondo
                     DO CASE
                          CASE mrEs="1"
                               DO baJa WITH ifIl, vcO0+0.1, ffIl, vcO0+125.6, 1
                          CASE mrEs="2"
                               DO baJa WITH ifIl, vcO0+0.1, ffIl, vcO0+156.2, 1
                          CASE mrEs="3"
                               DO baJa WITH ifIl, vcO0+0.1, ffIl, vcO0+196.6, 1
                          CASE mrEs>"3"
                               DO baJa WITH ifIl, vcO0+0.1, ffIl, vcO0+220.7, 1
                     ENDCASE
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
                DO muE_0000b
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_home .AND. vrEc>1
                IF vrEc>frEc
                     DO blA_0000b
                ELSE
                     DO diS_0000b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                IF irEc=vrEc
                     GOTO TOP
                     DO paN_0000b
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_0000b
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. frEc<>vrEc
                DO diS_0000b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                IF urEc=vrEc
                     GOTO BOTTOM
                     STORE RECNO() TO vrEc
                     SKIP -INT(ffIl-ifIl)
                     DO paN_0000b
                ELSE
                     DO diS_0000b WITH "N"
                ENDIF
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
                GOTO vrEc
                DO muE_0000b
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgup .AND. irEc>1
                IF viOm=2
                     DO diS_0000b WITH "N"
                     IF mkEy=k_Esc
                          RETURN
                     ENDIF
                     GOTO irEc
                     SKIP -INT(ffIl-ifIl+1)
                ELSE
                     GOTO BOTTOM
                     SKIP -INT(ffIl-ifIl)
                ENDIF
                DO paN_0000b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_0000b
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Pgdn .AND. frEc<>urEc
                DO diS_0000b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO urEc
                SKIP
                DO paN_0000b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE irEc TO vrEc
                STORE ifIl TO vfIl
                GOTO vrEc
                DO muE_0000b
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
      ENDCASE
      DO coLbln
      DO CASE
           CASE mrEs="1"
                @vFIL,vCO0+5.3 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,66,70
           CASE mrEs="2"
                @vFIL,vCO0+5.3 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,75,70
           CASE mrEs>"2"
                @vFIL,vCO0+5.3 Edit vDES Font "&mLetAri",9 Style "NQ" Size 1,90,70
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RETURN
ENDPROC
*
PROCEDURE Pan_0000b
 STORE ifIl TO vfIl, ufIl
 STORE RECNO() TO irEc, urEc
 DO WHILE  .NOT. EOF() .AND. vfIl<ffIl+1
      STORE RECNO() TO urEc, vrEc
      STORE vfIl TO ufIl
      DO muE_0000b
      DO diS_0000b WITH "N"
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE vfIl+1 TO vfIl
      SKIP
 ENDDO
 IF vfIl-1<ffIl
      DO coL_fondo
      DO CASE
           CASE mrEs="1"
                @ vfIl, vcO0+0.1 CLEAR TO ffIl+1.1, vcO0+125.6
           CASE mrEs="2"
                @ vfIl, vcO0+0.1 CLEAR TO ffIl+1.1, vcO0+156.2
           CASE mrEs="3"
                @ vfIl, vcO0+0.1 CLEAR TO ffIl+1.1, vcO0+196.6
           CASE mrEs>"3"
                @ vfIl, vcO0+0.1 CLEAR TO ffIl+1.1, vcO0+220.7
      ENDCASE
 ENDIF
ENDPROC
*
PROCEDURE Dis_0000b
 PARAMETER ptIp
 PRIVATE pdEs, plEt
 STORE 85 TO plEt
 DO CASE
      CASE ptIp="N"
           DO coL_fondo
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 DO prEsiona WITH "1", "DESCAN", vfIl, mcO0+muCo-4.2
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @vFIL,vCO0+0.1 Say vREC Font "&mLetAri",9 Style "NQ" Size 1,04.2 Pict "999"
 DO CASE
      CASE mrEs="1"
           @vFIL,vCO0+5.3 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,66 Pict "@S68"
      CASE mrEs="2"
           @vFIL,vCO0+5.3 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,75 Pict "@S70"
      CASE mrEs>"2"
           @vFIL,vCO0+5.3 Say vDES Font "&mLetAri",9 Style "NQ" Size 1,90 Pict "@S70"
 ENDCASE
 SELECT prGmnu_tmp
 SEEK vcO1+vpRg+vcO2+vnV1+vnV2+STR(vnV3, 2, 0)
 IF EOF()
      STORE SPACE(99) TO pdEs
 ELSE
      STORE co1+prG+co2+" : "+nv1+"-"+nv2+"-"+STR(nv3, 2, 0)+": "+noM TO pdEs
 ENDIF
 DO CASE
      CASE mrEs="1"
           @vFIL,vCO0+72.3 Say pDES Font "&mLetAri",9 Style "NQ" Size 1,49  Pict "@S52"
      CASE mrEs="2"
           @vFIL,vCO0+82.3 Say pDES Font "&mLetAri",9 Style "NQ" Size 1,69  Pict "@S72"
      CASE mrEs="3"
           @vFIL,vCO0+97.3 Say pDES Font "&mLetAri",9 Style "NQ" Size 1,94  Pict "@S97"
      CASE mrEs>"3"
           @vFIL,vCO0+97.3 Say pDES Font "&mLetAri",9 Style "NQ" Size 1,119 Pict "@S122"
 ENDCASE
 DO coL_fonaz
 DO CASE
      CASE LEN(ALLTRIM(cm1))<=plEt
           @fFIL+4.5,mCO0+2 Say CM1 Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
           @fFIL+5.6,mCO0+2 Say " " Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
      CASE SUBSTR(cm1, plEt+1, 1)=" "
           @fFIL+4.5,mCO0+2 Say Substr(CM1,1,pLET)               Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
           @fFIL+5.6,mCO0+2 Say AllTrim(Substr(CM1,pLET+2,pLET)) Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
      OTHERWISE
           STORE SUBSTR(cm1, 1, plEt) TO pdEs
           IF RAT(" ", pdEs)=0
                @fFIL+4.5,mCO0+2 Say pDES                             Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
                @fFIL+5.6,mCO0+2 Say AllTrim(Substr(CM1,pLET+2,pLET)) Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
           ELSE
                STORE ALLTRIM(SUBSTR(pdEs, 1, RAT(" ", pdEs))) TO pdEs
                @fFIL+4.5,mCO0+2 Say pDES                                             Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
                @fFIL+5.6,mCO0+2 Say AllTrim(Substr(CM1,Len(AllTrim(pDES))+1,pLET*2)) Font "&mLetAri",9 Style "NQ" Size 1,120 Pict "@S122"
           ENDIF
 ENDCASE
 SELECT teMporal
ENDPROC
*
PROCEDURE Bla_0000b
 DO coL_fondo
 DO CASE
      CASE mrEs="1"
           @ vfIl, vcO0+0.1 CLEAR TO vfIl+1.1, vcO0+125.6
      CASE mrEs="2"
           @ vfIl, vcO0+0.1 CLEAR TO vfIl+1.1, vcO0+156.2
      CASE mrEs="3"
           @ vfIl, vcO0+0.1 CLEAR TO vfIl+1.1, vcO0+196.6
      CASE mrEs>"3"
           @ vfIl, vcO0+0.1 CLEAR TO vfIl+1.1, vcO0+220.7
 ENDCASE
ENDPROC
*
PROCEDURE Lim_0000b
 STORE SPACE(06) TO vpRg
 STORE SPACE(70) TO vdEs
 STORE SPACE(01) TO vnV1, vnV2, vcO1, vcO2
 STORE 01 TO viOm
 STORE 00 TO vnV3
ENDPROC
*
PROCEDURE Mue_0000b
 STORE 02 TO viOm
 STORE ftM4co1 TO vcO1
 STORE ftM4co2 TO vcO2
 STORE ftM4pro TO vpRg
 STORE ftM4des TO vdEs
 STORE ftM4nv1 TO vnV1
 STORE ftM4nv2 TO vnV2
 STORE ftM4nv3 TO vnV3
ENDPROC
*
PROCEDURE GrI_0000b
 = INKEY(0.01)
 SELECT meNu1_tmp
 DO WHILE .T.
      SEEK vnIv+STR(vnUm, 1, 0)
      IF EOF()
           EXIT
      ENDIF
      DELETE
 ENDDO
 PACK
 REINDEX
 SELECT meNu1
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF()
      STORE niV TO cnIv
      DO prO_0000a WITH cnIv
      STORE mfRa TO cnIv
      IF cnIv=vnIv .AND. itE=vnUm
           RLOCK()
           REPLACE niV WITH SPACE(01)
           DELETE
           UNLOCK
      ENDIF
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 UNLOCK ALL
 SELECT teMporal
 GOTO TOP
 DO WHILE  .NOT. EOF()
      STORE ftM4des TO vdEs
      STORE ftM4co1 TO vcO1
      STORE ftM4co2 TO vcO2
      STORE ftM4pro TO vpRg
      STORE ftM4nv1 TO vnV1
      STORE ftM4nv2 TO vnV2
      STORE ftM4nv3 TO vnV3
      STORE RECNO() TO vrEc
      SELECT meNu1_tmp
      APPEND BLANK
      REPLACE niV WITH vnIv
      REPLACE itE WITH vnUm
      REPLACE reC WITH vrEc
      REPLACE noM WITH vdEs
      REPLACE co1 WITH vcO1
      REPLACE co2 WITH vcO2
      REPLACE prG WITH vpRg
      REPLACE nv1 WITH vnV1
      REPLACE nv2 WITH vnV2
      REPLACE nv3 WITH vnV3
      SELECT meNu1
      APPEND BLANK
      REPLACE itE WITH vnUm
      REPLACE reC WITH vrEc
      DO prO_0000a WITH vcO1+vpRg+vcO2
      REPLACE prG WITH mfRa
      STORE vnIv TO cnIv
      DO prO_0000a WITH cnIv
      REPLACE niV WITH mfRa
      DO prO_0000a WITH vdEs
      REPLACE noM WITH mfRa
      DO prO_0000a WITH vnV1
      REPLACE nv1 WITH mfRa
      DO prO_0000a WITH vnV2
      REPLACE nv2 WITH mfRa
      REPLACE nv3 WITH vnV3
      UNLOCK
      SELECT teMporal
      SKIP
 ENDDO
 WAIT CLEAR
 = INKEY(0.01)
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Eli_0000b
 = INKEY(0.01)
 SELECT meNu1_tmp
 DO WHILE .T.
      SEEK vnIv+STR(vnUm, 1, 0)
      IF EOF()
           EXIT
      ENDIF
      REPLACE niV WITH SPACE(01)
      DELETE
 ENDDO
 PACK
 REINDEX
 SELECT meNu1
 GOTO TOP
 IF RLOCK()
      UNLOCK
 ENDIF
 DO WHILE  .NOT. EOF()
      STORE niV TO cnIv
      DO prO_0000a WITH cnIv
      STORE mfRa TO cnIv
      IF cnIv=vnIv .AND. itE=vnUm
           RLOCK()
           REPLACE niV WITH SPACE(01)
           DELETE
           UNLOCK
      ENDIF
      SKIP
      IF RLOCK()
           UNLOCK
      ENDIF
 ENDDO
 UNLOCK ALL
 SELECT teMporal
 ZAP
 WAIT CLEAR
 = INKEY(0.01)
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Gra_0000b
 = INKEY(0.01)
 SELECT teMporal
 IF viOm=01
      APPEND BLANK
      STORE vfIl TO ufIl
      STORE RECNO() TO vrEc, urEc, frEc
 ELSE
      GOTO vrEc
 ENDIF
 DO gr1_0000b
 STORE 02 TO viOm
ENDPROC
*
PROCEDURE Gr1_0000b
 = INKEY(0.01)
 REPLACE ftM4co1 WITH vcO1
 REPLACE ftM4co2 WITH vcO2
 REPLACE ftM4pro WITH vpRg
 REPLACE ftM4des WITH vdEs
 REPLACE ftM4nv1 WITH vnV1
 REPLACE ftM4nv2 WITH vnV2
 REPLACE ftM4nv3 WITH vnV3
ENDPROC
*
PROCEDURE Ve1_0000b
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE LEN(ALLTRIM(vdEs))=0
           STORE "Descripción del Programa no puede estar vacía..." TO mmSj
      CASE LEN(ALLTRIM(vpRg))=0 .AND. ALLTRIM(vdEs)<>"\-"
           STORE "Programa debe haber sido escogido, no puede estar vacío..."  ;
                 TO mmSj
 ENDCASE
ENDPROC
*
PROCEDURE Res_0000b
 SET READBORDER ON
 DO p00_0000a WITH "1"
 SET READBORDER OFF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SAVE SCREEN TO vpAn_11
 @mFI0+6.9,mCO0+(((vCLN*6)-39))/2 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH \\Grabar;\\Eliminar;\\Salir" Size 1.6,16,1
 @mFI0+8.8,mCO0+2                 Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Ver Detalle de Menu"   Size 1.6,22,1 Color ,,1
 @fFIL+2,mCO0+(((vCLN*6)-39))/2   Get vOPC Font "&mLetAri",9 Style "BQ" Function "*TH Grabar;Eliminar;Salir" Size 1.6,16,1
 READ TIMEOUT 0.01
 DO coLsc3
 DO CASE
      CASE mrEs="1" .AND. vnUm=1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=2
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=3
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=4
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=5
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=6
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="1" .AND. vnUm=7
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetAri",8  Style "NQ" Size 1,16 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=2
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=3
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=4
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=5
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=6
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs="2" .AND. vnUm=7
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetRom",11 Style "BQ" Size 1,17 Pict "@S19"
      CASE mrEs>"2" .AND. vnUm=1
           @mFI0+4.4,mCO0+2+(vCLN*0) Say vMN1 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=2
           @mFI0+4.4,mCO0+2+(vCLN*1) Say vMN2 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=3
           @mFI0+4.4,mCO0+2+(vCLN*2) Say vMN3 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=4
           @mFI0+4.4,mCO0+2+(vCLN*3) Say vMN4 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=5
           @mFI0+4.4,mCO0+2+(vCLN*4) Say vMN5 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=6
           @mFI0+4.4,mCO0+2+(vCLN*5) Say vMN6 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
      CASE mrEs>"2" .AND. vnUm=7
           @mFI0+4.4,mCO0+2+(vCLN*6) Say vMN7 Font "&mLetRom",11 Style "BQ" Size 1,22 Pict "@S25"
 ENDCASE
 STORE vrEc TO crEc
 SELECT teMporal
 GOTO TOP
 DO CASE
      CASE BOF()
           STORE ifIl TO vfIl
           STORE 01 TO irEc, vrEc
           STORE 00 TO urEc, frEc
      OTHERWISE
           STORE 1 TO irEc
           STORE ifIl TO vfIl
           DO WHILE  .NOT. EOF()
                STORE RECNO() TO vrEc
                IF vrEc=crEc
                     EXIT
                ENDIF
                SKIP
                IF  .NOT. EOF()
                     STORE vfIl+1 TO vfIl
                     IF vfIl>ffIl
                          STORE ifIl TO vfIl
                          STORE RECNO() TO irEc
                     ENDIF
                ENDIF
           ENDDO
           IF vrEc<>crEc
                STORE vrEc+1 TO vrEc, crEc
                STORE vfIl+1 TO vfIl
                IF vfIl>ffIl
                     STORE ifIl TO vfIl
                     STORE vrEc TO irEc
                ENDIF
           ENDIF
           DO CASE
                CASE vrEc>frEc .AND. vrEc=irEc
                     STORE ifIl TO vfIl
                CASE vrEc>frEc
                     STORE vfIl TO cfIl
                     GOTO irEc
                     DO paN_0000b
                     DO liM_0000b
                     STORE crEc TO vrEc
                     STORE cfIl TO vfIl
                     STORE 1 TO viOm
                OTHERWISE
                     STORE vfIl TO cfIl
                     GOTO irEc
                     DO paN_0000b
                     STORE crEc TO vrEc
                     STORE cfIl TO vfIl
                     GOTO vrEc
                     DO muE_0000b
           ENDCASE
 ENDCASE
 DO diS_0000b WITH "R"
ENDPROC
*
PROCEDURE Prg_0000b
 PRIVATE pnUm
 = INKEY(0.01)
 SET CURSOR ON
 SAVE SCREEN TO vpAn_12
 DO puC0000w
 RESTORE SCREEN FROM vpAn_12
 SET CURSOR OFF
 IF mkEy=k_Tab
      SELECT coPia
      ZAP
      SELECT prGmnu_tmp
      SET FILTER TO sw0="@"
      GOTO TOP
      IF  .NOT. BOF()
           STORE 0 TO pnUm
           DO WHILE  .NOT. EOF()
                STORE pnUm+1 TO pnUm
                DO CASE
                     CASE pnUm=2
                          IF vrEc<frEc
                               SELECT teMporal
                               GOTO vrEc+1
                               DO WHILE  .NOT. EOF()
                                    DO muE_0000b
                                    SELECT coPia
                                    APPEND BLANK
                                    DO gr1_0000b
                                    SELECT teMporal
                                    SKIP
                               ENDDO
                               SELECT teMporal
                               DELETE FOR RECNO()>=vrEc+1
                               PACK
                               GOTO BOTTOM
                               STORE RECNO() TO frEc
                               STORE frEc+1 TO vrEc
                          ENDIF
                          STORE 1 TO viOm
                     CASE pnUm>2
                          STORE 1 TO viOm
                ENDCASE
                SELECT prGmnu_tmp
                STORE co1 TO vcO1
                STORE co2 TO vcO2
                STORE prG TO vpRg
                STORE noM TO vdEs
                STORE nv1 TO vnV1
                STORE nv2 TO vnV2
                STORE nv3 TO vnV3
                DO grA_0000b
                SELECT prGmnu_tmp
                SKIP
           ENDDO
           IF pnUm>1
                SELECT prGmnu_tmp
                SET FILTER TO
                SET ORDER TO PRG
                SELECT coPia
                GOTO TOP
                DO WHILE  .NOT. EOF()
                     DO muE_0000b
                     SELECT teMporal
                     APPEND BLANK
                     DO gr1_0000b
                     SELECT coPia
                     SKIP
                ENDDO
                SELECT teMporal
                GOTO BOTTOM
                STORE RECNO() TO frEc
                GOTO irEc
                DO paN_0000b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                STORE urEc TO vrEc
                STORE ufIl TO vfIl
           ENDIF
           SELECT teMporal
           IF vrEc<=frEc
                GOTO vrEc
                DO muE_0000b
                DO diS_0000b WITH "R"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
      ENDIF
 ENDIF
 SELECT prGmnu_tmp
 SET FILTER TO
 REPLACE sw0 WITH " " ALL
 SELECT teMporal
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Clp_0000b
 DO CASE
      CASE mfIl>=ffIl+2 .AND. mfIl<=ffIl+3.536 .AND. mcCc>=(mcO0+(((vcLn* ;
           6)-39)/2)-0.8) .AND. mcCc<=(mcO0+(((vcLn*6)-39)/2)+19)
           STORE k_Tab TO mkEy
      CASE mfIl>=ffIl+2 .AND. mfIl<=ffIl+3.536 .AND. mcCc>=(mcO0+(((vcLn* ;
           6)-39)/2)+20.4) .AND. mcCc<=(mcO0+(((vcLn*6)-39)/2)+20.4+19)
           STORE "N" TO moPc
           STORE 99 TO mkEy
           DO prE_docum WITH  ;
              "¿Está seguro de Eliminar las Opciones de este Menú?"
           IF moPc$"Ss"
                DO elI_0000b
                STORE k_Esc TO mkEy
           ENDIF
      CASE mfIl>=ffIl+2 .AND. mfIl<=ffIl+3.536 .AND. mcCc>=(mcO0+(((vcLn* ;
           6)-39)/2)+40.8) .AND. mcCc<=(mcO0+(((vcLn*6)-39)/2)+40.8+19)
           STORE k_F10 TO mkEy
      CASE mfIl>=vfIl .AND. mfIl<=vfIl+1 .AND. mcCc>=mcO0+muCo-4 .AND.  ;
           mcCc<=mcO0+muCo
           STORE k_Alt_del TO mkEy
      CASE mfIl>=ifIl .AND. mfIl<=ufIl+1 .AND. mcCc>=mcO0 .AND. mcCc<=mcO0+muCo
           IF LEN(ALLTRIM(vdEs))<>0 .AND. (LEN(ALLTRIM(vpRg))<>0 .OR.  ;
              ALLTRIM(vdEs)="\-")
                DO grA_0000b
           ENDIF
           IF viOm=01
                DO blA_0000b
           ELSE
                DO diS_0000b WITH "N"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           ENDIF
           STORE ifIl+INT(mfIl-ifIl) TO vfIl
           GOTO irEc
           SKIP INT(mfIl-ifIl)
           STORE RECNO() TO vrEc
           DO muE_0000b
           DO diS_0000b WITH "R"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO CASE
                CASE mcCc>=mcO0+muCo-4 .AND. mcCc<=mcO0+muCo
                     STORE k_Alt_del TO mkEy
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
