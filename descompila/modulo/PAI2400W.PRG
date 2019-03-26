*
PROCEDURE Ti1_2400w
 SAVE SCREEN TO vpAn_11
 DO prEsiona WITH "4", "R_CONS05", mmF1, mmC1
 IF mkEy=k_Esc
      EXIT
 ENDIF
 DO coL_fondo
 DO cuAdro WITH mfI0+2, vcO1, mfI0+8, vcO1+94
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLbln
 @mFI0+2.5,vCO1+05 Say "Titular"                 Font "&mLetAri",9 Style "BT"
 @mFI0+4.0,vCO1+05 Say "Planilla"                Font "&mLetAri",9 Style "NT"
 @mFI0+5.5,vCO1+05 Say "Provisión de Percepción" Font "&mLetAri",9 Style "NT"
 @mFI0+2.5,vCO1+17 Edit vNTI                     Font "&mLetAri",9 Style "NQ" Size 1,60,70
 @mFI0+4.0,vCO1+17 Edit vPLN                     Font "&mLetAri",9 Style "NQ" Size 1,15,10
 @mFI0+5.5,vCO1+35 Get  vPER                     Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99999.99" Color ,&mColBlN
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSUL", vfBd, vcBd
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "1", "BUSCAR", vfBe, vcBe
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vtIt))=0
      DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBf, vcBf
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Tit_2400w
 PRIVATE piTe, piT1
 STORE 01 TO piTe
 STORE 00 TO piT1
 DO ti1_2400w
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO p00_2400a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
           DO ti1_2400w
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO CASE
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     59.6 .AND. mcCc<=mmC1+68
                     STORE k_Tab TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     68 .AND. mcCc<=mmC1+77
                     STORE k_F1 TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     77 .AND. mcCc<=mmC1+85.8
                     STORE k_Esc TO mkEy
                CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+ ;
                     85.8 .AND. mcCc<=mmC1+95
                     STORE k_F10 TO mkEy
                CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2 .AND. mcCc>= ;
                     vcBd+mcO1 .AND. mcCc<=vcBd+mcO2
                     STORE k_F2 TO mkEy
                CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2 .AND. mcCc>= ;
                     vcBe+mcO1 .AND. mcCc<=vcBe+mcO2
                     STORE k_F3 TO mkEy
                CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2 .AND. mcCc>= ;
                     vcBf+mcO1 .AND. mcCc<=vcBf+mcO2
                     STORE k_Ctrl_del TO mkEy
                CASE mfIl>=mfI0+3.9 .AND. mfIl<=mfI0+5.22 .AND. mcCc>= ;
                     vcO1+4.4 .AND. mcCc<=vcO1+45.8 .AND. piTe<>1
                     DO CASE
                          CASE LEN(ALLTRIM(vnTi))<>0 .AND. LEN(ALLTRIM(vtIt))=0
                               STORE "Titular no registrado..." TO mmSj
                               DO poNmsj
                          CASE LEN(ALLTRIM(vnTi))=0 .AND. LEN(ALLTRIM(vtIt))<>0
                               STORE "Nombre del Titular vacio..." TO mmSj
                               DO poNmsj
                          OTHERWISE
                               STORE 01 TO piTe
                               STORE 99 TO mkEy
                     ENDCASE
                CASE mfIl>=mfI0+6.0 .AND. mfIl<=mfI0+6.65 .AND. mcCc>= ;
                     vcO1+4.4 .AND. mcCc<=vcO1+45.8 .AND. piTe<>2
                     DO CASE
                          CASE LEN(ALLTRIM(vnTi))<>0 .AND. LEN(ALLTRIM(vtIt))=0
                               STORE "Titular no registrado..." TO mmSj
                               DO poNmsj
                          CASE LEN(ALLTRIM(vnTi))=0 .AND. LEN(ALLTRIM(vtIt))<>0
                               STORE "Nombre del Titular vacio..." TO mmSj
                               DO poNmsj
                          OTHERWISE
                               STORE 02 TO piTe
                               STORE 99 TO mkEy
                     ENDCASE
                OTHERWISE
                     STORE 99 TO mkEy
           ENDCASE
      ENDIF
      DO CASE
           CASE mkEy=k_F2 .OR. mkEy=k_F3 .OR. mkEy=k_Ctrl_del
                DO CASE
                     CASE mkEy=k_F2
                          DO ti2_2400w IN PAI2400W WITH "1"
                     CASE mkEy=k_F3
                          DO ti2_2400w IN PAI2400W WITH "2"
                     CASE mkEy=k_Ctrl_del
                          DO coLbln
                          STORE SPACE(04) TO vtIt
                          STORE SPACE(70) TO vnTi
                          @mFI0+2.5,vCO1+17 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S62"
                ENDCASE
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                STORE 99 TO mkEy
      ENDCASE
      DO CASE
           CASE mkEy=k_F1
                DO hl1_2400w
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO p00_2400a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
                DO ti1_2400w
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_Esc .AND. piTe=01
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_home .AND. piTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. piTe=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end
                STORE "Estás en el único campo...    " TO mmSj
           CASE mkEy=k_Up .AND. piTe=01
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO piTe
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO CASE
                     CASE LEN(ALLTRIM(vnTi))<>0 .AND. LEN(ALLTRIM(vtIt))=0
                          STORE "Titular no registrado..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(vnTi))=0 .AND. LEN(ALLTRIM(vtIt))<>0
                          STORE "Nombre del Titular vacio..." TO mmSj
                          DO poNmsj
                     CASE piTe=2
                          STORE 99 TO mkEy
                          EXIT
                     OTHERWISE
                          STORE piTe+1 TO piTe
                ENDCASE
           CASE mkEy=k_Up
                STORE piTe-1 TO piTe
           CASE mkEy=k_Ctrl_end
                STORE 2 TO piTe
           CASE mkEy=k_Tab
                DO CASE
                     CASE LEN(ALLTRIM(vnTi))<>0 .AND. LEN(ALLTRIM(vtIt))=0
                          STORE "Titular no registrado..." TO mmSj
                          DO poNmsj
                     CASE LEN(ALLTRIM(vnTi))=0 .AND. LEN(ALLTRIM(vtIt))<>0
                          STORE "Nombre del Titular vacio..." TO mmSj
                          DO poNmsj
                     OTHERWISE
                          STORE 99 TO mkEy
                          EXIT
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF piTe<>piT1
           DO coL_fondo
           STORE piTe TO piT1
           @mMF2,mMC2 Say Space(120) Font "&mLetRom",9 Style "BQ" Size 1,114
           DO CASE
                CASE piTe=1
                     @mMF2,mMC2+14 Say "CAMPO DE 10 CARACTERES ALFANUMÉRICOS, SI NO SE USA PUEDE ESTAR VACÍO..." Font "&mLetRom",9 Style "BT"
                CASE piTe=2
                     @mMF2,mMC2+18 Say "CAMPO DE 5 ENTEROS Y 2 DECIMALES, SI NO SE USA SE PONE CERO..."          Font "&mLetRom",9 Style "BT"
           ENDCASE
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE piTe=1
                @mFI0+4.0,vCO1+17 Edit vPLN Font "&mLetAri",9 Style "NQ" Size 1,15,10
           CASE piTe=2
                @mFI0+5.5,vCO1+35 Get  vPER Font "&mLetAri",9 Style "NQ" Size 1,10 Pict "99999.99" Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 RESTORE SCREEN FROM vpAn_11
