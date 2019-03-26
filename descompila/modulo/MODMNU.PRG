*
PROCEDURE Menu_Pri
 PRIVATE ppRg
 DO CASE
      CASE mfEl$"13"
           Define Menu mMENU Bar at Line .1 in Windows mPAN_SIS Font "&mLetRom",14   Style "NQ" Color Scheme 1
      OTHERWISE
           Define Menu mMENU Bar at Line .1 in Windows mPAN_SIS Font "&mLetAri",mTAM Style "NQ" Color Scheme 1
 ENDCASE
 SELECT meNu0_tmp
 SEEK mnIv
 STORE " " TO ppRg
 DO WHILE  .NOT. EOF() .AND. niV=mnIv
      STORE itE TO miTe
      DO CASE
           CASE miTe=1
                DEFINE PAD moP1 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION1 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION1 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION1 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION1 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP1 OF mmEnu ACTIVATE POPUP mpOp_opcion1
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion1 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion1 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion1 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion1 PROMPT  ;
                                      ALLTRIM(noM) MESSAGE cm1
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion1 DO OPCIONES IN MODMNU WITH POPUP()
           CASE miTe=2
                STORE " " TO ppRg
                DEFINE PAD moP2 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION2 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION2 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION2 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION2 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP2 OF mmEnu ACTIVATE POPUP mpOp_opcion2
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion2 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion2 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion2 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion2 PROMPT  ;
                                      ALLTRIM(noM)
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion2 DO OPCIONES IN MODMNU WITH POPUP()
           CASE miTe=3
                STORE " " TO ppRg
                DEFINE PAD moP3 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION3 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION3 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION3 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION3 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP3 OF mmEnu ACTIVATE POPUP mpOp_opcion3
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion3 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion3 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion3 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion3 PROMPT  ;
                                      ALLTRIM(noM)
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion3 DO OPCIONES IN MODMNU WITH POPUP()
           CASE miTe=4
                STORE " " TO ppRg
                DEFINE PAD moP4 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION4 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION4 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION4 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION4 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP4 OF mmEnu ACTIVATE POPUP mpOp_opcion4
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion4 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion4 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion4 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion4 PROMPT  ;
                                      ALLTRIM(noM)
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion4 DO OPCIONES IN MODMNU WITH POPUP()
           CASE miTe=5
                STORE " " TO ppRg
                DEFINE PAD moP5 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION5 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION5 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION5 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION5 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP5 OF mmEnu ACTIVATE POPUP mpOp_opcion5
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion5 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion5 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion5 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion5 PROMPT  ;
                                      ALLTRIM(noM)
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion5 DO OPCIONES IN MODMNU WITH POPUP()
           CASE miTe=6
                STORE " " TO ppRg
                DEFINE PAD moP6 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION6 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION6 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION6 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION6 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP6 OF mmEnu ACTIVATE POPUP mpOp_opcion6
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion6 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion6 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion6 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion6 PROMPT  ;
                                      ALLTRIM(noM)
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion6 DO OPCIONES IN MODMNU WITH POPUP()
           CASE miTe=7
                STORE " " TO ppRg
                DEFINE PAD moP7 OF mmEnu PROMPT ALLTRIM(noM)
                IF mdUe=1
                     DO CASE
                          CASE mrEs="3"
                               Define Popup mPOP_OPCION7 Margin Relative Color Scheme 1 Font "&mLetCou",8 Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION7 Margin Relative Color Scheme 1 Font "&mLetCou",9 Style "NQ"
                     ENDCASE
                ELSE
                     DO CASE
                          CASE mfEl$"13"
                               Define Popup mPOP_OPCION7 Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
                          OTHERWISE
                               Define Popup mPOP_OPCION7 Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
                     ENDCASE
                ENDIF
                ON PAD moP7 OF mmEnu ACTIVATE POPUP mpOp_opcion7
                SELECT meNu1_tmp
                SEEK mnIv+STR(miTe, 1, 0)
                DO WHILE  .NOT. EOF() .AND. niV=mnIv .AND. miTe=itE
                     DO CASE
                          CASE ALLTRIM(noM)="\-"
                               DEFINE BAR reC OF mpOp_opcion7 PROMPT "\-"
                          CASE mdUe=1 .AND. mrEs="3"
                               DEFINE BAR reC OF mpOp_opcion7 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 50)
                          CASE mdUe=1
                               DEFINE BAR reC OF mpOp_opcion7 PROMPT noM+ ;
                                      " "+co1+prG+co2+"  "+nv1+"-"+nv2+ ;
                                      "-"+STR(nv3, 2, 0)+"  "+SUBSTR(cm1,  ;
                                      1, 120)
                          OTHERWISE
                               DEFINE BAR reC OF mpOp_opcion7 PROMPT  ;
                                      ALLTRIM(noM)
                     ENDCASE
                     SKIP
                ENDDO
                ON SELECTION POPUP mpOp_opcion7 DO OPCIONES IN MODMNU WITH POPUP()
      ENDCASE
      SELECT meNu0_tmp
      SKIP
 ENDDO
 PRIVATE ptB1, ptB2
 STORE mtAb(01)+mtAb(02)+mtAb(03)+mtAb(04)+mtAb(05)+mtAb(06)+mtAb(07)+ ;
       mtAb(08)+mtAb(09)+mtAb(10)+mtAb(11)+mtAb(12)+mtAb(13)+mtAb(14)+ ;
       mtAb(15)+mtAb(16)+mtAb(17)+mtAb(18) TO ptB1
 STORE mtAb(19)+mtAb(20)+mtAb(21)+mtAb(22)+mtAb(23)+mtAb(24)+mtAb(25)+ ;
       mtAb(26)+mtAb(27)+mtAb(28)+mtAb(29)+mtAb(30)+mtAb(31)+mtAb(32)+ ;
       mtAb(33)+mtAb(34)+mtAb(35)+mtAb(36) TO ptB2
 IF LEN(ALLTRIM(ptB1+ptB2))<>0
      DEFINE PAD moP8 OF mmEnu PROMPT "Otros Menús"
      IF mfEl$"13"
           Define Popup mPOP_OTROME Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
      ELSE
           Define Popup mPOP_OTROME Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
      ENDIF
      ON PAD moP8 OF mmEnu ACTIVATE POPUP mpOp_otrome
      DO otR_0000a
      ON SELECTION POPUP mpOp_otrome DO OPCIONES IN MODMNU WITH POPUP()
      STORE SPACE(08) TO ppRg, mpRg
 ENDIF
 RELEASE ptB1, ptB2
 DEFINE PAD moP9 OF mmEnu PROMPT "Salir"
 DEFINE PAD moP0 OF mmEnu PROMPT "\      Vs.2018-1      "
 IF mfEl$"13"
      Define Popup mPOP_SALIDA Margin Relative Color Scheme 1 Font "&mLetRom",14   Style "NQ"
 ELSE
      Define Popup mPOP_SALIDA Margin Relative Color Scheme 1 Font "&mLetAri",mTAM Style "NQ"
 ENDIF
 ON PAD moP9 OF mmEnu ACTIVATE POPUP mpOp_salida
 DEFINE BAR 1 OF mpOp_salida PROMPT "Salir del Sistema" KEY ALT+S, "ALT S"
 ON SELECTION POPUP mpOp_salida DO RETORNA
 STORE SPACE(08) TO mpRg
 CLOSE INDEXES
 CLOSE DATABASES
 RELEASE ppRg
 RETURN
