 PARAMETER ppRg
 SET PROCEDURE TO MODSET
 DO seT_ini
 DO teC_ini
 DO leT_ini
 DO seT_var
 DO veR_fil
 DO siN_demo
 DO abR_path
 PUBLIC vsW0
 STORE 0 TO vsW0
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+"IDENTI2.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+"IDENTI2.DBB" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .T.
      STORE 1 TO vsW0
      DO abR_conf
 ENDIF
 DO coL_ini
 DO paR_fico
 DO reS_0000a
 DO paN_0000a
 MODIFY WINDOW scReen TITLE "CONFIGURACIÓN DE ESTACIÓN ("+ ;
        ALLTRIM(STR(maNc, 4, 0))+"x"+ALLTRIM(STR(mlAr, 4, 0))+") ["+mrEs+ ;
        "]" ICON FILE "ICON04.ICO"
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE mrEs TO mrSs
 DO prEsiona WITH "4", "MNU_PA00", mxX1, myY1
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 IF vsW0=0
      DO clAve_in WITH "3"
 ELSE
      DO clAve_in WITH "2"
 ENDIF
 CLOSE INDEXES
 CLOSE DATABASES
 IF mkEy=k_Esc
      RETURN
 ENDIF
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh TO mpAt
 ELSE
      STORE muNi+":"+mpTh TO mpAt
 ENDIF
 SET CENTURY ON
 STORE 01 TO meRr
 STORE 99 TO mkEy
 SELECT 1
 STORE "MDSETUP.DLL" TO mdBf
 Use &mDBF Exclusive Alias Path
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 SELECT 2
 STORE "SYSTEMX.DLL" TO mdBf
 Use &mDBF Exclusive Alias Sistema
 IF mkEy=k_Esc
      DO deL_file1
      DO reTorno
 ENDIF
 STORE 00 TO meRr
 PUBLIC vfB1, vcB1, vuNi, viTe, vpAt, vwIn, vcUa, vdEm, vnDe, vpOp
 STORE SPACE(01) TO vuNi
 STORE SPACE(50) TO vpAt
 STORE 2 TO vdEm
 STORE 1 TO vwIn, vcUa, msAl, viTe
 SELECT paTh
 GOTO TOP
 STORE unI TO vuNi
 STORE paTh TO vpAt
 DO CASE
      CASE vuNi=" "
           STORE 1 TO viTe
      CASE vuNi="C"
           STORE 2 TO viTe
      CASE vuNi="D"
           STORE 3 TO viTe
      CASE vuNi="E"
           STORE 4 TO viTe
      CASE vuNi="F"
           STORE 5 TO viTe
      CASE vuNi="G"
           STORE 6 TO viTe
      CASE vuNi="H"
           STORE 7 TO viTe
      CASE vuNi="I"
           STORE 8 TO viTe
      CASE vuNi="J"
           STORE 9 TO viTe
      CASE vuNi="K"
           STORE 10 TO viTe
      CASE vuNi="L"
           STORE 11 TO viTe
      CASE vuNi="M"
           STORE 12 TO viTe
      CASE vuNi="N"
           STORE 13 TO viTe
      CASE vuNi="O"
           STORE 14 TO viTe
      CASE vuNi="P"
           STORE 15 TO viTe
      CASE vuNi="Q"
           STORE 16 TO viTe
      CASE vuNi="R"
           STORE 17 TO viTe
      CASE vuNi="S"
           STORE 18 TO viTe
      CASE vuNi="T"
           STORE 19 TO viTe
      CASE vuNi="U"
           STORE 20 TO viTe
      CASE vuNi="V"
           STORE 21 TO viTe
      CASE vuNi="W"
           STORE 22 TO viTe
      CASE vuNi="X"
           STORE 23 TO viTe
      CASE vuNi="Y"
           STORE 24 TO viTe
      CASE vuNi="Z"
           STORE 25 TO viTe
 ENDCASE
 SELECT siStema
 GOTO TOP
 DO CASE
      CASE f9990cod="WIN95"
           STORE 1 TO vwIn
      CASE f9990cod="WIN98"
           STORE 2 TO vwIn
      CASE f9990cod="WIN2000"
           STORE 3 TO vwIn
      CASE f9990cod="WINXP"
           STORE 4 TO vwIn
      CASE f9990cod="WINVIST"
           STORE 5 TO vwIn
 ENDCASE
 DO CASE
      CASE LEN(ALLTRIM(f9990sim))=0
           STORE 2 TO vdEm
           STORE 0 TO vnDe
      OTHERWISE
           STORE 1 TO vdEm
           STORE ASC(ALLTRIM(f9990sim))-33 TO vnDe
 ENDCASE
 DO CASE
      CASE f9990pnt=" "
           STORE 1 TO vcUa
      CASE f9990pnt="1"
           STORE 2 TO vcUa
 ENDCASE
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 ON KEY LABEL F10 DO P_F10
 DO p1_0000a
 DO coLsc7
 DO WHILE .T.
      DO reS_0000a
      DO paN_0000a
      IF mrEs<>mrSs
           DO p00_0000a WITH "1"
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      IF mkEy=k_Clic
           STORE MROW("") TO mfIl
           STORE MCOL("") TO mcCc
           DO clP_0000a
           IF mkEy=k_Esc
                EXIT
           ENDIF
      ENDIF
      DO CASE
           CASE mkEy=k_F12
                DO p00_0000a WITH "1"
                IF mkEy=k_Esc
                     EXIT
                ENDIF
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .OR. mkEy=k_Ctrl_end .OR. mkEy= ;
                k_Ctrl_left .OR. mkEy=k_Up
                STORE "Este es el único campo..." TO mmSj
           CASE mkEy=k_Enter .OR. mkEy=k_Down .OR. mkEy=k_Ctrl_right
                IF LEN(ALLTRIM(vpAt))=0
                     STORE "No se ha llenado nada en el campo..." TO mmSj
                ENDIF
           CASE mkEy=k_Tab
                IF LEN(ALLTRIM(vpAt))=0
                     STORE "No se ha llenado nada en el campo..." TO mmSj
                ELSE
                     DO prE_docum WITH "¿Desea grabar configuraciones?"
                     IF moPc$"Ss"
                          DO grA_0000a
                     ENDIF
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      IF ppRg="1"
           STORE k_Enter TO mkEy
           DO coLbln
           @mFI0+1,mCO0+47 Edit vPAT Font "&mLetRom",12 Style "NQ" Size 1,63,50
           SET CURSOR ON
           READ
           SET CURSOR OFF
      ELSE
           mkEy = INKEY(0, "HM")
      ENDIF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Gra_0000a
 = INKEY(0.01)
 DO grAbar WITH "1"
 SELECT paTh
 REPLACE unI WITH vuNi
 REPLACE paTh WITH vpAt
 UNLOCK
 SELECT siStema
 DO CASE
      CASE vwIn=1
           REPLACE f9990cod WITH "WIN95"
      CASE vwIn=2
           REPLACE f9990cod WITH "WIN98"
      CASE vwIn=3
           REPLACE f9990cod WITH "WIN2000"
      CASE vwIn=4
           REPLACE f9990cod WITH "WINXP"
      CASE vwIn=5
           REPLACE f9990cod WITH "WINVIST"
 ENDCASE
 DO CASE
      CASE vdEm=1 .AND. LEN(ALLTRIM(f9990sim))=0
           REPLACE f9990sim WITH "!"
           STORE ASC(ALLTRIM(f9990sim))-33 TO vnDe
      CASE vdEm=2
           REPLACE f9990sim WITH " "
           STORE 0 TO vnDe
 ENDCASE
 DO CASE
      CASE vcUa=1
           REPLACE f9990pnt WITH " "
      CASE vcUa=2
           REPLACE f9990pnt WITH "1"
 ENDCASE
 UNLOCK
 WAIT CLEAR
