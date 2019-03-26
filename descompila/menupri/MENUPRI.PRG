 DO vaR_0000a
 STORE 01 TO voPc
 STORE 00 TO coPc
 DO p00_0000a WITH "1"
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
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
           CASE mkEy=k_F10
                DO reTorna
           CASE mkEy=k_Esc
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Home .AND. voPc<>1
                STORE 01 TO voPc
           CASE mkEy=k_End .AND. voPc<>vuLt
                STORE vuLt TO voPc
           CASE mkEy=k_Down .AND. voPc=vuLt
                STORE 01 TO voPc
           CASE mkEy=k_Down
                STORE voPc+1 TO voPc
           CASE mkEy=k_Up .AND. voPc=1
                STORE vuLt TO voPc
           CASE mkEy=k_Up
                STORE voPc-1 TO voPc
           CASE mkEy=k_Enter
                DO CASE
                     CASE voPc=1
                          DO clAve WITH "1"
                          DO vaR_0000a
                          STORE 01 TO voPc, coPc
                     CASE voPc=2
                          DO enCripta
                          DO vaR_0000a
                          STORE 02 TO voPc, coPc
                     CASE voPc=3
                          DO meNuidc
                          DO vaR_0000a
                          STORE 03 TO voPc, coPc
                     CASE voPc=4
                          DO idEnti1
                          DO vaR_0000a
                          STORE 04 TO voPc, coPc
                     CASE voPc=5
                          DO mdSetup WITH "1"
                          DO vaR_0000a
                          STORE 05 TO voPc, coPc
                ENDCASE
                DO p00_0000a WITH "1"
                IF mkEy=k_Esc
                     DO reTorna
                ENDIF
      ENDCASE
      IF voPc<>coPc
           DO opC_0000a
           STORE voPc TO coPc
      ENDIF
      mkEy = INKEY(0, "HM")
 ENDDO
 WAIT CLEAR
 SET CURSOR ON
 SET DELETED OFF
 SET STATUS BAR ON
 DO deL_files
 RETURN
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
 STORE 20 TO muFi
 STORE 84 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 STORE mfI0-2 TO mfI0
 STORE mfI0 TO vfI1
 STORE mfI0+5 TO vfI2
 STORE mfI0+10 TO vfI3
 STORE mfI0+15 TO vfI4
 STORE mfI0+20 TO vfI5
 DO opC_0000a
ENDPROC
*
PROCEDURE Opc_0000a
 STORE 5 TO vuLt
 DO CASE
      CASE voPc=1
           @vFI1,mCO0 Get vOP1 Font "&mLetRom",14 Size 2,48,1 Style "BQU" Function "*TV Claves"
           @vFI2,mCO0 Get vOP2 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Encriptación**"
           @vFI3,mCO0 Get vOP3 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Menús Personalizados"
           @vFI4,mCO0 Get vOP4 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Identificación de la Empresa**"
           @vFI5,mCO0 Get vOP5 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Configuración de Estación**"
      CASE voPc=2
           @vFI1,mCO0 Get vOP1 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Claves"
           @vFI2,mCO0 Get vOP2 Font "&mLetRom",14 Size 2,48,1 Style "BQU" Function "*TV Encriptación**"
           @vFI3,mCO0 Get vOP3 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Menús Personalizados"
           @vFI4,mCO0 Get vOP4 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Identificación de la Empresa**"
           @vFI5,mCO0 Get vOP5 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Configuración de Estación**"
      CASE voPc=3
           @vFI1,mCO0 Get vOP1 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Claves"
           @vFI2,mCO0 Get vOP2 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Encriptación**"
           @vFI3,mCO0 Get vOP3 Font "&mLetRom",14 Size 2,48,1 Style "BQU" Function "*TV Menús Personalizados"
           @vFI4,mCO0 Get vOP4 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Identificación de la Empresa**"
           @vFI5,mCO0 Get vOP5 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Configuración de Estación**"
      CASE voPc=4
           @vFI1,mCO0 Get vOP1 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Claves"
           @vFI2,mCO0 Get vOP2 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Encriptación**"
           @vFI3,mCO0 Get vOP3 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Menús Personalizados"
           @vFI4,mCO0 Get vOP4 Font "&mLetRom",14 Size 2,48,1 Style "BQU" Function "*TV Identificación de la Empresa**"
           @vFI5,mCO0 Get vOP5 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Configuración de Estación**"
      CASE voPc=5
           @vFI1,mCO0 Get vOP1 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Claves"
           @vFI2,mCO0 Get vOP2 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Encriptación**"
           @vFI3,mCO0 Get vOP3 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Menús Personalizados"
           @vFI4,mCO0 Get vOP4 Font "&mLetRom",14 Size 2,48,1 Style "BQ"  Function "*TV Identificación de la Empresa**"
           @vFI5,mCO0 Get vOP5 Font "&mLetRom",14 Size 2,48,1 Style "BQU" Function "*TV Configuración de Estación**"
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Pan_0000a
 STORE "BMP\B_MENUPRI.JPG" TO mpTa