ENDPROC
*
PROCEDURE Opciones
 PARAMETER ppOp
 STORE 00 TO miTe
 STORE BAR() TO mbAr
 STORE PAD() TO mpAd
 DO CASE
      CASE ppOp=="MPOP_OPCION1"
           STORE 1 TO miTe
      CASE ppOp=="MPOP_OPCION2"
           STORE 2 TO miTe
      CASE ppOp=="MPOP_OPCION3"
           STORE 3 TO miTe
      CASE ppOp=="MPOP_OPCION4"
           STORE 4 TO miTe
      CASE ppOp=="MPOP_OPCION5"
           STORE 5 TO miTe
      CASE ppOp=="MPOP_OPCION6"
           STORE 6 TO miTe
      CASE ppOp=="MPOP_OPCION7"
           STORE 7 TO miTe
      CASE ppOp=="MPOP_OTROME"
           STORE mbAr+800 TO miTe
 ENDCASE
 DEACTIVATE MENU mmEnu
ENDPROC
*
PROCEDURE Otr_0000a
 PRIVATE ptB1, ptB2, x
 STORE mtAb(01)+mtAb(02)+mtAb(03)+mtAb(04)+mtAb(05)+mtAb(06)+mtAb(07)+ ;
       mtAb(08)+mtAb(09)+mtAb(10)+mtAb(11)+mtAb(12)+mtAb(13)+mtAb(14)+ ;
       mtAb(15)+mtAb(16)+mtAb(17)+mtAb(18) TO ptB1
 STORE mtAb(19)+mtAb(20)+mtAb(21)+mtAb(22)+mtAb(23)+mtAb(24)+mtAb(25)+ ;
       mtAb(26)+mtAb(27)+mtAb(28)+mtAb(29)+mtAb(30)+mtAb(31)+mtAb(32)+ ;
       mtAb(33)+mtAb(34)+mtAb(35)+mtAb(36) TO ptB2
 IF LEN(ALLTRIM(ptB1+ptB2))<>0
      SELECT meNus
      STORE 1 TO x
      IF LEN(ALLTRIM(mtAb(1)))<>0 .AND. mtAb(x)<>mnIv
           STORE mtAb(1) TO moPp
           SEEK mtAb(x)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(02)))<>0 .AND. mtAb(02)<>mnIv
           STORE mtAb(2) TO moPp
           SEEK mtAb(02)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(03)))<>0 .AND. mtAb(03)<>mnIv
           STORE mtAb(3) TO moPp
           SEEK mtAb(03)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(04)))<>0 .AND. mtAb(04)<>mnIv
           STORE mtAb(4) TO moPp
           SEEK mtAb(04)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(05)))<>0 .AND. mtAb(05)<>mnIv
           STORE mtAb(5) TO moPp
           SEEK mtAb(05)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(06)))<>0 .AND. mtAb(06)<>mnIv
           STORE mtAb(6) TO moPp
           SEEK mtAb(06)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(07)))<>0 .AND. mtAb(07)<>mnIv
           STORE mtAb(7) TO moPp
           SEEK mtAb(07)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(08)))<>0 .AND. mtAb(08)<>mnIv
           STORE mtAb(8) TO moPp
           SEEK mtAb(08)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(09)))<>0 .AND. mtAb(09)<>mnIv
           STORE mtAb(9) TO moPp
           SEEK mtAb(09)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(10)))<>0 .AND. mtAb(10)<>mnIv
           STORE mtAb(10) TO moPp
           SEEK mtAb(10)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(11)))<>0 .AND. mtAb(11)<>mnIv
           STORE mtAb(11) TO moPp
           SEEK mtAb(11)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(12)))<>0 .AND. mtAb(12)<>mnIv
           STORE mtAb(12) TO moPp
           SEEK mtAb(12)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(13)))<>0 .AND. mtAb(13)<>mnIv
           STORE mtAb(13) TO moPp
           SEEK mtAb(13)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(14)))<>0 .AND. mtAb(14)<>mnIv
           STORE mtAb(14) TO moPp
           SEEK mtAb(14)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(15)))<>0 .AND. mtAb(15)<>mnIv
           STORE mtAb(15) TO moPp
           SEEK mtAb(15)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(16)))<>0 .AND. mtAb(16)<>mnIv
           STORE mtAb(16) TO moPp
           SEEK mtAb(16)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(17)))<>0 .AND. mtAb(17)<>mnIv
           STORE mtAb(17) TO moPp
           SEEK mtAb(17)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(18)))<>0 .AND. mtAb(18)<>mnIv
           STORE mtAb(18) TO moPp
           SEEK mtAb(18)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(19)))<>0 .AND. mtAb(19)<>mnIv
           STORE mtAb(19) TO moPp
           SEEK mtAb(19)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(20)))<>0 .AND. mtAb(20)<>mnIv
           STORE mtAb(20) TO moPp
           SEEK mtAb(20)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(21)))<>0 .AND. mtAb(21)<>mnIv
           STORE mtAb(21) TO moPp
           SEEK mtAb(21)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(22)))<>0 .AND. mtAb(22)<>mnIv
           STORE mtAb(22) TO moPp
           SEEK mtAb(22)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(23)))<>0 .AND. mtAb(23)<>mnIv
           STORE mtAb(23) TO moPp
           SEEK mtAb(23)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(24)))<>0 .AND. mtAb(24)<>mnIv
           STORE mtAb(24) TO moPp
           SEEK mtAb(24)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(25)))<>0 .AND. mtAb(25)<>mnIv
           STORE mtAb(25) TO moPp
           SEEK mtAb(25)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(26)))<>0 .AND. mtAb(26)<>mnIv
           STORE mtAb(26) TO moPp
           SEEK mtAb(26)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(27)))<>0 .AND. mtAb(27)<>mnIv
           STORE mtAb(27) TO moPp
           SEEK mtAb(27)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(28)))<>0 .AND. mtAb(28)<>mnIv
           STORE mtAb(28) TO moPp
           SEEK mtAb(28)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(29)))<>0 .AND. mtAb(29)<>mnIv
           STORE mtAb(29) TO moPp
           SEEK mtAb(29)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(30)))<>0 .AND. mtAb(30)<>mnIv
           STORE mtAb(30) TO moPp
           SEEK mtAb(30)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(31)))<>0 .AND. mtAb(31)<>mnIv
           STORE mtAb(31) TO moPp
           SEEK mtAb(31)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(32)))<>0 .AND. mtAb(32)<>mnIv
           STORE mtAb(32) TO moPp
           SEEK mtAb(32)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(33)))<>0 .AND. mtAb(33)<>mnIv
           STORE mtAb(33) TO moPp
           SEEK mtAb(33)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(34)))<>0 .AND. mtAb(34)<>mnIv
           STORE mtAb(34) TO moPp
           SEEK mtAb(34)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(35)))<>0 .AND. mtAb(35)<>mnIv
           STORE mtAb(35) TO moPp
           SEEK mtAb(35)
           DO opC_0000a
           STORE x+1 TO x
      ENDIF
      IF LEN(ALLTRIM(mtAb(36)))<>0 .AND. mtAb(36)<>mnIv
           STORE mtAb(36) TO moPp
           SEEK mtAb(36)
           DO opC_0000a
      ENDIF
      CLOSE INDEXES
      CLOSE DATABASES
 ENDIF
 RELEASE ptB1, ptB2, x
