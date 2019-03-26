 ZOOM WINDOW scReen MAX
 RELEASE ALL
 RELEASE MENU ALL
 RELEASE POPUPS ALL
 RELEASE WINDOW alL
 CLEAR ALL
 CLEAR MACROS
 CLEAR MEMO
 CLEAR WINDOW
 CLEAR RESOURCES
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
 SET EXCLUSIVE ON
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
 = NUMLOCK(.T.)
 = CAPSLOCK(.F.)
 MODIFY WINDOW scReen FONT "Arial", 8 STYLE "NQ" TITLE  ;
        "Actualizacion de Archivos Sam/Vitral"
 IF  .NOT. FILE("MDSETUP.DLL")
      WAIT WINDOW NOWAIT ALLTRIM( ;
           "Este programa no se encuentra en la carpeta del Sistema")
      = INKEY(2)
      QUIT
 ENDIF
 USE SHARED MDSETUP.DLL
 PUBLIC mtMa, mcIi, mpAl, mkEy, muNi, muN1, muN2, mpTh, mpT1, mpT2, meXt, mcDx
 PUBLIC mdBf, mdB1, mcIa, mpAt, mpTt, mfRa, vlIn, clIn, moPc, meRr, mlLz, mpSs
 PUBLIC pnUm, pnU1, mmSj, k_Esc, mlI1, mlI2, mcL1, mcL2, mcL3, mcL4
 STORE 01 TO mlI1
 STORE INT(WROWS("")-1) TO mlI2
 STORE 01 TO mcL1
 STORE INT((WCOLS("")/2)-2) TO mcL2
 STORE mcL2+4 TO mcL3
 STORE INT(WCOLS("")-1) TO mcL4
 STORE 27 TO k_Esc
 STORE 20 TO mtMa
 STORE 99 TO mkEy
 STORE "01" TO mcIi
 STORE "N" TO mpAl
 STORE unI TO muNi, muN1, muN2
 STORE ".DBF" TO meXt
 STORE ".CDX" TO mcDx
 STORE "" TO mdBf, mdB1, mcIa
 STORE 02 TO vlIn, clIn
 STORE ALLTRIM(paTh) TO mpTh
 STORE mpTh+"PCTOSPT\" TO mpT1
 STORE mpTh+"SPTTOPC\" TO mpT2
 IF LEN(ALLTRIM(muNi))=0
      STORE mpTh TO mpAt
      STORE mpTh+"COPIA\" TO mpTt
 ELSE
      STORE muNi+":"+mpTh TO mpAt
      STORE muNi+":"+mpTh+"COPIA\" TO mpTt
 ENDIF
 CLOSE DATABASES
 If .not.Directory("&mPTT")
      MD &mPTT
 ENDIF
 SET COLOR TO RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170),
 CLEAR
 @ mlI1, mcL1 TO mlI2, mcL2
 @ mlI1, mcL3 TO mlI2, mcL4
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Sistema?"
 IF moPc$"Ss"
      @ vlIn, mcL1+1 SAY "Cambio de Sistema..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      STORE mpTt+"SYSTEMX.DLL" TO mdBf
      If File("&mDBF")
           Delete File "&mDBF"
      ENDIF
      DO baCkup WITH "0", "", "SYSTEMX.DLL"
      DO boRr_act WITH "0", "", "SYSTEMX.DLL"
      DO siS_0000a IN PUX0000A
      DO coP_backup WITH "0", "", mpTt, "SYSTEMX", ".DLL"
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Impresoras?"
 IF moPc$"Ss"
      @ vlIn, mcL1+1 SAY "Cambio de Impresoras..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      DO boR_ind WITH "0", "", "PRINTERS"
      DO boRra_cop WITH "0", mpTt, "PRINTERS.DBF"
      DO baCkup WITH "0", "", "PRINTERS.DBF"
      DO boRr_act WITH "0", "", "PRINTERS.DBF"
      DO imP_0000a IN PUX0000A
      STORE "PRINTERS.DBF" TO mdBf
      STORE mpTt+"PRINTERS.DBF" TO mdB1
      Use &mDBF
      DELETE ALL
      PACK
      CLOSE DATABASES
      DO coP_backup WITH "0", "", mpTt, "PRINTERS", ".DBF"
      Use &mDBF
      SET FILTER TO f9990cod="FE"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "FE"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="BE"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "BE"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="FC"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "FC"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="BC"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "BC"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="N1"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "N1"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="N2"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "N2"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="N3"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "N3"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="N4"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "N4"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      SET FILTER TO f9990cod="ER"
      GOTO TOP
      IF BOF() .OR. EOF()
           APPEND BLANK
           REPLACE f9990cod WITH "ER"
           REPLACE f9990des WITH "PdfCreator"
           REPLACE f9990prt WITH "1"
           REPLACE f9990ini WITH 0
           REPLACE f9990sub WITH 0
           REPLACE f9990cln WITH 0
      ENDIF
      REPLACE f9990ini WITH 0 FOR f9990ini<=0
      REPLACE f9990sub WITH 0 FOR f9990sub<=0
      REPLACE f9990cln WITH 0 FOR f9990cln<=0
      REPLACE f9990cln WITH 13 FOR f9990cln=0 .AND. f9990cod="CT"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="DE"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D1"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D2"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D3"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D4"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D5"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D6"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D7"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D8"
      REPLACE f9990cln WITH 6 FOR f9990cln=0 .AND. f9990cod="D9"
      CLOSE DATABASES
 ENDIF
 STORE mpAt+"IDENTI2.DBB" TO mdBf
 STORE 01 TO meRr
 Use &mDBF Exclusive
 IF mkEy=k_Esc
      QUIT
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE ciA TO mcIa
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo IDENTI2?"
 IF moPc$"Ss"
      DO caM_sim
 ENDIF
 CLOSE DATABASES
 = INKEY(0.01)
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo de Ubicación?"
 IF moPc$"Ss"
      STORE mpAt+"\IDENTI2.DBB" TO mdBf
      STORE 01 TO meRr
      Use &mDBF Exclusive
      IF mkEy=k_Esc
           QUIT
      ENDIF
      STORE 00 TO meRr
      DO caM_ubic
 ENDIF
 CLOSE DATABASES
 = INKEY(0.01)
 STORE mpAt+mcIa+"\IDENTI1.DBB" TO mdBf
 STORE 01 TO meRr
 Use &mDBF Exclusive
 IF mkEy=k_Esc
      QUIT
 ENDIF
 STORE 00 TO meRr
 GOTO TOP
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo de Identificación?"
 IF moPc$"Ss"
      DO caM_iden
 ENDIF
 STORE psS TO mpSs, mnPs
 STORE llZ TO mlLz
 CLOSE DATABASES
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo de Menús?"
 IF moPc$"Ss"
      DO caM_menu
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo de Usuarios?"
 IF moPc$"Ss"
      STORE mpAt+mcIa+"\IDENTIF.DBB" TO mdBf
      STORE 01 TO meRr
      Use &mDBF Exclusive
      IF mkEy=k_Esc
           QUIT
      ENDIF
      STORE 00 TO meRr
      @ vlIn, mcL1+1 SAY "Archivo de Usuarios..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      PRIVATE psW0_sr8, psW0_sr9, psW0_sr0, psW0_sra, psW0_srb, psW0_src,  ;
              psW0_srd, psW0_sre, psW0_srf, psW0_srg
      STORE FCOUNT() TO pnUm
      STORE 01 TO pnU1
      STORE 00 TO psW0_sr8, psW0_sr9, psW0_sr0, psW0_sra, psW0_srb,  ;
            psW0_src, psW0_srd, psW0_sre, psW0_srf, psW0_srg
      DO WHILE .T.
           IF FIELD(pnU1)="FIDESR8"
                STORE 1 TO psW0_sr8
           ENDIF
           IF FIELD(pnU1)="FIDESR9"
                STORE 1 TO psW0_sr9
           ENDIF
           IF FIELD(pnU1)="FIDESR0"
                STORE 1 TO psW0_sr0
           ENDIF
           IF FIELD(pnU1)="FIDESRA"
                STORE 1 TO psW0_sra
           ENDIF
           IF FIELD(pnU1)="FIDESRB"
                STORE 1 TO psW0_srb
           ENDIF
           IF FIELD(pnU1)="FIDESRC"
                STORE 1 TO psW0_src
           ENDIF
           IF FIELD(pnU1)="FIDESRD"
                STORE 1 TO psW0_srd
           ENDIF
           IF FIELD(pnU1)="FIDESRE"
                STORE 1 TO psW0_sre
           ENDIF
           IF FIELD(pnU1)="FIDESRF"
                STORE 1 TO psW0_srf
           ENDIF
           IF FIELD(pnU1)="FIDESRG"
                STORE 1 TO psW0_srg
           ENDIF
           STORE pnU1+1 TO pnU1
           IF pnU1>pnUm
                EXIT
           ENDIF
      ENDDO
      IF psW0_sr8=0
           @ clIn, mcL3+1 SAY "Campo SR8" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESR8 C(3)
           REPLACE fiDesr8 WITH SPACE(03) ALL
      ENDIF
      IF psW0_sr9=0
           @ clIn, mcL3+1 SAY "Campo SR9" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESR9 C(3)
           REPLACE fiDesr9 WITH SPACE(03) ALL
      ENDIF
      IF psW0_sr0=0
           @ clIn, mcL3+1 SAY "Campo SR0" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESR0 C(3)
           REPLACE fiDesr0 WITH SPACE(03) ALL
      ENDIF
      IF psW0_sra=0
           @ clIn, mcL3+1 SAY "Campo SRA" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRA C(3)
           REPLACE fiDesra WITH SPACE(03) ALL
      ENDIF
      IF psW0_srb=0
           @ clIn, mcL3+1 SAY "Campo SRB" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRB C(3)
           REPLACE fiDesrb WITH SPACE(03) ALL
      ENDIF
      IF psW0_src=0
           @ clIn, mcL3+1 SAY "Campo SRC" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRC C(3)
           REPLACE fiDesrc WITH SPACE(03) ALL
      ENDIF
      IF psW0_srd=0
           @ clIn, mcL3+1 SAY "Campo SRD" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRD C(3)
           REPLACE fiDesrd WITH SPACE(03) ALL
      ENDIF
      IF psW0_sre=0
           @ clIn, mcL3+1 SAY "Campo SRE" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRE C(3)
           REPLACE fiDesre WITH SPACE(03) ALL
      ENDIF
      IF psW0_srf=0
           @ clIn, mcL3+1 SAY "Campo SRF" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRF C(3)
           REPLACE fiDesrf WITH SPACE(03) ALL
      ENDIF
      IF psW0_srg=0
           @ clIn, mcL3+1 SAY "Campo SRG" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column FIDESRG C(3)
           REPLACE fiDesrg WITH SPACE(03) ALL
      ENDIF
      REPLACE fiDesr1 WITH "oon" FOR LEN(ALLTRIM(fiDesr1))=0
      REPLACE fiDesr2 WITH "oon" FOR LEN(ALLTRIM(fiDesr2))=0
      REPLACE fiDesr3 WITH "oon" FOR LEN(ALLTRIM(fiDesr3))=0
      REPLACE fiDesr4 WITH "oon" FOR LEN(ALLTRIM(fiDesr4))=0
      REPLACE fiDesr5 WITH "oon" FOR LEN(ALLTRIM(fiDesr5))=0
      REPLACE fiDesr6 WITH "oon" FOR LEN(ALLTRIM(fiDesr6))=0
      REPLACE fiDesr7 WITH "oon" FOR LEN(ALLTRIM(fiDesr7))=0
      REPLACE fiDesr8 WITH "oon" FOR LEN(ALLTRIM(fiDesr8))=0
      REPLACE fiDesr9 WITH "oon" FOR LEN(ALLTRIM(fiDesr9))=0
      REPLACE fiDesr0 WITH "oon" FOR LEN(ALLTRIM(fiDesr0))=0
      REPLACE fiDesra WITH "oon" FOR LEN(ALLTRIM(fiDesra))=0
      REPLACE fiDesrb WITH "oon" FOR LEN(ALLTRIM(fiDesrb))=0
      REPLACE fiDesrc WITH "oon" FOR LEN(ALLTRIM(fiDesrc))=0
      REPLACE fiDesrd WITH "oon" FOR LEN(ALLTRIM(fiDesrd))=0
      REPLACE fiDesre WITH "oon" FOR LEN(ALLTRIM(fiDesre))=0
      REPLACE fiDesrf WITH "oon" FOR LEN(ALLTRIM(fiDesrf))=0
      REPLACE fiDesrg WITH "oon" FOR LEN(ALLTRIM(fiDesrg))=0
      CLOSE DATABASES
      RELEASE psW0_sr8, psW0_sr9, psW0_sr0, psW0_sra, psW0_srb, psW0_src,  ;
              psW0_srd, psW0_sre, psW0_srf, psW0_srg
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo de Numeracion?"
 IF moPc$"Ss"
      STORE mpAt+"\FU019998.DBF" TO mdBf
      STORE 01 TO meRr
      Use &mDBF Exclusive
      IF mkEy=k_Esc
           QUIT
      ENDIF
      STORE 00 TO meRr
      Alter Table &mDBF Alter Column F9998NUM N(7,0)
      ZAP
      APPEND BLANK
      REPLACE f9998num WITH 1
      REPLACE f9998des WITH "Uno"
      APPEND BLANK
      REPLACE f9998num WITH 2
      REPLACE f9998des WITH "Dos"
      APPEND BLANK
      REPLACE f9998num WITH 3
      REPLACE f9998des WITH "Tres"
      APPEND BLANK
      REPLACE f9998num WITH 4
      REPLACE f9998des WITH "Cuatro"
      APPEND BLANK
      REPLACE f9998num WITH 5
      REPLACE f9998des WITH "Cinco"
      APPEND BLANK
      REPLACE f9998num WITH 6
      REPLACE f9998des WITH "Seis"
      APPEND BLANK
      REPLACE f9998num WITH 7
      REPLACE f9998des WITH "Siete"
      APPEND BLANK
      REPLACE f9998num WITH 8
      REPLACE f9998des WITH "Ocho"
      APPEND BLANK
      REPLACE f9998num WITH 9
      REPLACE f9998des WITH "Nueve"
      APPEND BLANK
      REPLACE f9998num WITH 10
      REPLACE f9998des WITH "Diez"
      APPEND BLANK
      REPLACE f9998num WITH 11
      REPLACE f9998des WITH "Once"
      APPEND BLANK
      REPLACE f9998num WITH 12
      REPLACE f9998des WITH "Doce"
      APPEND BLANK
      REPLACE f9998num WITH 13
      REPLACE f9998des WITH "Trece"
      APPEND BLANK
      REPLACE f9998num WITH 14
      REPLACE f9998des WITH "Catorce"
      APPEND BLANK
      REPLACE f9998num WITH 15
      REPLACE f9998des WITH "Quince"
      APPEND BLANK
      REPLACE f9998num WITH 16
      REPLACE f9998des WITH "Dieciseis"
      APPEND BLANK
      REPLACE f9998num WITH 17
      REPLACE f9998des WITH "Diecisiete"
      APPEND BLANK
      REPLACE f9998num WITH 18
      REPLACE f9998des WITH "Dieciocho"
      APPEND BLANK
      REPLACE f9998num WITH 19
      REPLACE f9998des WITH "Diecinueve"
      APPEND BLANK
      REPLACE f9998num WITH 20
      REPLACE f9998des WITH "Veinte"
      APPEND BLANK
      REPLACE f9998num WITH 21
      REPLACE f9998des WITH "Ventiuno"
      APPEND BLANK
      REPLACE f9998num WITH 22
      REPLACE f9998des WITH "Ventidos"
      APPEND BLANK
      REPLACE f9998num WITH 23
      REPLACE f9998des WITH "Ventitres"
      APPEND BLANK
      REPLACE f9998num WITH 24
      REPLACE f9998des WITH "Venticuatro"
      APPEND BLANK
      REPLACE f9998num WITH 25
      REPLACE f9998des WITH "Venticinco"
      APPEND BLANK
      REPLACE f9998num WITH 26
      REPLACE f9998des WITH "Ventiseis"
      APPEND BLANK
      REPLACE f9998num WITH 27
      REPLACE f9998des WITH "Ventisiete"
      APPEND BLANK
      REPLACE f9998num WITH 28
      REPLACE f9998des WITH "Ventiocho"
      APPEND BLANK
      REPLACE f9998num WITH 29
      REPLACE f9998des WITH "Ventinueve"
      APPEND BLANK
      REPLACE f9998num WITH 30
      REPLACE f9998des WITH "Treinta"
      APPEND BLANK
      REPLACE f9998num WITH 40
      REPLACE f9998des WITH "Cuarenta"
      APPEND BLANK
      REPLACE f9998num WITH 50
      REPLACE f9998des WITH "Cincuenta"
      APPEND BLANK
      REPLACE f9998num WITH 60
      REPLACE f9998des WITH "Sesenta"
      APPEND BLANK
      REPLACE f9998num WITH 70
      REPLACE f9998des WITH "Setenta"
      APPEND BLANK
      REPLACE f9998num WITH 80
      REPLACE f9998des WITH "Ochenta"
      APPEND BLANK
      REPLACE f9998num WITH 90
      REPLACE f9998des WITH "Noventa"
      APPEND BLANK
      REPLACE f9998num WITH 100
      REPLACE f9998des WITH "Cien"
      APPEND BLANK
      REPLACE f9998num WITH 200
      REPLACE f9998des WITH "Doscientos"
      APPEND BLANK
      REPLACE f9998num WITH 300
      REPLACE f9998des WITH "Trescientos"
      APPEND BLANK
      REPLACE f9998num WITH 400
      REPLACE f9998des WITH "Cuatrocientos"
      APPEND BLANK
      REPLACE f9998num WITH 500
      REPLACE f9998des WITH "Quinientos"
      APPEND BLANK
      REPLACE f9998num WITH 600
      REPLACE f9998des WITH "Seicientos"
      APPEND BLANK
      REPLACE f9998num WITH 700
      REPLACE f9998des WITH "Setecientos"
      APPEND BLANK
      REPLACE f9998num WITH 800
      REPLACE f9998des WITH "Ochocientos"
      APPEND BLANK
      REPLACE f9998num WITH 900
      REPLACE f9998des WITH "Novecientos"
      APPEND BLANK
      REPLACE f9998num WITH 1000
      REPLACE f9998des WITH "Mil"
      APPEND BLANK
      REPLACE f9998num WITH 2000
      REPLACE f9998des WITH "Dos Mil"
      APPEND BLANK
      REPLACE f9998num WITH 3000
      REPLACE f9998des WITH "Tres Mil"
      APPEND BLANK
      REPLACE f9998num WITH 4000
      REPLACE f9998des WITH "Cuatro Mil"
      APPEND BLANK
      REPLACE f9998num WITH 5000
      REPLACE f9998des WITH "Cinco Mil"
      APPEND BLANK
      REPLACE f9998num WITH 6000
      REPLACE f9998des WITH "Seis Mil"
      APPEND BLANK
      REPLACE f9998num WITH 7000
      REPLACE f9998des WITH "Siete Mil"
      APPEND BLANK
      REPLACE f9998num WITH 8000
      REPLACE f9998des WITH "Ocho Mil"
      APPEND BLANK
      REPLACE f9998num WITH 9000
      REPLACE f9998des WITH "Nueve Mil"
      APPEND BLANK
      REPLACE f9998num WITH 10000
      REPLACE f9998des WITH "Diez Mil"
      APPEND BLANK
      REPLACE f9998num WITH 100000
      REPLACE f9998des WITH "Cien Mil"
      APPEND BLANK
      REPLACE f9998num WITH 1000000
      REPLACE f9998des WITH "Un Millon"
      APPEND BLANK
      REPLACE f9998num WITH 2000000
      REPLACE f9998des WITH "Dos Millones"
      APPEND BLANK
      REPLACE f9998num WITH 3000000
      REPLACE f9998des WITH "Tres Millones"
      APPEND BLANK
      REPLACE f9998num WITH 4000000
      REPLACE f9998des WITH "Cuatro Millones"
      APPEND BLANK
      REPLACE f9998num WITH 5000000
      REPLACE f9998des WITH "Cinco Millones"
      APPEND BLANK
      REPLACE f9998num WITH 6000000
      REPLACE f9998des WITH "Seis Millones"
      APPEND BLANK
      REPLACE f9998num WITH 7000000
      REPLACE f9998des WITH "Siete Millones"
      APPEND BLANK
      REPLACE f9998num WITH 8000000
      REPLACE f9998des WITH "Ocho Millones"
      APPEND BLANK
      REPLACE f9998num WITH 9000000
      REPLACE f9998des WITH "Nueve Millones"
      CLOSE DATABASES
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea actualizar Archivo de Datos Generales?"
 IF moPc$"Ss"
      STORE mpAt+"\FU019000.DBF" TO mdBf
      STORE 01 TO meRr
      Use &mDBF Exclusive
      IF mkEy=k_Esc
           QUIT
      ENDIF
      STORE 00 TO meRr
      @ vlIn, mcL1+1 SAY "Archivo de Datos Generales..." FONT "Arial", 12  ;
        STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      PRIVATE psW0_ppe, psW0_pdt, psW0_mdt, psW0_cm1, psW0_uit
      PRIVATE psW0_dao, psW0_mmm, psW0_emp, psW0_vsb, psW0_vd1
      PRIVATE psW0_vd2, psW0_vh1, psW0_vh2, psW0_csb, psW0_cd1
      PRIVATE psW0_cd2, psW0_ch1, psW0_ch2
      STORE FCOUNT() TO pnUm
      STORE 01 TO pnU1
      STORE 00 TO psW0_ppe, psW0_pdt, psW0_mdt, psW0_cm1, psW0_uit
      STORE 00 TO psW0_dao, psW0_mmm, psW0_emp, psW0_vsb, psW0_vd1
      STORE 00 TO psW0_vd2, psW0_vh1, psW0_vh2, psW0_csb, psW0_cd1
      STORE 00 TO psW0_cd2, psW0_ch1, psW0_ch2
      DO WHILE .T.
           IF FIELD(pnU1)="F9000PPE"
                STORE 1 TO psW0_ppe
           ENDIF
           IF FIELD(pnU1)="F9000PDT"
                STORE 1 TO psW0_pdt
           ENDIF
           IF FIELD(pnU1)="F9000MDT"
                STORE 1 TO psW0_mdt
           ENDIF
           IF FIELD(pnU1)="F9000CM1"
                STORE 1 TO psW0_cm1
           ENDIF
           IF FIELD(pnU1)="F9000UIT"
                STORE 1 TO psW0_uit
           ENDIF
           IF FIELD(pnU1)="F9000DAO"
                STORE 1 TO psW0_dao
           ENDIF
           IF FIELD(pnU1)="F9000MMM"
                STORE 1 TO psW0_mmm
           ENDIF
           IF FIELD(pnU1)="F9000EMP"
                STORE 1 TO psW0_emp
           ENDIF
           IF FIELD(pnU1)="F9000VSB"
                STORE 1 TO psW0_vsb
           ENDIF
           IF FIELD(pnU1)="F9000VD1"
                STORE 1 TO psW0_vd1
           ENDIF
           IF FIELD(pnU1)="F9000VD2"
                STORE 1 TO psW0_vd2
           ENDIF
           IF FIELD(pnU1)="F9000VH1"
                STORE 1 TO psW0_vh1
           ENDIF
           IF FIELD(pnU1)="F9000VH2"
                STORE 1 TO psW0_vh2
           ENDIF
           IF FIELD(pnU1)="F9000CSB"
                STORE 1 TO psW0_csb
           ENDIF
           IF FIELD(pnU1)="F9000CD1"
                STORE 1 TO psW0_cd1
           ENDIF
           IF FIELD(pnU1)="F9000CD2"
                STORE 1 TO psW0_cd2
           ENDIF
           IF FIELD(pnU1)="F9000CH1"
                STORE 1 TO psW0_ch1
           ENDIF
           IF FIELD(pnU1)="F9000CH2"
                STORE 1 TO psW0_ch2
           ENDIF
           STORE pnU1+1 TO pnU1
           IF pnU1>pnUm
                EXIT
           ENDIF
      ENDDO
      IF psW0_ppe=0
           @ clIn, mcL3+1 SAY "Campo PPE" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000PPE N(6,3)
           REPLACE f9000ppe WITH 2
           DO veR_lin
      ENDIF
      IF psW0_pdt=0
           @ clIn, mcL3+1 SAY "Campo PDT" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000PDT N(6,3)
           REPLACE f9000pdt WITH 12
           DO veR_lin
      ENDIF
      IF psW0_mdt=0
           @ clIn, mcL3+1 SAY "Campo MDT" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000MDT N(12,2)
           REPLACE f9000mdt WITH 700
           DO veR_lin
      ENDIF
      IF psW0_cm1=0
           @ clIn, mcL3+1 SAY "Campo CM1" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000CM1 C(80)
           REPLACE f9000cm1 WITH " "
           DO veR_lin
      ENDIF
      IF psW0_uit=0
           @ clIn, mcL3+1 SAY "Campo UIT" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000UIT N(12,2)
           REPLACE f9000uit WITH 3600
           DO veR_lin
      ENDIF
      IF psW0_dao=0
           @ clIn, mcL3+1 SAY "Campo DAO" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000DAO N(12,2)
           REPLACE f9000dao WITH 240000
           DO veR_lin
      ENDIF
      IF psW0_mmm=0
           @ clIn, mcL3+1 SAY "Campo MMM" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000MMM N(12,2)
           REPLACE f9000mmm WITH 0
           DO veR_lin
      ENDIF
      IF psW0_emp=0
           @ clIn, mcL3+1 SAY "Campo EMP" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000EMP C(04)
           REPLACE f9000emp WITH SPACE(04)
           DO veR_lin
      ENDIF
      IF psW0_vsb=0
           @ clIn, mcL3+1 SAY "Campo VSB" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000VSB C(04)
           REPLACE f9000vsb WITH SPACE(04)
           DO veR_lin
      ENDIF
      IF psW0_vd1=0
           @ clIn, mcL3+1 SAY "Campo VD1" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000VD1 C(12)
           REPLACE f9000vd1 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_vd2=0
           @ clIn, mcL3+1 SAY "Campo VD2" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000VD2 C(12)
           REPLACE f9000vd2 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_vh1=0
           @ clIn, mcL3+1 SAY "Campo VH1" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000VH1 C(12)
           REPLACE f9000vh1 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_vh2=0
           @ clIn, mcL3+1 SAY "Campo VH2" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000VH2 C(12)
           REPLACE f9000vh2 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_csb=0
           @ clIn, mcL3+1 SAY "Campo CSB" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000CSB C(04)
           REPLACE f9000csb WITH SPACE(04)
           DO veR_lin
      ENDIF
      IF psW0_cd1=0
           @ clIn, mcL3+1 SAY "Campo CD1" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000CD1 C(12)
           REPLACE f9000cd1 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_cd2=0
           @ clIn, mcL3+1 SAY "Campo CD2" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000CD2 C(12)
           REPLACE f9000cd2 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_ch1=0
           @ clIn, mcL3+1 SAY "Campo CH1" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000CH1 C(12)
           REPLACE f9000ch1 WITH SPACE(12)
           DO veR_lin
      ENDIF
      IF psW0_ch2=0
           @ clIn, mcL3+1 SAY "Campo CH2" FONT "Arial", 8 STYLE "NT"
           Alter Table &mDBF Add Column F9000CH2 C(12)
           REPLACE f9000ch2 WITH SPACE(12)
           DO veR_lin
      ENDIF
      CLOSE DATABASES
      RELEASE psW0_ppe, psW0_pdt, psW0_mdt, psW0_cm1, psW0_uit
      RELEASE psW0_dao, psW0_mmm, psW0_emp, psW0_vsb, psW0_vd1
      RELEASE psW0_vd2, psW0_vh1, psW0_vh2, psW0_csb, psW0_cd1
      RELEASE psW0_cd2, psW0_ch1, psW0_ch2
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea continuar con el resto de Archivos?"
 IF moPc$"Nn"
      QUIT
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea Borrar Indices?"
 IF moPc$"Ss"
      @ vlIn, mcL1+1 SAY "Borra Indices..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      DO boR_arc WITH "1", mpAt, "FV011103", "DBF"
      DO boR_arc WITH "1", mpAt, "FV011103", "CDX"
      DO boR_arc WITH "1", mpAt, "FV011105", "DBF"
      DO boR_arc WITH "1", mpAt, "FV011105", "CDX"
      DO boR_ind WITH "1", mpAt, "FA012101"
      DO boR_ind WITH "1", mpAt, "FA012102"
      DO boR_ind WITH "1", mpAt, "FA012105"
      DO boR_ind WITH "1", mpAt, "FA012106"
      DO boR_ind WITH "1", mpAt, "FA012111"
      DO boR_ind WITH "1", mpAt, "FA012112"
      DO boR_ind WITH "1", mpAt, "FA012118"
      DO boR_ind WITH "1", mpAt, "FA012400"
      DO boR_ind WITH "1", mpAt, "FA012401"
      DO boR_ind WITH "1", mpAt, "FA012402"
      DO boR_ind WITH "1", mpAt, "FA012403"
      DO boR_ind WITH "1", mpAt, "FA012404"
      DO boR_ind WITH "1", mpAt, "FA012600"
      DO boR_ind WITH "1", mpAt, "FA012601"
      DO boR_ind WITH "1", mpAt, "FA012602"
      DO boR_ind WITH "1", mpAt, "FA012603"
      DO boR_ind WITH "1", mpAt, "FA012604"
      DO boR_ind WITH "1", mpAt, "FA012700"
      DO boR_ind WITH "1", mpAt, "FA012701"
      DO boR_ind WITH "1", mpAt, "FA012702"
      DO boR_ind WITH "1", mpAt, "FA012703"
      DO boR_ind WITH "1", mpAt, "FA012800"
      DO boR_ind WITH "1", mpAt, "FA012801"
      DO boR_ind WITH "1", mpAt, "FA012802"
      DO boR_ind WITH "1", mpAt, "FA012803"
      DO boR_ind WITH "1", mpAt, "FA012910"
      DO boR_ind WITH "1", mpAt, "FA012911"
      DO boR_ind WITH "1", mpAt, "FA012920"
      DO boR_ind WITH "1", mpAt, "FA012921"
      DO boR_ind WITH "1", mpAt, "FA012922"
      DO boR_ind WITH "1", mpAt, "FA012990"
      DO boR_ind WITH "1", mpAt, "FA012991"
      DO boR_ind WITH "1", mpAt, "FC013110"
      DO boR_ind WITH "1", mpAt, "FC013111"
      DO boR_ind WITH "1", mpAt, "FC013210"
      DO boR_ind WITH "1", mpAt, "FC013500"
      DO boR_ind WITH "1", mpAt, "FC013501"
      DO boR_ind WITH "1", mpAt, "FC013502"
      DO boR_ind WITH "1", mpAt, "FC013510"
      DO boR_ind WITH "1", mpAt, "FC013511"
      DO boR_ind WITH "1", mpAt, "FC013520"
      DO boR_ind WITH "1", mpAt, "FC013521"
      DO boR_ind WITH "1", mpAt, "FC013530"
      DO boR_ind WITH "1", mpAt, "FC013531"
      DO boR_ind WITH "1", mpAt, "FC013540"
      DO boR_ind WITH "1", mpAt, "FC013541"
      DO boR_ind WITH "1", mpAt, "FC013600"
      DO boR_ind WITH "1", mpAt, "FC013601"
      DO boR_ind WITH "1", mpAt, "FC013602"
      DO boR_ind WITH "1", mpAt, "FC013610"
      DO boR_ind WITH "1", mpAt, "FC013611"
      DO boR_ind WITH "1", mpAt, "FK014100"
      DO boR_ind WITH "1", mpAt, "FK014110"
      DO boR_ind WITH "1", mpAt, "FK014120"
      DO boR_ind WITH "1", mpAt, "FK014130"
      DO boR_ind WITH "1", mpAt, "FK014140"
      DO boR_ind WITH "1", mpAt, "FK014200"
      DO boR_ind WITH "1", mpAt, "FK014210"
      DO boR_ind WITH "1", mpAt, "FK014211"
      DO boR_ind WITH "1", mpAt, "FK014220"
      DO boR_ind WITH "1", mpAt, "FK014221"
      DO boR_ind WITH "1", mpAt, "FK014230"
      DO boR_ind WITH "1", mpAt, "FK014240"
      DO boR_ind WITH "1", mpAt, "FK014241"
      DO boR_ind WITH "1", mpAt, "FK014299"
      DO boR_ind WITH "1", mpAt, "FU019110"
      DO boR_ind WITH "1", mpAt, "FU019111"
      DO boR_ind WITH "1", mpAt, "FU019112"
      DO boR_ind WITH "1", mpAt, "FU019113"
      DO boR_ind WITH "1", mpAt, "FU019114"
      DO boR_ind WITH "1", mpAt, "FU019115"
      DO boR_ind WITH "1", mpAt, "FU019116"
      DO boR_ind WITH "1", mpAt, "FU019210"
      DO boR_ind WITH "1", mpAt, "FU019211"
      DO boR_ind WITH "1", mpAt, "FU019212"
      DO boR_ind WITH "1", mpAt, "FU019213"
      DO boR_ind WITH "1", mpAt, "FU019214"
      DO boR_ind WITH "1", mpAt, "FU019215"
      DO boR_ind WITH "1", mpAt, "FU019216"
      DO boR_ind WITH "1", mpAt, "FU019217"
      DO boR_ind WITH "1", mpAt, "FU019218"
      DO boR_ind WITH "1", mpAt, "FU019219"
      DO boR_ind WITH "1", mpAt, "FU019220"
      DO boR_ind WITH "1", mpAt, "FU019221"
      DO boR_ind WITH "1", mpAt, "FU019222"
      DO boR_ind WITH "1", mpAt, "FU019223"
      DO boR_ind WITH "1", mpAt, "FU019224"
      DO boR_ind WITH "1", mpAt, "FU019225"
      DO boR_ind WITH "1", mpAt, "FU019226"
      DO boR_ind WITH "1", mpAt, "FU019227"
      DO boR_ind WITH "1", mpAt, "FU019228"
      DO boR_ind WITH "1", mpAt, "FU019229"
      DO boR_ind WITH "1", mpAt, "FU019311"
      DO boR_ind WITH "1", mpAt, "FU019312"
      DO boR_ind WITH "1", mpAt, "FU019313"
      DO boR_ind WITH "1", mpAt, "FU019314"
      DO boR_ind WITH "1", mpAt, "FU019315"
      DO boR_ind WITH "1", mpAt, "FU019316"
      DO boR_ind WITH "1", mpAt, "FU019317"
      DO boR_ind WITH "1", mpAt, "FU019318"
      DO boR_ind WITH "1", mpAt, "FU019319"
      DO boR_ind WITH "1", mpAt, "FU019397"
      DO boR_ind WITH "1", mpAt, "FU019510"
      DO boR_ind WITH "1", mpAt, "FU019511"
      DO boR_ind WITH "1", mpAt, "FU019512"
      DO boR_ind WITH "1", mpAt, "FU019513"
      DO boR_ind WITH "1", mpAt, "FU019514"
      DO boR_ind WITH "1", mpAt, "FU019515"
      DO boR_ind WITH "1", mpAt, "FU019991"
      DO boR_ind WITH "1", mpAt, "FU019999"
      DO boR_ind WITH "1", mpAt, "FV011101"
      DO boR_ind WITH "1", mpAt, "FV011102"
      DO boR_ind WITH "1", mpAt, "FV011103"
      DO boR_ind WITH "1", mpAt, "FV011104"
      DO boR_ind WITH "1", mpAt, "FV011200"
      DO boR_ind WITH "1", mpAt, "FV011201"
      DO boR_ind WITH "1", mpAt, "FV011202"
      DO boR_ind WITH "1", mpAt, "FV011203"
      DO boR_ind WITH "1", mpAt, "FV011204"
      DO boR_ind WITH "1", mpAt, "FV011300"
      DO boR_ind WITH "1", mpAt, "FV011301"
      DO boR_ind WITH "1", mpAt, "FV011302"
      DO boR_ind WITH "1", mpAt, "FV011303"
      DO boR_ind WITH "1", mpAt, "FV011304"
      DO boR_ind WITH "1", mpAt, "FV011305"
      CLOSE DATABASES
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea Borrar Copia?"
 IF moPc$"Ss"
      @ vlIn, mcL1+1 SAY "Borra Copia..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      DO boRra_cop WITH "1", mpTt, "FA012101.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012102.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012105.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012106.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012111.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012112.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012118.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012119.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012400.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012401.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012402.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012403.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012404.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012600.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012601.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012602.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012603.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012604.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012700.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012701.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012702.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012703.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012800.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012801.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012802.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012803.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012910.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012911.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012920.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012921.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012922.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012990.DBF"
      DO boRra_cop WITH "1", mpTt, "FA012991.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013110.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013111.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013210.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013500.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013501.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013502.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013510.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013511.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013520.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013521.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013530.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013531.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013540.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013541.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013600.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013601.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013602.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013610.DBF"
      DO boRra_cop WITH "1", mpTt, "FC013611.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014100.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014110.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014120.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014130.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014140.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014200.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014210.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014211.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014220.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014221.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014230.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014240.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014241.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014299.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014998.DBF"
      DO boRra_cop WITH "1", mpTt, "FK014999.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019110.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019111.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019112.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019113.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019114.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019115.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019116.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019210.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019211.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019212.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019213.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019214.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019215.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019216.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019217.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019218.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019219.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019220.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019221.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019222.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019223.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019224.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019225.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019226.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019227.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019228.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019229.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019311.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019312.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019313.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019314.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019315.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019316.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019317.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019318.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019319.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019397.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019510.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019511.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019512.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019513.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019514.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019515.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019991.DBF"
      DO boRra_cop WITH "1", mpTt, "FU019999.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011101.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011102.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011103.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011104.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011200.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011201.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011202.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011203.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011204.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011300.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011301.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011302.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011303.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011304.DBF"
      DO boRra_cop WITH "1", mpTt, "FV011305.DBF"
      CLOSE DATABASES
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea Sacar Backup?"
 IF moPc$"Ss"
      @ vlIn, mcL1+1 SAY "Backup..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      DO baCkup WITH "1", mpAt, "FA012101.DBF"
      DO baCkup WITH "1", mpAt, "FA012102.DBF"
      DO baCkup WITH "1", mpAt, "FA012105.DBF"
      DO baCkup WITH "1", mpAt, "FA012106.DBF"
      DO baCkup WITH "1", mpAt, "FA012111.DBF"
      DO baCkup WITH "1", mpAt, "FA012112.DBF"
      DO baCkup WITH "1", mpAt, "FA012118.DBF"
      DO baCkup WITH "1", mpAt, "FA012119.DBF"
      DO baCkup WITH "1", mpAt, "FA012400.DBF"
      DO baCkup WITH "1", mpAt, "FA012401.DBF"
      DO baCkup WITH "1", mpAt, "FA012402.DBF"
      DO baCkup WITH "1", mpAt, "FA012403.DBF"
      DO baCkup WITH "1", mpAt, "FA012404.DBF"
      DO baCkup WITH "1", mpAt, "FA012600.DBF"
      DO baCkup WITH "1", mpAt, "FA012601.DBF"
      DO baCkup WITH "1", mpAt, "FA012602.DBF"
      DO baCkup WITH "1", mpAt, "FA012603.DBF"
      DO baCkup WITH "1", mpAt, "FA012604.DBF"
      DO baCkup WITH "1", mpAt, "FA012700.DBF"
      DO baCkup WITH "1", mpAt, "FA012701.DBF"
      DO baCkup WITH "1", mpAt, "FA012702.DBF"
      DO baCkup WITH "1", mpAt, "FA012703.DBF"
      DO baCkup WITH "1", mpAt, "FA012800.DBF"
      DO baCkup WITH "1", mpAt, "FA012801.DBF"
      DO baCkup WITH "1", mpAt, "FA012802.DBF"
      DO baCkup WITH "1", mpAt, "FA012803.DBF"
      DO baCkup WITH "1", mpAt, "FA012910.DBF"
      DO baCkup WITH "1", mpAt, "FA012911.DBF"
      DO baCkup WITH "1", mpAt, "FA012920.DBF"
      DO baCkup WITH "1", mpAt, "FA012921.DBF"
      DO baCkup WITH "1", mpAt, "FA012922.DBF"
      DO baCkup WITH "1", mpAt, "FA012990.DBF"
      DO baCkup WITH "1", mpAt, "FA012991.DBF"
      DO baCkup WITH "1", mpAt, "FC013110.DBF"
      DO baCkup WITH "1", mpAt, "FC013111.DBF"
      DO baCkup WITH "1", mpAt, "FC013210.DBF"
      DO baCkup WITH "1", mpAt, "FC013500.DBF"
      DO baCkup WITH "1", mpAt, "FC013501.DBF"
      DO baCkup WITH "1", mpAt, "FC013502.DBF"
      DO baCkup WITH "1", mpAt, "FC013510.DBF"
      DO baCkup WITH "1", mpAt, "FC013511.DBF"
      DO baCkup WITH "1", mpAt, "FC013520.DBF"
      DO baCkup WITH "1", mpAt, "FC013521.DBF"
      DO baCkup WITH "1", mpAt, "FC013530.DBF"
      DO baCkup WITH "1", mpAt, "FC013531.DBF"
      DO baCkup WITH "1", mpAt, "FC013540.DBF"
      DO baCkup WITH "1", mpAt, "FC013541.DBF"
      DO baCkup WITH "1", mpAt, "FC013600.DBF"
      DO baCkup WITH "1", mpAt, "FC013601.DBF"
      DO baCkup WITH "1", mpAt, "FC013602.DBF"
      DO baCkup WITH "1", mpAt, "FC013610.DBF"
      DO baCkup WITH "1", mpAt, "FC013611.DBF"
      DO baCkup WITH "1", mpAt, "FK014100.DBF"
      DO baCkup WITH "1", mpAt, "FK014110.DBF"
      DO baCkup WITH "1", mpAt, "FK014120.DBF"
      DO baCkup WITH "1", mpAt, "FK014130.DBF"
      DO baCkup WITH "1", mpAt, "FK014140.DBF"
      DO baCkup WITH "1", mpAt, "FK014200.DBF"
      DO baCkup WITH "1", mpAt, "FK014210.DBF"
      DO baCkup WITH "1", mpAt, "FK014211.DBF"
      DO baCkup WITH "1", mpAt, "FK014220.DBF"
      DO baCkup WITH "1", mpAt, "FK014221.DBF"
      DO baCkup WITH "1", mpAt, "FK014230.DBF"
      DO baCkup WITH "1", mpAt, "FK014240.DBF"
      DO baCkup WITH "1", mpAt, "FK014241.DBF"
      DO baCkup WITH "1", mpAt, "FK014299.DBF"
      DO baCkup WITH "1", mpAt, "FK014998.DBF"
      DO baCkup WITH "1", mpAt, "FK014999.DBF"
      DO baCkup WITH "1", mpAt, "FU019110.DBF"
      DO baCkup WITH "1", mpAt, "FU019111.DBF"
      DO baCkup WITH "1", mpAt, "FU019112.DBF"
      DO baCkup WITH "1", mpAt, "FU019113.DBF"
      DO baCkup WITH "1", mpAt, "FU019114.DBF"
      DO baCkup WITH "1", mpAt, "FU019115.DBF"
      DO baCkup WITH "1", mpAt, "FU019116.DBF"
      DO baCkup WITH "1", mpAt, "FU019210.DBF"
      DO baCkup WITH "1", mpAt, "FU019211.DBF"
      DO baCkup WITH "1", mpAt, "FU019212.DBF"
      DO baCkup WITH "1", mpAt, "FU019213.DBF"
      DO baCkup WITH "1", mpAt, "FU019214.DBF"
      DO baCkup WITH "1", mpAt, "FU019215.DBF"
      DO baCkup WITH "1", mpAt, "FU019216.DBF"
      DO baCkup WITH "1", mpAt, "FU019217.DBF"
      DO baCkup WITH "1", mpAt, "FU019218.DBF"
      DO baCkup WITH "1", mpAt, "FU019219.DBF"
      DO baCkup WITH "1", mpAt, "FU019220.DBF"
      DO baCkup WITH "1", mpAt, "FU019221.DBF"
      DO baCkup WITH "1", mpAt, "FU019222.DBF"
      DO baCkup WITH "1", mpAt, "FU019223.DBF"
      DO baCkup WITH "1", mpAt, "FU019224.DBF"
      DO baCkup WITH "1", mpAt, "FU019225.DBF"
      DO baCkup WITH "1", mpAt, "FU019226.DBF"
      DO baCkup WITH "1", mpAt, "FU019227.DBF"
      DO baCkup WITH "1", mpAt, "FU019228.DBF"
      DO baCkup WITH "1", mpAt, "FU019229.DBF"
      DO baCkup WITH "1", mpAt, "FU019311.DBF"
      DO baCkup WITH "1", mpAt, "FU019312.DBF"
      DO baCkup WITH "1", mpAt, "FU019313.DBF"
      DO baCkup WITH "1", mpAt, "FU019314.DBF"
      DO baCkup WITH "1", mpAt, "FU019315.DBF"
      DO baCkup WITH "1", mpAt, "FU019316.DBF"
      DO baCkup WITH "1", mpAt, "FU019317.DBF"
      DO baCkup WITH "1", mpAt, "FU019318.DBF"
      DO baCkup WITH "1", mpAt, "FU019319.DBF"
      DO baCkup WITH "1", mpAt, "FU019397.DBF"
      DO baCkup WITH "1", mpAt, "FU019510.DBF"
      DO baCkup WITH "1", mpAt, "FU019511.DBF"
      DO baCkup WITH "1", mpAt, "FU019512.DBF"
      DO baCkup WITH "1", mpAt, "FU019513.DBF"
      DO baCkup WITH "1", mpAt, "FU019514.DBF"
      DO baCkup WITH "1", mpAt, "FU019515.DBF"
      DO baCkup WITH "1", mpAt, "FU019991.DBF"
      DO baCkup WITH "1", mpAt, "FU019999.DBF"
      DO baCkup WITH "1", mpAt, "FV011101.DBF"
      DO baCkup WITH "1", mpAt, "FV011102.DBF"
      DO baCkup WITH "1", mpAt, "FV011103.DBF"
      DO baCkup WITH "1", mpAt, "FV011104.DBF"
      DO baCkup WITH "1", mpAt, "FV011200.DBF"
      DO baCkup WITH "1", mpAt, "FV011201.DBF"
      DO baCkup WITH "1", mpAt, "FV011202.DBF"
      DO baCkup WITH "1", mpAt, "FV011203.DBF"
      DO baCkup WITH "1", mpAt, "FV011204.DBF"
      DO baCkup WITH "1", mpAt, "FV011300.DBF"
      DO baCkup WITH "1", mpAt, "FV011301.DBF"
      DO baCkup WITH "1", mpAt, "FV011302.DBF"
      DO baCkup WITH "1", mpAt, "FV011303.DBF"
      DO baCkup WITH "1", mpAt, "FV011304.DBF"
      DO baCkup WITH "1", mpAt, "FV011305.DBF"
      CLOSE DATABASES
 ENDIF
 STORE "N" TO moPc
 DO prE_docum WITH "¿Desea Borrar Actual?"
 IF moPc$"Ss"
      @ vlIn, mcL1+1 SAY "Borrar Actual..." FONT "Arial", 12 STYLE "BT"
      DO poN_pan
      STORE vlIn+2 TO vlIn
      DO boRr_act WITH "1", mpAt, "FA012101.DBF"
      DO boRr_act WITH "1", mpAt, "FA012102.DBF"
      DO boRr_act WITH "1", mpAt, "FA012105.DBF"
      DO boRr_act WITH "1", mpAt, "FA012106.DBF"
      DO boRr_act WITH "1", mpAt, "FA012111.DBF"
      DO boRr_act WITH "1", mpAt, "FA012112.DBF"
      DO boRr_act WITH "1", mpAt, "FA012118.DBF"
      DO boRr_act WITH "1", mpAt, "FA012119.DBF"
      DO boRr_act WITH "1", mpAt, "FA012400.DBF"
      DO boRr_act WITH "1", mpAt, "FA012401.DBF"
      DO boRr_act WITH "1", mpAt, "FA012402.DBF"
      DO boRr_act WITH "1", mpAt, "FA012403.DBF"
      DO boRr_act WITH "1", mpAt, "FA012404.DBF"
      DO boRr_act WITH "1", mpAt, "FA012600.DBF"
      DO boRr_act WITH "1", mpAt, "FA012601.DBF"
      DO boRr_act WITH "1", mpAt, "FA012602.DBF"
      DO boRr_act WITH "1", mpAt, "FA012603.DBF"
      DO boRr_act WITH "1", mpAt, "FA012604.DBF"
      DO boRr_act WITH "1", mpAt, "FA012700.DBF"
      DO boRr_act WITH "1", mpAt, "FA012701.DBF"
      DO boRr_act WITH "1", mpAt, "FA012702.DBF"
      DO boRr_act WITH "1", mpAt, "FA012703.DBF"
      DO boRr_act WITH "1", mpAt, "FA012800.DBF"
      DO boRr_act WITH "1", mpAt, "FA012801.DBF"
      DO boRr_act WITH "1", mpAt, "FA012802.DBF"
      DO boRr_act WITH "1", mpAt, "FA012803.DBF"
      DO boRr_act WITH "1", mpAt, "FA012910.DBF"
      DO boRr_act WITH "1", mpAt, "FA012911.DBF"
      DO boRr_act WITH "1", mpAt, "FA012920.DBF"
      DO boRr_act WITH "1", mpAt, "FA012921.DBF"
      DO boRr_act WITH "1", mpAt, "FA012922.DBF"
      DO boRr_act WITH "1", mpAt, "FA012990.DBF"
      DO boRr_act WITH "1", mpAt, "FA012991.DBF"
      DO boRr_act WITH "1", mpAt, "FC013110.DBF"
      DO boRr_act WITH "1", mpAt, "FC013111.DBF"
      DO boRr_act WITH "1", mpAt, "FC013210.DBF"
      DO boRr_act WITH "1", mpAt, "FC013500.DBF"
      DO boRr_act WITH "1", mpAt, "FC013501.DBF"
      DO boRr_act WITH "1", mpAt, "FC013502.DBF"
      DO boRr_act WITH "1", mpAt, "FC013510.DBF"
      DO boRr_act WITH "1", mpAt, "FC013511.DBF"
      DO boRr_act WITH "1", mpAt, "FC013520.DBF"
      DO boRr_act WITH "1", mpAt, "FC013521.DBF"
      DO boRr_act WITH "1", mpAt, "FC013530.DBF"
      DO boRr_act WITH "1", mpAt, "FC013531.DBF"
      DO boRr_act WITH "1", mpAt, "FC013540.DBF"
      DO boRr_act WITH "1", mpAt, "FC013541.DBF"
      DO boRr_act WITH "1", mpAt, "FC013600.DBF"
      DO boRr_act WITH "1", mpAt, "FC013601.DBF"
      DO boRr_act WITH "1", mpAt, "FC013602.DBF"
      DO boRr_act WITH "1", mpAt, "FC013610.DBF"
      DO boRr_act WITH "1", mpAt, "FC013611.DBF"
      DO boRr_act WITH "1", mpAt, "FK014100.DBF"
      DO boRr_act WITH "1", mpAt, "FK014110.DBF"
      DO boRr_act WITH "1", mpAt, "FK014120.DBF"
      DO boRr_act WITH "1", mpAt, "FK014130.DBF"
      DO boRr_act WITH "1", mpAt, "FK014140.DBF"
      DO boRr_act WITH "1", mpAt, "FK014200.DBF"
      DO boRr_act WITH "1", mpAt, "FK014210.DBF"
      DO boRr_act WITH "1", mpAt, "FK014211.DBF"
      DO boRr_act WITH "1", mpAt, "FK014220.DBF"
      DO boRr_act WITH "1", mpAt, "FK014221.DBF"
      DO boRr_act WITH "1", mpAt, "FK014230.DBF"
      DO boRr_act WITH "1", mpAt, "FK014240.DBF"
      DO boRr_act WITH "1", mpAt, "FK014241.DBF"
      DO boRr_act WITH "1", mpAt, "FK014299.DBF"
      DO boRr_act WITH "1", mpAt, "FK014998.DBF"
      DO boRr_act WITH "1", mpAt, "FK014999.DBF"
      DO boRr_act WITH "1", mpAt, "FU019110.DBF"
      DO boRr_act WITH "1", mpAt, "FU019111.DBF"
      DO boRr_act WITH "1", mpAt, "FU019112.DBF"
      DO boRr_act WITH "1", mpAt, "FU019113.DBF"
      DO boRr_act WITH "1", mpAt, "FU019114.DBF"
      DO boRr_act WITH "1", mpAt, "FU019115.DBF"
      DO boRr_act WITH "1", mpAt, "FU019116.DBF"
      DO boRr_act WITH "1", mpAt, "FU019210.DBF"
      DO boRr_act WITH "1", mpAt, "FU019211.DBF"
      DO boRr_act WITH "1", mpAt, "FU019212.DBF"
      DO boRr_act WITH "1", mpAt, "FU019213.DBF"
      DO boRr_act WITH "1", mpAt, "FU019214.DBF"
      DO boRr_act WITH "1", mpAt, "FU019215.DBF"
      DO boRr_act WITH "1", mpAt, "FU019216.DBF"
      DO boRr_act WITH "1", mpAt, "FU019217.DBF"
      DO boRr_act WITH "1", mpAt, "FU019218.DBF"
      DO boRr_act WITH "1", mpAt, "FU019219.DBF"
      DO boRr_act WITH "1", mpAt, "FU019220.DBF"
      DO boRr_act WITH "1", mpAt, "FU019221.DBF"
      DO boRr_act WITH "1", mpAt, "FU019222.DBF"
      DO boRr_act WITH "1", mpAt, "FU019223.DBF"
      DO boRr_act WITH "1", mpAt, "FU019224.DBF"
      DO boRr_act WITH "1", mpAt, "FU019225.DBF"
      DO boRr_act WITH "1", mpAt, "FU019226.DBF"
      DO boRr_act WITH "1", mpAt, "FU019227.DBF"
      DO boRr_act WITH "1", mpAt, "FU019228.DBF"
      DO boRr_act WITH "1", mpAt, "FU019229.DBF"
      DO boRr_act WITH "1", mpAt, "FU019311.DBF"
      DO boRr_act WITH "1", mpAt, "FU019312.DBF"
      DO boRr_act WITH "1", mpAt, "FU019313.DBF"
      DO boRr_act WITH "1", mpAt, "FU019314.DBF"
      DO boRr_act WITH "1", mpAt, "FU019315.DBF"
      DO boRr_act WITH "1", mpAt, "FU019316.DBF"
      DO boRr_act WITH "1", mpAt, "FU019317.DBF"
      DO boRr_act WITH "1", mpAt, "FU019318.DBF"
      DO boRr_act WITH "1", mpAt, "FU019319.DBF"
      DO boRr_act WITH "1", mpAt, "FU019397.DBF"
      DO boRr_act WITH "1", mpAt, "FU019510.DBF"
      DO boRr_act WITH "1", mpAt, "FU019511.DBF"
      DO boRr_act WITH "1", mpAt, "FU019512.DBF"
      DO boRr_act WITH "1", mpAt, "FU019513.DBF"
      DO boRr_act WITH "1", mpAt, "FU019514.DBF"
      DO boRr_act WITH "1", mpAt, "FU019515.DBF"
      DO boRr_act WITH "1", mpAt, "FU019991.DBF"
      DO boRr_act WITH "1", mpAt, "FU019999.DBF"
      DO boRr_act WITH "1", mpAt, "FV011101.DBF"
      DO boRr_act WITH "1", mpAt, "FV011102.DBF"
      DO boRr_act WITH "1", mpAt, "FV011103.DBF"
      DO boRr_act WITH "1", mpAt, "FV011104.DBF"
      DO boRr_act WITH "1", mpAt, "FV011200.DBF"
      DO boRr_act WITH "1", mpAt, "FV011201.DBF"
      DO boRr_act WITH "1", mpAt, "FV011202.DBF"
      DO boRr_act WITH "1", mpAt, "FV011203.DBF"
      DO boRr_act WITH "1", mpAt, "FV011204.DBF"
      DO boRr_act WITH "1", mpAt, "FV011300.DBF"
      DO boRr_act WITH "1", mpAt, "FV011301.DBF"
      DO boRr_act WITH "1", mpAt, "FV011302.DBF"
      DO boRr_act WITH "1", mpAt, "FV011303.DBF"
      DO boRr_act WITH "1", mpAt, "FV011304.DBF"
      DO boRr_act WITH "1", mpAt, "FV011305.DBF"
      CLOSE DATABASES
 ENDIF
 @ vlIn, mcL1+1 SAY "Crear..." FONT "Arial", 12 STYLE "BT"
 DO poN_pan
 STORE vlIn+2 TO vlIn
 @ clIn, mcL3+1 SAY "Utilitarios" FONT "Arial", 8 STYLE "NT"
 DO td1_0000a IN PUX0000A
 DO veR_lin
 @ clIn, mcL3+1 SAY "Ventas" FONT "Arial", 8 STYLE "NT"
 DO td1_0001a IN PUX0001A
 DO veR_lin
 @ clIn, mcL3+1 SAY "Almacen" FONT "Arial", 8 STYLE "NT"
 DO td1_0002a IN PUX0002A
 DO veR_lin
 @ clIn, mcL3+1 SAY "Ctas.de Ventas/Compras" FONT "Arial", 8 STYLE "NT"
 DO td1_0003a IN PUX0003A
 DO veR_lin
 @ clIn, mcL3+1 SAY "Asistencia" FONT "Arial", 8 STYLE "NT"
 DO td1_0004a IN PUX0004A
 DO veR_lin
 @ clIn, mcL3+1 SAY "Contabilidad" FONT "Arial", 8 STYLE "NT"
 DO td1_0005a IN PUX0005A
 DO veR_lin
 @ clIn, mcL3+1 SAY "Facturacion Electronica" FONT "Arial", 8 STYLE "NT"
 DO td1_0006a IN PUX0006A
 DO veR_lin
 CLOSE DATABASES
 @ vlIn, mcL1+1 SAY "Copiar..." FONT "Arial", 12 STYLE "BT"
 DO poN_pan
 STORE vlIn+2 TO vlIn
 DO coP_backup WITH "1", mpAt, mpTt, "FA012101", ".DBF"
 Use &mDBF
 REPLACE f2101cre WITH 2 FOR f2101cre<=0
 REPLACE f2101mon WITH 1 FOR f2101cre=2
 REPLACE f2101tot WITH 0 FOR f2101cre=2
 REPLACE f2101tdi WITH "6" FOR LEN(ALLTRIM(f2101ruc))<>0
 REPLACE f2101tdi WITH "0" FOR f2101tdi=" "
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012102", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012105", ".DBF"
 Use &mDBF
 REPLACE f2105tpo WITH 1 FOR f2105tpo<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012106", ".DBF"
 Use &mDBF
 REPLACE f2106nux WITH f2106nuc FOR LEN(ALLTRIM(f2106cux))=0
 REPLACE f2106cux WITH f2106cuc FOR LEN(ALLTRIM(f2106cux))=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012111", ".DBF"
 Use &mDBF
 REPLACE f2111mon WITH 1 FOR f2111mon<=1
 REPLACE f2111mil WITH 0 FOR f2111mil<=0
 REPLACE f2111cmx WITH 0 FOR f2111cmx<=0
 REPLACE f2111ut2 WITH 0 FOR f2111ut2<=0
 REPLACE f2111ut3 WITH 0 FOR f2111ut3<=0
 REPLACE f2111ut4 WITH 0 FOR f2111ut4<=0
 REPLACE f2111ut5 WITH 0 FOR f2111ut5<=0
 REPLACE f2111ut6 WITH 0 FOR f2111ut6<=0
 REPLACE f2111ut7 WITH 0 FOR f2111ut7<=0
 REPLACE f2111ut8 WITH 0 FOR f2111ut8<=0
 REPLACE f2111ut9 WITH 0 FOR f2111ut9<=0
 REPLACE f2111ut0 WITH 0 FOR f2111ut0<=0
 REPLACE f2111vv3 WITH 0 FOR f2111vv3<=0
 REPLACE f2111vv4 WITH 0 FOR f2111vv4<=0
 REPLACE f2111vv5 WITH 0 FOR f2111vv5<=0
 REPLACE f2111vv6 WITH 0 FOR f2111vv6<=0
 REPLACE f2111vv7 WITH 0 FOR f2111vv7<=0
 REPLACE f2111vv8 WITH 0 FOR f2111vv8<=0
 REPLACE f2111vv9 WITH 0 FOR f2111vv9<=0
 REPLACE f2111vv0 WITH 0 FOR f2111vv0<=0
 REPLACE f2111vva WITH 0 FOR f2111vva<=0
 REPLACE f2111vvb WITH 0 FOR f2111vvb<=0
 REPLACE f2111vvc WITH 0 FOR f2111vvc<=0
 REPLACE f2111vvd WITH 0 FOR f2111vvd<=0
 REPLACE f2111vve WITH 0 FOR f2111vve<=0
 REPLACE f2111vvf WITH 0 FOR f2111vvf<=0
 REPLACE f2111vvg WITH 0 FOR f2111vvg<=0
 REPLACE f2111vvh WITH 0 FOR f2111vvh<=0
 REPLACE f2111vvi WITH 0 FOR f2111vvi<=0
 REPLACE f2111vvj WITH 0 FOR f2111vvj<=0
 REPLACE f2111mv3 WITH 0 FOR f2111mv3<=0
 REPLACE f2111mv4 WITH 0 FOR f2111mv4<=0
 REPLACE f2111mv5 WITH 0 FOR f2111mv5<=0
 REPLACE f2111mv6 WITH 0 FOR f2111mv6<=0
 REPLACE f2111mv7 WITH 0 FOR f2111mv7<=0
 REPLACE f2111mv8 WITH 0 FOR f2111mv8<=0
 REPLACE f2111mv9 WITH 0 FOR f2111mv9<=0
 REPLACE f2111mv0 WITH 0 FOR f2111mv0<=0
 REPLACE f2111mva WITH 0 FOR f2111mva<=0
 REPLACE f2111mvb WITH 0 FOR f2111mvb<=0
 REPLACE f2111mvc WITH 0 FOR f2111mvc<=0
 REPLACE f2111mvd WITH 0 FOR f2111mvd<=0
 REPLACE f2111mve WITH 0 FOR f2111mve<=0
 REPLACE f2111mvf WITH 0 FOR f2111mvf<=0
 REPLACE f2111mvg WITH 0 FOR f2111mvg<=0
 REPLACE f2111mvh WITH 0 FOR f2111mvh<=0
 REPLACE f2111mvi WITH 0 FOR f2111mvi<=0
 REPLACE f2111mvj WITH 0 FOR f2111mvj<=0
 REPLACE f2111tie WITH 1 FOR f2111tie<=0
 REPLACE f2111dct WITH 0 FOR f2111dct<=0
 REPLACE f2111dc2 WITH 0 FOR f2111dc2<=0
 REPLACE f2111dc3 WITH 0 FOR f2111dc3<=0
 REPLACE f2111dc4 WITH 0 FOR f2111dc4<=0
 REPLACE f2111dc5 WITH 0 FOR f2111dc5<=0
 REPLACE f2111dc6 WITH 0 FOR f2111dc6<=0
 REPLACE f2111dc7 WITH 0 FOR f2111dc7<=0
 REPLACE f2111dc8 WITH 0 FOR f2111dc8<=0
 REPLACE f2111dc9 WITH 0 FOR f2111dc9<=0
 REPLACE f2111dc0 WITH 0 FOR f2111dc0<=0
 REPLACE f2111pdt WITH 0 FOR f2111pdt<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012112", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012118", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012119", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012400", ".DBF"
 Use &mDBF
 REPLACE f2400dct WITH 0 FOR f2400dct=0
 REPLACE f2400red WITH 0 FOR f2400red=0
 REPLACE f2400dec WITH 1 FOR f2400dec=0
 REPLACE f2400tdi WITH "6" FOR LEN(ALLTRIM(f2400ruc))=11
 REPLACE f2400tdi WITH "1" FOR f2400tdi=" "
 REPLACE f2400net WITH f2400val-f2400dct ALL
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012401", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012402", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012403", ".DBF"
 Use &mDBF
 REPLACE f2403sec WITH "0"+ALLTRIM(f2403sec) FOR LEN(ALLTRIM(f2403sec))<4
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012404", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012600", ".DBF"
 Use &mDBF
 REPLACE f2600cst WITH 1 FOR f2600cst<=0 .AND. f2600mot<>1
 REPLACE f2600cst WITH 2 FOR f2600cst<=0 .AND. f2600mot=1
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012601", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012602", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012603", ".DBF"
 Use &mDBF
 REPLACE f2603sec WITH "0"+ALLTRIM(f2603sec) FOR LEN(ALLTRIM(f2603sec))<4
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012604", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012700", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012701", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012702", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012703", ".DBF"
 Use &mDBF
 REPLACE f2703sec WITH "0"+ALLTRIM(f2703sec) FOR LEN(ALLTRIM(f2703sec))<4
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012800", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012801", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012802", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012803", ".DBF"
 Use &mDBF
 REPLACE f2803sec WITH "0"+ALLTRIM(f2803sec) FOR LEN(ALLTRIM(f2803sec))<4
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012910", ".DBF"
 Use &mDBF
 REPLACE f2910tdo WITH "OC" ALL
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012911", ".DBF"
 Use &mDBF
 REPLACE f2911tdo WITH "OC" ALL
 REPLACE f2911nux WITH f2911nuc FOR LEN(ALLTRIM(f2911cux))=0
 REPLACE f2911cux WITH f2911cuc FOR LEN(ALLTRIM(f2911cux))=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FA012920", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012921", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012922", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012990", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FA012991", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013110", ".DBF"
 Use &mDBF
 REPLACE f3110pig WITH 18 FOR f3110fem<=CTOD("31/08/2003")
 REPLACE f3110pig WITH 19 FOR f3110fem>CTOD("31/08/2003")
 REPLACE f3110pco WITH 00 FOR f3110pco<=0
 REPLACE f3110tdi WITH "6" FOR LEN(ALLTRIM(f3110ruc))<>0
 REPLACE f3110tdi WITH "1" FOR LEN(ALLTRIM(f3110ruc))=0 .AND.  ;
         LEN(ALLTRIM(f3110ele))<>0 .AND. f3110tdi=" "
 REPLACE f3110tdi WITH "1" FOR f3110tdi=" "
 REPLACE f3110ele WITH " " FOR LEN(ALLTRIM(f3110ruc))<>0
 REPLACE f3110ruc WITH " " FOR LEN(ALLTRIM(f3110ele))<>0
 REPLACE f3110td2 WITH "1" FOR LEN(ALLTRIM(f3110ael))<>0 .AND. f3110td2=" "
 REPLACE f3110td2 WITH "1" FOR f3110td2=" "
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FC013111", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013210", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013500", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013501", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013502", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013510", ".DBF"
 Use &mDBF
 REPLACE f3510dnc WITH 2 FOR f3510dnc<>1
 REPLACE f3510caj WITH 1 FOR f3510caj<=0
 REPLACE f3510tpp WITH 1 FOR f3510tpp<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FC013511", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013520", ".DBF"
 Use &mDBF
 REPLACE f3520dnc WITH 2 FOR f3520dnc<>1
 REPLACE f3520caj WITH 1 FOR f3520caj<=0
 REPLACE f3520tpp WITH 1 FOR f3520tpp<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FC013521", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013530", ".DBF"
 Use &mDBF
 REPLACE f3530tpp WITH 1 FOR f3530tpp<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FC013531", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013540", ".DBF"
 Use &mDBF
 REPLACE f3540tpp WITH 1 FOR f3540tpp<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FC013541", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013600", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013601", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013602", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FC013610", ".DBF"
 Use &mDBF
 REPLACE f3610fre WITH f3610fem FOR AT(" ", DTOC(f3610fre))<>0
 REPLACE f3610tdi WITH "6" FOR LEN(ALLTRIM(f3610ruc))<>0
 REPLACE f3610tdi WITH "1" FOR LEN(ALLTRIM(f3610ruc))=0 .AND.  ;
         LEN(ALLTRIM(f3610ele))<>0 .AND. f3610tdi=" "
 REPLACE f3610tdi WITH "1" FOR f3610tdi=" "
 REPLACE f3610ele WITH " " FOR LEN(ALLTRIM(f3610ruc))<>0
 REPLACE f3610ruc WITH " " FOR LEN(ALLTRIM(f3610ele))<>0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FC013611", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014100", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014110", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014120", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014130", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014140", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014200", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014210", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014211", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014220", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014221", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014230", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014240", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014241", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014299", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014998", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FK014999", ".DBF"
 Use &mDBF
 DELETE ALL
 PACK
 APPEND BLANK
 IF mpSs=6
      REPLACE f4999cla WITH "000001"
      REPLACE f4999tra WITH "1"
      APPEND BLANK
      REPLACE f4999cla WITH "000002"
      REPLACE f4999tra WITH "2"
      APPEND BLANK
      REPLACE f4999cla WITH "000003"
      REPLACE f4999tra WITH "3"
      APPEND BLANK
      REPLACE f4999cla WITH "000004"
      REPLACE f4999tra WITH "4"
 ELSE
      REPLACE f4999cla WITH "00000001"
      REPLACE f4999tra WITH "1"
      APPEND BLANK
      REPLACE f4999cla WITH "00000002"
      REPLACE f4999tra WITH "2"
      APPEND BLANK
      REPLACE f4999cla WITH "00000003"
      REPLACE f4999tra WITH "3"
      APPEND BLANK
      REPLACE f4999cla WITH "00000004"
      REPLACE f4999tra WITH "4"
 ENDIF
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FU019110", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019111", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019112", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019113", ".DBF"
 Use &mDBF
 REPLACE f9113cm2 WITH 0 FOR f9113cm2<=0
 REPLACE f9113por WITH 0 FOR f9113por<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FU019114", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019115", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019116", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019210", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019211", ".DBF"
 Use &mDBF
 REPLACE f9211per WITH 2 FOR f9211per<>1
 REPLACE f9211det WITH 2 FOR f9211det<>1
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FU019212", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019213", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019214", ".DBF"
 Use &mDBF
 REPLACE f9214ubi WITH 1 FOR f9214ubi<=1
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FU019215", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019216", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019217", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019218", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019219", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019220", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019221", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019222", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019223", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019224", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019225", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019226", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019227", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019228", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019229", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019311", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019312", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019313", ".DBF"
 Use &mDBF
 REPLACE f9313mon WITH 1 FOR f9313mon<=0 .AND. AT("S/.", UPPER(f9313des))<>0
 REPLACE f9313mon WITH 2 FOR f9313mon<=0 .AND. AT("US$", UPPER(f9313des))<>0
 REPLACE f9313mon WITH 2 FOR f9313mon<=0 .AND. AT("U$", UPPER(f9313des))<>0
 REPLACE f9313mon WITH 1 FOR f9313mon<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FU019314", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019315", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019316", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019317", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019318", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019319", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019397", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019510", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019511", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019512", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019513", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019514", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019515", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019991", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FU019999", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011101", ".DBF"
 Use &mDBF
 REPLACE f1101tpo WITH 1 FOR f1101tpo<=0 .AND. LEN(ALLTRIM(f1101ruc))=0
 REPLACE f1101tpo WITH 2 FOR f1101tpo<=0 .AND. LEN(ALLTRIM(f1101ruc))<>0
 REPLACE f1101tpo WITH 1 FOR f1101tpo<=0
 REPLACE f1101tpp WITH 1 FOR f1101tpo=1
 REPLACE f1101tpp WITH 1 FOR f1101tpp<=0
 REPLACE f1101lis WITH 0 FOR f1101lis<=0
 REPLACE f1101li2 WITH 0 FOR f1101li2<=0
 REPLACE f1101li3 WITH 0 FOR f1101li3<=0
 REPLACE f1101cre WITH 2 FOR f1101cre<=0
 REPLACE f1101mon WITH 1 FOR f1101mon<=0
 REPLACE f1101tot WITH 0 FOR f1101tot<=0
 REPLACE f1101dct WITH 0 FOR f1101dct<=0
 REPLACE f1101tdi WITH "6" FOR LEN(ALLTRIM(f1101ruc))<>0
 REPLACE f1101tdi WITH "1" FOR LEN(ALLTRIM(f1101ele))<>0 .AND. f1101tdi=" "
 REPLACE f1101tdi WITH "0" FOR LEN(ALLTRIM(f1101ruc))=0 .AND. f1101tdi=" "
 DO prE_docum WITH "¿Desea poner 2% de Percepción a todos los Clientes?"
 IF moPc$"Ss"
      REPLACE f1101ppe WITH 2 FOR f1101ppe<=0
 ENDIF
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011102", ".DBF"
 Use &mDBF
 REPLACE f1102alq WITH 2 FOR f1102alq<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011103", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011104", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011200", ".DBF"
 Use &mDBF
 REPLACE f1200tdi WITH "6" FOR LEN(ALLTRIM(f1200ruc))<>0
 REPLACE f1200tdi WITH "1" FOR LEN(ALLTRIM(f1200ruc))=0 .AND.  ;
         LEN(ALLTRIM(f1200ele))<>0 .AND. f1200tdi=" "
 REPLACE f1200tdi WITH "0" FOR f1200tdi=" "
 REPLACE f1200ele WITH " " FOR LEN(ALLTRIM(f1200ruc))<>0
 REPLACE f1200ruc WITH " " FOR LEN(ALLTRIM(f1200ele))<>0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011201", ".DBF"
 Use &mDBF
 REPLACE f1201pro WITH f1201pre FOR f1201pro<=0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011202", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011203", ".DBF"
 Use &mDBF
 REPLACE f1203sec WITH "0"+ALLTRIM(f1203sec) FOR LEN(ALLTRIM(f1203sec))<4
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011204", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011300", ".DBF"
 Use &mDBF
 REPLACE f1300fde WITH f1300fem FOR AT(" ", DTOC(f1300fde))<>0
 REPLACE f1300det WITH mlLz FOR LEN(ALLTRIM(f1300det))=0
 REPLACE f1300tdi WITH "6" FOR LEN(ALLTRIM(f1300ruc))<>0
 REPLACE f1300tdi WITH "1" FOR LEN(ALLTRIM(f1300ruc))=0 .AND.  ;
         LEN(ALLTRIM(f1300ele))<>0 .AND. f1300tdi=" "
 REPLACE f1300tdi WITH "0" FOR f1300tdi=" "
 REPLACE f1300ele WITH " " FOR LEN(ALLTRIM(f1300ruc))<>0
 REPLACE f1300ruc WITH " " FOR LEN(ALLTRIM(f1300ele))<>0
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011302", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011303", ".DBF"
 Use &mDBF
 REPLACE f1303sec WITH "0"+ALLTRIM(f1303sec) FOR LEN(ALLTRIM(f1303sec))<4
 CLOSE DATABASES
 DO coP_backup WITH "1", mpAt, mpTt, "FV011304", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011305", ".DBF"
 DO coP_backup WITH "1", mpAt, mpTt, "FV011301", ".DBF"
 Use &mDBF
 REPLACE f1301pro WITH f1301pre FOR f1301pro<=0
 CLOSE DATABASES
 SELECT 1
 STORE mpAt+"FV011300.DBF" TO mdBf
 Use &mDBF
 SELECT 2
 STORE mpAt+"FV011301.DBF" TO mdBf
 Use &mDBF
 SET ORDER TO F1301DOC
 SELECT 1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f1300est$"89" .OR. f1300tdo="PC" .OR. f1300tdo="CT"
           SKIP
           LOOP
      ENDIF
      IF f1300tdo<>"F"
           SKIP
           LOOP
      ENDIF
      STORE f1300fde TO vfDe
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      @ clIn, mcL3+1 SAY vtDo+":"+vsEr+"-"+vdOc FONT "Arial", 8 STYLE  ;
        "NQ" SIZE 1, 25
      SELECT 2
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           IF f1301fde=CTOD("  /  /    ")
                REPLACE f1301fde WITH vfDe
           ENDIF
           SKIP
      ENDDO
      SELECT 1
      SKIP
 ENDDO
 SELECT 1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f1300est$"89" .OR. f1300tdo="PC" .OR. f1300tdo="CT"
           SKIP
           LOOP
      ENDIF
      IF f1300tdo<>"B"
           SKIP
           LOOP
      ENDIF
      STORE f1300fde TO vfDe
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      @ clIn, mcL3+1 SAY vtDo+":"+vsEr+"-"+vdOc FONT "Arial", 8 STYLE  ;
        "NQ" SIZE 1, 25
      SELECT 2
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           IF f1301fde=CTOD("  /  /    ")
                REPLACE f1301fde WITH vfDe
           ENDIF
           SKIP
      ENDDO
      SELECT 1
      SKIP
 ENDDO
 SELECT 1
 GOTO TOP
 DO WHILE  .NOT. EOF()
      IF f1300est$"89" .OR. f1300tdo="PC" .OR. f1300tdo="CT"
           SKIP
           LOOP
      ENDIF
      IF f1300tdo<>"N"
           SKIP
           LOOP
      ENDIF
      STORE f1300fde TO vfDe
      STORE f1300tdo TO vtDo
      STORE f1300ser TO vsEr
      STORE f1300doc TO vdOc
      @ clIn, mcL3+1 SAY vtDo+":"+vsEr+"-"+vdOc FONT "Arial", 8 STYLE  ;
        "NQ" SIZE 1, 25
      SELECT 2
      SEEK vtDo+vsEr+vdOc
      DO WHILE  .NOT. EOF() .AND. f1301tdo+f1301ser+f1301doc=vtDo+vsEr+vdOc
           IF f1301fde=CTOD("  /  /    ")
                REPLACE f1301fde WITH vfDe
           ENDIF
           SKIP
      ENDDO
      SELECT 1
      SKIP
 ENDDO
 CLOSE DATABASES
 QUIT
