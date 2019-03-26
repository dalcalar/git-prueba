 = INKEY(0.01)
 SELECT maRcaciones
 STORE 99 TO mkEy
 DO diS_4230c WITH "R"
 DO WHILE .T.
      IF mrEs=mrSs
           mkEy = INKEY(0.1, "HM")
           IF mkEy=0
                LOOP
           ENDIF
      ENDIF
      DO reS_0000a
      IF mrEs<>mrSs
           DO rs1_4230c
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           DO clP_coo
           DO clP_4230c
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                IF mkEy=k_Clic
                     DO diS_4230c WITH "N"
                ENDIF
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                DO diS_4230c WITH "N"
                EXIT
           CASE mkEy=k_F1
                DO hl1_4230c
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO rs1_4230c
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Ctrl_del
                DO prE_docum WITH "¿Desea eliminar esta marcación?"
                IF moPc$"Ss"
                     SEEK vcOd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vcOd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                             SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f4230cod WITH SPACE(04)
                     DELETE
                     UNLOCK
                     STORE 99 TO mkEy
                     EXIT
                ENDIF
           CASE mkEy=k_F3 .AND. wtPo="2"
                STORE f4230ent TO veNt
                STORE f4230sal TO vsAl
                STORE f4230rin TO vrIn
                STORE f4230rfi TO vrFi
                DO p1_0000a
                @vFFS,iCL1+25.2 Get vENT Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99" Color ,&mColBlN
                @vFFS,iCL1+32.8 Get vSAL Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99" Color ,&mColBlN
                @vFFS,iCL1+44.4 Get vRIN Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99" Color ,&mColBlN
                @vFFS,iCL1+52.0 Get vRFI Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99" Color ,&mColBlN
                SET CURSOR ON
                READ
                SET CURSOR OFF
                DO q1_0000a
                IF mkEy=k_Tab
                     SELECT maRcaciones
                     SEEK vcOd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vcOd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                             SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     REPLACE f4230ent WITH veNt
                     REPLACE f4230sal WITH vsAl
                     REPLACE f4230rin WITH vrIn
                     REPLACE f4230rfi WITH vrFi
                     UNLOCK
                ENDIF
                STORE 99 TO mkEy
                DO diS_4230c WITH "R"
           CASE mkEy=k_F5 .AND. wtPo="2"
                IF f4230est="I"
                     DO prE_docum WITH  ;
                        "¿Desea cambiar a Tard/Inasist justificada?"
                ELSE
                     DO prE_docum WITH  ;
                        "¿Desea cambiar a Tard/Inasist Injustificada?"
                ENDIF
                IF moPc$"Ss"
                     SEEK vcOd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm),  ;
                          4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                     IF  .NOT. RLOCK()
                          DO reG_lock WITH vcOd+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                             SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1, 2)
                          IF mkEy=k_Esc
                               WAIT CLEAR
                               = INKEY(0.01)
                               RETURN
                          ENDIF
                     ELSE
                          RLOCK()
                     ENDIF
                     IF f4230est="I"
                          REPLACE f4230est WITH "J"
                     ELSE
                          REPLACE f4230est WITH "I"
                     ENDIF
                     UNLOCK
                     STORE 99 TO mkEy
                     DO diS_4230c WITH "R"
                ENDIF
           CASE mkEy=k_F8
                SAVE SCREEN TO vpAn_11
                vXLS=PutFile("Archivo Excel:","&mVIN"+"Marcaciones.XLS","XLS")
                RESTORE SCREEN FROM vpAn_11
                IF LEN(ALLTRIM(vxLs))<>0
                     DO CASE
                          CASE AT(" ", vxLs)<>0
                               STORE "Hay un espacio o espacios en blanco en la Ruta o Nombre del Archivo..."  ;
                                     TO mmSj
                               DO poNmsj
                               = INKEY(0.05)
                          OTHERWISE
                               Export to &vXLS Fiel F4230COD,F4230FEM,F4230ENT,F4230SAL,F4230RIN,F4230RFI,F4230IN1,F4230SA1 Type XLS for F4230COD = vCDD
                     ENDCASE
                     DO xlS_0000a
                ENDIF
                SELECT maRcaciones
                DO seE_4230c WITH "v"
           CASE mkEy=k_Home
                GOTO TOP
                SET NEAR ON
                DO seE_4230c WITH "d"
                SET NEAR OFF
                DO CASE
                     CASE f4230fem=ifEm .AND. vfEm=ifEm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vfEm=ifEm
                                    DO paN_4230c
                               OTHERWISE
                                    DO seE_4230c WITH "v"
                                    DO diS_4230c WITH "N"
                          ENDCASE
                          STORE ifFs TO vfFs
                          DO muE_4230c WITH "i", "v"
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "R"
                ENDCASE
           CASE mkEy=k_End
                GOTO TOP
                SET NEAR ON
                DO seE_4230c WITH "h"
                SET NEAR OFF
                IF EOF() .OR. f4230cod<>vcDd .OR. f4230fem>hfEm
                     IF EOF()
                          GOTO BOTTOM
                     ELSE
                          SKIP -1
                     ENDIF
                ENDIF
                DO CASE
                     CASE f4230fem=ufEm .AND. vfEm=ufEm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO CASE
                               CASE vfEm=ufEm
                                    SKIP -INT(ffFs-ifFs)
                                    DO paN_4230c
                               OTHERWISE
                                    DO seE_4230c WITH "v"
                                    DO diS_4230c WITH "N"
                          ENDCASE
                          STORE ufFs TO vfFs
                          DO muE_4230c WITH "u", "v"
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "R"
                ENDCASE
           CASE mkEy=k_Down
                SKIP
                DO CASE
                     CASE EOF() .OR. f4230cod<>vcDd .OR. f4230fem>hfEm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "N"
                          SKIP
                          IF vfEm=ufEm
                               DO coL_beige
                               DO suBe WITH ifFs, icL1, ffFs, ucL1, 1
                               DO muE_4230c WITH "F", "v"
                               DO muE_4230c WITH "F", "u"
                               STORE ufFs TO vfFs
                               SKIP -INT(ffFs-ifFs)
                               DO muE_4230c WITH "F", "i"
                               SKIP INT(ffFs-ifFs)
                          ELSE
                               DO muE_4230c WITH "F", "v"
                               STORE vfFs+1 TO vfFs
                          ENDIF
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "R"
                ENDCASE
           CASE mkEy=k_Up
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f4230cod<>vcDd .OR. f4230fem<dfEm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "N"
                          SKIP -1
                          IF vfEm=ifEm
                               DO coL_beige
                               DO baJa WITH ifFs, icL1, ffFs, ucL1, 1
                               DO muE_4230c WITH "F", "v"
                               DO muE_4230c WITH "F", "i"
                               STORE ifFs TO vfFs
                               IF ufFs<ffFs
                                    STORE ufFs+1 TO ufFs
                               ELSE
                                    SKIP INT(ffFs-ifFs)
                                    DO muE_4230c WITH "F", "u"
                               ENDIF
                          ELSE
                               DO muE_4230c WITH "F", "v"
                               STORE vfFs-1 TO vfFs
                          ENDIF
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgdn
                DO seE_4230c WITH "u"
                SKIP
                DO CASE
                     CASE EOF() .OR. f4230cod<>vcDd .OR. f4230fem>hfEm
                          STORE "Fin del Archivo..." TO mmSj
                     OTHERWISE
                          DO paN_4230c
                          STORE ifFs TO vfFs
                          DO muE_4230c WITH "i", "v"
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "R"
                ENDCASE
           CASE mkEy=k_Pgup
                DO seE_4230c WITH "i"
                SKIP -1
                DO CASE
                     CASE BOF() .OR. f4230cod<>vcDd .OR. f4230fem<dfEm
                          STORE "Inicio del Archivo..." TO mmSj
                     OTHERWISE
                          SKIP -INT(ffFs-ifFs)
                          IF BOF() .OR. f4230cod<>vcDd .OR. f4230fem<dfEm
                               GOTO TOP
                               DO seE_4230c WITH "d"
                          ENDIF
                          DO paN_4230c
                          STORE ifFs TO vfFs
                          DO muE_4230c WITH "i", "v"
                          DO seE_4230c WITH "v"
                          DO diS_4230c WITH "R"
                ENDCASE
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO seE_4230c WITH "v"
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
 ENDDO