ENDPROC
*
PROCEDURE Ti2_2400w
 PARAMETER ptPo
 = INKEY(0.01)
 SELECT prOveedores
 SET FILTER TO f2101est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 IF ptPo="2"
      SET FILTER TO AT(UPPER(ALLTRIM(vnTi)), UPPER(ALLTRIM(f2101nom)))<>0 .AND. f2101est<>"9"
      GOTO TOP
      IF BOF() .OR. EOF()
           STORE "No hay Proveedores que contengan la palabra o frase..."  ;
                 TO mmSj
           STORE 99 TO mkEy
           SET FILTER TO
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF ptPo="1"
      DO prEsiona WITH "2", "CONSUL", vfBd, vcBd
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfBe, vcBe
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnTi))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB6 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "2101", "A", "F2101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      DO coLbln
      STORE f2101cod TO vtIt
      STORE f2101nom TO vnTi
      @mFI0+2.5,vCO1+17 Say vNTI Font "&mLetAri",9 Style "NQ" Size 1,60 Pict "@S62"
 ENDIF
 IF ptPo="1"
      DO prEsiona WITH "1", "CONSUL", vfBd, vcBd
 ELSE
      DO prEsiona WITH "1", "BUSCAR", vfBe, vcBe
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 IF LEN(ALLTRIM(vtIt))=0
      DO prEsiona WITH "3", "DESCAR", vfBf, vcBf
 ELSE
      DO prEsiona WITH "1", "DESCAR", vfBf, vcBf
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Prv_2400w
 PARAMETER ptPo
 = INKEY(0.01)
 SELECT prOveedores
 SET FILTER TO f2101est<>"9"
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay datos registrados..." TO mmSj
      STORE 99 TO mkEy
      SET FILTER TO
      DO poNmsj
      RETURN
 ENDIF
 IF ptPo="2"
      SET FILTER TO AT(UPPER(ALLTRIM(vnOm)), UPPER(ALLTRIM(f2101nom)))<>0 .AND. f2101est<>"9"
      GOTO TOP
      IF BOF() .OR. EOF()
           STORE "No hay Proveedores que contengan la palabra o frase..."  ;
                 TO mmSj
           STORE 99 TO mkEy
           SET FILTER TO
           DO poNmsj
           RETURN
      ENDIF
 ENDIF
 IF ptPo="1"
      DO prEsiona WITH "2", "CONSUL", vfB2, vcB2
 ELSE
      DO prEsiona WITH "2", "BUSCAR", vfB3, vcB3
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 DO orD_0000a WITH "2101", "A", "F2101NOM", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET NEAR ON
 SEEK UPPER(ALLTRIM(vnOm))
 SET NEAR OFF
 DO q1_0000a
 SET CONFIRM ON
 ACTIVATE POPUP vtB1 REST
 SET CONFIRM OFF
 DO p1_0000a
 DO orD_0000a WITH "2101", "A", "F2101COD", "A"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 SET FILTER TO
 IF mkEy=k_Enter
      STORE f2101cod TO vpRv
      STORE f2101nom TO vnOm
      STORE f2101ruc TO vrUc
      SELECT suCursal
      SEEK vpRv
      IF  .NOT. EOF()
           STORE f2102suc TO vsUc
           STORE f2102dir TO vdIr
           STORE f2102dis TO vdIs
      ELSE
           STORE SPACE(02) TO vsUc
           STORE SPACE(25) TO vdIs
           STORE SPACE(70) TO vdIr
      ENDIF
 ENDIF
 DO noM_2400w IN PAI2400W