ENDPROC
*
PROCEDURE P00_0000a
 PARAMETER ptPo
 IF ptPo="1"
      @0,0 Say "&mPTA" BitMap Style "Q" Stretch
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE mrEs TO mrSs
 ENDIF
 STORE 12.5 TO muFi
 STORE 127 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0+1 TO vfB1
 STORE mcO0+39 TO vcB1
 DO CASE
      CASE mrEs="1"
           Define Popup vPOP Margin Relative Color Scheme 6 Font "&mLetAri",8  Style "NQ"
      CASE mrEs="2"
           Define Popup vPOP Margin Relative Color Scheme 6 Font "&mLetAri",11 Style "NQ"
      OTHERWISE
           Define Popup vPOP Margin Relative Color Scheme 6 Font "&mLetAri",12 Style "NQ"
 ENDCASE
 DEFINE BAR 1 OF vpOp PROMPT "Vacío"
 DEFINE BAR 2 OF vpOp PROMPT "C"
 DEFINE BAR 3 OF vpOp PROMPT "D"
 DEFINE BAR 4 OF vpOp PROMPT "E"
 DEFINE BAR 5 OF vpOp PROMPT "F"
 DEFINE BAR 6 OF vpOp PROMPT "G"
 DEFINE BAR 7 OF vpOp PROMPT "H"
 DEFINE BAR 8 OF vpOp PROMPT "I"
 DEFINE BAR 9 OF vpOp PROMPT "J"
 DEFINE BAR 10 OF vpOp PROMPT "K"
 DEFINE BAR 11 OF vpOp PROMPT "L"
 DEFINE BAR 12 OF vpOp PROMPT "M"
 DEFINE BAR 13 OF vpOp PROMPT "N"
 DEFINE BAR 14 OF vpOp PROMPT "O"
 DEFINE BAR 15 OF vpOp PROMPT "P"
 DEFINE BAR 16 OF vpOp PROMPT "Q"
 DEFINE BAR 17 OF vpOp PROMPT "R"
 DEFINE BAR 18 OF vpOp PROMPT "S"
 DEFINE BAR 19 OF vpOp PROMPT "T"
 DEFINE BAR 20 OF vpOp PROMPT "U"
 DEFINE BAR 21 OF vpOp PROMPT "V"
 DEFINE BAR 22 OF vpOp PROMPT "W"
 DEFINE BAR 23 OF vpOp PROMPT "X"
 DEFINE BAR 24 OF vpOp PROMPT "Y"
 DEFINE BAR 25 OF vpOp PROMPT "Z"
 ON SELECTION POPUP vpOp DO OPC_0000A WITH POPUP()
 DO coL_fondo
 @ mfI0, mcO0 TO mfI0+muFi+0.3, mcO0+muCo PATTERN 1
 @ mfI0+3.2, mcO0 TO mfI0+3.2, mcO0+muCo
 @ mfI0+6.2, mcO0 TO mfI0+6.2, mcO0+muCo
 @mFI0+01,mCO0+1 Say "Ubicación de Data:"  Font "&mLetRom",16 Style "NQ"
 DO coL_fonve
 @mFI0+04,mCO0+1 Say "Sistema Operativo:"  Font "&mLetRom",16 Style "NQ"
 DO coL_fonaz
 @mFI0+07,mCO0+1 Say "Cuadre de Pantalla:" Font "&mLetRom",16 Style "NQ"
 IF ppRg="1"
      DO coL_fonro
      @mFI0+10,mCO0+01 Say "Programa Demo:"   Font "&mLetRom",16 Style "NQ"
 ELSE
      @mFI0+10,mCO0+15 Say "* * * Use TAB para Grabar. ESC para salir * * *" Font "&mLetRom",16 Style "BT" Color 4
 ENDIF
 SET READBORDER ON
 DO coLbln
 IF ppRg="1"
      @mFI0+1,mCO0+35 Get  vUNI Font "&mLetRom",12 Style "NQ" Size 1,2.5 Color ,&mColBlN
      @mFI0+1,mCO0+47 Edit vPAT Font "&mLetRom",12 Style "NQ" Size 1,63,50
 ELSE
      DO coL_fondo
      @mFI0+1,mCO0+35 Edit vUNI Font "&mLetRom",12 Style "NQ" Size 1,2.5
      @mFI0+1,mCO0+47 Edit vPAT Font "&mLetRom",12 Style "NQ" Size 1,63,50
      READ TIMEOUT 0.01
      @mFI0+1,mCO0+35 Say  vUNI Font "&mLetRom",12 Style "NQ" Size 1,2.5
      @mFI0+1,mCO0+47 Say  vPAT Font "&mLetRom",12 Style "NQ" Size 1,63 Pict "@S50"
 ENDIF
 @mFI0+04.2,mCO0+34.8 Get  vWIN Font "&mLetRom",14 Style "NQ" Default vWIN Function "*RHT Win-95;Win-98;Win-2000;Win-XP;Win-Vista"
 @mFI0+07.2,mCO0+34.8 Get  vCUA Font "&mLetRom",14 Style "NQ" Default vCUA Function "*RHT Sin Cuadre;Con cuadre"
 IF ppRg="1"
      @mFI0+10.2,mCO0+34.8 Get vDEM Font "&mLetRom",14 Style "NQ" Default vDEM Function "*RHT SI;NO"
 ENDIF
 READ TIMEOUT 0.01
 IF ppRg="1"
      DO coL_fondo
      DO CASE
           CASE vnDe>0 .OR. vdEm=1
                @mFI0+10.2,mCO0+58 Say vNDE                                Font "&mLetRom",14 Style "NQ" Size 1,3
                @mFI0+10.2,mCO0+64 Say "veces de 50 ingresadas al sistema" Font "&mLetRom",14 Style "NQ" Size 1,33
           OTHERWISE
                @mFI0+10.2,mCO0+58 Say " " Font "&mLetRom",14 Style "NQ" Size 1,3
                @mFI0+10.2,mCO0+64 Say " " Font "&mLetRom",14 Style "NQ" Size 1,33
      ENDCASE
 ENDIF
 DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Opc_0000a
 PARAMETER ppOp
 STORE BAR() TO viTe
 DO CASE
      CASE viTe=1
           STORE " " TO vuNi
      CASE viTe=2
           STORE "C" TO vuNi
      CASE viTe=3
           STORE "D" TO vuNi
      CASE viTe=4
           STORE "E" TO vuNi
      CASE viTe=5
           STORE "F" TO vuNi
      CASE viTe=6
           STORE "G" TO vuNi
      CASE viTe=7
           STORE "H" TO vuNi
      CASE viTe=8
           STORE "I" TO vuNi
      CASE viTe=9
           STORE "J" TO vuNi
      CASE viTe=10
           STORE "K" TO vuNi
      CASE viTe=11
           STORE "L" TO vuNi
      CASE viTe=12
           STORE "M" TO vuNi
      CASE viTe=13
           STORE "N" TO vuNi
      CASE viTe=14
           STORE "O" TO vuNi
      CASE viTe=15
           STORE "P" TO vuNi
      CASE viTe=16
           STORE "Q" TO vuNi
      CASE viTe=17
           STORE "R" TO vuNi
      CASE viTe=18
           STORE "S" TO vuNi
      CASE viTe=19
           STORE "T" TO vuNi
      CASE viTe=20
           STORE "U" TO vuNi
      CASE viTe=21
           STORE "V" TO vuNi
      CASE viTe=22
           STORE "W" TO vuNi
      CASE viTe=23
           STORE "X" TO vuNi
      CASE viTe=24
           STORE "Y" TO vuNi
      CASE viTe=25
           STORE "Z" TO vuNi
 ENDCASE
 DEACTIVATE POPUP vpOp