ENDPROC
*
PROCEDURE Bor_Arc
 PARAMETER ptPo, ppTh, pdBb, pdBf
 STORE ppTh+pdBb+"."+pdBf TO mdBf
 If File("&mDBF")
      IF ptPo="1"
           @ clIn, mcL3+1 SAY pdBb FONT "Arial", 8 STYLE "NT"
      ENDIF
      Delete File "&mDBF"
      IF ptPo="1"
           DO veR_lin
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Bor_Ind
 PARAMETER ptPo, ppTh, pdBb
 STORE ppTh+pdBb+".DBF" TO mdBf
 STORE ppTh+pdBb+".CDX" TO mdB1
 If File("&mDBF")
      IF ptPo="1"
           @ clIn, mcL3+1 SAY pdBb FONT "Arial", 8 STYLE "NT"
      ENDIF
      Use &mDBF Excl
      DELETE TAG alL
      PACK
      CLOSE DATABASES
      Delete File "&mDB1"
      IF ptPo="1"
           DO veR_lin
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Borra_Cop
 PARAMETER ptPo, ppTh, pdBb
 STORE ppTh+pdBb TO mdBf
 If File("&mDBF")
      IF ptPo="1"
           @ clIn, mcL3+1 SAY pdBb FONT "Arial", 8 STYLE "NT"
      ENDIF
      Delete File "&mDBF"
      IF ptPo="1"
           DO veR_lin
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Backup
 PARAMETER ptPo, ppTh, pdBb
 STORE ppTh+pdBb TO mdBf
 STORE mpTt+pdBb TO mdB1
 If File("&mDBF")
      IF ptPo="1"
           @ clIn, mcL3+1 SAY pdBb FONT "Arial", 8 STYLE "NT"
      ENDIF
      Copy File "&mDBF" to "&mDB1"
      IF ptPo="1"
           DO veR_lin
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Borr_Act
 PARAMETER ptPo, ppTh, pdBb
 STORE ppTh+pdBb TO mdBf
 If File("&mDBF")
      IF ptPo="1"
           @ clIn, mcL3+1 SAY pdBb FONT "Arial", 8 STYLE "NT"
      ENDIF
      Delete File "&mDBF"
      IF ptPo="1"
           DO veR_lin
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Cop_Backup
 PARAMETER ptPo, ppAt, ppTt, pdBb, peXt
 STORE ppAt+pdBb+peXt TO mdBf
 STORE ppTt+pdBb+peXt TO mdB1
 If File("&mDBF")
      IF ptPo="1"
           @ clIn, mcL3+1 SAY pdBb FONT "Arial", 8 STYLE "NT"
      ENDIF
      Use &mDBF
      If File("&mDB1")
           Append from &mDB1
      ENDIF
      CLOSE DATABASES
      IF ptPo="1"
           DO veR_lin
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Pre_Docum
 PARAMETER pfRa
 PRIVATE pbOt, poPc
 STORE "N" TO moPc
 pbOt = 0036
 poPc = MESSAGEBOX(ALLTRIM(pfRa), pbOt, " ")
 DO CASE
      CASE poPc=6
           STORE "S" TO moPc
      CASE poPc=7
           STORE "N" TO moPc
 ENDCASE
 RELEASE pbOt, poPc
