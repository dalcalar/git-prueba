 PUBLIC mdBf
 SET PROCEDURE TO MODSET
 DO seT_ini
 DO teC_ini
 DO leT_ini
 DO seT_var
 DO veR_fil
 DO veR_demo WITH "1"
 DO abR_path
 DO abR_conf
 STORE muNi TO muN1, muN2
 STORE mpTh+"PCTOSPT\" TO mpT1
 STORE mpTh+"SPTTOPC\" TO mpT2
 DO coL_ini
 ON ERROR DO ERRORES
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTIF.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTIF.DBB" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Usuarios no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTI1.DBB" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "Archivo de Configuraciones no instalado o ruta no se encuentra...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh+mcIa+"\IDENTI3.DAT" TO mdBf
 ELSE
      STORE muNi+":"+mpTh+mcIa+"\IDENTI3.DAT" TO mdBf
 ENDIF
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      STORE "No hay Licencias instaladas...PRESIONAR UNA TECLA PARA SALIR..."  ;
            TO mmSj
      DO poNmsj
      = INKEY(0, "HM")
      DO reTorno
 ENDIF
 DO paR_fico
 STORE "BMP\MNU_PS02.JPG" TO mpTa
 Define Window mPAN_SIS At -.4,-.5 Size mWFI,mWCO-.7 in Desktop Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",8 Style "NT" Color Scheme 9 Title "Marcador de Asistencia" System MDI
 Define Window mPAN_HLP At .5,60 Size mWFI-8.5,86 in Windows mPAN_SIS Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",9 Style "NT" Fill File "BMP\MNU_PS14.JPG" Color Scheme 9 Title "AYUDA DEL TECLADO" System MDI Icon File "ICON02.ICO"
 DO ab3_conf
 ACTIVATE WINDOW mpAn_sis
 Define Window mPAN_VIS At 0,0 Size mWFI-.1,mWCO-1.6 in Desktop Close NoFloat NoGrow NoMinimize NoZoom Font "&mLetAri",8 Style "NT" Color Scheme 3 Title "Vista Preliminar - Pulsar ESC para salir" System MDI Icon File "ICON03.ICO"
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 ON KEY LABEL F12 DO P_F12
 STORE ".TMP" TO meX1
 STORE 01 TO msAl
 IF mkEy=k_Alt_d
      DO p_A_d
 ENDIF
 STORE mrEs TO mrSs
 DO pkM4230a WITH "1"
 DO reTorna
ENDPROC
*
PROCEDURE Retorna
 CLOSE INDEXES
 CLOSE DATABASES
 QUIT
ENDPROC
*
PROCEDURE PresionT
 PARAMETER poPc, pbMp, pfIl, pcOl
 DO CASE
      CASE poPc="1"
           STORE "BMP\B_"+pbMp+".JPG" TO pbMp
      CASE poPc="2"
           STORE "BMP\I_"+pbMp+".JPG" TO pbMp
      CASE poPc="3"
           STORE "BMP\N_"+pbMp+".JPG" TO pbMp
      CASE poPc="4"
           STORE "BMP\"+pbMp+".JPG" TO pbMp
 ENDCASE
 @pFIL,pCOL Say "&pBMP" BitMap Style "Q"