ENDPROC
*
PROCEDURE Bpr_2400w
 = INKEY(0.01)
 STORE SPACE(02) TO vsUc
 STORE SPACE(25) TO vdIs
 STORE SPACE(04) TO vpRv, cpRv
 STORE SPACE(70) TO vnOm, vdIr
 DO noM_2400w IN PAI2400W
ENDPROC
*
PROCEDURE Nom_2400w
 DO CASE
      CASE LEN(ALLTRIM(vpRv))=0
           DO prEsiona WITH "3", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB5, vcB5
           DO coLbln
      OTHERWISE
           DO prEsiona WITH "1", "DESCAR", vfB4, vcB4
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB5, vcB5
           DO coL_beige
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+0.4,mCO0+17.5 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,vTMP Pict "@S70"
 DO CASE
      CASE vsW0=2
           DO prEsiona WITH "2", "VARIOS", vfB1, vcB1
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "CONSUL", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "3", "BUSCAR", vfB3, vcB3
           DO coLbln
      OTHERWISE
           DO prEsiona WITH "1", "VARIOS", vfB1, vcB1
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CONSUL", vfB2, vcB2
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "BUSCAR", vfB3, vcB3
           DO coL_beige
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @mFI0+1.9,mCO0+17.5 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,vTMP Pict "@S70"
 @mFI0+3.4,mCO0+17.5 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,vTMD Pict "@S25"
 @mFI0+3.4,mCO0+vTMR Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,15.7
ENDPROC
*
PROCEDURE Dir_2400w
 = INKEY(0.01)
 SELECT suCursal
 SET FILTER TO f2102cod=vpRv
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Este Proveedor no tiene Sucursales..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB5, vcB5
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f2102suc<>vsUc
      STORE f2102suc TO vsUc
      STORE f2102dir TO vdIr
      STORE f2102dis TO vdIs
 ENDIF
 DO noM_2400w IN PAI2400W
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Cam_2400w
 STORE 0 TO viT1
 STORE SPACE(02) TO vsUc
 STORE SPACE(04) TO vpRv
 IF vsW0=1
      STORE 2 TO vsW0
      DO coLbln
 ELSE
      STORE 1 TO vsW0
      DO coL_beige
 ENDIF
 DO noM_2400w IN PAI2400W
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tdo_2400w
 PRIVATE ptDf, psW0
 = INKEY(0.01)
 STORE 00 TO psW0
 STORE vtDf TO ptDf
 SELECT teMporal
 GOTO TOP
 IF  .NOT. BOF()
      STORE 01 TO psW0
 ENDIF
 IF psW0=1 .AND. ptDf="NC"
      STORE "No se puede cambiar Tipo de Documento: NC con Detalle ingresado..."  ;
            TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 SELECT tiPo_doc
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Tipos de Documentos registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB3 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f9311tdo<>ptDf
      IF psW0=1 .AND. f9311tdo="NC"
           STORE "No se puede cambiar Tipo de Documento: NC con Detalle ingresado..."  ;
                 TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
           DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
           RETURN
      ENDIF
      DO coL_beige
      STORE f9311tdo TO vtDf
      @mFI0+5.5,mCO0+15 Say vTDF Font "&mLetAri",9 Style "NQ" Size 1,3.8,2
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
 RELEASE ptDf, psW0