ENDPROC
*
PROCEDURE Enc_0000a
 PARAMETER plEt
 PRIVATE ppOs, piNi, pfIn, pnUm
 IF ASC(plEt)>=33 .AND. ASC(plEt)<=126
      STORE 33 TO piNi
      STORE 126 TO pfIn
      STORE ASC(plEt) TO ppOs
      STORE ppOs-piNi TO pnUm
      STORE pfIn-pnUm TO pnUm
      STORE CHR(pnUm) TO plEt
 ENDIF
 RELEASE ppOs, piNi, pfIn, pnUm
ENDPROC
*
PROCEDURE PonMsj
 PRIVATE ptAm
 = INKEY(0.01)
 WAIT WINDOW NOWAIT ALLTRIM(mmSj)
 STORE SPACE(100) TO mmSj
 RELEASE ptAm
 RETURN
ENDPROC
*
PROCEDURE Pon_Pan
 SET COLOR TO RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170), RGB(0,0,0,164,172,170),
 @ mlI1, mcL3 CLEAR TO mlI2, mcL4
 @ mlI1, mcL3 TO mlI2, mcL4
 STORE 2 TO clIn
ENDPROC
*
PROCEDURE Ver_Lin
 STORE clIn+1 TO clIn
 IF clIn+7>mlI2
      DO poN_pan
 ENDIF