ENDPROC
*
PROCEDURE Clp_0000a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=vfB1+mfG1 .AND. mfIl<=vfB1+mfG2 .AND. mcCc>=vcB1+mcG1  ;
           .AND. mcCc<=vcB1+mcG2 .AND. ppRg="1"
           DO prEsiona WITH "2", "CONSU0", vfB1, vcB1
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO q1_0000a
           DO CASE
                CASE mrEs="1"
                     ACTIVATE POPUP vpOp BAR viTe AT mfI0-8, mcO0+45
                CASE mrEs="2"
                     ACTIVATE POPUP vpOp BAR viTe AT mfI0-11, mcO0+45
                OTHERWISE
                     ACTIVATE POPUP vpOp BAR viTe AT mfI0-12, mcO0+45
           ENDCASE
           DO p1_0000a
           DO coLbln
           @mFI0+1,mCO0+35 Say vUNI Font "&mLetRom",12 Style "NQ" Size 1,2.5
           DO prEsiona WITH "1", "CONSU0", vfB1, vcB1
           IF mkEy=k_Esc
                RETURN
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4 .AND. mfIl<=mfI0+5.571 .AND. mcCc>=mcO0+34.7  ;
           .AND. mcCc<=mcO0+50.3 .AND. vwIn<>1
           STORE 01 TO vwIn
           @mFI0+4.2,mCO0+34.8 Get vWIN Font "&mLetRom",14 Style "NQ" Default vWIN Function "*RHT Win-95;Win-98;Win-2000;Win-XP;Win-Vista"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4 .AND. mfIl<=mfI0+5.571 .AND. mcCc>=mcO0+50.3  ;
           .AND. mcCc<=mcO0+67.1 .AND. vwIn<>2
           STORE 02 TO vwIn
           @mFI0+4.2,mCO0+34.8 Get vWIN Font "&mLetRom",14 Style "NQ" Default vWIN Function "*RHT Win-95;Win-98;Win-2000;Win-XP;Win-Vista"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4 .AND. mfIl<=mfI0+5.571 .AND. mcCc>=mcO0+67.1  ;
           .AND. mcCc<=mcO0+87.1 .AND. vwIn<>3
           STORE 03 TO vwIn
           @mFI0+4.2,mCO0+34.8 Get vWIN Font "&mLetRom",14 Style "NQ" Default vWIN Function "*RHT Win-95;Win-98;Win-2000;Win-XP;Win-Vista"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4 .AND. mfIl<=mfI0+5.571 .AND. mcCc>=mcO0+87.1  ;
           .AND. mcCc<=mcO0+105.1 .AND. vwIn<>4
           STORE 04 TO vwIn
           @mFI0+4.2,mCO0+34.8 Get vWIN Font "&mLetRom",14 Style "NQ" Default vWIN Function "*RHT Win-95;Win-98;Win-2000;Win-XP;Win-Vista"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+4 .AND. mfIl<=mfI0+5.571 .AND. mcCc>=mcO0+105.1  ;
           .AND. mcCc<=mcO0+125.5 .AND. vwIn<>5
           STORE 05 TO vwIn
           @mFI0+4.2,mCO0+34.8 Get vWIN Font "&mLetRom",14 Style "NQ" Default vWIN Function "*RHT Win-95;Win-98;Win-2000;Win-XP;Win-Vista"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.142 .AND. mfIl<=mfI0+8.571 .AND. mcCc>=mcO0+34.7  ;
           .AND. mcCc<=mcO0+56.1 .AND. vcUa<>1
           STORE 01 TO vcUa
           @mFI0+7.2,mCO0+34.8 Get vCUA Font "&mLetRom",14 Style "NQ" Default vCUA Function "*RHT Sin Cuadre;Con cuadre"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.142 .AND. mfIl<=mfI0+8.571 .AND. mcCc>=mcO0+56.1  ;
           .AND. mcCc<=mcO0+78.7 .AND. vcUa<>2
           STORE 02 TO vcUa
           @mFI0+7.2,mCO0+34.8 Get vCUA Font "&mLetRom",14 Style "NQ" Default vCUA Function "*RHT Sin Cuadre;Con cuadre"
           READ TIMEOUT 0.01
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.214 .AND. mfIl<=mfI0+11.642 .AND. ppRg="1" .AND.  ;
           mcCc>=mcO0+34.7 .AND. mcCc<=mcO0+42.3 .AND. vdEm<>1
           STORE 01 TO vdEm
           @mFI0+10.2,mCO0+34.8 Get vDEM Font "&mLetRom",14 Style "NQ" Default vDEM Function "*RHT SI;NO"
           READ TIMEOUT 0.01
           SELECT siStema
           IF LEN(ALLTRIM(f9990sim))=0
                STORE ASC(ALLTRIM("!"))-33 TO vnDe
           ELSE
                STORE ASC(ALLTRIM(f9990sim))-33 TO vnDe
           ENDIF
           DO coL_fondo
           @mFI0+10.2,mCO0+58 Say vNDE                                Font "&mLetRom",14 Style "NQ" Size 1,3
           @mFI0+10.2,mCO0+64 Say "veces de 50 ingresadas al sistema" Font "&mLetRom",14 Style "NQ" Size 1,33
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.214 .AND. mfIl<=mfI0+11.642 .AND. ppRg="1" .AND.  ;
           mcCc>=mcO0+42.3 .AND. mcCc<=mcO0+53.7 .AND. vdEm<>2
           STORE 02 TO vdEm
           STORE 00 TO vnDe
           @mFI0+10.2,mCO0+34.8 Get vDEM Font "&mLetRom",14 Style "NQ" Default vDEM Function "*RHT SI;NO"
           READ TIMEOUT 0.01
           DO coL_fondo
           @mFI0+10.2,mCO0+58 Say " " Font "&mLetRom",14 Style "NQ" Size 1,3
           @mFI0+10.2,mCO0+64 Say " " Font "&mLetRom",14 Style "NQ" Size 1,33
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE P1_0000a
 ON KEY LABEL F12 DO P_F12
 ON KEY LABEL LEFTMOUSE DO P_MOUSE
 ON KEY LABEL ESC DO P_ESC
 ON KEY LABEL ENTER DO P_ENTER
 ON KEY LABEL TAB DO P_TAB
 ON KEY LABEL DNARROW DO P_DOWN
 ON KEY LABEL UPARROW DO P_UP
 ON KEY LABEL CTRL+HOME DO P_C_HOME
 ON KEY LABEL CTRL+END DO P_C_END
 ON KEY LABEL CTRL+RIGHTARROW DO P_C_RIGHT
 ON KEY LABEL CTRL+LEFTARROW DO P_C_LEFT
