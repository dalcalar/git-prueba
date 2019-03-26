 STORE 01 TO viTe
 STORE 99 TO mkEy
 DO WHILE .T.
      DO reS_0000a
      IF mrEs<>mrSs
           DO reS_2430b
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_2430b
           IF mkEy=k_Esc .OR. mkEy=k_Clic
                = INKEY(0.01)
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F1
                DO hlP_2430b
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_F12
                DO reS_2430b
                IF mkEy=k_Esc
                     RETURN
                ENDIF
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=2 .AND. voPc=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=4 .AND. voPc<5
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=4 .AND. voPc>4 .AND. vfTp=1
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_end .AND. viTe=6 .AND. voPc>4 .AND. vfTp=2
                STORE "Estás en el último campo...    " TO mmSj
           CASE mkEy=k_Ctrl_left
                STORE "No hay campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe=1
                STORE "No hay más campos arriba...    " TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy
                STORE 01 TO viTe
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                DO veR_2430b
                IF mkEy<>99
                     DO CASE
                          CASE viTe=2 .AND. voPc=1
                               SAVE SCREEN TO vpAn_11
                               DO deT_2430b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               RESTORE SCREEN FROM vpAn_11
                          CASE viTe=4 .AND. voPc<5
                               SAVE SCREEN TO vpAn_11
                               DO deT_2430b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               RESTORE SCREEN FROM vpAn_11
                          CASE viTe=4 .AND. voPc>4 .AND. vfTp=1
                               SAVE SCREEN TO vpAn_11
                               DO deT_2430b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               RESTORE SCREEN FROM vpAn_11
                          CASE viTe=6 .AND. voPc>4 .AND. vfTp=2
                               SAVE SCREEN TO vpAn_11
                               DO deT_2430b
                               IF mkEy=k_Esc
                                    EXIT
                               ENDIF
                               RESTORE SCREEN FROM vpAn_11
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                STORE viTe-1 TO viTe
           CASE mkEy=k_Ctrl_end .AND. voPc=1
                DO veR_2430b
                IF mkEy<>99
                     STORE 2 TO viTe
                ENDIF
           CASE mkEy=k_Ctrl_end .AND. (voPc<5 .OR. (voPc>4 .AND. vfTp=1))
                DO veR_2430b
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99
                     STORE 4 TO viTe
                ENDIF
           CASE mkEy=k_Ctrl_end
                DO veR_2430b
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<5
                     STORE 5 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99
                     STORE 6 TO viTe
                ENDIF
           CASE mkEy=k_Tab .AND. voPc=1
                DO veR_2430b
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99
                     SAVE SCREEN TO vpAn_11
                     DO deT_2430b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
           CASE mkEy=k_Tab .AND. (voPc<5 .OR. (voPc>4 .AND. vfTp=1))
                DO veR_2430b
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99
                     SAVE SCREEN TO vpAn_11
                     DO deT_2430b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
           CASE mkEy=k_Tab
                DO veR_2430b
                IF mkEy<>99 .AND. viTe<2
                     STORE 2 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<3
                     STORE 3 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<4
                     STORE 4 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<5
                     STORE 5 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99 .AND. viTe<6
                     STORE 6 TO viTe
                     DO veR_2430b
                ENDIF
                IF mkEy<>99
                     SAVE SCREEN TO vpAn_11
                     DO deT_2430b
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     RESTORE SCREEN FROM vpAn_11
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO coLbln
      DO CASE
           CASE voPc=1 .AND. viTe=1
                @mFI0+07.5,mCO0+mUCO-25 Get dFEM Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=1 .AND. viTe=2
                @mFI0+10.0,mCO0+mUCO-25 Get hFEM Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc<5 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dFEM Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc<5 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hFEM Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=2 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=2 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=3 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=3 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=4 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=4 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=5 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=5 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=5 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=5 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=6 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=6 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=6 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=6 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=7 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=7 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=7 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=7 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=8 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=8 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=8 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=8 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=9 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=9 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=9 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=9 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hCOD Font "&mLetRom",12 Style "NQ" Size 1,15 Color ,&mColBlN
           CASE voPc=10 .AND. viTe=1
                @mFI0+06.0,mCO0+mUCO-24 Get dPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=10 .AND. viTe=2
                @mFI0+08.0,mCO0+mUCO-24 Get hPED Font "&mLetRom",12 Style "NQ" Size 1,09 Color ,&mColBlN
           CASE voPc=10 .AND. viTe=3
                @mFI0+10.0,mCO0+mUCO-24 Get dPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc=10 .AND. viTe=4
                @mFI0+12.0,mCO0+mUCO-24 Get hPRV Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc>4 .AND. viTe=5 .AND. vfTp=2
                @mFI0+16.5,mCO0+mUCO-24 Get dFEM Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           CASE voPc>4 .AND. viTe=6 .AND. vfTp=2
                @mFI0+18.5,mCO0+mUCO-24 Get hFEM Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