ENDPROC
*
PROCEDURE Cam_SIM
 PRIVATE psW0_sim, psW0_sif, vsIm, vsIf
 @ vlIn, mcL1+1 SAY "Archivo de IDENTI2..." FONT "Arial", 12 STYLE "BT"
 DO poN_pan
 STORE vlIn+2 TO vlIn
 STORE " " TO vsIm
 STORE " " TO vsIf
 STORE 0 TO psW0_sim, psW0_sif
 STORE FCOUNT() TO pnUm
 STORE 1 TO pnU1
 DO WHILE .T.
      DO CASE
           CASE FIELD(pnU1)="SIM"
                STORE 1 TO psW0_sim
           CASE FIELD(pnU1)="SIF"
                STORE 1 TO psW0_sif
      ENDCASE
      STORE pnU1+1 TO pnU1
      IF pnU1>pnUm
           EXIT
      ENDIF
 ENDDO
 STORE mpAt+"IDENTI2.DBB" TO mdBf
 IF psW0_sim=0
      @ clIn, mcL3+1 SAY "Campo SIM" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column SIM C(1)
      REPLACE siM WITH vsIm
      DO veR_lin
 ENDIF
 IF psW0_sif=0
      @ clIn, mcL3+1 SAY "Campo SIF" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column SIF C(8)
      REPLACE siF WITH vsIf
      DO veR_lin
 ENDIF
 RELEASE psW0_sim, psW0_sif, vsIm, vsIf