ENDPROC
*
PROCEDURE Btd_2400w
 = INKEY(0.01)
 DO coL_beige
 STORE SPACE(02) TO vtDf
 @mFI0+5.5,mCO0+15 Say vTDF Font "&mLetAri",9 Style "NQ" Size 1,3.8,2
 DO prEsiona WITH "1", "CONSUL", vfB6, vcB6
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Cco_2400w
 = INKEY(0.01)
 SELECT ccOsto
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Centros de Costo registrados..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB4 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coL_fondo
      STORE f9318cco TO vcCo
      STORE f9318ncc TO vnCc
      @vFB8+0.1,mCO0+vTMC Edit vNCC Font "&mLetAri",9 Style "NQ" Size 1,vTMN,50
      READ TIMEOUT 0.01
      DO prEsiona WITH "1", "DESCAR", vfB9, vcB9
      IF mkEy=k_Esc
           RETURN
      ENDIF
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Bcc_2400w
 = INKEY(0.01)
 DO coL_fondo
 STORE SPACE(02) TO vcCo
 STORE SPACE(50) TO vnCc
 @vFB8+0.1,mCO0+vTMC Edit vNCC Font "&mLetAri",9 Style "NQ" Size 1,vTMN,50
 READ TIMEOUT 0.01
 DO prEsiona WITH "1", "CONSUL", vfB8, vcB8
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "DESCAR", vfB9, vcB9
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Fpa_2400w
 = INKEY(0.01)
 SELECT fpAgo
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "No hay Formas de Pago registradas..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB5 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter
      DO coL_fondo
      STORE f9112fpa TO vfPa
      STORE f9112nfp TO vnFp
      STORE f9112dia TO vdIp
      @vFB0+0.1,mCO0+vTMC Edit vNFP Font "&mLetAri",9 Style "NQ" Size 1,vTMN,50
      READ TIMEOUT 0.01
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB0, vcB0
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tb0_2400w
 Define Popup vTB1 from mFI0+1.5,mCO0+0.9      to fFIL+5,mCO0+104.6 Font "&mLetCou",12 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "CONSULTA DE PROVEEDORES"
 Define Popup vTB2 from mFI0+3.0,mCO0+0.9      to fFIL+5,mCO0+96.6 Font "&mLetCou",12 Style "NQ" Prompt Field AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 3 Footer "SUCURSALES"
 Define Popup vTB3 from mFI0+6.6,mCO0+14       to fFIL+5,mCO0+23.1 Font "&mLetCou",12 Style "NQ" Prompt Field F9311TDO Scroll Color Scheme 3 Footer "TDO"
 Define Popup vTB4 from vFB8+1.2,mCO0+vTMC-0.4 to fFIL+5,mCO0+vTMC+vTMN+8 Font "&mLetCou",12 Style "NQ" Prompt Field F9318NCC Scroll Color Scheme 3 Footer "CENTROS DE COSTOS"
 Define Popup vTB5 from vFB0+1.2,mCO0+vTMC-0.4 to fFIL+5,mCO0+vTMC+vTMN+8 Font "&mLetCou",12 Style "NQ" Prompt Field F9112NFP Scroll Color Scheme 3 Footer "FORMAS DE PAGO"
 Define Popup vTB6 from mFI0+3.6,vCO1          to fFIL+5,vCBD+11.5 Font "&mLetCou",12 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "CONSULTA DE TITULARES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
ENDPROC
*
PROCEDURE Cal_2400w
 DO CASE
      CASE vtPo=2 .AND. vmEd=1
           STORE ROUND(vlA1*vaN1*10.77*vcAn, 4) TO vpIe
      CASE vtPo=2 .AND. vmEd=2
           STORE ROUND((vlA2*vaN2/144)*vcAn, 4) TO vpIe
      CASE vtPo=3
           STORE ROUND((vlA2*vaN2*veSp/12)*vcAn, 4) TO vpIe
      OTHERWISE
           STORE vcAn TO vpIe
 ENDCASE
 IF vtDf="NC" .AND. vpIe=0
      STORE vpRe TO vtOt
 ELSE
      STORE vpIe*vpRe TO vtOt
 ENDIF
 DO CASE
      CASE vdEc=1
           STORE ROUND(vtOt, 4) TO vtOt
      CASE vdEc=2
           STORE ROUND(vtOt, 5) TO vtOt
      CASE vdEc=3
           STORE ROUND(vtOt, 6) TO vtOt
 ENDCASE