ENDPROC
*
PROCEDURE Q1_0000a
 ON KEY LABEL F12
 ON KEY LABEL LEFTMOUSE
 ON KEY LABEL ESC
 ON KEY LABEL ENTER
 ON KEY LABEL TAB
 ON KEY LABEL DNARROW
 ON KEY LABEL UPARROW
 ON KEY LABEL CTRL+HOME
 ON KEY LABEL CTRL+END
 ON KEY LABEL CTRL+RIGHTARROW
 ON KEY LABEL CTRL+LEFTARROW
ENDPROC
*
PROCEDURE Compila
 @ 0, 0 SAY "BMP\B_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CONSU0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PF2S.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PF2V.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PFE1.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PFE3.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS02.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS03.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS04.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS05.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS06.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS07.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS08.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS09.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS10.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS11.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS12.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS13.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS14.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL1.JPG" BITMAP STYLE "Q"
ENDPROC
*
PROCEDURE Retorna
 CLOSE ALL
 DO deL_files
 RELEASE ALL
 QUIT
ENDPROC
*
PROCEDURE Del_Files
 DO q1_0000a
 DO deL_file1
 RELEASE vfB1, vcB1, vuNi, viTe, vpAt, vwIn, vcUa, vdEm, vnDe, vpOp
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
 RETURN