ENDPROC
*
PROCEDURE Cam_Ubic
 PRIVATE psW0_tp1, psW0_tp2, psW0_tp3, psW0_tp4, psW0_tp5
 PRIVATE psW0_tp6, psW0_tp7, psW0_tp8, psW0_tp9, psW0_tp0
 PRIVATE vtP1, vtP2, vtP3, vtP4, vtP5, vtP6, vtP7, vtP8, vtP9, vtP0,  ;
         vtP9_1, vtP0_1
 @ vlIn, mcL1+1 SAY "Archivo de Ubicación..." FONT "Arial", 12 STYLE "BT"
 DO poN_pan
 STORE vlIn+2 TO vlIn
 STORE "FA" TO vtP1
 STORE "BO" TO vtP2
 STORE "NP" TO vtP3
 STORE "CT" TO vtP4
 STORE "ND" TO vtP5
 STORE "NC" TO vtP6
 STORE "RE" TO vtP7
 STORE "LE" TO vtP8
 STORE " " TO vtP9
 STORE " " TO vtP0
 STORE " " TO vdNi
 STORE CTOD(" ") TO vtP9_1
 STORE CTOD(" ") TO vtP0_1
 STORE 0 TO psW0_tp1, psW0_tp2, psW0_tp3, psW0_tp4, psW0_tp5
 STORE 0 TO psW0_tp6, psW0_tp7, psW0_tp8, psW0_tp9, psW0_tp0
 STORE FCOUNT() TO pnUm
 STORE 1 TO pnU1
 DO WHILE .T.
      DO CASE
           CASE FIELD(pnU1)="TP1"
                STORE 1 TO psW0_tp1
           CASE FIELD(pnU1)="TP2"
                STORE 1 TO psW0_tp2
           CASE FIELD(pnU1)="TP3"
                STORE 1 TO psW0_tp3
           CASE FIELD(pnU1)="TP4"
                STORE 1 TO psW0_tp4
           CASE FIELD(pnU1)="TP5"
                STORE 1 TO psW0_tp5
           CASE FIELD(pnU1)="TP6"
                STORE 1 TO psW0_tp6
           CASE FIELD(pnU1)="TP7"
                STORE 1 TO psW0_tp7
           CASE FIELD(pnU1)="TP8"
                STORE 1 TO psW0_tp8
           CASE FIELD(pnU1)="RUC"
                STORE 1 TO psW0_tp9
           CASE FIELD(pnU1)="DNI"
                STORE 1 TO psW0_tp0
      ENDCASE
      STORE pnU1+1 TO pnU1
      IF pnU1>pnUm
           EXIT
      ENDIF
 ENDDO
 STORE mpAt+"IDENTI2.DBB" TO mdBf
 IF psW0_tp1=0
      BROWSE
      @ clIn, mcL3+1 SAY "Campo de Facturas" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP1 C(2)
      REPLACE tp1 WITH vtP1
      DO veR_lin
 ENDIF
 IF psW0_tp2=0
      @ clIn, mcL3+1 SAY "Campo de Boletas" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP2 C(2)
      REPLACE tp2 WITH vtP2
      DO veR_lin
 ENDIF
 IF psW0_tp3=0
      @ clIn, mcL3+1 SAY "Campo de Notas de Pedido" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP3 C(2)
      REPLACE tp3 WITH vtP3
      DO veR_lin
 ENDIF
 IF psW0_tp4=0
      @ clIn, mcL3+1 SAY "Campo de Cotizaciones" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP4 C(2)
      REPLACE tp4 WITH vtP4
      DO veR_lin
 ENDIF
 IF psW0_tp5=0
      @ clIn, mcL3+1 SAY "Campo de Notas de Débito" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP5 C(2)
      REPLACE tp5 WITH vtP5
      DO veR_lin
 ENDIF
 IF psW0_tp6=0
      @ clIn, mcL3+1 SAY "Campo de Notas de Crédito" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP6 C(2)
      REPLACE tp6 WITH vtP6
      DO veR_lin
 ENDIF
 IF psW0_tp7=0
      @ clIn, mcL3+1 SAY "Campo de Guías de Remisión" FONT "Arial", 8  ;
        STYLE "NT"
      Alter Table &mDBF Add Column TP7 C(2)
      REPLACE tp7 WITH vtP7
      DO veR_lin
 ENDIF
 IF psW0_tp8=0
      @ clIn, mcL3+1 SAY "Campo de Letras" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column TP8 C(2)
      REPLACE tp8 WITH vtP8
      DO veR_lin
 ENDIF
 IF psW0_tp9=0
      @ clIn, mcL3+1 SAY "Campos Adicional" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column RUC C(1)
      Alter Table &mDBF Add Column FDE D(8)
      Alter Table &mDBF Add Column FHA D(8)
      REPLACE ruC WITH vtP9
      REPLACE fdE WITH vtP9_1
      REPLACE fhA WITH vtP9_1
      DO veR_lin
 ENDIF
 IF psW0_tp0=0
      @ clIn, mcL3+1 SAY "Campos Adicional" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column DNI C(1)
      Alter Table &mDBF Add Column FDR D(8)
      Alter Table &mDBF Add Column FHR D(8)
      REPLACE dnI WITH vtP0
      REPLACE fdR WITH vtP0_1
      REPLACE fhR WITH vtP0_1
      DO veR_lin
 ENDIF
 RELEASE psW0_tp1, psW0_tp2, psW0_tp3, psW0_tp4, psW0_tp5
 RELEASE psW0_tp6, psW0_tp7, psW0_tp8, psW0_tp9, psW0_tp0
 RELEASE vtP1, vtP2, vtP3, vtP4, vtP5, vtP6, vtP7, vtP8, vtP9, vtP0,  ;
         vtP9_1, vtP0_1