ENDPROC
*
PROCEDURE Cl1_2400w
 DO CASE
      CASE ftM1tpo=1 .OR. ftM1tpo=10 .OR. (ftM1tpo>=4 .AND. ftM1tpo<=6)
           STORE ftM1can TO vpIe
      CASE ftM1tpo=2 .AND. ftM1med=1
           STORE ROUND(ftM1la1*ftM1an1*10.77*ftM1can, 4) TO vpIe
      CASE ftM1tpo=2 .AND. ftM1med=2
           STORE ROUND((ftM1la2*ftM1an2/144)*ftM1can, 4) TO vpIe
      CASE ftM1tpo=3
           STORE ROUND((ftM1la2*ftM1an2*ftM1esp/12)*ftM1can, 4) TO vpIe
 ENDCASE
 IF vtDf="NC" .AND. vpIe=0
      STORE ftM1cos TO vtOt
 ELSE
      STORE vpIe*ftM1cos TO vtOt
 ENDIF
 DO CASE
      CASE vdEc=1
           STORE ROUND(vtOt, 4) TO vtOt
      CASE vdEc=2
           STORE ROUND(vtOt, 5) TO vtOt
      CASE vdEc=3
           STORE ROUND(vtOt, 6) TO vtOt
 ENDCASE
ENDPROC
*
PROCEDURE Mue_2400w
 SELECT teMporal
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 SELECT caB_cpra
 STORE viTe TO xiTe
 STORE f2400sw0 TO vsW0
 STORE f2400prv TO vpRv
 STORE f2400tra TO vtRa
 STORE f2400nom TO vnOm
 STORE f2400suc TO vsUc
 STORE f2400dir TO vdIr
 STORE f2400dis TO vdIs
 STORE f2400ruc TO vrUc
 STORE f2400tit TO vtIt
 STORE f2400nti TO vnTi
 STORE f2400pla TO vpLn
 STORE f2400mon TO vmOn
 STORE f2400fem TO vfEm
 STORE f2400fin TO vfIn
 STORE f2400reg TO vfRe
 STORE f2400td1 TO vtDf
 STORE f2400sr1 TO vsRf
 STORE f2400fac TO vfAc
 STORE f2400sr2 TO vsRg
 STORE f2400rem TO vrEm
 STORE f2400sor TO vsOr
 STORE f2400ord TO voRd
 STORE f2400ped TO vpEd
 STORE f2400tig TO vtIg
 STORE f2400pig TO vpIg
 STORE f2400per TO vpEr
 STORE f2400cco TO vcCo
 STORE f2400ncc TO vnCc
 STORE f2400fpa TO vfPa
 STORE f2400nfp TO vnFp
 STORE f2400dia TO vdIp
 STORE f2400tpo TO vtPp
 STORE f2400cm1 TO vcM1
 STORE f2400cm2 TO vcM2
 STORE f2400dct TO vdCt
 STORE f2400dec TO vdEc
 STORE f2400red TO vrEd
 IF vmOn=1
      STORE "S/." TO vsIg
 ELSE
      STORE "US$" TO vsIg
 ENDIF
 SELECT caMbio
 SEEK vfEm
 STORE f9111tc4 TO vtCa
 STORE 01 TO irEc, vrEc
 STORE 00 TO frEc, urEc, crEc, frCc, urCc, tvAl, tnEt, tiGv, ttOt, cfIl
 DO deT_2400w
 DO clT_2400a IN PAI2400A
 SELECT teMporal
 GOTO TOP
 DO paN_2400b IN PAI2400B
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
 DO ttT_2400a IN PAI2400A
 SELECT itE_cpra
 GOTO TOP
 SEEK xtDo+xsEr+xdOc
 DO WHILE  .NOT. EOF() .AND. f2402tdo+f2402ser+f2402doc=xtDo+xsEr+xdOc
      STORE f2402cod TO vcOd
      STORE f2402rcc TO vrCc
      STORE f2402opc TO voPc
      STORE f2402un1 TO vuN1
      STORE f2402un2 TO vuN2
      STORE f2402mla TO vmLa
      STORE f2402man TO vmAn
      STORE f2402p11 TO vp11
      STORE f2402p12 TO vp12
      STORE f2402p21 TO vp21
      STORE f2402p22 TO vp22
      STORE f2402ctd TO vcTd
      STORE f2402pie TO vtPi
      SELECT teMporal_4
      APPEND BLANK
      REPLACE ftM4cod WITH vcOd
      REPLACE ftM4rec WITH vrCc
      REPLACE ftM4opc WITH voPc
      REPLACE ftM4un1 WITH vuN1
      REPLACE ftM4un2 WITH vuN2
      REPLACE ftM4mla WITH vmLa
      REPLACE ftM4man WITH vmAn
      REPLACE ftM4p11 WITH vp11
      REPLACE ftM4p12 WITH vp12
      REPLACE ftM4p21 WITH vp21
      REPLACE ftM4p22 WITH vp22
      REPLACE ftM4can WITH vcTd
      REPLACE ftM4pie WITH vtPi
      SELECT itE_cpra
      SKIP
 ENDDO
 SELECT seR_cpra
 GOTO TOP
 SEEK xtDo+xsEr+xdOc
 DO WHILE  .NOT. EOF() .AND. f2403tdo+f2403ser+f2403doc=xtDo+xsEr+xdOc
      STORE f2403cod TO vcOd
      STORE f2403ped TO vpD1
      STORE f2403sec TO vsEc
      STORE f2403pla TO vpLa
      STORE f2403mot TO vmOt
      SELECT teMporal_6
      APPEND BLANK
      REPLACE ftM6cod WITH vcOd
      REPLACE ftM6ped WITH vpD1
      REPLACE ftM6sec WITH vsEc
      REPLACE ftM6pla WITH vpLa
      REPLACE ftM6mot WITH vmOt
      SELECT seR_cpra
      SKIP
 ENDDO
 WAIT CLEAR