ENDPROC
*
PROCEDURE Ver_2430b
 DO CASE
      CASE viTe=1 .AND. AT(" ", DTOC(dfEm))<>0 .AND. voPc<5
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. AT(" ", DTOC(hfEm))<>0 .AND. voPc<5
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=2 .AND. dfEm>hfEm .AND. voPc<5
           STORE "Fecha inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=2 .AND. dpRv>hpRv .AND. voPc=5
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=2 .AND. dpRv>hpRv .AND. voPc=6
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=2 .AND. dcOd>hcOd .AND. voPc=7
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=2 .AND. dcOd>hcOd .AND. voPc=8
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=2 .AND. dpEd>hpEd .AND. voPc=9
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=2 .AND. dpEd>hpEd .AND. voPc=10
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=4 .AND. dcOd>hcOd .AND. voPc=5
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=4 .AND. dpEd>hpEd .AND. voPc=6
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=4 .AND. dpRv>hpRv .AND. voPc=7
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=4 .AND. dpEd>hpEd .AND. voPc=8
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=4 .AND. dcOd>hcOd .AND. voPc=9
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=4 .AND. dpRv>hpRv .AND. voPc=10
           STORE "Campo inicial no puede ser mayor a final..." TO mmSj
      CASE viTe=5 .AND. AT(" ", DTOC(dfEm))<>0 .AND. voPc>4 .AND. vfTp=2
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE viTe=6 .AND. AT(" ", DTOC(hfEm))<>0 .AND. voPc>4 .AND. vfTp=2
           STORE "Fecha no puede tener espacios vacíos..." TO mmSj
      CASE (viTe=2 .AND. voPc<5) .OR. (viTe=6 .AND. voPc>4 .AND. vfTp=2)
           STORE SUBSTR(DTOC(dfEm), 1, 2) TO ddIa
           STORE SUBSTR(DTOC(dfEm), 4, 2) TO dmEs
           STORE SUBSTR(DTOC(dfEm), 7, 4) TO daNo
           SELECT caB_cpra
           DO orD_0000a WITH "2400", "A", "F2400FEM", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET NEAR ON
           SEEK daNo+dmEs+ddIa
           SET NEAR OFF
           IF RLOCK()
                UNLOCK
           ENDIF
           IF EOF() .OR. f2400fem>hfEm
                STORE "No hay datos en este rango de Fechas-1..." TO mmSj
           ENDIF
      CASE (viTe=2 .AND. (voPc=5 .OR. voPc=6)) .OR. (viTe=4 .AND. (voPc=3  ;
           .OR. voPc=7 .OR. voPc=10))
           SELECT caB_cpra
           DO orD_0000a WITH "2400", "A", "F2400NOM", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET NEAR ON
           SEEK UPPER(ALLTRIM(dpRv))
           SET NEAR OFF
           IF RLOCK()
                UNLOCK
           ENDIF
           IF EOF() .OR. UPPER(ALLTRIM(f2400nom))+"*">UPPER(ALLTRIM(hpRv))+"*"
                STORE "No hay datos en este rango de Proveedores.." TO mmSj
           ENDIF
      CASE (viTe=2 .AND. (voPc=9 .OR. voPc=10)) .OR. (viTe=4 .AND. (voPc= ;
           4 .OR. voPc=6 .OR. voPc=8))
           SELECT caB_cpra
           DO orD_0000a WITH "2400", "A", "F2400PED", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET NEAR ON
           SEEK UPPER(ALLTRIM(dpEd))
           SET NEAR OFF
           IF RLOCK()
                UNLOCK
           ENDIF
           IF EOF() .OR. UPPER(ALLTRIM(f2400ped))+"*">UPPER(ALLTRIM(hpEd))+"*"
                STORE "No hay datos en este rango de Pedidos.." TO mmSj
           ENDIF
      CASE viTe=4 .AND. (voPc=2 .OR. voPc=5 .OR. voPc=9)
           SELECT deT_cpra
           DO orD_0000a WITH "2401", "A", "F2401COD", "A"
           IF mkEy=k_Esc
                RETURN
           ENDIF
           SET NEAR ON
           SEEK UPPER(ALLTRIM(dcOd))
           SET NEAR OFF
           IF RLOCK()
                UNLOCK
           ENDIF
           IF EOF() .OR. UPPER(ALLTRIM(f2401cod))+"*">UPPER(ALLTRIM(hcOd))+"*"
                STORE "No hay datos en este rango de Códigos.." TO mmSj
           ENDIF
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Det_2430b
 PRIVATE pnOm, pdCo, phCo, pdPr, phPr, pdPe, phPe
 STORE 0 TO vsW0
 IF voPc=1
      SELECT teMporal
 ELSE
      SELECT teMporal_2
 ENDIF
 GOTO TOP
 IF  .NOT. BOF()
      DO CASE
           CASE voPc=1 .AND. voPc=coP1 .AND. (dfEm=cdFe .AND. hfEm=chFe)
                STORE 1 TO vsW0
           CASE voPc=2 .AND. ALLTRIM(UPPER(dcOd))+"*"= ;
                ALLTRIM(UPPER(cdCo))+"*" .AND. ALLTRIM(UPPER(hcOd))+"*"= ;
                ALLTRIM(UPPER(chCo))+"*" .AND. voPc=coP1 .AND. (dfEm=cdFe  ;
                .AND. hfEm=chFe)
                STORE 1 TO vsW0
           CASE voPc=3 .AND. ALLTRIM(UPPER(dpRv))+"*"= ;
                ALLTRIM(UPPER(cdPr))+"*" .AND. ALLTRIM(UPPER(hpRv))+"*"= ;
                ALLTRIM(UPPER(chPr))+"*" .AND. voPc=coP1 .AND. (dfEm=cdFe  ;
                .AND. hfEm=chFe)
                STORE 1 TO vsW0
           CASE voPc=4 .AND. ALLTRIM(UPPER(dpEd))+"*"= ;
                ALLTRIM(UPPER(cdPe))+"*" .AND. ALLTRIM(UPPER(hpEd))+"*"= ;
                ALLTRIM(UPPER(chPe))+"*" .AND. voPc=coP1 .AND. (dfEm=cdFe  ;
                .AND. hfEm=chFe)
                STORE 1 TO vsW0
           CASE voPc=5 .AND. ALLTRIM(UPPER(dpRv))+"*"= ;
                ALLTRIM(UPPER(cdPr))+"*" .AND. ALLTRIM(UPPER(hpRv))+"*"= ;
                ALLTRIM(UPPER(chPr))+"*" .AND. ALLTRIM(UPPER(dcOd))+"*"= ;
                ALLTRIM(UPPER(cdCo))+"*" .AND. ALLTRIM(UPPER(hcOd))+"*"= ;
                ALLTRIM(UPPER(chCo))+"*" .AND. voPc=coP1 .AND. vfTp=cfTp  ;
                .AND. (vfTp=1 .OR. (dfEm=cdFe .AND. hfEm=chFe))
                STORE 1 TO vsW0
           CASE voPc=6 .AND. ALLTRIM(UPPER(dpRv))+"*"= ;
                ALLTRIM(UPPER(cdPr))+"*" .AND. ALLTRIM(UPPER(hpRv))+"*"= ;
                ALLTRIM(UPPER(chPr))+"*" .AND. ALLTRIM(UPPER(dpEd))+"*"= ;
                ALLTRIM(UPPER(cdPe))+"*" .AND. ALLTRIM(UPPER(hpEd))+"*"= ;
                ALLTRIM(UPPER(chPe))+"*" .AND. voPc=coP1 .AND. vfTp=cfTp  ;
                .AND. (vfTp=1 .OR. (dfEm=cdFe .AND. hfEm=chFe))
                STORE 1 TO vsW0
           CASE voPc=7 .AND. ALLTRIM(UPPER(dcOd))+"*"= ;
                ALLTRIM(UPPER(cdCo))+"*" .AND. ALLTRIM(UPPER(hcOd))+"*"= ;
                ALLTRIM(UPPER(chCo))+"*" .AND. ALLTRIM(UPPER(dpRv))+"*"= ;
                ALLTRIM(UPPER(cdPr))+"*" .AND. ALLTRIM(UPPER(hpRv))+"*"= ;
                ALLTRIM(UPPER(chPr))+"*" .AND. voPc=coP1 .AND. vfTp=cfTp  ;
                .AND. (vfTp=1 .OR. (dfEm=cdFe .AND. hfEm=chFe))
                STORE 1 TO vsW0
           CASE voPc=8 .AND. ALLTRIM(UPPER(dcOd))+"*"= ;
                ALLTRIM(UPPER(cdCo))+"*" .AND. ALLTRIM(UPPER(hcOd))+"*"= ;
                ALLTRIM(UPPER(chCo))+"*" .AND. ALLTRIM(UPPER(dpEd))+"*"= ;
                ALLTRIM(UPPER(cdPe))+"*" .AND. ALLTRIM(UPPER(hpEd))+"*"= ;
                ALLTRIM(UPPER(chPe))+"*" .AND. voPc=coP1 .AND. vfTp=cfTp  ;
                .AND. (vfTp=1 .OR. (dfEm=cdFe .AND. hfEm=chFe))
                STORE 1 TO vsW0
           CASE voPc=9 .AND. ALLTRIM(UPPER(dpEd))+"*"= ;
                ALLTRIM(UPPER(cdPe))+"*" .AND. ALLTRIM(UPPER(hpEd))+"*"= ;
                ALLTRIM(UPPER(chPe))+"*" .AND. ALLTRIM(UPPER(dcOd))+"*"= ;
                ALLTRIM(UPPER(cdCo))+"*" .AND. ALLTRIM(UPPER(hcOd))+"*"= ;
                ALLTRIM(UPPER(chCo))+"*" .AND. voPc=coP1 .AND. vfTp=cfTp  ;
                .AND. (vfTp=1 .OR. (dfEm=cdFe .AND. hfEm=chFe))
                STORE 1 TO vsW0
           CASE voPc=10 .AND. ALLTRIM(UPPER(dpEd))+"*"= ;
                ALLTRIM(UPPER(cdPe))+"*" .AND. ALLTRIM(UPPER(hpEd))+"*"= ;
                ALLTRIM(UPPER(chPe))+"*" .AND. ALLTRIM(UPPER(dpRv))+"*"= ;
                ALLTRIM(UPPER(cdPr))+"*" .AND. ALLTRIM(UPPER(hpRv))+"*"= ;
                ALLTRIM(UPPER(chPr))+"*" .AND. voPc=coP1 .AND. vfTp=cfTp  ;
                .AND. (vfTp=1 .OR. (dfEm=cdFe .AND. hfEm=chFe))
                STORE 1 TO vsW0
      ENDCASE
 ENDIF
 IF vsW0=0
      SELECT teMporal
      ZAP
      REINDEX
      SELECT teMporal_2
      ZAP
      REINDEX
      SELECT teMporal_3
      ZAP
      REINDEX
      SET ESCAPE ON
      ON ESCAPE STORE 9000 TO MKEY
      STORE 0 TO ttO1, ttO2
      DO CASE
           CASE voPc<5 .OR. vfTp=2
                SELECT caB_cpra
                DO orD_0000a WITH "2400", "A", "F2400FEM", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                GOTO TOP
                IF RLOCK()
                     UNLOCK
                ENDIF
                IF voPc<5 .OR. (voPc>4 .AND. vfTp=2)
                     SET NEAR ON
                     SEEK daNo+dmEs+ddIa
                     SET NEAR OFF
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                ENDIF
      ENDCASE
      DO CASE
           CASE voPc=1
                SELECT teMporal
                SET ORDER TO FTM1FEM
           CASE voPc=2
                SELECT deT_cpra
                DO orD_0000a WITH "2401", "A", "F2401CO1", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT teMporal
                SET ORDER TO FTM1FE1
                SELECT teMporal_2
                SET ORDER TO FTM2COD
                STORE ALLTRIM(UPPER(dcOd))+"*" TO pdCo
                STORE ALLTRIM(UPPER(hcOd))+"*" TO phCo
           CASE voPc=3
                SELECT teMporal
                SET ORDER TO FTM1FE1
                SELECT teMporal_2
                SET ORDER TO FTM2PRV
                STORE ALLTRIM(UPPER(dpRv))+"*" TO pdPr
                STORE ALLTRIM(UPPER(hpRv))+"*" TO phPr
           CASE voPc=4
                SELECT teMporal
                SET ORDER TO FTM1FE1
                SELECT teMporal_2
                SET ORDER TO FTM2PED
                STORE ALLTRIM(UPPER(dpEd))+"*" TO pdPe
                STORE ALLTRIM(UPPER(hpEd))+"*" TO phPe
           CASE voPc=5
                SELECT deT_cpra
                DO orD_0000a WITH "2401", "A", "F2401CO1", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT teMporal_2
                SET ORDER TO FTM2PRV
                SELECT teMporal_3
                SET ORDER TO FTM3PCO
                STORE ALLTRIM(UPPER(dpRv))+"*" TO pdPr
                STORE ALLTRIM(UPPER(hpRv))+"*" TO phPr
                STORE ALLTRIM(UPPER(dcOd))+"*" TO pdCo
                STORE ALLTRIM(UPPER(hcOd))+"*" TO phCo
           CASE voPc=6
                SELECT teMporal_2
                SET ORDER TO FTM2PRV
                SELECT teMporal_3
                SET ORDER TO FTM3PPE
                STORE ALLTRIM(UPPER(dpRv))+"*" TO pdPr
                STORE ALLTRIM(UPPER(hpRv))+"*" TO phPr
                STORE ALLTRIM(UPPER(dpEd))+"*" TO pdPe
                STORE ALLTRIM(UPPER(hpEd))+"*" TO phPe
           CASE voPc=7
                SELECT deT_cpra
                DO orD_0000a WITH "2401", "A", "F2401CO1", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT teMporal_2
                SET ORDER TO FTM2COD
                SELECT teMporal_3
                SET ORDER TO FTM3CPR
                STORE ALLTRIM(UPPER(dcOd))+"*" TO pdCo
                STORE ALLTRIM(UPPER(hcOd))+"*" TO phCo
                STORE ALLTRIM(UPPER(dpRv))+"*" TO pdPr
                STORE ALLTRIM(UPPER(hpRv))+"*" TO phPr
           CASE voPc=8
                SELECT deT_cpra
                DO orD_0000a WITH "2401", "A", "F2401CO1", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT teMporal_2
                SET ORDER TO FTM2COD
                SELECT teMporal_3
                SET ORDER TO FTM3CPE
                STORE ALLTRIM(UPPER(dcOd))+"*" TO pdCo
                STORE ALLTRIM(UPPER(hcOd))+"*" TO phCo
                STORE ALLTRIM(UPPER(dpEd))+"*" TO pdPe
                STORE ALLTRIM(UPPER(hpEd))+"*" TO phPe
           CASE voPc=9
                SELECT deT_cpra
                DO orD_0000a WITH "2401", "A", "F2401CO1", "A"
                IF mkEy=k_Esc
                     RETURN
                ENDIF
                SELECT teMporal_2
                SET ORDER TO FTM2PED
                SELECT teMporal_3
                SET ORDER TO FTM3DCO
                STORE ALLTRIM(UPPER(dpEd))+"*" TO pdPe
                STORE ALLTRIM(UPPER(hpEd))+"*" TO phPe
                STORE ALLTRIM(UPPER(dcOd))+"*" TO pdCo
                STORE ALLTRIM(UPPER(hcOd))+"*" TO phCo
           CASE voPc=10
                SELECT teMporal_2
                SET ORDER TO FTM2PED
                SELECT teMporal_3
                SET ORDER TO FTM3DPR
                STORE ALLTRIM(UPPER(dpEd))+"*" TO pdPe
                STORE ALLTRIM(UPPER(hpEd))+"*" TO phPe
                STORE ALLTRIM(UPPER(dpRv))+"*" TO pdPr
                STORE ALLTRIM(UPPER(hpRv))+"*" TO phPr
      ENDCASE
      SELECT caB_cpra
      DO WHILE  .NOT. EOF()
           IF mkEy=9000
                EXIT
           ENDIF
           IF (voPc<5 .OR. (voPc>4 .AND. vfTp=2)) .AND. f2400fem>hfEm
                EXIT
           ENDIF
           STORE UPPER(ALLTRIM(SUBSTR(f2400nom, 1, 12)))+"*" TO pnOm
           STORE UPPER(ALLTRIM(f2400ped))+"*" TO ppEd
           IF f2400est="9" .OR. ((voPc=3 .OR. voPc=5 .OR. voPc=6 .OR.  ;
              voPc=7 .OR. voPc=10) .AND. (pnOm<pdPr .OR. pnOm>phPr)) .OR.  ;
              ((voPc=4 .OR. voPc=6 .OR. voPc=8 .OR. voPc=9 .OR. voPc=10)  ;
              .AND. (ppEd<pdPe .OR. ppEd>phPe))
                SKIP
                IF RLOCK()
                     UNLOCK
                ENDIF
                LOOP
           ENDIF
           WAIT WINDOW NOWAIT  ;
                "L E Y E N D O... Presionar ESC para Salir "+DTOC(f2400fem)
           STORE f2400tdo TO vtDo
           STORE f2400ser TO vsEr
           STORE f2400doc TO vdOc
           STORE f2400td1 TO vtD1
           STORE f2400sr1 TO vsR1
           STORE f2400fac TO vfAc
           STORE f2400fem TO vfEm
           STORE f2400prv TO vpRv
           STORE f2400nom TO vnOm
           STORE f2400ped TO vpEd
           STORE f2400sor TO vsOr
           STORE f2400ord TO voRd
           STORE f2400mon TO vmOn
           STORE f2400tot TO vtOt
           STORE f2400tig TO vtIg
           STORE f2400pig TO vpIg
           STORE f2400tpo TO vtPo
           IF LEN(ALLTRIM(vpEd))=0
                STORE "S/Pedid" TO vpEd
           ENDIF
           IF vtD1="NC"
                STORE vtOt*-1 TO vtOt
           ENDIF
           DO CASE
                CASE voPc=1
                     SELECT teMporal
                     SEEK SUBSTR(DTOC(vfEm), 7, 4)+SUBSTR(DTOC(vfEm), 4,  ;
                          2)+SUBSTR(DTOC(vfEm), 1, 2)+vtD1+vsR1+ ;
                          ALLTRIM(vfAc)+"*"+vpRv+STR(vmOn, 1, 0)
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM1tdo WITH vtD1
                          REPLACE ftM1ser WITH vsR1
                          REPLACE ftM1doc WITH vfAc
                          REPLACE ftM1fem WITH vfEm
                          REPLACE ftM1prv WITH vpRv
                          REPLACE ftM1nom WITH vnOm
                          REPLACE ftM1sor WITH vsOr
                          REPLACE ftM1ord WITH voRd
                          REPLACE ftM1ped WITH vpEd
                          REPLACE ftM1tig WITH vtIg
                          REPLACE ftM1tpo WITH vtPo
                          REPLACE ftM1mon WITH vmOn
                          REPLACE ftM1tot WITH 0
                     ENDIF
                     REPLACE ftM1tot WITH ftM1tot+vtOt
                     DO CASE
                          CASE vmOn=1
                               STORE ttO1+vtOt TO ttO1
                          CASE vmOn=2
                               STORE ttO2+vtOt TO ttO2
                     ENDCASE
                CASE voPc=2
                     SELECT deT_cpra
                     SET NEAR ON
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(dcOd)
                     SET NEAR OFF
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                        f2401doc=vtDo+vsEr+vdOc
                          IF ALLTRIM(f2401cod)+"*">ALLTRIM(hcOd)+"*"
                               EXIT
                          ENDIF
                          STORE f2401cod TO vcOd
                          STORE f2401des TO vdEs
                          STORE f2401nuc TO vnUc, vnUx
                          STORE f2401can TO vcAn
                          DO CASE
                               CASE f2401tpo=1 .OR. f2401tpo=10
                                    STORE 0 TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=1 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND(f2401la1*f2401an1*10.77* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=2 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND((f2401la2*f2401an2/144)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2
                                    STORE ROUND((f2401la2*f2401an2)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=3
                                    STORE ROUND((f2401la2*f2401an2* ;
                                     f2401esp/12)*f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=4
                                    STORE ROUND((f2401la1*f2401an1)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo>=5 .AND. f2401tpo<=6
                                    STORE f2401can TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                          ENDCASE
                          IF vpIg>0
                               STORE vtOt*(1+(vpIg/100)) TO vtOt
                          ENDIF
                          STORE ROUND(vtOt, 2) TO vtOt
                          IF vtD1="NC"
                               STORE vtOt*-1 TO vtOt
                          ENDIF
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               STORE f2111nux TO vnUx
                               STORE f2111tpo TO vtPp
                          ELSE
                               STORE 1 TO vtPp
                          ENDIF
                          SELECT teMporal_2
                          SEEK ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH vcOd
                               REPLACE ftM2des WITH vdEs
                               REPLACE ftM2nuc WITH vnUc
                               REPLACE ftM2nux WITH vnUx
                               REPLACE ftM2can WITH 0
                               REPLACE ftM2to1 WITH 0
                               REPLACE ftM2to2 WITH 0
                          ENDIF
                          REPLACE ftM2can WITH ftM2can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM2to2 WITH ftM2to2+vtOt
                          ENDCASE
                          SELECT teMporal
                          SEEK ALLTRIM(vcOd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                               SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm),  ;
                               1, 2)+vtD1+vsR1+ALLTRIM(vfAc)+"*"+vpRv+ ;
                               STR(vmOn, 1, 0)
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM1cod WITH vcOd
                               REPLACE ftM1tdo WITH vtD1
                               REPLACE ftM1ser WITH vsR1
                               REPLACE ftM1doc WITH vfAc
                               REPLACE ftM1fem WITH vfEm
                               REPLACE ftM1prv WITH vpRv
                               REPLACE ftM1nom WITH vnOm
                               REPLACE ftM1sor WITH vsOr
                               REPLACE ftM1ord WITH voRd
                               REPLACE ftM1ped WITH vpEd
                               REPLACE ftM1tig WITH vtIg
                               REPLACE ftM1tpo WITH vtPo
                               REPLACE ftM1mon WITH vmOn
                               REPLACE ftM1can WITH 0
                               REPLACE ftM1tot WITH 0
                          ENDIF
                          REPLACE ftM1can WITH ftM1can+vcAn
                          REPLACE ftM1tot WITH ftM1tot+vtOt
                          DO CASE
                               CASE vmOn=1
                                    STORE ttO1+vtOt TO ttO1
                               CASE vmOn=2
                                    STORE ttO2+vtOt TO ttO2
                          ENDCASE
                          SELECT deT_cpra
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                CASE voPc=3
                     SELECT teMporal_2
                     SEEK ALLTRIM(vpRv)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM2prv WITH vpRv
                          REPLACE ftM2nom WITH vnOm
                          REPLACE ftM2to1 WITH 0
                          REPLACE ftM2to2 WITH 0
                     ENDIF
                     DO CASE
                          CASE vmOn=1
                               REPLACE ftM2to1 WITH ftM2to1+vtOt
                          CASE vmOn=2
                               REPLACE ftM2to2 WITH ftM2to2+vtOt
                     ENDCASE
                     SELECT teMporal
                     SEEK ALLTRIM(vpRv)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                          SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1,  ;
                          2)+vtD1+vsR1+ALLTRIM(vfAc)+"*"+vpRv+STR(vmOn, 1, 0)
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM1cod WITH vpRv
                          REPLACE ftM1tdo WITH vtD1
                          REPLACE ftM1ser WITH vsR1
                          REPLACE ftM1doc WITH vfAc
                          REPLACE ftM1fem WITH vfEm
                          REPLACE ftM1prv WITH vpRv
                          REPLACE ftM1nom WITH vnOm
                          REPLACE ftM1sor WITH vsOr
                          REPLACE ftM1ord WITH voRd
                          REPLACE ftM1ped WITH vpEd
                          REPLACE ftM1tig WITH vtIg
                          REPLACE ftM1tpo WITH vtPo
                          REPLACE ftM1mon WITH vmOn
                          REPLACE ftM1can WITH 0
                          REPLACE ftM1tot WITH 0
                     ENDIF
                     REPLACE ftM1tot WITH ftM1tot+vtOt
                     DO CASE
                          CASE vmOn=1
                               STORE ttO1+vtOt TO ttO1
                          CASE vmOn=2
                               STORE ttO2+vtOt TO ttO2
                     ENDCASE
                CASE voPc=4
                     SELECT teMporal_2
                     SEEK ALLTRIM(vpEd)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM2ped WITH vpEd
                          REPLACE ftM2to1 WITH 0
                          REPLACE ftM2to2 WITH 0
                     ENDIF
                     DO CASE
                          CASE vmOn=1
                               REPLACE ftM2to1 WITH ftM2to1+vtOt
                          CASE vmOn=2
                               REPLACE ftM2to2 WITH ftM2to2+vtOt
                     ENDCASE
                     SELECT teMporal
                     SEEK ALLTRIM(vpEd)+"*"+SUBSTR(DTOC(vfEm), 7, 4)+ ;
                          SUBSTR(DTOC(vfEm), 4, 2)+SUBSTR(DTOC(vfEm), 1,  ;
                          2)+vtD1+vsR1+ALLTRIM(vfAc)+"*"+vpRv+STR(vmOn, 1, 0)
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM1cod WITH vpEd
                          REPLACE ftM1tdo WITH vtD1
                          REPLACE ftM1ser WITH vsR1
                          REPLACE ftM1doc WITH vfAc
                          REPLACE ftM1fem WITH vfEm
                          REPLACE ftM1prv WITH vpRv
                          REPLACE ftM1nom WITH vnOm
                          REPLACE ftM1sor WITH vsOr
                          REPLACE ftM1ord WITH voRd
                          REPLACE ftM1ped WITH vpEd
                          REPLACE ftM1tig WITH vtIg
                          REPLACE ftM1tpo WITH vtPo
                          REPLACE ftM1mon WITH vmOn
                          REPLACE ftM1can WITH 0
                          REPLACE ftM1tot WITH 0
                     ENDIF
                     REPLACE ftM1tot WITH ftM1tot+vtOt
                     DO CASE
                          CASE vmOn=1
                               STORE ttO1+vtOt TO ttO1
                          CASE vmOn=2
                               STORE ttO2+vtOt TO ttO2
                     ENDCASE
                CASE voPc=5
                     SELECT deT_cpra
                     SET NEAR ON
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(dcOd)
                     SET NEAR OFF
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                        f2401doc=vtDo+vsEr+vdOc
                          IF ALLTRIM(f2401cod)+"*">ALLTRIM(hcOd)+"*"
                               EXIT
                          ENDIF
                          STORE f2401cod TO vcOd
                          STORE f2401des TO vdEs
                          STORE f2401nuc TO vnUc, vnUx
                          STORE f2401can TO vcAn
                          DO CASE
                               CASE f2401tpo=1 .OR. f2401tpo=10
                                    STORE 0 TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=1 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND(f2401la1*f2401an1*10.77* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=2 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND((f2401la2*f2401an2/144)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2
                                    STORE ROUND((f2401la2*f2401an2)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=3
                                    STORE ROUND((f2401la2*f2401an2* ;
                                     f2401esp/12)*f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=4
                                    STORE ROUND((f2401la1*f2401an1)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo>=5 .AND. f2401tpo<=6
                                    STORE f2401can TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                          ENDCASE
                          IF vpIg>0
                               STORE vtOt*(1+(vpIg/100)) TO vtOt
                          ENDIF
                          STORE ROUND(vtOt, 2) TO vtOt
                          IF vtD1="NC"
                               STORE vtOt*-1 TO vtOt
                          ENDIF
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               STORE f2111nux TO vnUx
                               STORE f2111tpo TO vtPp
                          ELSE
                               STORE 1 TO vtPp
                          ENDIF
                          SELECT teMporal_2
                          SEEK ALLTRIM(vpRv)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2prv WITH vpRv
                               REPLACE ftM2nom WITH vnOm
                               REPLACE ftM2to1 WITH 0
                               REPLACE ftM2to2 WITH 0
                          ENDIF
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM2to2 WITH ftM2to2+vtOt
                          ENDCASE
                          SELECT teMporal_3
                          SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM3prv WITH vpRv
                               REPLACE ftM3cod WITH vcOd
                               REPLACE ftM3des WITH vdEs
                               REPLACE ftM3nuc WITH vnUc
                               REPLACE ftM3nux WITH vnUx
                               REPLACE ftM3tpp WITH vtPp
                               REPLACE ftM3can WITH 0
                               REPLACE ftM3to1 WITH 0
                               REPLACE ftM3to2 WITH 0
                          ENDIF
                          REPLACE ftM3can WITH ftM3can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM3to1 WITH ftM3to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM3to2 WITH ftM3to2+vtOt
                          ENDCASE
                          DO CASE
                               CASE vmOn=1
                                    STORE ttO1+vtOt TO ttO1
                               CASE vmOn=2
                                    STORE ttO2+vtOt TO ttO2
                          ENDCASE
                          SELECT deT_cpra
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                CASE voPc=6
                     SELECT teMporal_2
                     SEEK ALLTRIM(vpRv)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM2prv WITH vpRv
                          REPLACE ftM2nom WITH vnOm
                          REPLACE ftM2to1 WITH 0
                          REPLACE ftM2to2 WITH 0
                     ENDIF
                     DO CASE
                          CASE vmOn=1
                               REPLACE ftM2to1 WITH ftM2to1+vtOt
                          CASE vmOn=2
                               REPLACE ftM2to2 WITH ftM2to2+vtOt
                     ENDCASE
                     SELECT teMporal_3
                     SEEK ALLTRIM(vpRv)+"*"+ALLTRIM(vpEd)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM3prv WITH vpRv
                          REPLACE ftM3ped WITH vpEd
                          REPLACE ftM3to1 WITH 0
                          REPLACE ftM3to2 WITH 0
                     ENDIF
                     DO CASE
                          CASE vmOn=1
                               REPLACE ftM3to1 WITH ftM3to1+vtOt
                          CASE vmOn=2
                               REPLACE ftM3to2 WITH ftM3to2+vtOt
                     ENDCASE
                     DO CASE
                          CASE vmOn=1
                               STORE ttO1+vtOt TO ttO1
                          CASE vmOn=2
                               STORE ttO2+vtOt TO ttO2
                     ENDCASE
                CASE voPc=7
                     SELECT deT_cpra
                     SET NEAR ON
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(dcOd)
                     SET NEAR OFF
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                        f2401doc=vtDo+vsEr+vdOc
                          IF ALLTRIM(f2401cod)+"*">ALLTRIM(hcOd)+"*"
                               EXIT
                          ENDIF
                          STORE f2401cod TO vcOd
                          STORE f2401des TO vdEs
                          STORE f2401nuc TO vnUc, vnUx
                          STORE f2401can TO vcAn
                          DO CASE
                               CASE f2401tpo=1 .OR. f2401tpo=10
                                    STORE 0 TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=1 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND(f2401la1*f2401an1*10.77* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=2 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND((f2401la2*f2401an2/144)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2
                                    STORE ROUND((f2401la2*f2401an2)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=3
                                    STORE ROUND((f2401la2*f2401an2* ;
                                     f2401esp/12)*f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=4
                                    STORE ROUND((f2401la1*f2401an1)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo>=5 .AND. f2401tpo<=6
                                    STORE f2401can TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                          ENDCASE
                          IF vpIg>0
                               STORE vtOt*(1+(vpIg/100)) TO vtOt
                          ENDIF
                          STORE ROUND(vtOt, 2) TO vtOt
                          IF vtD1="NC"
                               STORE vtOt*-1 TO vtOt
                          ENDIF
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               STORE f2111nux TO vnUx
                               STORE f2111tpo TO vtPp
                          ELSE
                               STORE 1 TO vtPp
                          ENDIF
                          SELECT teMporal_2
                          SEEK ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH vcOd
                               REPLACE ftM2des WITH vdEs
                               REPLACE ftM2nuc WITH vnUc
                               REPLACE ftM2nux WITH vnUx
                               REPLACE ftM2can WITH 0
                               REPLACE ftM2to1 WITH 0
                               REPLACE ftM2to2 WITH 0
                          ENDIF
                          REPLACE ftM2can WITH ftM2can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM2to2 WITH ftM2to2+vtOt
                          ENDCASE
                          SELECT teMporal_3
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpRv)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM3cod WITH vcOd
                               REPLACE ftM3prv WITH vpRv
                               REPLACE ftM3nom WITH vnOm
                               REPLACE ftM3tpp WITH vtPp
                               REPLACE ftM3can WITH 0
                               REPLACE ftM3to1 WITH 0
                               REPLACE ftM3to2 WITH 0
                          ENDIF
                          REPLACE ftM3can WITH ftM3can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM3to1 WITH ftM3to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM3to2 WITH ftM3to2+vtOt
                          ENDCASE
                          DO CASE
                               CASE vmOn=1
                                    STORE ttO1+vtOt TO ttO1
                               CASE vmOn=2
                                    STORE ttO2+vtOt TO ttO2
                          ENDCASE
                          SELECT deT_cpra
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                CASE voPc=8
                     SELECT deT_cpra
                     SET NEAR ON
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(dcOd)
                     SET NEAR OFF
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                        f2401doc=vtDo+vsEr+vdOc
                          IF ALLTRIM(f2401cod)+"*">ALLTRIM(hcOd)+"*"
                               EXIT
                          ENDIF
                          STORE f2401cod TO vcOd
                          STORE f2401des TO vdEs
                          STORE f2401nuc TO vnUc, vnUx
                          STORE f2401can TO vcAn
                          DO CASE
                               CASE f2401tpo=1 .OR. f2401tpo=10
                                    STORE 0 TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=1 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND(f2401la1*f2401an1*10.77* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=2 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND((f2401la2*f2401an2/144)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2
                                    STORE ROUND((f2401la2*f2401an2)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=3
                                    STORE ROUND((f2401la2*f2401an2* ;
                                     f2401esp/12)*f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=4
                                    STORE ROUND((f2401la1*f2401an1)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo>=5 .AND. f2401tpo<=6
                                    STORE f2401can TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                          ENDCASE
                          IF vpIg>0
                               STORE vtOt*(1+(vpIg/100)) TO vtOt
                          ENDIF
                          STORE ROUND(vtOt, 2) TO vtOt
                          IF vtD1="NC"
                               STORE vtOt*-1 TO vtOt
                          ENDIF
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               STORE f2111nux TO vnUx
                               STORE f2111tpo TO vtPp
                          ELSE
                               STORE 1 TO vtPp
                          ENDIF
                          SELECT teMporal_2
                          SEEK ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2cod WITH vcOd
                               REPLACE ftM2des WITH vdEs
                               REPLACE ftM2nuc WITH vnUc
                               REPLACE ftM2nux WITH vnUx
                               REPLACE ftM2can WITH 0
                               REPLACE ftM2to1 WITH 0
                               REPLACE ftM2to2 WITH 0
                          ENDIF
                          REPLACE ftM2can WITH ftM2can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM2to2 WITH ftM2to2+vtOt
                          ENDCASE
                          SELECT teMporal_3
                          SEEK ALLTRIM(vcOd)+"*"+ALLTRIM(vpEd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM3cod WITH vcOd
                               REPLACE ftM3ped WITH vpEd
                               REPLACE ftM3tpp WITH vtPp
                               REPLACE ftM3can WITH 0
                               REPLACE ftM3to1 WITH 0
                               REPLACE ftM3to2 WITH 0
                          ENDIF
                          REPLACE ftM3can WITH ftM3can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM3to1 WITH ftM3to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM3to2 WITH ftM3to2+vtOt
                          ENDCASE
                          DO CASE
                               CASE vmOn=1
                                    STORE ttO1+vtOt TO ttO1
                               CASE vmOn=2
                                    STORE ttO2+vtOt TO ttO2
                          ENDCASE
                          SELECT deT_cpra
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                CASE voPc=9
                     SELECT deT_cpra
                     SET NEAR ON
                     SEEK vtDo+vsEr+vdOc+ALLTRIM(dcOd)
                     SET NEAR OFF
                     IF RLOCK()
                          UNLOCK
                     ENDIF
                     DO WHILE  .NOT. EOF() .AND. f2401tdo+f2401ser+ ;
                        f2401doc=vtDo+vsEr+vdOc
                          IF ALLTRIM(f2401cod)+"*">ALLTRIM(hcOd)+"*"
                               EXIT
                          ENDIF
                          STORE f2401cod TO vcOd
                          STORE f2401des TO vdEs
                          STORE f2401nuc TO vnUc, vnUx
                          STORE f2401can TO vcAn
                          DO CASE
                               CASE f2401tpo=1 .OR. f2401tpo=10
                                    STORE 0 TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=1 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND(f2401la1*f2401an1*10.77* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2 .AND. f2401med=2 .AND.  ;
                                    vtDo<>"IM"
                                    STORE ROUND((f2401la2*f2401an2/144)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=2
                                    STORE ROUND((f2401la2*f2401an2)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=3
                                    STORE ROUND((f2401la2*f2401an2* ;
                                     f2401esp/12)*f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo=4
                                    STORE ROUND((f2401la1*f2401an1)* ;
                                     f2401can, 4) TO vpIe
                                    STORE ROUND(vpIe*f2401pre, 4) TO vtOt
                               CASE f2401tpo>=5 .AND. f2401tpo<=6
                                    STORE f2401can TO vpIe
                                    STORE ROUND(f2401can*f2401pre, 4) TO vtOt
                          ENDCASE
                          IF vpIg>0
                               STORE vtOt*(1+(vpIg/100)) TO vtOt
                          ENDIF
                          STORE ROUND(vtOt, 2) TO vtOt
                          IF vtD1="NC"
                               STORE vtOt*-1 TO vtOt
                          ENDIF
                          SELECT prOductos
                          SEEK ALLTRIM(vcOd)+"*"
                          IF  .NOT. EOF()
                               STORE f2111nux TO vnUx
                               STORE f2111tpo TO vtPp
                          ELSE
                               STORE 1 TO vtPp
                          ENDIF
                          SELECT teMporal_2
                          SEEK ALLTRIM(vpEd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM2ped WITH vpEd
                               REPLACE ftM2to1 WITH 0
                               REPLACE ftM2to2 WITH 0
                          ENDIF
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM2to1 WITH ftM2to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM2to2 WITH ftM2to2+vtOt
                          ENDCASE
                          SELECT teMporal_3
                          SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vcOd)+"*"
                          IF EOF()
                               APPEND BLANK
                               REPLACE ftM3ped WITH vpEd
                               REPLACE ftM3cod WITH vcOd
                               REPLACE ftM3des WITH vdEs
                               REPLACE ftM3nuc WITH vnUc
                               REPLACE ftM3nux WITH vnUx
                               REPLACE ftM3tpp WITH vtPp
                               REPLACE ftM3can WITH 0
                               REPLACE ftM3to1 WITH 0
                               REPLACE ftM3to2 WITH 0
                          ENDIF
                          REPLACE ftM3can WITH ftM3can+vcAn
                          DO CASE
                               CASE vmOn=1
                                    REPLACE ftM3to1 WITH ftM3to1+vtOt
                               CASE vmOn=2
                                    REPLACE ftM3to2 WITH ftM3to2+vtOt
                          ENDCASE
                          DO CASE
                               CASE vmOn=1
                                    STORE ttO1+vtOt TO ttO1
                               CASE vmOn=2
                                    STORE ttO2+vtOt TO ttO2
                          ENDCASE
                          SELECT deT_cpra
                          SKIP
                          IF RLOCK()
                               UNLOCK
                          ENDIF
                     ENDDO
                CASE voPc=10
                     SELECT teMporal_2
                     SEEK ALLTRIM(vpEd)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM2ped WITH vpEd
                          REPLACE ftM2to1 WITH 0
                          REPLACE ftM2to2 WITH 0
                     ENDIF
                     DO CASE
                          CASE vmOn=1
                               REPLACE ftM2to1 WITH ftM2to1+vtOt
                          CASE vmOn=2
                               REPLACE ftM2to2 WITH ftM2to2+vtOt
                     ENDCASE
                     SELECT teMporal_3
                     SEEK ALLTRIM(vpEd)+"*"+ALLTRIM(vpRv)+"*"
                     IF EOF()
                          APPEND BLANK
                          REPLACE ftM3ped WITH vpEd
                          REPLACE ftM3prv WITH vpRv
                          REPLACE ftM3nom WITH vnOm
                          REPLACE ftM3to1 WITH 0
                          REPLACE ftM3to2 WITH 0
                     ENDIF
                     DO CASE
                          CASE vmOn=1
                               REPLACE ftM3to1 WITH ftM3to1+vtOt
                          CASE vmOn=2
                               REPLACE ftM3to2 WITH ftM3to2+vtOt
                     ENDCASE
                     DO CASE
                          CASE vmOn=1
                               STORE ttO1+vtOt TO ttO1
                          CASE vmOn=2
                               STORE ttO2+vtOt TO ttO2
                     ENDCASE
           ENDCASE
           SELECT caB_cpra
           SKIP
           IF RLOCK()
                UNLOCK
           ENDIF
      ENDDO
      WAIT CLEAR
      ON ESCAPE
      SET ESCAPE OFF
      IF mkEy=9000
           SELECT teMporal
           ZAP
           REINDEX
           SELECT teMporal_2
           ZAP
           REINDEX
           SELECT teMporal_3
           ZAP
           REINDEX
           STORE 99 TO mkEy
           RETURN
      ENDIF
 ENDIF
 STORE 99 TO mkEy
 IF vsW0=0
      STORE voPc TO coP1
      STORE vfTp TO cfTp
      STORE dfEm TO cdFe
      STORE hfEm TO chFe
 ENDIF
 DO CASE
      CASE voPc=1
           SELECT teMporal
           SET ORDER TO FTM1FEM
      CASE voPc=2
           IF vsW0=0
                STORE dcOd TO cdCo
                STORE hcOd TO chCo
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2COD
      CASE voPc=3
           IF vsW0=0
                STORE dpRv TO cdPr
                STORE hpRv TO chPr
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2PRV
      CASE voPc=4
           IF vsW0=0
                STORE dpEd TO cdPe
                STORE hpEd TO chPe
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2PED
      CASE voPc=5
           IF vsW0=0
                STORE dpRv TO cdPr
                STORE hpRv TO chPr
                STORE dcOd TO cdCo
                STORE hcOd TO chCo
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2PRV
      CASE voPc=6
           IF vsW0=0
                STORE dpRv TO cdPr
                STORE hpRv TO chPr
                STORE dpEd TO cdPe
                STORE hpEd TO chPe
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2PRV
      CASE voPc=7
           IF vsW0=0
                STORE dcOd TO cdCo
                STORE hcOd TO chCo
                STORE dpRv TO cdPr
                STORE hpRv TO chPr
           ENDIF
           SELECT teMporal_3
           SET ORDER TO FTM3CNO
           SELECT teMporal_2
           SET ORDER TO FTM2COD
      CASE voPc=8
           IF vsW0=0
                STORE dcOd TO cdCo
                STORE hcOd TO chCo
                STORE dpEd TO cdPe
                STORE hpEd TO chPe
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2COD
      CASE voPc=9
           IF vsW0=0
                STORE dpEd TO cdPe
                STORE hpEd TO chPe
                STORE dcOd TO cdCo
                STORE hcOd TO chCo
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2PED
      CASE voPc=10
           IF vsW0=0
                STORE dpEd TO cdPe
                STORE hpEd TO chPe
                STORE dpRv TO cdPr
                STORE hpRv TO chPr
           ENDIF
           SELECT teMporal_2
           SET ORDER TO FTM2PED
 ENDCASE
 GOTO TOP
 IF BOF()
      STORE "No hay datos en este rango de Fechas-2..." TO mmSj
      DO poNmsj
      RETURN
 ENDIF
 IF voPc>4
      STORE ffIl-2 TO ffIl
      STORE ffFs-2 TO ffFs
 ENDIF
 DO CASE
      CASE voPc=1
           DO paR2430c
      CASE voPc=2
           DO paR2430d
      CASE voPc=3
           DO paR2430e
      CASE voPc=4
           DO paR2430f
      CASE voPc=5
           DO paR2430g
      CASE voPc=6
           DO paR2430h
      CASE voPc=7
           DO paR2430i
      CASE voPc=8
           DO paR2430j
      CASE voPc=9
           DO paR2430k
      CASE voPc=10
           DO paR2430l
 ENDCASE
 IF voPc>4
      STORE ffIl+2 TO ffIl
      STORE ffFs+2 TO ffFs
 ENDIF
 STORE 1 TO viTe
ENDPROC
*
PROCEDURE Res_2430b
 DO p00_2430a WITH "1"
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "4", "R_CONS09", mmF1, mmC1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Clp_2430b
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+50.4 .AND.  ;
           mcCc<=mmC1+59.40
           STORE k_Tab TO mkEy
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
      CASE mfIl>=vfI1-0.35 .AND. mfIl<=vfI1+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>1
           STORE 1 TO voPc
      CASE mfIl>=vfI2-0.35 .AND. mfIl<=vfI2+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>2
           STORE 2 TO voPc
      CASE mfIl>=vfI3-0.35 .AND. mfIl<=vfI3+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>3
           STORE 3 TO voPc
      CASE mfIl>=vfI4-0.35 .AND. mfIl<=vfI4+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>4
           STORE 4 TO voPc
      CASE mfIl>=vfI5-0.35 .AND. mfIl<=vfI5+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>5
           STORE 5 TO voPc
      CASE mfIl>=vfI6-0.35 .AND. mfIl<=vfI6+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>6
           STORE 6 TO voPc
      CASE mfIl>=vfI7-0.35 .AND. mfIl<=vfI7+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>7
           STORE 7 TO voPc
      CASE mfIl>=vfI8-0.35 .AND. mfIl<=vfI8+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>8
           STORE 8 TO voPc
      CASE mfIl>=vfI9-0.35 .AND. mfIl<=vfI9+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>9
           STORE 9 TO voPc
      CASE mfIl>=vfI0-0.35 .AND. mfIl<=vfI0+1.536 .AND. mcCc>=mcO0+2  ;
           .AND. mcCc<=mcO0+51 .AND. voPc<>10
           STORE 10 TO voPc
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.75 .AND. voPc>4 .AND.  ;
           mcCc>=mcO0+muCo-42 .AND. mcCc<=mcO0+muCo-30 .AND. vfTp<>1
           DO coL_beige
           STORE 01 TO vfTp
           @ mfI0+14.5, mcO0+muCo-43 TO mfI0+20.1, mcO0+muCo-3 PATTERN 1  ;
             PEN 0, 0
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           READ TIMEOUT 0.01
           IF viTe>4
                STORE 4 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.464 .AND. mfIl<=mfI0+15.75 .AND. voPc>4 .AND.  ;
           mcCc>=mcO0+muCo-30 .AND. mcCc<=mcO0+muCo-3.4 .AND. vfTp<>2
           DO coL_beige
           STORE 02 TO vfTp
           @mFI0+16.5,mCO0+mUCO-38 Say "Desde:" Font "&mLetRom",14 Style "NQ"
           @mFI0+18.5,mCO0+mUCO-38 Say "Hasta:" Font "&mLetRom",14 Style "NQ"
           @mFI0+14.5,mCO0+mUCO-42 Get vFTP     Font "&mLetRom",12 Style "NQ" Function "*RHT Todos;x Rango de Fecha" Default vFTP
           @mFI0+16.5,mCO0+mUCO-24 Get dFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           @mFI0+18.5,mCO0+mUCO-24 Get hFEM     Font "&mLetRom",12 Style "NQ" Size 1,12 Color ,&mColBlN
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.454 .AND. mfIl<=mfI0+9.035 .AND. voPc=1 .AND.  ;
           mcCc>=mcO0+muCo-37.2 .AND. mcCc<=mcO0+muCo-10 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.964 .AND. mfIl<=mfI0+11.535 .AND. voPc=1 .AND.  ;
           mcCc>=mcO0+muCo-37.2 .AND. mcCc<=mcO0+muCo-10 .AND. viTe<>2
           IF viTe=1
                DO veR_2430b
           ENDIF
           IF mkEy<>99
                STORE 02 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.964 .AND. mfIl<=mfI0+7.535 .AND. voPc>1 .AND.  ;
           mcCc>=mcO0+muCo-41.2 .AND. mcCc<=mcO0+muCo+5.2 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.964 .AND. mfIl<=mfI0+9.535 .AND. voPc>1 .AND.  ;
           mcCc>=mcO0+muCo-41.2 .AND. mcCc<=mcO0+muCo-5.2 .AND. viTe<>2
           IF viTe=1
                DO veR_2430b
           ENDIF
           IF mkEy<>99
                STORE 2 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+9.964 .AND. mfIl<=mfI0+11.535 .AND. voPc>1 .AND.  ;
           mcCc>=mcO0+muCo-41.2 .AND. mcCc<=mcO0+muCo-5.2 .AND. viTe<>3
           IF viTe=1
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<2
                STORE 2 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99
                STORE 3 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.964 .AND. mfIl<=mfI0+13.535 .AND. voPc>1 .AND.  ;
           mcCc>=mcO0+muCo-41.2 .AND. mcCc<=mcO0+muCo-5.2 .AND. viTe<>4
           IF viTe=1
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<2
                STORE 2 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<3
                STORE 3 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99
                STORE 4 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.464 .AND. mfIl<=mfI0+17.964 .AND. voPc>1 .AND.  ;
           mcCc>=mcO0+muCo-38 .AND. mcCc<=mcO0+muCo-9 .AND. viTe<>5
           IF viTe=1
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<2
                STORE 2 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<3
                STORE 3 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<4
                STORE 4 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99
                STORE 5 TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.393 .AND. mfIl<=mfI0+19.964 .AND. voPc>1 .AND.  ;
           mcCc>=mcO0+muCo-38 .AND. mcCc<=mcO0+muCo-9 .AND. viTe<>6
           IF viTe=1
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<2
                STORE 2 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<3
                STORE 3 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<4
                STORE 4 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99 .AND. viTe<5
                STORE 5 TO viTe
                DO veR_2430b
           ENDIF
           IF mkEy<>99
                STORE 6 TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Hlp_2430b
 PRIVATE pfIl
 = INKEY(0.01)
 STORE 0.2 TO pfIl
 ACTIVATE WINDOW mpAn_hlp
 @ pfIl+00, 02 SAY  ;
   "En esta parte del programa se puede escoger los rangos de fechas y"
 @ pfIl+01, 02 SAY "otros campos según la opción que se haya seleccionado."
 @ pfIl+03, 02 SAY "Las teclas para movilizarse son:"
 @ pfIl+05, 22 SAY ":" STYLE "BT"
 @ pfIl+06, 22 SAY ":" STYLE "BT"
 @ pfIl+07, 22 SAY ":" STYLE "BT"
 @ pfIl+08, 22 SAY ":" STYLE "BT"
 @ pfIl+10, 22 SAY ":" STYLE "BT"
 @ pfIl+11, 22 SAY ":" STYLE "BT"
 @ pfIl+05, 02 SAY "ESC" STYLE "BT"
 @ pfIl+06, 02 SAY "F10" STYLE "BT"
 @ pfIl+07, 02 SAY "F1" STYLE "BT"
 @ pfIl+08, 02 SAY "ENTER, CTRL ->," STYLE "BT"
 @ pfIl+09, 02 SAY "FLECHA ABAJO," STYLE "BT"
 @ pfIl+10, 02 SAY "TAB" STYLE "BT"
 @ pfIl+11, 02 SAY "FLECHA ARRIBA" STYLE "BT"
 @ pfIl+05, 24 SAY "Regresar a la pantalla anterior"
 @ pfIl+06, 24 SAY "Cerrar y regresar a Windows"
 @ pfIl+07, 24 SAY "Ayuda del Programa"
 @ pfIl+08, 24 SAY "Ir al siguiente campo, al final ingresa a la Consulta"
 @ pfIl+10, 24 SAY "Ir a la Consulta"
 @ pfIl+11, 24 SAY "Campo anterior"
 DO ruTinahlp
 = INKEY(0.01)
 DEACTIVATE WINDOW mpAn_hlp
ENDPROC
*