ENDPROC
*
PROCEDURE Pan_4230c
 STORE ifFs TO vfFs, ufFs
 DO muE_4230c WITH "F", "i"
 DO muE_4230c WITH "F", "u"
 DO WHILE  .NOT. EOF() .AND. f4230cod=vcDd .AND. f4230fem<=hfEm .AND.  ;
    vfFs<ffFs+1
      DO diS_4230c WITH "N"
      DO muE_4230c WITH "F", "u"
      STORE vfFs TO ufFs
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF ufFs+1<=ffFs
      DO coL_beige
      @ ufFs+1, icL1 CLEAR TO ffFs+1, ucL1
      DO liN_4230a WITH ifFs-1.4, ffFs+1.1
 ENDIF
ENDPROC
*
PROCEDURE Dis_4230c
 PARAMETER ptIp
 PRIVATE pdIa, peTt, piNg, peNt
 DO muE_4230c WITH "F", "v"
 DO diA_4230a IN PKM4230A
 IF vdDd="F"
      STORE "Feriado" TO pdIa
 ELSE
      STORE CDOW(vfEm) TO pdIa
 ENDIF
 DO CASE
      CASE f4230est="I"
           STORE "Falta" TO peTt
      CASE f4230est="P"
           STORE "Permiso" TO peTt
      CASE f4230est="F"
           STORE "Feriado" TO peTt
      CASE f4230est="J"
           STORE "Justicada" TO peTt
      CASE f4230est="V"
           STORE "Vacaciones" TO peTt
      OTHERWISE
           STORE SPACE(10) TO peTt, piNg
           STORE 0 TO ptOl
           STORE VAL(SUBSTR(f4230ent, 1, 2)+"."+SUBSTR(f4230ent, 4, 2)) TO peNt
           SELECT hoRarios
           SEEK vcDd
           DO CASE
                CASE  .NOT. EOF() .AND. vdDd="L"
                     STORE f4221in1 TO piNg
                     STORE f4221to1 TO ptOl
                CASE  .NOT. EOF() .AND. vdDd="M"
                     STORE f4221in2 TO piNg
                     STORE f4221to2 TO ptOl
                CASE  .NOT. EOF() .AND. vdDd="I"
                     STORE f4221in3 TO piNg
                     STORE f4221to3 TO ptOl
                CASE  .NOT. EOF() .AND. vdDd="J"
                     STORE f4221in4 TO piNg
                     STORE f4221to4 TO ptOl
                CASE  .NOT. EOF() .AND. vdDd="V"
                     STORE f4221in5 TO piNg
                     STORE f4221to5 TO ptOl
                CASE  .NOT. EOF() .AND. vdDd="S"
                     STORE f4221in6 TO piNg
                     STORE f4221to6 TO ptOl
                CASE  .NOT. EOF() .AND. vdDd="D"
                     STORE f4221in7 TO piNg
                     STORE f4221to7 TO ptOl
                CASE EOF()
                     SELECT hoR_area
                     SEEK vaRr
                     DO CASE
                          CASE  .NOT. EOF() .AND. vdDd="L"
                               STORE f4220in1 TO piNg
                               STORE f4220to1 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="M"
                               STORE f4220in2 TO piNg
                               STORE f4220to2 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="I"
                               STORE f4220in3 TO piNg
                               STORE f4220to3 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="J"
                               STORE f4220in4 TO piNg
                               STORE f4220to4 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="V"
                               STORE f4220in5 TO piNg
                               STORE f4220to5 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="S"
                               STORE f4220in6 TO piNg
                               STORE f4220to6 TO ptOl
                          CASE  .NOT. EOF() .AND. vdDd="D"
                               STORE f4220in7 TO piNg
                               STORE f4220to7 TO ptOl
                     ENDCASE
           ENDCASE
           STORE VAL(SUBSTR(piNg, 1, 2)+"."+SUBSTR(piNg, 4, 2)) TO piNg
           IF piNg=0 .AND. peNt>piNg .AND. peNt-piNg>ptOl/100
                STORE "Tardanza" TO peTt
           ENDIF
           SELECT maRcaciones
 ENDCASE
 DO CASE
      CASE ptIp="N"
           DO coL_beige
      CASE ptIp="R"
           DO coLbln
 ENDCASE
 @vFFS,iCL1+00.0 Say F4230FEM Font "&mLetAri",9 Style "NQ" Size 1,12.6
 @vFFS,iCL1+13.3 Say pDIA     Font "&mLetAri",9 Style "NQ" Size 1,10.5
 @vFFS,iCL1+24.5 Say F4230ENT Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99"
 @vFFS,iCL1+31.7 Say F4230SAL Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99"
 IF mrEs<"4"
      @vFFS,iCL1+38.9 Say pETT     Font "&mLetAri",9 Style "NQ" Size 1,08.1 Pict "@S8"
      @vFFS,iCL1+47.6 Say F4230RIN Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99"
      @vFFS,iCL1+54.8 Say F4230RFI Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99"
 ELSE
      @vFFS,iCL1+38.9 Say pETT     Font "&mLetAri",9 Style "NQ" Size 1,14.1 Pict "@S14"
      @vFFS,iCL1+53.6 Say F4230RIN Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99"
      @vFFS,iCL1+60.8 Say F4230RFI Font "&mLetAri",9 Style "NQ" Size 1,06.5 Pict "99:99"
 ENDIF
 RELEASE pdIa, peTt, piNg, peNt