ENDPROC
*
PROCEDURE Var_0000a
 PRIVATE pfRa
 SET PROCEDURE TO MODSET
 DO seT_ini
 DO seT_var
 @ 1, 1 SAY mfEl SIZE 1, 1
 DO teC_ini
 DO leT_ini
 DO veR_fil
 DO coL_ini
 STORE SPACE(02) TO mcIa
 STORE "24" TO maRe
 STORE 0 TO msAl
 STORE 1 TO mvIt
 DO paR_fico
 DO reS_0000a
 DO paN_0000a
 STORE mrEs TO mrSs
 STORE "MENÚ DE UTILITARIOS ("+ALLTRIM(STR(maNc, 4, 0))+"x"+ ;
       ALLTRIM(STR(mlAr, 4, 0))+") ["+mrEs+"]" TO pfRa
 MODIFY WINDOW scReen TITLE pfRa ICON FILE "ICON04.ICO"
 PUBLIC voPc, coPc, vfI1, vfI2, vfI3, vfI4, vfI5, voP1, voP2, voP3, voP4,  ;
        voP5, vuLt
 STORE 01 TO msAl, voP1, voP2, voP3, voP4, voP5
 STORE 05 TO vuLt
 STORE 99 TO mkEy
 RELEASE pfRa
ENDPROC
*
PROCEDURE Clp_0000a
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=vfI1 .AND. mfIl<=vfI1+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc=1
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI2 .AND. mfIl<=vfI2+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc=2
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI3 .AND. mfIl<=vfI3+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc=3
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI4 .AND. mfIl<=vfI4+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc=4
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI5 .AND. mfIl<=vfI5+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc=5
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI1 .AND. mfIl<=vfI1+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc<>1
           STORE 01 TO voPc
           DO opC_0000a
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI2 .AND. mfIl<=vfI2+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc<>2
           STORE 02 TO voPc
           DO opC_0000a
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI3 .AND. mfIl<=vfI3+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc<>3
           STORE 03 TO voPc
           DO opC_0000a
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI4 .AND. mfIl<=vfI4+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc<>4
           STORE 04 TO voPc
           DO opC_0000a
           STORE k_Enter TO mkEy
      CASE mfIl>=vfI5 .AND. mfIl<=vfI5+3.25 .AND. mcCc>=mcO0 .AND. mcCc<= ;
           mcO0+76.8 .AND. voPc<>5
           STORE 05 TO voPc
           DO opC_0000a
           STORE k_Enter TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Compila
 DO IDENTI1.PRG
 DO CLAVE.PRG
 DO ENCRIPTA.PRG
 DO MENUIDC.PRG
 DO MDSETUP.PRG
 @ 0, 0 SAY "BMP\MNU_PA00.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PA01.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL0.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_SAL1.JPG" BITMAP STYLE "Q"
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
 @ 0, 0 SAY "BMP\B_ABRED.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\B_MENUPRI.JPG" BITMAP STYLE "Q"
ENDPROC
*
PROCEDURE Del_Files
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 RELEASE voPc, coPc, vfI1, vfI2, vfI3, vfI4, vfI5, voP1, voP2, voP3, voP4,  ;
         voP5, vuLt
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
PROCEDURE Retorna
 CLOSE ALL
 DO deL_files
 RELEASE ALL
 QUIT
ENDPROC
*