ENDPROC
*
PROCEDURE Errores
 PRIVATE peRr
 STORE ERROR() TO peRr
 STORE CHR(13)+CHR(13) TO mmSj
 DO CASE
      CASE peRr=1957
           STORE "Impresora no esta instalada o configurada " TO mmSj
           STORE mmSj+CHR(13)+CHR(13)+ ;
                 " Se recomienda Ver Impresoras x Defecto" TO mmSj
           STORE 99 TO mkEy
      CASE meRr=1 .AND. peRr=1 .AND. (AT("CLIENTES", mdBf)<>0 .OR.  ;
           AT("MAESTRO", mdBf)<>0 .OR. AT("RESUMEN", mdBf)<>0 .OR.  ;
           AT("DETALLE", mdBf)<>0)
           STORE "El Archivo ha sido borrado de la Carpeta SAM..."+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" hay que copiarlos nuevamente..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1
           STORE "El Archivo no se encuentra registrado..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1705
           STORE "El Archivo no se puede abrir..."+CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Debe haber un Usuario que lea este archivo en forma exclusiva..."  ;
                 TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1707
           STORE "Ha sido eliminado un Archivo .CDX " TO mmSj
           STORE mmSj+CHR(13)+CHR(13)+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=26
           STORE "El Archivo no tiene índices registrados..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=114
           STORE "El Archivo tiene índices corruptos..."+CHR(13)+CHR(13)  ;
                 TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=1 .AND. peRr=1683
           STORE "El Archivo tiene índices corruptos..."+CHR(13)+CHR(13)  ;
                 TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=5 .AND. peRr=1
           STORE "La Opción no se encuentra Disponible..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=4 .AND. peRr=1
           STORE "El Archivo no se encuentra registrado..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda REORGANIZAR" TO mmSj
           STORE 90 TO mkEy
      CASE peRr=1102
           STORE "El Archivo no se puede leer ya que otro usuario lo está usando en forma exclusiva..."  ;
                 TO mmSj
      CASE meRr=3
           STORE "El Archivo Problemas en para crear índice..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+" Se recomienda CONSULTAR PROVEEDOR" TO mmSj
      CASE meRr=4 .AND. peRr=1705
           STORE "El Archivo no se puede abrir en forma exclusiva..."+ ;
                 CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Debe haber otro Usuario que se encuentre en este programa o use este Archivo..."  ;
                 TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=5 .AND. peRr=1705
           STORE "El Archivo no se puede abrir en forma exclusiva..."+ ;
                 CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Debe haber otro Usuario que se encuentre en este programa o use este Archivo..."  ;
                 TO mmSj
           WAIT WINDOW NOCLEAR NOWAIT ALLTRIM(mmSj)
           = INKEY(0, "HM")
           WAIT CLEAR
           CLOSE ALL
           RELEASE ALL
           QUIT
      CASE meRr=4 .AND. peRr=1707
           STORE SPACE(100) TO mmSj
           Use &mDBF Exclusive
      CASE meRr=6 .AND. peRr=36
           STORE "En la formulación está errado un parámetro..."+CHR(13)+ ;
                 CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Revisar la formulación o escoger otro Producto..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=6 .AND. peRr=1300
           STORE "En la formulación falta alguna función como el ,+,/,(,etc...."+ ;
                 CHR(13)+CHR(13) TO mmSj
           STORE mmSj+ ;
                 " Revisar la formulación o escoger otro Producto..." TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=8 .AND. peRr=36
           STORE k_Esc TO mkEy
      CASE meRr=8 .AND. peRr=1300
           STORE k_Esc TO mkEy
      CASE meRr=7 .AND. peRr=36
           STORE "" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=7 .AND. peRr=1300
           STORE "" TO mmSj
           STORE k_Esc TO mkEy
      CASE meRr=7 .AND. peRr=12
           STORE "" TO mmSj
           STORE k_Esc TO mkEy
      OTHERWISE
           STORE "Error: "+ALLTRIM(STR(ERROR(), 4, 0))+" "+MESSAGE() TO mmSj
           WAIT WINDOW NOCLEAR NOWAIT ALLTRIM(mmSj)
           = INKEY(0, "HM")
           WAIT CLEAR
           STORE SPACE(100) TO mmSj
           DO q1_0000a
           DO q2_0000a
           QUIT
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      WAIT WINDOW NOCLEAR NOWAIT STR(peRr, 5, 0)+": "+ALLTRIM(mmSj)
      = INKEY(0, "HM")
      WAIT CLEAR
      STORE SPACE(100) TO mmSj
 ENDIF
ENDPROC
*
PROCEDURE PIQ_0000a
 PRIVATE ppAn_piq
 Define Window pPAN_PIQ at mFI0,mCO0 to mFI0+4,mCO0+mUCO-1 in Screen Title "CARGARNDO PLAN IQ" System MDI NoClose NoFloat NoGrow NoMinimize NoZoom Style "NT" Font "&mLetAri",8 Color Scheme 9
 ACTIVATE WINDOW ppAn_piq
 DO CASE
      CASE FILE("C:\Archivos de programa\MagicLogic\Plan-IQ\PlanIQ.exe")
           RUN /N C:\Archivos de programa\MagicLogic\Plan-IQ\PlanIQ.exe
 ENDCASE
 DEACTIVATE WINDOW ppAn_piq
ENDPROC
*
PROCEDURE Par_FiCo
 STORE 0 TO mhLp
 STORE ROUND(SYSMETRIC(22)*0.0714284, 3) TO mwFi
 STORE ROUND(SYSMETRIC(1)*0.2, 3) TO mwCo
 DO paNtalla_1
 DO paNtalla_2
 DO CASE
      CASE mrEs="1"
           STORE 10 TO mtAm
      CASE mrEs$"23"
           STORE 11 TO mtAm
      OTHERWISE
           STORE 12 TO mtAm
 ENDCASE
 STORE mwCo-95 TO mmC1
 STORE (mwFi-22)/2 TO mxX1
 STORE (mwCo-50)/2 TO myY1
 DO coL_in1
 DO CASE
      CASE mrEs="1" .AND. mvIt<>2
           STORE mxX1+2 TO mxX1
      CASE mrEs="1"
           STORE mxX1+2 TO mxX1
 ENDCASE
ENDPROC
*
PROCEDURE Compila
 @ 0, 0 SAY "BMP\B_CUADRO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\I_CUADRO.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\R_CONS22.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PA00.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS02.JPG" BITMAP STYLE "Q"
 @ 0, 0 SAY "BMP\MNU_PS14.JPG" BITMAP STYLE "Q"
ENDPROC
*
PROCEDURE Pta_0000a
 IF ptPo="1"
      IF mwEr="T"
           DO coLneb
           CLEAR
           @ 0, 0 SAY " "
      ELSE
           @0,0 Say "&mPTA" BitMap Style "Q" Stretch
           IF mkEy=k_Esc
                RETURN
           ENDIF
      ENDIF
      STORE mrEs TO mrSs, mrS1
 ENDIF
ENDPROC
*