ENDPROC
*
PROCEDURE Rs1_4230c
 DO muE_4230c WITH "v", "c"
 DO rs1_4230b
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 00 TO cfFs
 STORE ifFs TO vfFs
 SELECT maRcaciones
 GOTO TOP
 DO seE_4230c WITH "i"
 DO WHILE  .NOT. EOF() .AND. f4230cod=vcDd .AND. f4230fem<=hfEm .AND.  ;
    vfFs<ffFs+1
      IF f4230fem=vfEm
           STORE vfFs TO cfFs
           EXIT
      ENDIF
      STORE vfFs+1 TO vfFs
      SKIP
 ENDDO
 IF cfFs=0
      DO muE_4230c WITH "v", "c"
      DO muE_4230c WITH "v", "i"
      STORE ifFs TO vfFs, cfFs
 ENDIF
 DO seE_4230c WITH "i"
 DO paN_4230c
 STORE cfEm TO vfEm
 STORE cfFs TO vfFs
 DO seE_4230c WITH "v"
 DO diS_4230c WITH "R"
ENDPROC
*
PROCEDURE See_4230c
 PARAMETER psEe
 DO CASE
      CASE psEe="v"
           SEEK vcDd+SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4, 2)+ ;
                SUBSTR(DTOC(vfEm), 1, 2)
      CASE psEe="i"
           SEEK vcDd+SUBSTR(DTOC(ifEm), 7, 4)+SUBSTR(DTOC(ifEm), 4, 2)+ ;
                SUBSTR(DTOC(ifEm), 1, 2)
      CASE psEe="u"
           SEEK vcDd+SUBSTR(DTOC(ufEm), 7, 4)+SUBSTR(DTOC(ufEm), 4, 2)+ ;
                SUBSTR(DTOC(ufEm), 1, 2)
      CASE psEe="d"
           SEEK vcDd+SUBSTR(DTOC(dfEm), 7, 4)+SUBSTR(DTOC(dfEm), 4, 2)+ ;
                SUBSTR(DTOC(dfEm), 1, 2)
      CASE psEe="h"
           SEEK vcDd+SUBSTR(DTOC(hfEm), 7, 4)+SUBSTR(DTOC(hfEm), 4, 2)+ ;
                SUBSTR(DTOC(hfEm), 1, 2)
 ENDCASE