ENDPROC
*
PROCEDURE IrM_0000a
 PRIVATE x
 STORE 801 TO x
 IF LEN(ALLTRIM(mtAb(01)))<>0 .AND. mtAb(01)<>mnIv
      IF miTe=x
           STORE mtAb(01) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(02)))<>0 .AND. mtAb(02)<>mnIv
      IF miTe=x
           STORE mtAb(02) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(03)))<>0 .AND. mtAb(03)<>mnIv
      IF miTe=x
           STORE mtAb(03) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(04)))<>0 .AND. mtAb(04)<>mnIv
      IF miTe=x
           STORE mtAb(04) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(05)))<>0 .AND. mtAb(05)<>mnIv
      IF miTe=x
           STORE mtAb(05) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(06)))<>0 .AND. mtAb(06)<>mnIv
      IF miTe=x
           STORE mtAb(06) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(07)))<>0 .AND. mtAb(07)<>mnIv
      IF miTe=x
           STORE mtAb(07) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(08)))<>0 .AND. mtAb(08)<>mnIv
      IF miTe=x
           STORE mtAb(08) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(09)))<>0 .AND. mtAb(09)<>mnIv
      IF miTe=x
           STORE mtAb(09) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(10)))<>0 .AND. mtAb(10)<>mnIv
      IF miTe=x
           STORE mtAb(10) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(11)))<>0 .AND. mtAb(11)<>mnIv
      IF miTe=x
           STORE mtAb(11) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(12)))<>0 .AND. mtAb(12)<>mnIv
      IF miTe=x
           STORE mtAb(12) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(13)))<>0 .AND. mtAb(13)<>mnIv
      IF miTe=x
           STORE mtAb(13) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(14)))<>0 .AND. mtAb(14)<>mnIv
      IF miTe=x
           STORE mtAb(14) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(15)))<>0 .AND. mtAb(15)<>mnIv
      IF miTe=x
           STORE mtAb(15) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(16)))<>0 .AND. mtAb(16)<>mnIv
      IF miTe=x
           STORE mtAb(16) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(17)))<>0 .AND. mtAb(17)<>mnIv
      IF miTe=x
           STORE mtAb(17) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(18)))<>0 .AND. mtAb(18)<>mnIv
      IF miTe=x
           STORE mtAb(18) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(19)))<>0 .AND. mtAb(19)<>mnIv
      IF miTe=x
           STORE mtAb(19) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(20)))<>0 .AND. mtAb(20)<>mnIv
      IF miTe=x
           STORE mtAb(20) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(21)))<>0 .AND. mtAb(21)<>mnIv
      IF miTe=x
           STORE mtAb(21) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(22)))<>0 .AND. mtAb(22)<>mnIv
      IF miTe=x
           STORE mtAb(22) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(23)))<>0 .AND. mtAb(23)<>mnIv
      IF miTe=x
           STORE mtAb(23) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(24)))<>0 .AND. mtAb(24)<>mnIv
      IF miTe=x
           STORE mtAb(24) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(25)))<>0 .AND. mtAb(25)<>mnIv
      IF miTe=x
           STORE mtAb(25) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(26)))<>0 .AND. mtAb(26)<>mnIv
      IF miTe=x
           STORE mtAb(26) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(27)))<>0 .AND. mtAb(27)<>mnIv
      IF miTe=x
           STORE mtAb(27) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(28)))<>0 .AND. mtAb(28)<>mnIv
      IF miTe=x
           STORE mtAb(28) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(29)))<>0 .AND. mtAb(29)<>mnIv
      IF miTe=x
           STORE mtAb(29) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(30)))<>0 .AND. mtAb(30)<>mnIv
      IF miTe=x
           STORE mtAb(30) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(31)))<>0 .AND. mtAb(31)<>mnIv
      IF miTe=x
           STORE mtAb(31) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(32)))<>0 .AND. mtAb(32)<>mnIv
      IF miTe=x
           STORE mtAb(32) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(33)))<>0 .AND. mtAb(33)<>mnIv
      IF miTe=x
           STORE mtAb(33) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(34)))<>0 .AND. mtAb(34)<>mnIv
      IF miTe=x
           STORE mtAb(34) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(35)))<>0 .AND. mtAb(35)<>mnIv
      IF miTe=x
           STORE mtAb(35) TO mnIv
           RETURN
      ENDIF
      STORE x+1 TO x
 ENDIF
 IF LEN(ALLTRIM(mtAb(36)))<>0 .AND. mtAb(36)<>mnIv
      IF miTe=x
           STORE mtAb(36) TO mnIv
           RETURN
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE Programas
 PRIVATE ppRg
 DO CASE
      CASE miTe>800
           DO irM_0000a
      OTHERWISE
           STORE 01 TO meRr
           STORE "M001"+mtM2+meX1 TO mdBf
           Use &mDBF Exclusive Alias Menu1_Tmp
           IF mkEy=k_Esc
                DO reTorna
           ENDIF
           SET ORDER TO MENU1
           IF mkEy=k_Esc
                DO reTorna
           ENDIF
           STORE 00 TO meRr
           GOTO TOP
           SEEK mnIv+STR(miTe, 1, 0)+STR(mbAr, 2, 0)
           IF  .NOT. EOF()
                STORE 05 TO meRr
                DO reS_0000a
                DO pt1_0000a
                reDucememory()
                STORE ALLTRIM(noM)+" ("+ALLTRIM(STR(maNc, 4, 0))+"x"+ ;
                      ALLTRIM(STR(mlAr, 4, 0))+"-"+mrEs+")" TO ppRg
                DO CASE
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=1
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de S.A.M. "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE  ;
                                 "Versión Pago-Credito de S.A.M. "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=2
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de Vitral "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE  ;
                                 "Versión Pago-Credito de Vitral "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=3
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de SamMad "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE  ;
                                 "Versión Pago-Credito de SamMad "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=4
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de SamJoy "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE  ;
                                 "Versión Pago-Credito de SamJoy "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=9
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de S.I.M. "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE  ;
                                 "Versión Pago-Credito de S.I.M. "+mmNu+ ;
                                 " ["+ALLTRIM(ppRg)+"]"
                     CASE mvIt=1
                          MODIFY WINDOW scReen TITLE "S.A.M. "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE "S.A.M. "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                     CASE mvIt=2
                          MODIFY WINDOW scReen TITLE "VITRAL "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE "VITRAL "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                     CASE mvIt=3
                          MODIFY WINDOW scReen TITLE "SamMad "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE "SamMad "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                     CASE mvIt=4
                          MODIFY WINDOW scReen TITLE "SamJoy "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE "SamJoy "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                     CASE mvIt=9
                          MODIFY WINDOW scReen TITLE "S.I.M. "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                          MODIFY WINDOW mpAn_sis TITLE "S.I.M. "+ ;
                                 ALLTRIM(mmNu)+" ["+ALLTRIM(ppRg)+"]"
                ENDCASE
                STORE co1+prG+co2 TO mpRg
                STORE nv1 TO mnV1
                STORE nv2 TO mnV2
                STORE nv3 TO mnV3
                STORE mrEs TO mrSs
                STORE 0 TO meN1
                CLOSE INDEXES
                CLOSE DATABASES
                SET STATUS BAR OFF
                DO CASE
                     CASE mnV1>"0" .AND. mnV2>"0" .AND. mnV3<>0
                          Do &mPRG with mNV1,mNV2,mNV3
                     CASE mnV1>"0" .AND. mnV3<>0
                          Do &mPRG with mNV1,mNV3
                     CASE mnV1>"0" .AND. mnV2>"0"
                          Do &mPRG with mNV1,mNV2
                     CASE mnV1>"0"
                          Do &mPRG with mNV1
                     OTHERWISE
                          Do &mPRG
                ENDCASE
                IF mdUe=1
                     SET STATUS BAR ON
                ENDIF
                STORE 00 TO meRr
                CLOSE INDEXES
                CLOSE DATABASES
                STORE SPACE(08) TO mpRg
                DO CASE
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=1
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de S.A.M. ("+ ;
                                 STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" dias)"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=2
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de Vitral ("+ ;
                                 STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" dias)"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=3
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de SamMad ("+ ;
                                 STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" dias)"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=4
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de SamJoy ("+ ;
                                 STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" dias)"
                     CASE LEN(ALLTRIM(msIm))<>0 .AND. mvIt=9
                          MODIFY WINDOW scReen TITLE  ;
                                 "Versión Pago-Credito de S.I.M. ("+ ;
                                 STR(ASC(ALLTRIM(msIm))-64, 2, 0)+" dias)"
                     CASE mvIt=1
                          MODIFY WINDOW scReen TITLE "S.A.M. "+ ;
                                 ALLTRIM(mmNu)+"  ["+ALLTRIM(muSu)+"]"
                     CASE mvIt=2
                          MODIFY WINDOW scReen TITLE "VITRAL "+ ;
                                 ALLTRIM(mmNu)+"  ["+ALLTRIM(muSu)+"]"
                     CASE mvIt=3
                          MODIFY WINDOW scReen TITLE "SamMad "+ ;
                                 ALLTRIM(mmNu)+"  ["+ALLTRIM(muSu)+"]"
                     CASE mvIt=4
                          MODIFY WINDOW scReen TITLE "SamJoy "+ ;
                                 ALLTRIM(mmNu)+"  ["+ALLTRIM(muSu)+"]"
                     CASE mvIt=9
                          MODIFY WINDOW scReen TITLE "S.I.M. "+ ;
                                 ALLTRIM(mmNu)+"  ["+ALLTRIM(muSu)+"]"
                ENDCASE
           ENDIF
 ENDCASE
 RELEASE ppRg
ENDPROC
*