ENDPROC
*
PROCEDURE Del_File1
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 RETURN
ENDPROC
*
PROCEDURE Set_Ini
 ZOOM WINDOW scReen MAX
 SET CONSOLE ON
 SET DELETED ON
 SET FULLPATH ON
 SET UNIQUE ON
 SET MOUSE ON
 SET MULTILOCKS ON
 SET CENTURY ON
 SET SYSFORMATS ON
 SET STATUS BAR OFF
 SET BRSTATUS OFF
 SET CONFIRM OFF
 SET CPDIALOG OFF
 SET CURSOR OFF
 SET DEBUG OFF
 SET ECHO OFF
 SET ESCAPE OFF
 SET EXCLUSIVE OFF
 SET HEADING OFF
 SET HELP OFF
 SET PALETTE OFF
 SET PRINTER OFF
 SET SAFETY OFF
 SET SYSMENU OFF
 SET TALK OFF
 SET BELL TO
 SET FDOW TO
 SET POINT TO "."
 SET TYPEAHEAD TO 100
 SET KEYCOMP TO WINDOW
 SET REFRESH TO 20, 20
 SET REPROCESS TO 0 SECONDS
 SET CLOCK STATUS
 SET DATE French
 = CAPSLOCK(.F.)
 MODIFY WINDOW scReen FONT "Arial", 8 STYLE "NT" NOCLOSE TITLE "" ICON  ;
        FILE "ICON01.ICO"
ENDPROC
*