ENDPROC
*
PROCEDURE Det_2400w
 SELECT deT_cpra
 GOTO TOP
 SEEK xtDo+xsEr+xdOc
 DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+f2401doc=xtDo+xsEr+xdOc
      STORE f2401cod TO vcOd
      STORE f2401des TO vdEs
      STORE f2401dcr TO vdCr
      STORE f2401cuv TO vcUv
      STORE f2401nuv TO vnUv
      STORE f2401cuc TO vcUc
      STORE f2401nuc TO vnUc
      STORE f2401med TO vmEd
      STORE f2401can TO vcAn
      STORE f2401caj TO vcAj
      STORE f2401pie TO vpIe
      STORE f2401la1 TO vlA1
      STORE f2401la2 TO vlA2
      STORE f2401an1 TO vaN1
      STORE f2401an2 TO vaN2
      STORE f2401esp TO veSp
      STORE f2401tpo TO vtPo
      STORE f2401pre TO vpRe
      SELECT teMporal
      APPEND BLANK
      STORE RECNO() TO vrEc, urEc, frEc
      DO caL_2400w IN PAI2400W
      REPLACE ftM1cod WITH vcOd
      REPLACE ftM1des WITH vdEs
      REPLACE ftM1dcr WITH vdCr
      REPLACE ftM1cuv WITH vcUv
      REPLACE ftM1nuv WITH vnUv
      REPLACE ftM1cuc WITH vcUc
      REPLACE ftM1nuc WITH vnUc
      REPLACE ftM1med WITH vmEd
      REPLACE ftM1can WITH vcAn
      REPLACE ftM1caj WITH vcAj
      REPLACE ftM1pie WITH vpIe
      REPLACE ftM1la1 WITH vlA1
      REPLACE ftM1la2 WITH vlA2
      REPLACE ftM1an1 WITH vaN1
      REPLACE ftM1an2 WITH vaN2
      REPLACE ftM1esp WITH veSp
      REPLACE ftM1tpo WITH vtPo
      REPLACE ftM1cos WITH vpRe
      DO cl1_2400w IN PAI2400W
      STORE tvAl+vtOt TO tvAl
      SELECT deT_cpra
      SKIP
 ENDDO