ENDPROC
*
PROCEDURE Mue_4230c
 PARAMETER pmU1, pmU2
 DO CASE
      CASE pmU1="v" .AND. pmU2="c"
           STORE vfEm TO cfEm
      CASE pmU1="v" .AND. pmU2="i"
           STORE vfEm TO ifEm
      CASE pmU1="c" .AND. pmU2="v"
           STORE cfEm TO vfEm
      CASE pmU1="i" .AND. pmU2="v"
           STORE ifEm TO vfEm
      CASE pmU1="u" .AND. pmU2="v"
           STORE ufEm TO vfEm
      CASE pmU1="F" .AND. pmU2="v"
           STORE f4230fem TO vfEm
      CASE pmU1="F" .AND. pmU2="u"
           STORE f4230fem TO ufEm
      CASE pmU1="F" .AND. pmU2="i"
           STORE f4230fem TO ifEm
 ENDCASE
ENDPROC
*
PROCEDURE Clp_4230c
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1+2.114 .AND. mfIl<=mmF1+3.11 .AND. mcCc>=0 .AND. mcCc<=3
           STORE k_F8 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+51 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Ctrl_p TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.4 .AND.  ;
           mcCc<=mmC1+68
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.80
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=ifFs-0.007 .AND. mfIl<=ufFs+0.992 .AND. mcCc>=icL1 .AND.  ;
           mcCc<=ucL1
           DO diS_4230c WITH "N"
           STORE ifFs+INT(mfIl-ifFs) TO vfFs
           DO seE_4230c WITH "i"
           SKIP INT(mfIl-ifFs)
           DO muE_4230c WITH "F", "v"
           DO diS_4230c WITH "R"
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hl1_4230c
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+0, 02 SAY  ;
   "En esta parte de la consulta, se muestran todos los días que ha traba-"
 @ pfIl+1, 02 SAY "jado."
 @ pfIl+3, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 11 SAY "ESC" STYLE "BT"
 @ pfIl+6, 11 SAY "F10" STYLE "BT"
 @ pfIl+7, 11 SAY "F1" STYLE "BT"
 @ pfIl+5, 31 SAY "Regresar a Cabecera"
 @ pfIl+6, 31 SAY "Cerrar y regresar a Windows"
 @ pfIl+7, 31 SAY "Ayuda del Programa"
 STORE pfIl+8 TO pfIl
 IF wtPo="2"
      @ pfIl+0, 29 SAY ":" STYLE "BT"
      @ pfIl+1, 29 SAY ":" STYLE "BT"
      @ pfIl+0, 11 SAY "F3" STYLE "BT"
      @ pfIl+1, 11 SAY "F5" STYLE "BT"
      @ pfIl+0, 31 SAY "Cambiar la Marcación con TAB Graba"
      @ pfIl+1, 31 SAY "Cambiar el Estado de Tardanza/Inasistencia"
      STORE pfIl+2 TO pfIl
 ENDIF
 @ pfIl+0, 29 SAY ":" STYLE "BT"
 @ pfIl+1, 29 SAY ":" STYLE "BT"
 @ pfIl+2, 29 SAY ":" STYLE "BT"
 @ pfIl+3, 29 SAY ":" STYLE "BT"
 @ pfIl+4, 29 SAY ":" STYLE "BT"
 @ pfIl+5, 29 SAY ":" STYLE "BT"
 @ pfIl+6, 29 SAY ":" STYLE "BT"
 @ pfIl+7, 29 SAY ":" STYLE "BT"
 @ pfIl+0, 11 SAY "F8" STYLE "BT"
 @ pfIl+1, 11 SAY "FLECHA ABAJO" STYLE "BT"
 @ pfIl+2, 11 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+3, 11 SAY "PAGE DOWN" STYLE "BT"
 @ pfIl+4, 11 SAY "PAGE UP" STYLE "BT"
 @ pfIl+5, 11 SAY "HOME" STYLE "BT"
 @ pfIl+6, 11 SAY "END" STYLE "BT"
 @ pfIl+7, 11 SAY "CTRL P" STYLE "BT"
 @ pfIl+0, 31 SAY "Pasar a Excel"
 @ pfIl+1, 31 SAY "Línea inferior"
 @ pfIl+2, 31 SAY "Línea superior"
 @ pfIl+3, 31 SAY "Página siguiente"
 @ pfIl+4, 31 SAY "Página anterior"
 @ pfIl+5, 31 SAY "Primera línea"
 @ pfIl+6, 31 SAY "Última línea"
 @ pfIl+7, 31 SAY "Imprime Asistencia de Trabajador"
 STORE pfIl+8 TO pfIl
 IF wtPo="2"
      @ pfIl, 29 SAY ":" STYLE "BT"
      @ pfIl, 11 SAY "CTRL + DEL" STYLE "BT"
      @ pfIl, 31 SAY "Borrar una Marcación"
 ENDIF
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
 RELEASE pfIl
ENDPROC
*