ENDPROC
*
PROCEDURE Cam_Iden
 PUBLIC vcIa, vrAz, vrZ1, vtIp, vdIr, vrUc, vtEl, vwEb, veMa, vlFa, vlFe,  ;
        vlFc, vlBo, vlBe
 PUBLIC vlBc, vlNc, vlN1, vlN3, vlNd, vlN2, vlN4, vlGr, vlGe, vlNp, vlCp,  ;
        vlCr, vlL1, vlL2
 PUBLIC vlL3, vlLz, vlLx, vlLy, vlLb, vlLd, vlLe, vlLn, vlLc, vlL0, vl10,  ;
        vl20, vl0b, vl1b
 PUBLIC vl2b, vl0n, vl0c, vlSt, vlIs, voBr, vtMc, vdEc, vtRa, vaLm, vcIm,  ;
        vcAj, vmIi, vmAx
 PUBLIC vdSp, vsTp, veMp, vmBo, vpEd, vvNd, vpIg, vfEl, vdEs, vmOn, viGv,  ;
        vgRa, vrEd, vpDc
 PUBLIC vtFa, vcOr, vpIe, vvId, vlI1, vjAl, vpRe, viMp, vmNc, vfCc, vfCt,  ;
        vfCp, viNt, vdIa
 PUBLIC vcOm, vlEt, vsEp, vsEd, vpSs, vvIt, vdEt, vhLp, vsLd, viNg, vpAl,  ;
        vvIn, vpAn
 @ vlIn, mcL1+1 SAY "Archivo de Identificación..." FONT "Arial", 12 STYLE "BT"
 DO poN_pan
 STORE vlIn+2 TO vlIn
 STORE mcIa TO vcIa
 DO muE_0000a IN IDENTI1
 DO CASE
      CASE vlLz=1
           STORE "S" TO vlLz
      OTHERWISE
           STORE "N" TO vlLz
 ENDCASE
 DO CASE
      CASE vlLx=1
           STORE "S" TO vlLx
      OTHERWISE
           STORE "N" TO vlLx
 ENDCASE
 DO CASE
      CASE vlLy=1
           STORE "S" TO vlLy
      OTHERWISE
           STORE "N" TO vlLy
 ENDCASE
 DO CASE
      CASE vlLb=1
           STORE "S" TO vlLb
      OTHERWISE
           STORE "N" TO vlLb
 ENDCASE
 DO CASE
      CASE vlLd=1
           STORE "S" TO vlLd
      OTHERWISE
           STORE "N" TO vlLd
 ENDCASE
 DO CASE
      CASE vlLe=1
           STORE "S" TO vlLe
      OTHERWISE
           STORE "N" TO vlLe
 ENDCASE
 DO CASE
      CASE vlLn=1
           STORE "S" TO vlLn
      OTHERWISE
           STORE "N" TO vlLn
 ENDCASE
 DO CASE
      CASE vlLc=1
           STORE "S" TO vlLc
      OTHERWISE
           STORE "N" TO vlLc
 ENDCASE
 DO CASE
      CASE vlL0=1
           STORE "S" TO vlL0
      CASE vlL0=2
           STORE "N" TO vlL0
      OTHERWISE
           STORE "M" TO vlL0
 ENDCASE
 DO CASE
      CASE vl10=1
           STORE "S" TO vl10
      CASE vl10=2
           STORE "N" TO vl10
      OTHERWISE
           STORE "M" TO vl10
 ENDCASE
 DO CASE
      CASE vl20=1
           STORE "S" TO vl20
      CASE vl20=2
           STORE "N" TO vl20
      OTHERWISE
           STORE "M" TO vl20
 ENDCASE
 DO CASE
      CASE vl0b=1
           STORE "S" TO vl0b
      CASE vl0b=2
           STORE "N" TO vl0b
      OTHERWISE
           STORE "M" TO vl0b
 ENDCASE
 DO CASE
      CASE vl1b=1
           STORE "S" TO vl1b
      CASE vl1b=2
           STORE "N" TO vl1b
      OTHERWISE
           STORE "M" TO vl1b
 ENDCASE
 DO CASE
      CASE vl2b=1
           STORE "S" TO vl2b
      CASE vl2b=2
           STORE "N" TO vl2b
      OTHERWISE
           STORE "M" TO vl2b
 ENDCASE
 DO CASE
      CASE vl0n=1
           STORE "S" TO vl0n
      CASE vl0n=2
           STORE "N" TO vl0n
      OTHERWISE
           STORE "M" TO vl0n
 ENDCASE
 DO CASE
      CASE vl0c=1
           STORE "S" TO vl0c
      CASE vl0c=2
           STORE "N" TO vl0c
      OTHERWISE
           STORE "M" TO vl0c
 ENDCASE
 DO CASE
      CASE vfEl=1
           STORE "1" TO vfEl
      CASE vfEl=3
           STORE "3" TO vfEl
      OTHERWISE
           STORE "2" TO vfEl
 ENDCASE
 DO CASE
      CASE vpEd=1
           STORE "S" TO vpEd
      OTHERWISE
           STORE "N" TO vpEd
 ENDCASE
 DO CASE
      CASE vcOr=1
           STORE "S" TO vcOr
      OTHERWISE
           STORE "N" TO vcOr
 ENDCASE
 DO CASE
      CASE vsLd=1
           STORE "S" TO vsLd
      OTHERWISE
           STORE "N" TO vsLd
 ENDCASE
 DO CASE
      CASE viNg=1
           STORE "S" TO viNg
      OTHERWISE
           STORE "N" TO viNg
 ENDCASE
 DO CASE
      CASE vpAl=1
           STORE "S" TO vpAl
      OTHERWISE
           STORE "N" TO vpAl
 ENDCASE
 DO CASE
      CASE vcOm=1
           STORE "S" TO vcOm
      OTHERWISE
           STORE "N" TO vcOm
 ENDCASE
 IF vvIt=5
      STORE 9 TO vvIt
 ENDIF
 DO CASE
      CASE vrEd=1
           STORE 0 TO vrEd
      CASE vrEd=2
           STORE 1 TO vrEd
      CASE vrEd=3
           STORE 2 TO vrEd
      OTHERWISE
           STORE 3 TO vrEd
 ENDCASE
 DO CASE
      CASE vhLp=1
           STORE 0 TO vhLp
      OTHERWISE
           STORE 1 TO vhLp
 ENDCASE
 DO gr1_0000a IN IDENTI1
 RELEASE vcIa, vrAz, vrZ1, vtIp, vdIr, vrUc, vtEl, vwEb, veMa, vlFa, vlFe,  ;
         vlFc, vlBo, vlBe
 RELEASE vlBc, vlNc, vlN1, vlN3, vlNd, vlN2, vlN4, vlGr, vlGe, vlNp, vlCp,  ;
         vlCr, vlL1, vlL2
 RELEASE vlL3, vlLz, vlLx, vlLy, vlLb, vlLd, vlLe, vlLn, vlLc, vlL0, vl10,  ;
         vl20, vl0b, vl1b
 RELEASE vl2b, vl0n, vl0c, vlSt, vlIs, voBr, vtMc, vdEc, vtRa, vaLm, vcIm,  ;
         vcAj, vmIi, vmAx
 RELEASE vdSp, vsTp, veMp, vmBo, vpEd, vvNd, vpIg, vfEl, vdEs, vmOn, viGv,  ;
         vgRa, vrEd, vpDc
 RELEASE vtFa, vcOr, vpIe, vvId, vlI1, vjAl, vpRe, viMp, vmNc, vfCc, vfCt,  ;
         vfCp, viNt, vdIa
 RELEASE vcOm, vlEt, vsEp, vsEd, vpSs, vvIt, vdEt, vhLp, vsLd, viNg, vpAl,  ;
         vvIn, vpAn