ENDPROC
*
PROCEDURE Ord_2400w
 PARAMETER ptPo
 PRIVATE ptPr
 STORE 01 TO irEc, vrEc
 STORE 00 TO frEc, urEc, crEc, frCc, urCc, cfIl
 SELECT teMporal
 ZAP
 REINDEX
 SELECT teMporal_3
 ZAP
 SELECT teMporal_4
 ZAP
 REINDEX
 SELECT teMporal_5
 ZAP
 REINDEX
 SELECT teMporal_6
 ZAP
 REINDEX
 STORE viTe TO xiTe
 IF ptPo="1"
      SELECT caB_orden
      STORE f2910prv TO vpRv
      SELECT prOveedores
      SEEK vpRv
      STORE f2101ruc TO vrUc
      STORE f2101tpo TO ptPr
      SELECT caB_orden
      STORE f2910nom TO vnOm
      STORE f2910suc TO vsUc
      STORE f2910dir TO vdIr
      STORE f2910dis TO vdIs
      STORE f2910ped TO vpEd
      STORE f2910fpa TO vnFp
      STORE f2910tpo TO vtP2
      STORE " " TO vrUc, vtDf, vsRf, vfAc, vsRg, vrEm, vcCo, vnCc, vcM1, vcM2
      STORE 1 TO vsW0, vtPp, vtIg
      STORE 0 TO vdIp, vdCt
      STORE vfEm TO vfIn, vfRe
      STORE mmOn TO vmOn
      DO CASE
           CASE miMp=1 .AND. ptPr=2
                STORE 0 TO vpIg
           OTHERWISE
                STORE miGv TO vpIg
      ENDCASE
      IF vmOn=1
           STORE "S/." TO vsIg
      ELSE
           STORE "US$" TO vsIg
      ENDIF
      SELECT caMbio
      SEEK vfEm
      STORE f9111tc4 TO vtCa
 ENDIF
 SELECT deT_orden
 GOTO TOP
 SEEK xtDo+xsEr+xdOc
 STORE 00 TO tvAl, tnEt, tiGv, ttOt
 DO WHILE  .NOT. EOF() .AND. f2911tdo+f2911ser+f2911doc=xtDo+xsEr+xdOc
      IF f2911can-f2911ctd<=0
           SKIP
           LOOP
      ENDIF
      STORE f2911cod TO vcOd
      SELECT tmP_prod
      SEEK ALLTRIM(vcOd)+"*"
      IF  .NOT. EOF()
           SELECT deT_orden
           STORE f2911can-f2911ctd TO vcAn
           STORE f2911caj-f2911cjd TO vcAj
           IF ptPo="1"
                STORE f2911pun TO vpUn
                STORE f2911pre TO vpRe
           ENDIF
           SELECT prOductos
           SEEK ALLTRIM(vcOd)+"*"
           DO CASE
                CASE EOF()
                CASE f2111est="9"
                OTHERWISE
                     STORE f2111sto TO vsTo
                     STORE f2111des TO vdEs
                     STORE f2111dcr TO vdCr
                     STORE f2111cuv TO vcUv
                     STORE f2111cuc TO vcUc
                     STORE f2111cst TO vcSt
                     STORE f2111la1 TO vlA1
                     STORE f2111la2 TO vlA2
                     STORE f2111an1 TO vaN1
                     STORE f2111an2 TO vaN2
                     STORE f2111esp TO veSp
                     STORE f2111ser TO vsRr
                     STORE f2111tip TO ctPo
                     DO CASE
                          CASE vlA1=0 .AND. vaN1=0
                               STORE 2 TO vmEd
                          CASE vlA2=0 .AND. vaN2=0
                               STORE 1 TO vmEd
                          OTHERWISE
                               STORE 1 TO vmEd
                     ENDCASE
                     SELECT tiP_prod
                     SEEK ctPo
                     IF EOF()
                          STORE 1 TO vtPo
                          STORE " " TO veNt
                     ELSE
                          STORE f9211tpo TO vtPo
                          STORE f9211ent TO veNt
                     ENDIF
                     SELECT unIdad
                     SEEK vcUv
                     IF EOF()
                          STORE SPACE(30) TO vnUv
                     ELSE
                          STORE f9213des TO vnUv
                     ENDIF
                     SEEK vcUc
                     IF EOF()
                          STORE SPACE(30) TO vnUc
                     ELSE
                          STORE f9213des TO vnUc
                     ENDIF
                     IF ptPo="1"
                          DO CASE
                               CASE vtPo=2 .AND. vpUn=0 .AND. vmEd=1
                                    STORE ROUND(vlA1*vaN1*10.77, 4) TO vpIe
                                    STORE vpRe/vpIe TO vpRe
                               CASE vtPo=2 .AND. vpUn=0 .AND. vmEd=2
                                    STORE ROUND(vlA2*vaN2/144, 4) TO vpIe
                                    STORE vpRe/vpIe TO vpRe
                               CASE vtPo=3 .AND. vpUn=0
                                    STORE ROUND(vlA2*vaN2*veSp/12, 4) TO vpIe
                                    STORE vpRe/vpIe TO vpRe
                          ENDCASE
                          DO CASE
                               CASE miMp=2 .AND. vtP2=2 .AND. vdEc=1
                                    STORE ROUND(vpRe/(1+(vpIg/100)), 4) TO vpRe
                               CASE miMp=2 .AND. vtP2=2 .AND. vdEc=2
                                    STORE ROUND(vpRe/(1+(vpIg/100)), 5) TO vpRe
                               CASE miMp=2 .AND. vtP2=2 .AND. vdEc=3
                                    STORE ROUND(vpRe/(1+(vpIg/100)), 6) TO vpRe
                          ENDCASE
                     ENDIF
                     SELECT teMporal
                     APPEND BLANK
                     STORE RECNO() TO vrEc, urEc, frEc
                     IF ptPo="1"
                          DO caL_2400w IN PAI2400W
                          REPLACE ftM1cos WITH vpRe
                     ELSE
                          DO caL_2700w IN PAI2700W
                     ENDIF
                     REPLACE ftM1cod WITH vcOd
                     REPLACE ftM1des WITH vdEs
                     REPLACE ftM1dcr WITH vdCr
                     REPLACE ftM1cuv WITH vcUv
                     REPLACE ftM1nuv WITH vnUv
                     REPLACE ftM1cuc WITH vcUc
                     REPLACE ftM1nuc WITH vnUc
                     REPLACE ftM1med WITH vmEd
                     REPLACE ftM1can WITH vcAn
                     REPLACE ftM1caj WITH vcAj
                     REPLACE ftM1pie WITH vpIe
                     REPLACE ftM1la1 WITH vlA1
                     REPLACE ftM1la2 WITH vlA2
                     REPLACE ftM1an1 WITH vaN1
                     REPLACE ftM1an2 WITH vaN2
                     REPLACE ftM1esp WITH veSp
                     REPLACE ftM1tpo WITH vtPo
                     IF ptPo="1"
                          DO cl1_2400w IN PAI2400W
                          STORE tvAl+vtOt TO tvAl
                     ELSE
                          DO cl1_2700w IN PAI2700W
                     ENDIF
           ENDCASE
      ENDIF
      SELECT deT_orden
      SKIP
 ENDDO
 WAIT CLEAR
 IF ptPo="1"
      DO clT_2400a IN PAI2400A
      DO ttT_2400a IN PAI2400A
      DO diS_2400a
 ELSE
      DO coLbln
      @mFI0+4,mCO0+21.5 Say vSOR Font "&mLetAri",9 Style "NQ" Size 1,4.4 Pict "999"
      @mFI0+4,mCO0+29.0 Say vORD Font "&mLetAri",9 Style "NQ" Size 1,9.6 Pict "9999999"
 ENDIF
 SELECT teMporal
 GOTO TOP
 IF ptPo="1"
      DO paN_2400b IN PAI2400B
 ELSE
      DO paN_2700b IN PAI2700B
 ENDIF
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 1 TO vrEc, irEc
 STORE ifIl TO vfIl
 STORE xiTe TO viTe
ENDPROC
*
PROCEDURE Hl1_2400w
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "Aquí se escoge al Titular de la Cuenta y se pone el número de Pla-"
 @ pfIl+01, 02 SAY  ;
   "nilla en caso de ser Agente de Aduana y el Sistema acepte importa-"
 @ pfIl+02, 02 SAY  ;
   "ciones. También se coloca en forma no obligatoria el monto que sa-"
 @ pfIl+03, 02 SAY  ;
   "le impreso como percepción en la Factura si es que hubiera, este  "
 @ pfIl+04, 02 SAY "se toma como provisión."
 @ pfIl+06, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+08, 19 SAY ":" STYLE "BT"
 @ pfIl+09, 19 SAY ":" STYLE "BT"
 @ pfIl+10, 19 SAY ":" STYLE "BT"
 @ pfIl+11, 19 SAY ":" STYLE "BT"
 @ pfIl+12, 19 SAY ":" STYLE "BT"
 @ pfIl+13, 19 SAY ":" STYLE "BT"
 @ pfIl+08, 01 SAY "F10" STYLE "BT"
 @ pfIl+09, 01 SAY "ESC" STYLE "BT"
 @ pfIl+10, 01 SAY "F1" STYLE "BT"
 @ pfIl+11, 01 SAY "F2" STYLE "BT"
 @ pfIl+12, 01 SAY "F3" STYLE "BT"
 @ pfIl+08, 21 SAY "Cerrar y regresar a Windows"
 @ pfIl+09, 21 SAY "Regresar a pantalla anterior"
 @ pfIl+10, 21 SAY "Ayuda del Programa"
 @ pfIl+11, 21 SAY "Consultar Titulares en orden alfabético"
 @ pfIl+12, 21 SAY "Buscar palabra o frase en nombre de Titular"
 STORE pfIl+13 TO pfIl
 IF LEN(ALLTRIM(vtIt))<>0
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL DEL" STYLE "BT"
      @ pfIl, 21 SAY "Des-seleccionar Titular"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=2
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL HOME" STYLE "BT"
      @ pfIl, 21 SAY "Ir al primer campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "CTRL END" STYLE "BT"
      @ pfIl, 21 SAY "Ir al Último campo"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=1
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "FLECHA ABAJO" STYLE "BT"
      @ pfIl, 21 SAY "Ir al campo inferior"
      STORE pfIl+1 TO pfIl
 ENDIF
 IF viTe=2
      @ pfIl, 19 SAY ":" STYLE "BT"
      @ pfIl, 01 SAY "FLECHA ARRIBA" STYLE "BT"
      @ pfIl, 21 SAY "Ir al campo superior"
 ENDIF
 @ pfIl+0, 19 SAY ":" STYLE "BT"
 @ pfIl+1, 19 SAY ":" STYLE "BT"
 @ pfIl+0, 01 SAY "ENTER" STYLE "BT"
 @ pfIl+1, 01 SAY "TAB" STYLE "BT"
 @ pfIl+0, 21 SAY "Siguiente campo"
 @ pfIl+1, 21 SAY "Aceptar todo"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