ENDPROC
*
PROCEDURE Cam_Menu
 PRIVATE psW0_nv3, psW0_ver, psW0_ni1, psW0_ni2
 STORE mpAt+mcIa+"\MENU1.DAT" TO mdBf
 STORE 01 TO meRr
 Use &mDBF Exclusive
 IF mkEy=k_Esc
      QUIT
 ENDIF
 STORE 00 TO meRr
 @ vlIn, mcL1+1 SAY "Archivo de Menús..." FONT "Arial", 12 STYLE "BT"
 DO poN_pan
 STORE vlIn+2 TO vlIn
 STORE FCOUNT() TO pnUm
 STORE 01 TO pnU1
 STORE 00 TO psW0_nv3
 DO WHILE .T.
      IF FIELD(pnU1)="NV3"
           STORE 1 TO psW0_nv3
      ENDIF
      STORE pnU1+1 TO pnU1
      IF pnU1>pnUm
           EXIT
      ENDIF
 ENDDO
 IF psW0_nv3=0
      @ clIn, mcL3+1 SAY "Campo NV3-1" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column NV3 N(2)
      REPLACE nv3 WITH 0 ALL
      DO veR_lin
 ENDIF
 @ clIn, mcL3+1 SAY "Graba Campo NV3-1" FONT "Arial", 8 STYLE "NT"
 REPLACE nv3 WITH 0 FOR nv3<=0
 REPLACE nv3 WITH 1 FOR prG="O\Vljno^" .AND. nv3<=0
 REPLACE nv3 WITH 1 FOR prG="O\Vljmo^" .AND. nv3<=0
 REPLACE nv3 WITH 1 FOR prG="O\\ljjo^" .AND. nv3<=0
 REPLACE nv3 WITH 1 FOR prG="OIVnloo^" .AND. nv3<=0
 REPLACE nv1 WITH "m" FOR prG="O^\mnnh^" .AND. nv1=" "
 DO veR_lin
 IF LEN(noM)<70
      @ clIn, mcL3+1 SAY "Campo RAZ" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Alter Column NOM C(70)
      DO veR_lin
 ENDIF
 CLOSE DATABASES
 STORE mpAt+mcIa+"\GRPUNM.DAT" TO mdBf
 STORE 01 TO meRr
 Use &mDBF Exclusive
 IF mkEy=k_Esc
      QUIT
 ENDIF
 STORE 00 TO meRr
 STORE FCOUNT() TO pnUm
 STORE 01 TO pnU1
 STORE 00 TO psW0_nv3, psW0_ver, psW0_ni1, psW0_ni2
 DO WHILE .T.
      DO CASE
           CASE FIELD(pnU1)="NV3"
                STORE 1 TO psW0_nv3
           CASE FIELD(pnU1)="VER"
                STORE 1 TO psW0_ver
           CASE FIELD(pnU1)="NI1"
                STORE 1 TO psW0_ni1
           CASE FIELD(pnU1)="NI2"
                STORE 1 TO psW0_ni2
      ENDCASE
      STORE pnU1+1 TO pnU1
      IF pnU1>pnUm
           EXIT
      ENDIF
 ENDDO
 IF psW0_nv3=0
      @ clIn, mcL3+1 SAY "Campo NV3-2" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column NV3 N(2)
      REPLACE nv3 WITH 0 ALL
      DO veR_lin
 ENDIF
 IF psW0_ver=0
      @ clIn, mcL3+1 SAY "Campo VER-2" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column VER D(8)
      REPLACE veR WITH CTOD("01/01/2009") ALL
      DO veR_lin
 ENDIF
 IF psW0_ni1=0
      @ clIn, mcL3+1 SAY "Campo NI1-2" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column NI1 C(1)   
      REPLACE ni1 WITH "A" ALL
      DO veR_lin
 ENDIF
 IF psW0_ni2=0
      @ clIn, mcL3+1 SAY "Campo NI2-2" FONT "Arial", 8 STYLE "NT"
      Alter Table &mDBF Add Column NI2 C(1)   
      REPLACE ni2 WITH "B" ALL
      DO veR_lin
 ENDIF
 @ clIn, mcL3+1 SAY "Graba Campo NV3-2" FONT "Arial", 8 STYLE "NT"
 REPLACE nv3 WITH 0 FOR nv3<=0
 REPLACE nv3 WITH 1 FOR prG="O\Vljno^" .AND. nv3<=0
 REPLACE nv3 WITH 1 FOR prG="O\Vljmo^" .AND. nv3<=0
 REPLACE nv3 WITH 1 FOR prG="O\\ljjo^" .AND. nv3<=0
 REPLACE nv3 WITH 1 FOR prG="OIVnloo^" .AND. nv3<=0
 REPLACE nv1 WITH "m" FOR prG="O^\mnnh^" .AND. nv1=" "
 DO veR_lin
 CLOSE DATABASES
 RELEASE psW0_nv3, psW0_ver, psW0_ni1, psW0_ni2
ENDPROC
*
PROCEDURE ColNeB
ENDPROC
*
PROCEDURE Tit_0000a
ENDPROC
*
PROCEDURE Pan_0000a
ENDPROC
*
