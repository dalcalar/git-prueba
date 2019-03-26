 SET PROCEDURE TO MODSET
 DO seT_ini
 DO teC_ini
 DO leT_ini
 DO seT_var
 DO veR_fil
 DO siN_demo
 DO abR_path
 STORE SPACE(02) TO mcIa
 STORE 1 TO mvIt
 STORE 0 TO mhLp
 DO coL_ini
 DO paR_fico
 DO reS_0000a
 DO paN_0000a
 MODIFY WINDOW scReen TITLE "SETEO EMPRESA ("+ALLTRIM(STR(maNc, 4, 0))+ ;
        "x"+ALLTRIM(STR(mlAr, 4, 0))+") ["+mrEs+"]" ICON FILE "ICON04.ICO"
 @0,0 Say "&mPTA" BitMap Style "Q" Stretch
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 STORE mrEs TO mrSs
 DO prEsiona WITH "4", "MNU_PA01", mxX1, myY1
 IF mkEy=k_Esc
      DO reTorno
 ENDIF
 DO clAve_in WITH "3"
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
 PUBLIC vpAg, viTe, ciTe, ciTx, voPc, coPc, vcIa, ccIa, vrAz, vrZ1, vdIr,  ;
        vtIp, vrUc
 PUBLIC vwEb, veMa, vtEl, vlFa, vlFe, vlFc, vlBo, vlBe, vlBc, vlNc, vlN1,  ;
        vlN3, vlNd
 PUBLIC vlN2, vlN4, vlGr, vlGe, vlNp, vlCp, vlCr, vlL1, vlL2, vlL3, vlLz,  ;
        vlLx, vlLy
 PUBLIC vlLb, vlLd, vlLe, vlLn, vlLc, vlL0, vl10, vl20, vl0b, vl1b, vl2b,  ;
        vl0n, vl0c
 PUBLIC vlSt, vlIs, voBr, vtMc, vdEc, vtRa, vaLm, vcIm, vcAj, vmIi, vmAx,  ;
        vdSp, vsTp
 PUBLIC veMp, vmBo, vpEd, vvNd, vpIg, vfEl, vdEs, vmOn, vgRa, vrEd, vpDc,  ;
        vtFa, vcOr
 PUBLIC vpIe, vvId, vlI1, vjAl, vpRe, viMp, vmNc, vfCc, vfCt, vfCp, viNt,  ;
        vdIa, vcOm
 PUBLIC vlEt, vsEp, vsEd, vpSs, vvIt, vdEt, vhLp, vsLd, viNg, vpAl, vvIn, vpAn
 DO liM_0000a
 STORE 01 TO msAl, viTe, vpAg
 STORE 99 TO mkEy, coPc
 STORE 00 TO voPc
 STORE SPACE(02) TO vcIa, ccIa
 DO p00_0000a WITH "0"
 IF mkEy=k_Esc
      DO reTorna
 ENDIF
 DO p1_0000a
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
           CASE mkEy=k_Esc .AND. viTe=1
                STORE 99 TO mkEy
                EXIT
           CASE mkEy=k_Ctrl_home .AND. viTe=1
                STORE "Estás en el primer campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vpAg=1 .AND. viTe=39
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_end .AND. vpAg=1 .AND. viTe=16
                STORE "Estás en el último campo..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. (viTe=1 .OR. viTe=4 .OR. viTe=7)
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vpAg=1 .AND. ((viTe>=10 .AND. viTe<= ;
                18) .OR. viTe=38 .OR. viTe=39)
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Ctrl_left .AND. vpAg=2 .AND. ((viTe>=10 .AND. viTe<= ;
                13) .OR. viTe=14 .OR. viTe=15)
                STORE "No hay más campos a la izquierda..." TO mmSj
           CASE mkEy=k_Up .AND. viTe<4
                STORE "No hay más campos arriba..." TO mmSj
           CASE mkEy=k_Esc .OR. mkEy=k_Ctrl_home
                STORE 99 TO mkEy, coPc
                STORE 01 TO viTe
           CASE mkEy=k_Enter
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE vpAg=1 .AND. viTe=39
                          CASE vpAg=2 .AND. viTe=16
                          OTHERWISE
                               STORE viTe+1 TO viTe
                     ENDCASE
                ENDIF
           CASE mkEy=k_Down
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=1 .OR. viTe=4 .OR. viTe=6
                               STORE viTe+3 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=2 .OR. viTe=3
                               STORE viTe+2 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE viTe=5
                               STORE viTe+4 TO ciTe
                               STORE viTe+1 TO viTe
                               DO WHILE viTe<ciTe .AND. mkEy<>99
                                    DO veR_0000a
                                    IF mkEy<>99
                                         STORE viTe+1 TO viTe
                                    ENDIF
                               ENDDO
                          CASE vpAg=1
                               DO CASE
                                    CASE viTe=18 .OR. viTe=26 .OR. viTe= ;
                                     32 .OR. viTe=39
                                    CASE viTe=7
                                         STORE viTe+3 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=8
                                         STORE 27 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=9
                                         STORE 33 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE vpAg=2
                               DO CASE
                                    CASE viTe=13 .OR. viTe=16
                                    CASE viTe=7 .OR. viTe=8
                                         STORE 10 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=6 .OR. viTe=9
                                         STORE 14 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                     ENDCASE
                ENDIF
           CASE mkEy=k_Up
                DO CASE
                     CASE viTe=4
                          STORE 1 TO viTe
                          STORE 99 TO coPc
                     CASE viTe=5 .OR. viTe=6
                          STORE 3 TO viTe
                     CASE viTe=7 .OR. viTe=8
                          STORE 4 TO viTe
                     CASE viTe=9
                          STORE 5 TO viTe
                     CASE vpAg=1
                          DO CASE
                               CASE viTe=10
                                    STORE 7 TO viTe
                               CASE viTe=19 .OR. viTe=27
                                    STORE 8 TO viTe
                               CASE viTe=33
                                    STORE 9 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                     CASE vpAg=2
                          DO CASE
                               CASE viTe=14
                                    STORE 9 TO viTe
                               CASE viTe=10
                                    STORE 7 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                          ENDCASE
                ENDCASE
           CASE mkEy=k_Ctrl_right
                DO veR_0000a
                IF mkEy<>99
                     DO CASE
                          CASE viTe=3 .OR. viTe=6 .OR. viTe=9
                          CASE vpAg=1
                               DO CASE
                                    CASE viTe>=33
                                    CASE viTe>=10 .AND. viTe<=17
                                         STORE viTe+9 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=18
                                         STORE 26 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe>=19 .AND. viTe<=21
                                         STORE viTe+8 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=22
                                         STORE 29 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe>=23 .AND. viTe<=25
                                         STORE viTe+7 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe=26
                                         STORE 32 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe>=27 .AND. viTe<=29
                                         STORE viTe+6 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    CASE viTe>=30 .AND. viTe<=32
                                         STORE 37 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                          CASE vpAg=1
                               DO CASE
                                    CASE viTe>=14
                                    CASE viTe>=10 .AND. viTe<=13
                                         STORE 16 TO ciTe
                                         STORE viTe+1 TO viTe
                                         DO WHILE viTe<ciTe .AND. mkEy<>99
                                              DO veR_0000a
                                              IF mkEy<>99
                                                   STORE viTe+1 TO viTe
                                              ENDIF
                                         ENDDO
                                    OTHERWISE
                                         STORE viTe+1 TO viTe
                               ENDCASE
                     ENDCASE
                ENDIF
           CASE mkEy=k_Ctrl_left
                DO CASE
                     CASE vpAg=1
                          DO CASE
                               CASE viTe>=19 .AND. viTe<=26
                                    STORE viTe-9 TO viTe
                               CASE viTe>=27 .AND. viTe<=29
                                    STORE viTe-8 TO viTe
                               CASE viTe>=30 .AND. viTe<=32
                                    STORE viTe-7 TO viTe
                               CASE viTe>=33 .AND. viTe<=35
                                    STORE viTe-6 TO viTe
                               CASE viTe>=36 .AND. viTe<=37
                                    STORE 30 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                                    IF viTe=1
                                         STORE 99 TO coPc
                                    ENDIF
                          ENDCASE
                     CASE vpAg=2
                          DO CASE
                               CASE viTe=16
                                    STORE 13 TO viTe
                               OTHERWISE
                                    STORE viTe-1 TO viTe
                                    IF viTe=1
                                         STORE 99 TO coPc
                                    ENDIF
                          ENDCASE
                ENDCASE
           CASE mkEy=k_Ctrl_end
                DO CASE
                     CASE vpAg=1
                          STORE 39 TO ciTe
                     CASE vpAg=2
                          STORE 16 TO ciTe
                ENDCASE
                STORE viTe TO viTe
                DO WHILE viTe<ciTe .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ELSE
                          EXIT
                     ENDIF
                ENDDO
           CASE mkEy=k_Tab
                DO CASE
                     CASE vpAg=1
                          STORE 39 TO ciTe
                     CASE vpAg=2
                          STORE 16 TO ciTe
                ENDCASE
                DO WHILE viTe<ciTe .AND. mkEy<>99
                     DO veR_0000a
                     IF mkEy<>99
                          STORE viTe+1 TO viTe
                     ELSE
                          EXIT
                     ENDIF
                ENDDO
                IF mkEy<>99 .AND. viTe<ciTe
                     STORE ciTe TO viTe
                     DO veR_0000a
                ENDIF
                IF mkEy<>99
                     DO grA_0000a
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                     STORE 01 TO viTe
                     STORE 99 TO mkEy
                ENDIF
      ENDCASE
      IF LEN(ALLTRIM(mmSj))<>0
           DO poNmsj
           STORE 99 TO mkEy
      ENDIF
      STORE k_Enter TO mkEy
      DO opC_0000a
      DO coLbln
      DO CASE
           CASE viTe=1
                @mFI0+00.8,mCO0+016.0 Get  vCIA Font "&mLetAri",9 Style "BQ" Size 1,3.3 Pict "!!" Color ,&mColBlN
           CASE viTe=2
                @mFI0+00.8,mCO0+040.0 Edit vRAZ Font "&mLetAri",9 Style "NQ" Size 1,80,50
           CASE viTe=3
                @mFI0+00.8,mCO0+139.0 Edit vRZ1 Font "&mLetAri",9 Style "NQ" Size 1,40,40
           CASE viTe=4
                @mFI0+02.3,mCO0+016.0 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,104,100
           CASE viTe=5
                @mFI0+02.3,mCO0+139.0 Edit vTIP Font "&mLetAri",9 Style "NQ" Size 1,11,10
           CASE viTe=6
                @mFI0+02.3,mCO0+162.0 Edit vRUC Font "&mLetAri",9 Style "NQ" Size 1,17,11
           CASE viTe=7
                @mFI0+03.8,mCO0+016.0 Edit vEMA Font "&mLetAri",9 Style "NQ" Size 1,30,70
           CASE viTe=8
                @mFI0+03.8,mCO0+089.8 Edit vWEB Font "&mLetAri",9 Style "NQ" Size 1,30,70
           CASE viTe=9
                @mFI0+03.8,mCO0+139.0 Edit vTEL Font "&mLetAri",9 Style "NQ" Size 1,20,20
           CASE vpAg=1 .AND. viTe=10
                @mFI0+08.0,mCO0+032.2 Get  vLFA Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=11
                @mFI0+09.5,mCO0+032.2 Get  vLFE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=12
                @mFI0+11.0,mCO0+032.2 Get  vLFC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=13
                @mFI0+12.5,mCO0+032.2 Get  vLBO Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=14
                @mFI0+14.0,mCO0+032.2 Get  vLBE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=15
                @mFI0+15.5,mCO0+032.2 Get  vLBC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=16
                @mFI0+17.0,mCO0+032.2 Get  vLNC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=17
                @mFI0+18.5,mCO0+032.2 Get  vLN1 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=18
                @mFI0+20.0,mCO0+032.2 Get  vLN3 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=19
                @mFI0+08.0,mCO0+077.0 Get  vLND Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=20
                @mFI0+09.5,mCO0+077.0 Get  vLN2 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=21
                @mFI0+11.0,mCO0+077.0 Get  vLN4 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=22
                @mFI0+12.5,mCO0+077.0 Get  vLGR Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=23
                @mFI0+14.0,mCO0+077.0 Get  vLGE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=24
                @mFI0+15.5,mCO0+077.0 Get  vLNP Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=25
                @mFI0+17.0,mCO0+077.0 Get  vLCP Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=26
                @mFI0+18.5,mCO0+077.0 Get  vLCR Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=27
                @mFI0+08.0,mCO0+107.2 Get  vLL1 Font "&mLetAri",9 Style "NQ" Size 1,01.7 Pict "9"  Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=28
                @mFI0+09.5,mCO0+107.2 Get  vLL2 Font "&mLetAri",9 Style "NQ" Size 1,01.7 Pict "9"  Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=29
                @mFI0+11.0,mCO0+107.2 Get  vLL3 Font "&mLetAri",9 Style "NQ" Size 1,01.7 Pict "9"  Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=30
                @mFI0+14.6,mCO0+107.2 Get  vLST Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=31
                @mFI0+16.1,mCO0+107.2 Get  vLIS Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=32
                @mFI0+17.6,mCO0+107.2 Get  vOBR Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=33
                @mFI0+08.0,mCO0+140.2 Get  vTMC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"         Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=34
                @mFI0+09.5,mCO0+140.2 Get  vDEC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"         Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=35
                @mFI0+11.0,mCO0+140.2 Get  vTRA Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"       Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=36
                @mFI0+12.5,mCO0+140.2 Get  vALM Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"       Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=37
                @mFI0+14.0,mCO0+140.2 Get  vCIM Font "&mLetAri",9 Style "NQ" Size 1,14.7 Pict "!!!!!!!!!!" Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=38
                @mFI0+21.5,mCO0+123.2 Get  vEMP Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"      Color ,&mColBlN
           CASE vpAg=1 .AND. viTe=39
                @mFI0+23.0,mCO0+123.2 Get  vMBO Font "&mLetAri",9 Style "NQ" Size 1,12.5 Pict "9999.9999" Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=10
                @mFI0+20.4,mCO0+047.2 Get  vFCC Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "999.999" Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=11
                @mFI0+21.9,mCO0+047.2 Get  vFCT Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "999.999" Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=12
                @mFI0+23.4,mCO0+047.2 Get  vFCP Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "999.999" Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=13
                @mFI0+27.9,mCO0+047.2 Get  vPSS Font "&mLetAri",9 Style "NQ" Size 1,01.4 Pict "9"          Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=14
                @mFI0+11.0,mCO0+146.0 Get  vINT Font "&mLetAri",9 Style "NQ" Size 1,08.2 Pict "99.999"  Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=15
                @mFI0+12.5,mCO0+146.0 Get  vDIA Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"      Color ,&mColBlN
           CASE vpAg=2 .AND. viTe=16
                @mFI0+27.9,mCO0+107.1 Edit vVIN Font "&mLetAri",9 Style "NQ" Size 1,40,30
      ENDCASE
      SET CURSOR ON
      READ
      SET CURSOR OFF
 ENDDO
 DO deL_files
 RETURN
ENDPROC
*
PROCEDURE Ver_0000a
 STORE SPACE(100) TO mmSj
 DO CASE
      CASE viTe=1 .AND. LEN(ALLTRIM(vcIa))=0
           STORE "Código de Compañía no puede estar vacío..." TO mmSj
      CASE viTe=1 .AND. AT(" ", vcIa)<>0
           STORE "Código de Compañía no puede tener espacios vacíos..." TO mmSj
      CASE viTe=1 .AND. vcIa=ccIa
           STORE 99 TO coPc
      CASE viTe=1 .AND. vcIa<>ccIa
           STORE mpAt+"IDENTI2.DBB" TO mdBf
           meXi = fiLsobj.fiLeexists(mdBf)
           If .not.File("&mDBF") .and. mEXI = .F.
                DO liM_0000a
                DO diS_0000a
                STORE 99 TO coPc
                STORE vcIa TO ccIa
                RETURN
           ENDIF
           STORE 01 TO meRr
           STORE mpAt+"IDENTI2.DBB" TO mdBf
           Use &mDBF Exclusive Alias Identi2
           IF mkEy=k_Esc
                DO reTorna
           ENDIF
           STORE 00 TO meRr
           GOTO TOP
           IF ciA<>vcIa
                STORE "Datos instalados NO CONCUERDAN..." TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
                CLOSE DATABASES
                RETURN
           ENDIF
           CLOSE DATABASES
           STORE mpAt+vcIa+"\IDENTI1.DBB" TO mdBf
           meXi = fiLsobj.fiLeexists(mdBf)
           If .not.File("&mDBF") .and. mEXI = .F.
                STORE "Código de Compañía no registrado..." TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
                RETURN
           ENDIF
           PRIVATE pcIa
           STORE 01 TO meRr
           Use &mDBF Exclusive Alias Identi1
           IF mkEy=k_Esc
                DO reTorna
           ENDIF
           STORE 00 TO meRr
           GOTO TOP
           STORE ciA TO pcIa
           DO prO_0000a IN MODSET WITH pcIa
           STORE mfRa TO pcIa
           IF pcIa<>vcIa
                STORE "Datos instalados NO CONCUERDAN..." TO mmSj
                DO poNmsj
                STORE 99 TO mkEy
                CLOSE DATABASES
                RELEASE pcIa
                RETURN
           ENDIF
           RELEASE pcIa
           STORE 99 TO coPc
           DO muE_0000a
           DO diS_0000a
           STORE vcIa TO ccIa
           CLOSE DATABASES
      CASE viTe=2 .AND. LEN(ALLTRIM(vrAz))=0
           STORE "Razón Social no puede estar vacía..." TO mmSj
      CASE vpAg=1 .AND. viTe=10 .AND. vlFa=0
           STORE "Número de Líneas de Factura no puede ser 0..." TO mmSj
      CASE vpAg=1 .AND. viTe=11 .AND. vlFe=0
           STORE "Número de Líneas de Factura Electrónica no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=12 .AND. vlFc=0
           STORE "Número de Líneas de Factura Electrónica SOL no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=13 .AND. vlBo=0
           STORE "Número de Líneas de Boleta no puede ser 0..." TO mmSj
      CASE vpAg=1 .AND. viTe=14 .AND. vlBe=0
           STORE "Número de Líneas de Boleta Electrónica no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=15 .AND. vlBc=0
           STORE "Número de Líneas de Boleta Electrónica SOL no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=16 .AND. vlNc=0
           STORE "Número de Líneas de Nota de Crédito no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=17 .AND. vlN1=0
           STORE "Número de Líneas de Nota de Crédito Electrónica no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=18 .AND. vlN3=0
           STORE "Número de Líneas de Nota de Crédito Electrónica SOL no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=19 .AND. vlNd=0
           STORE "Número de Líneas de Nota de Débito no puede ser 0..." TO mmSj
      CASE vpAg=1 .AND. viTe=20 .AND. vlN2=0
           STORE "Número de Líneas de Nota de Débito Electrónica no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=21 .AND. vlN4=0
           STORE "Número de Líneas de Nota de Débito Electrónica SOL no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=22 .AND. vlGr=0
           STORE "Número de Líneas de Guía de Remisión no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=23 .AND. vlGe=0
           STORE "Número de Líneas de Guía de Remisión Electrónica no puede ser 0..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=24 .AND. vlNp=0
           STORE "Número de Líneas de NP no puede ser 0..." TO mmSj
      CASE vpAg=1 .AND. viTe=25 .AND. vlCp=0
           STORE "Número de Líneas de Comprobante de Percepción..." TO mmSj
      CASE vpAg=1 .AND. viTe=26 .AND. vlCr=0
           STORE "Número de Líneas de Comprobante de Retención..." TO mmSj
      CASE vpAg=1 .AND. viTe=27 .AND. vlL1=0
           STORE "Número de Columnas de Vidrios/Mt2 no puede ser cero..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=28 .AND. vlL2=0
           STORE "Número de Columnas de Bisel x L/C y Alum no puede ser cero..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=29 .AND. vlL3=0
           STORE "Número de Columnas de Bisel C/S forma no puede ser cero..."  ;
                 TO mmSj
      CASE vpAg=1 .AND. viTe=30 .AND. (vlSt=0 .OR. vlSt>10)
           STORE "Cantidad de Listas de Precios es de 1 a 10..." TO mmSj
      CASE vpAg=1 .AND. viTe=31 .AND. (vlIs=0 .OR. vlIs>10)
           STORE "Lista de Precios por defecto es de 1 a 10..." TO mmSj
      CASE vpAg=1 .AND. viTe=32 .AND. (voBr=0 .OR. voBr>10)
           STORE "Lista de Precios para Obra es de 1 a 10..." TO mmSj
      CASE vpAg=1 .AND. viTe=33 .AND. (vtMc=0 .OR. vtMc>20)
           STORE "Tamaño de Código es de 1 a 20 caracteres..." TO mmSj
      CASE vpAg=1 .AND. viTe=34 .AND. (vdEc=0 .OR. vdEc>4)
           STORE "Cantidad de Decimales es de 1 a 4 caracteres..." TO mmSj
      CASE vpAg=2 .AND. viTe=13 .AND. vpSs<>6 .AND. vpSs<>8
           STORE "Cantidad es 6 u 8..." TO mmSj
 ENDCASE
 IF LEN(ALLTRIM(mmSj))<>0
      DO poNmsj
      STORE 99 TO mkEy
 ENDIF
ENDPROC
*
PROCEDURE Dis_0000a
 DO coLbln
 @mFI0+0.8,mCO0+016.0 Say vCIA Font "&mLetAri",9 Style "BQ" Size 1,3.3
 @mFI0+0.8,mCO0+040.0 Say vRAZ Font "&mLetAri",9 Style "NQ" Size 1,80  Pict "@S50"
 @mFI0+0.8,mCO0+139.0 Say vRZ1 Font "&mLetAri",9 Style "NQ" Size 1,40  Pict "@S40"
 @mFI0+2.3,mCO0+016.0 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,104 Pict "@S100"
 @mFI0+2.3,mCO0+139.0 Say vTIP Font "&mLetAri",9 Style "NQ" Size 1,11  Pict "@S10"
 @mFI0+2.3,mCO0+162.0 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,17  Pict "@S11"
 @mFI0+3.8,mCO0+016.0 Say vEMA Font "&mLetAri",9 Style "NQ" Size 1,30  Pict "@S70"
 @mFI0+3.8,mCO0+089.8 Say vWEB Font "&mLetAri",9 Style "NQ" Size 1,30  Pict "@S70"
 @mFI0+3.8,mCO0+139.0 Say vTEL Font "&mLetAri",9 Style "NQ" Size 1,20  Pict "@S20"
 DO CASE
      CASE vpAg=1
           @mFI0+08.0,mCO0+032.2 Say vLFA Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+09.5,mCO0+032.2 Say vLFE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+11.0,mCO0+032.2 Say vLFC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+12.5,mCO0+032.2 Say vLBO Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+14.0,mCO0+032.2 Say vLBE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+15.5,mCO0+032.2 Say vLBC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+17.0,mCO0+032.2 Say vLNC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+18.5,mCO0+032.2 Say vLN1 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+20.0,mCO0+032.2 Say vLN3 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+08.0,mCO0+077.0 Say vLND Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+09.5,mCO0+077.0 Say vLN2 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+11.0,mCO0+077.0 Say vLN4 Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+12.5,mCO0+077.0 Say vLGR Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+14.0,mCO0+077.0 Say vLGE Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+15.5,mCO0+077.0 Say vLNP Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+17.0,mCO0+077.0 Say vLCP Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+18.5,mCO0+077.0 Say vLCR Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+08.0,mCO0+107.2 Say vLL1 Font "&mLetAri",9 Style "NQ" Size 1,01.7 Pict "9"
           @mFI0+09.5,mCO0+107.2 Say vLL2 Font "&mLetAri",9 Style "NQ" Size 1,01.7 Pict "9"
           @mFI0+11.0,mCO0+107.2 Say vLL3 Font "&mLetAri",9 Style "NQ" Size 1,01.7 Pict "9"
           @mFI0+14.6,mCO0+107.2 Say vLST Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+16.1,mCO0+107.2 Say vLIS Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+17.6,mCO0+107.2 Say vOBR Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+08.0,mCO0+140.2 Say vTMC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+09.5,mCO0+140.2 Say vDEC Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+11.0,mCO0+140.2 Say vTRA Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"
           @mFI0+12.5,mCO0+140.2 Say vALM Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"
           @mFI0+14.0,mCO0+140.2 Say vCIM Font "&mLetAri",9 Style "NQ" Size 1,14.7 Pict "!!!!!!!!!!"
           @mFI0+21.5,mCO0+123.2 Say vEMP Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"
           @mFI0+23.0,mCO0+123.2 Say vMBO Font "&mLetAri",9 Style "NQ" Size 1,12.5 Pict "9999.9999"
      CASE vpAg=2
           @mFI0+11.0,mCO0+146.0 Say vINT Font "&mLetAri",9  Style "NQ" Size 1,08.2 Pict "99.999"
           @mFI0+12.5,mCO0+146.0 Say vDIA Font "&mLetAri",9  Style "NQ" Size 1,02.7 Pict "99"
           @mFI0+20.4,mCO0+047.2 Say vFCC Font "&mLetAri",9  Style "NQ" Size 1,10.7 Pict "999.999"
           @mFI0+21.9,mCO0+047.2 Say vFCT Font "&mLetAri",9  Style "NQ" Size 1,10.7 Pict "999.999"
           @mFI0+23.4,mCO0+047.2 Say vFCP Font "&mLetAri",9  Style "NQ" Size 1,10.7 Pict "999.999"
           @mFI0+27.9,mCO0+047.2 Say vPSS Font "&mLetAri",9  Style "NQ" Size 1,01.4 Pict "9"
           @mFI0+27.9,mCO0+107.1 Say vVIN Font "&mLetAri",9  Style "NQ" Size 1,40   Pict "@S30"
           DO pa1_0000a
           DO pa2_0000a
 ENDCASE
 DO geT_0000a
ENDPROC
*
PROCEDURE Get_0000a
 DO CASE
      CASE vpAg=1
           @mFI0+23.3,mCO0+024.2 Get vLLZ Font "&mLetAri",9 Style "NQ" Default vLLZ Function "*RHT Si;No" Size 1,6
           @mFI0+24.8,mCO0+024.2 Get vLLX Font "&mLetAri",9 Style "NQ" Default vLLX Function "*RHT Si;No" Size 1,6
           @mFI0+26.3,mCO0+024.2 Get vLLY Font "&mLetAri",9 Style "NQ" Default vLLY Function "*RHT Si;No" Size 1,6
           @mFI0+27.8,mCO0+024.2 Get vLLB Font "&mLetAri",9 Style "NQ" Default vLLB Function "*RHT Si;No" Size 1,6
           @mFI0+29.3,mCO0+024.2 Get vLLD Font "&mLetAri",9 Style "NQ" Default vLLD Function "*RHT Si;No" Size 1,6
           @mFI0+30.8,mCO0+024.2 Get vLLE Font "&mLetAri",9 Style "NQ" Default vLLE Function "*RHT Si;No" Size 1,6
           @mFI0+32.3,mCO0+024.2 Get vLLN Font "&mLetAri",9 Style "NQ" Default vLLN Function "*RHT Si;No" Size 1,6
           @mFI0+33.8,mCO0+024.2 Get vLLC Font "&mLetAri",9 Style "NQ" Default vLLC Function "*RHT Si;No" Size 1,6
           @mFI0+23.3,mCO0+066.0 Get vLL0 Font "&mLetAri",9 Style "NQ" Default vLL0 Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+24.8,mCO0+066.0 Get vL10 Font "&mLetAri",9 Style "NQ" Default vL10 Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+26.3,mCO0+066.0 Get vL20 Font "&mLetAri",9 Style "NQ" Default vL20 Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+27.8,mCO0+066.0 Get vL0B Font "&mLetAri",9 Style "NQ" Default vL0B Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+29.3,mCO0+066.0 Get vL1B Font "&mLetAri",9 Style "NQ" Default vL1B Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+30.8,mCO0+066.0 Get vL2B Font "&mLetAri",9 Style "NQ" Default vL2B Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+32.3,mCO0+066.0 Get vL0N Font "&mLetAri",9 Style "NQ" Default vL0N Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+33.8,mCO0+066.0 Get vL0C Font "&mLetAri",9 Style "NQ" Default vL0C Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
           @mFI0+08.0,mCO0+175.8 Get vMII Font "&mLetAri",9 Style "NQ" Default vMII Function "*RHT Si;No"           Size 1,6
           @mFI0+09.5,mCO0+175.8 Get vMAX Font "&mLetAri",9 Style "NQ" Default vMAX Function "*RHT Si;No"           Size 1,6
           @mFI0+11.0,mCO0+175.8 Get vCAJ Font "&mLetAri",9 Style "NQ" Default vCAJ Function "*RHT Si;No"           Size 1,6
           @mFI0+12.5,mCO0+175.8 Get vDSP Font "&mLetAri",9 Style "NQ" Default vDSP Function "*RHT Si;No"           Size 1,6
           @mFI0+15.5,mCO0+140.2 Get vSTP Font "&mLetAri",9 Style "NQ" Default vSTP Function "*RVT Controla y Descuenta;No Controla y Descuenta en Generación;Controla y Descuenta en Generación"
           @mFI0+21.1,mCO0+154.7 Get vFEL Font "&mLetAri",9 Style "NQ" Default vFEL Function "*RVT Electrónica;Normal;Electrónica SOL"
           @mFI0+24.5,mCO0+119.2 Get vVND Font "&mLetAri",9 Style "NQ" Default vVND Function "*RHT Identif;Cliente"           Size 1,10
           @mFI0+24.5,mCO0+172.2 Get vPED Font "&mLetAri",9 Style "NQ" Default vPED Function "*RHT Si;No"                     Size 1,5
           @mFI0+25.6,mCO0+119.2 Get vGRA Font "&mLetAri",9 Style "NQ" Default vGRA Function "*RHT Automatica;Manual"         Size 1,10
           @mFI0+25.6,mCO0+172.2 Get vPIG Font "&mLetAri",9 Style "NQ" Default vPIG Function "*RHT Si;No"                     Size 1,5
           @mFI0+26.7,mCO0+119.2 Get vPDC Font "&mLetAri",9 Style "NQ" Default vPDC Function "*RHT Items;Sub-Totales"         Size 1,10
           @mFI0+26.7,mCO0+172.2 Get vTFA Font "&mLetAri",9 Style "NQ" Default vTFA Function "*RHT V.V;Total"                 Size 1,5
           @mFI0+27.9,mCO0+119.2 Get vRED Font "&mLetAri",9 Style "NQ" Default vRED Function "*RHT 0 dec;1 dec;2 dec;.0 y .5" Size 1,9
           @mFI0+32.1,mCO0+116.2 Get vMON Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/;US$"                    Size 1,5
           @mFI0+29.1,mCO0+138.7 Get vDES Font "&mLetAri",9 Style "NQ" Default vDES Function "*RVT Sólo Despacho en Grabación;Despacho y Docum.en Grabación                                          ;Solo Documentos en Grabación;Ni Despacho ni Documentos;Despacho con Cancelación y Doc.en Grab"
      CASE vpAg=2
           @mFI0+08.0,mCO0+043.2 Get vCOR Font "&mLetAri",9  Style "NQ" Default vCOR Function "*RHT Correlativa;Manual"
           @mFI0+09.5,mCO0+043.2 Get vPIE Font "&mLetAri",9  Style "NQ" Default vPIE Function "*RHT pulg;5to.cm;exacto;cm/900"      Size 1,6
           @mFI0+11.0,mCO0+043.2 Get vVID Font "&mLetAri",9  Style "NQ" Default vVID Function "*RHT Controla cm y pulg;No controla" Size 1,10
           @mFI0+12.5,mCO0+043.2 Get vLI1 Font "&mLetAri",9  Style "NQ" Default vLI1 Function "*RHT tiene o no Precio;tiene Precio" Size 1,12,.01
           @mFI0+14.0,mCO0+043.2 Get vJAL Font "&mLetAri",9  Style "NQ" Default vJAL Function "*RHT Copia Precios del Doc.selecc.;Copia Precios de Lista" Size 1,10,.01
           @mFI0+15.5,mCO0+043.2 Get vPRE Font "&mLetAri",9  Style "NQ" Default vPRE Function "*RHT Se Visualiza;No se Visualiza"   Size 1,17,.01
           @mFI0+08.0,mCO0+146.0 Get vIMP Font "&mLetAri",9  Style "NQ" Default vIMP Function "*RHT Import/Nacion;Nacionales"
           @mFI0+09.5,mCO0+146.0 Get vMNC Font "&mLetAri",9  Style "NQ" Default vMNC Function "*RHT S/.;US$"                        Size 1,6
           @mFI0+14.0,mCO0+146.0 Get vCOM Font "&mLetAri",9  Style "NQ" Default vCOM Function "*RHT Si;No"                          Size 1,6
           @mFI0+15.5,mCO0+146.0 Get vLET Font "&mLetAri",9  Style "NQ" Default vLET Function "*RHT Correlativo;# igual (00000-XX)"
           @mFI0+24.9,mCO0+047.2 Get vSEP Font "&mLetAri",9  Style "NQ" Default vSEP Function "*RHT Si;No"                          Size 1,6
           @mFI0+26.4,mCO0+047.2 Get vSED Font "&mLetAri",9  Style "NQ" Default vSED Function "*RHT Si;No"                          Size 1,6
           @mFI0+19.0,mCO0+127.1 Get vVIT Font "&mLetAri",9  Style "NQ" Default vVIT Function "*RHT Sam;Vitral;SamMad;SamJoy;SIM"   Size 1,8.5
           @mFI0+20.4,mCO0+107.1 Get vDET Font "&mLetAri",9  Style "NQ" Default vDET Function "*RHT Cabecera;Detalle"               Size 1,14.5
           @mFI0+21.9,mCO0+107.1 Get vHLP Font "&mLetAri",9  Style "NQ" Default vHLP Function "*RHT Verde;Plomo"                    Size 1,10
           @mFI0+23.4,mCO0+107.1 Get vSLD Font "&mLetAri",9  Style "NQ" Default vSLD Function "*RHT Si;No"                          Size 1,06
           @mFI0+24.9,mCO0+107.1 Get vING Font "&mLetAri",9  Style "NQ" Default vING Function "*RHT Si;No"                          Size 1,06
           @mFI0+26.4,mCO0+107.1 Get vPAL Font "&mLetAri",9  Style "NQ" Default vPAL Function "*RHT Si;No"                          Size 1,06
           @mFI0+31.0,mCO0+047.0 Get vPAN Font "&mLetAri",11 Style "NQ" Default vPAN Function "*RHT 1;2;3;4;5;6;7;8;9;10;11;12;13"  Size 1,4
 ENDCASE
 READ TIMEOUT 0.01
ENDPROC
*
PROCEDURE Lim_0000a
 STORE SPACE(50) TO vrAz
 STORE SPACE(40) TO vrZ1
 STORE SPACE(10) TO vtIp
 STORE SPACE(100) TO vdIr
 STORE SPACE(11) TO vrUc
 STORE SPACE(20) TO vtEl
 STORE SPACE(70) TO vwEb
 STORE SPACE(70) TO veMa
 STORE 99 TO vlFa
 STORE 99 TO vlFe
 STORE 99 TO vlFc
 STORE 99 TO vlBo
 STORE 99 TO vlBe
 STORE 99 TO vlBc
 STORE 99 TO vlNc
 STORE 99 TO vlN1
 STORE 99 TO vlN3
 STORE 99 TO vlNd
 STORE 99 TO vlN2
 STORE 99 TO vlN4
 STORE 99 TO vlGr
 STORE 99 TO vlGe
 STORE 99 TO vlNp
 STORE 99 TO vlCp
 STORE 99 TO vlCr
 STORE 3 TO vlL1
 STORE 5 TO vlL2
 STORE 3 TO vlL3
 STORE 1 TO vlLz
 STORE 2 TO vlLx
 STORE 2 TO vlLy
 STORE 1 TO vlLb
 STORE 2 TO vlLd
 STORE 2 TO vlLe
 STORE 1 TO vlLn
 STORE 1 TO vlLc
 STORE 2 TO vlL0
 STORE 2 TO vl10
 STORE 2 TO vl20
 STORE 2 TO vl0b
 STORE 2 TO vl1b
 STORE 2 TO vl2b
 STORE 2 TO vl0n
 STORE 2 TO vl0c
 STORE 1 TO vlSt
 STORE 0 TO vlIs
 STORE 1 TO voBr
 STORE 20 TO vtMc
 STORE 4 TO vdEc
 STORE SPACE(04) TO vtRa
 STORE SPACE(04) TO vaLm
 STORE SPACE(10) TO vcIm
 STORE 2 TO vcAj
 STORE 2 TO vmIi
 STORE 2 TO vmAx
 STORE 2 TO vdSp
 STORE 3 TO vsTp
 STORE SPACE(04) TO veMp
 STORE 1549.9999 TO vmBo
 STORE 2 TO vpEd
 STORE 2 TO vvNd
 STORE 2 TO vpIg
 STORE 2 TO vfEl
 STORE 3 TO vdEs
 STORE 1 TO vmOn
 STORE 1 TO vgRa
 STORE 3 TO vrEd
 STORE 1 TO vpDc
 STORE 1 TO vtFa
 STORE 1 TO vcOr
 STORE 3 TO vpIe
 STORE 2 TO vvId
 STORE 1 TO vlI1
 STORE 2 TO vjAl
 STORE 1 TO vpRe
 STORE 2 TO viMp
 STORE vmOn TO vmNc
 STORE 10.764 TO vfCc
 STORE 10.77 TO vfCt
 STORE 144 TO vfCp
 STORE 00 TO viNt
 STORE 8 TO vdIa
 STORE 2 TO vcOm
 STORE 1 TO vlEt
 STORE 2 TO vsEp
 STORE 2 TO vsEd
 STORE 6 TO vpSs
 STORE 1 TO vvIt
 STORE 1 TO vdEt
 STORE 1 TO vhLp
 STORE 2 TO vsLd
 STORE 2 TO viNg
 STORE 2 TO vpAl
 STORE "XLS\FORMATO\" TO vvIn
 STORE 1 TO vpAn
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
 STORE 36 TO muFi
 STORE 190.4 TO muCo
 STORE (mwFi-muFi)/2 TO mfI0
 STORE (mwCo-muCo)/2 TO mcO0
 DO coL_fondo
 @ mfI0+0.4, mcO0 TO mfI0+05.8, mcO0+muCo PATTERN 1
 DO coL_beige
 @ mfI0+6.2, mcO0 TO mfI0+muFi, mcO0+muCo PATTERN 1
 DO coL_fondo
 @mFI0+0.8,mCO0+002 Say "Empresa:"       Font "&mLetAri",9 Style "BT"
 @mFI0+0.8,mCO0+023 Say "Razón Social:"  Font "&mLetAri",9 Style "BT"
 @mFI0+0.8,mCO0+122 Say "Siglas:"        Font "&mLetAri",9 Style "BT"
 @mFI0+2.3,mCO0+002 Say "Dirección:"     Font "&mLetAri",9 Style "BT"
 @mFI0+2.3,mCO0+122 Say "Oficina/Local:" Font "&mLetAri",9 Style "BT"
 @mFI0+2.3,mCO0+154 Say "RUC:"           Font "&mLetAri",9 Style "BT"
 @mFI0+3.8,mCO0+002 Say "e-mail:"        Font "&mLetAri",9 Style "BT"
 @mFI0+3.8,mCO0+074 Say "Página web:"    Font "&mLetAri",9 Style "BT"
 @mFI0+3.8,mCO0+122 Say "Teléfonos:"     Font "&mLetAri",9 Style "BT"
 DO coLbln
 SET READBORDER ON
 @mFI0+0.8,mCO0+016.0 Get  vCIA Font "&mLetAri",9 Style "BQ" Size 1,3.3 Pict "!!" Color ,&mColBlN
 @mFI0+0.8,mCO0+040.0 Edit vRAZ Font "&mLetAri",9 Style "NQ" Size 1,80,50
 @mFI0+0.8,mCO0+139.0 Edit vRZ1 Font "&mLetAri",9 Style "NQ" Size 1,40,40
 @mFI0+2.3,mCO0+016.0 Edit vDIR Font "&mLetAri",9 Style "NQ" Size 1,104,100
 @mFI0+2.3,mCO0+139.0 Edit vTIP Font "&mLetAri",9 Style "NQ" Size 1,11,10
 @mFI0+2.3,mCO0+162.0 Edit vRUC Font "&mLetAri",9 Style "NQ" Size 1,17,11
 @mFI0+3.8,mCO0+016.0 Edit vEMA Font "&mLetAri",9 Style "NQ" Size 1,30,70
 @mFI0+3.8,mCO0+089.8 Edit vWEB Font "&mLetAri",9 Style "NQ" Size 1,30,70
 @mFI0+3.8,mCO0+139.0 Edit vTEL Font "&mLetAri",9 Style "NQ" Size 1,20,20
 DO pnT_0000a
ENDPROC
*
PROCEDURE Pnt_0000a
 DO CASE
      CASE vpAg=1
           DO p01_0000a
           DO p02_0000a
           DO p03_0000a
           DO p04_0000a
           DO p05_0000a
           DO p06_0000a
           DO p07_0000a
      CASE vpAg=2
           DO p08_0000a
           DO p09_0000a
           DO p10_0000a
           DO p11_0000a
           DO p12_0000a
 ENDCASE
 DO opC_0000a
ENDPROC
*
PROCEDURE Opc_0000a
 IF voPc<>coPc
      DO CASE
           CASE vpAg=1 .AND. viTe=1
                @mFI0+36.5,mCO0+60 Get vOPC Font "&mLetRom",14 Style "BQ" Function "*TH \\Ir a Página 2;\\Grabar;\<Salir"
           CASE vpAg=1 .AND. viTe>1
                @mFI0+36.5,mCO0+60 Get vOPC Font "&mLetRom",14 Style "BQ" Function "*TH Ir a \<Página 2;\<Grabar;\<Salir"
           CASE vpAg=2 .AND. viTe=1
                @mFI0+36.5,mCO0+60 Get vOPC Font "&mLetRom",14 Style "BQ" Function "*TH \\Ir a Página 1;\\Grabar;\<Salir"
           CASE vpAg=2 .AND. viTe>1
                @mFI0+36.5,mCO0+60 Get vOPC Font "&mLetRom",14 Style "BQ" Function "*TH Ir a \<Página 1;\<Grabar;\<Salir"
      ENDCASE
      READ TIMEOUT 0.01
      STORE voPc TO coPc
 ENDIF
ENDPROC
*
PROCEDURE P01_0000a
 DO coLbln
 @ mfI0+06.2, mcO0+00.1 TO mfI0+21.5, mcO0+82 PATTERN 1
 DO coL_fondo
 @mFI0+06.4,mCO0+01.2 Say "(1) # Líneas en:"             Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+01.2 Say "Factura"                      Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+01.2 Say "Factura Electrónica"          Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+01.2 Say "Factura Electrónica SOL"      Font "&mLetAri",9 Style "NT"
 @mFI0+12.5,mCO0+01.2 Say "Boleta de Venta"              Font "&mLetAri",9 Style "NT"
 @mFI0+14.0,mCO0+01.2 Say "Boleta Electrónica"           Font "&mLetAri",9 Style "NT"
 @mFI0+15.5,mCO0+01.2 Say "Boleta Electrónica SOL"       Font "&mLetAri",9 Style "NT"
 @mFI0+17.0,mCO0+01.2 Say "Nota de Crédito"              Font "&mLetAri",9 Style "NT"
 @mFI0+18.5,mCO0+01.2 Say "N/Crédito Electrónica"        Font "&mLetAri",9 Style "NT"
 @mFI0+20.0,mCO0+01.2 Say "N/Crédito Electrónica SOL"    Font "&mLetAri",9 Style "NT"
 @mFI0+08.0,mCO0+41.2 Say "Nota de Débito"               Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+41.2 Say "N/Débito Electrónica"         Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+41.2 Say "N/Débito Electrónica SOL"     Font "&mLetAri",9 Style "NT"
 @mFI0+12.5,mCO0+41.2 Say "Guía de Remisión"             Font "&mLetAri",9 Style "NT"
 @mFI0+14.0,mCO0+41.2 Say "Guía de Remisión Electrónica" Font "&mLetAri",9 Style "NT"
 @mFI0+15.5,mCO0+41.2 Say "Nota de Pedido"               Font "&mLetAri",9 Style "NT"
 @mFI0+17.0,mCO0+41.2 Say "Comprobante de Retención"     Font "&mLetAri",9 Style "NT"
 @mFI0+18.5,mCO0+41.2 Say "Comprobate de Percepción"     Font "&mLetAri",9 Style "NT"
 @mFI0+08.0,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+09.5,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+11.0,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+12.5,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+14.0,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+15.5,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+17.0,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+18.5,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+20.0,mCO0+30.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+75.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+09.5,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+11.0,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+12.5,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+14.0,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+15.5,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+17.0,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+18.5,mCO0+75.0 Say ":"                            Font "&mLetAri",9 Style "BT"
 DO coLbln
 @mFI0+08.0,mCO0+32.2 Get vLFA                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+09.5,mCO0+32.2 Get vLFE                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+11.0,mCO0+32.2 Get vLFC                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+12.5,mCO0+32.2 Get vLBO                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+14.0,mCO0+32.2 Get vLBE                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+15.5,mCO0+32.2 Get vLBC                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+17.0,mCO0+32.2 Get vLNC                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+18.5,mCO0+32.2 Get vLN1                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+20.0,mCO0+32.2 Get vLN3                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+08.0,mCO0+77.0 Get vLND                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+09.5,mCO0+77.0 Get vLN2                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+11.0,mCO0+77.0 Get vLN4                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+12.5,mCO0+77.0 Get vLGR                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+14.0,mCO0+77.0 Get vLGE                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+15.5,mCO0+77.0 Get vLNP                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+17.0,mCO0+77.0 Get vLCP                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+18.5,mCO0+77.0 Get vLCR                           Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
ENDPROC
*
PROCEDURE P02_0000a
 DO coLplp
 @ mfI0+06.2, mcO0+083.1 TO mfI0+12.6, mcO0+112 PATTERN 1
 DO coL_fondo
 @mFI0+06.4,mCO0+084.2 Say "(2) # Columnas-Detalle" Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+084.2 Say "Vidrios/Mt2"            Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+084.2 Say "Bisel x L/C y Alum"     Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+084.2 Say "Bisel C/S Forma"        Font "&mLetAri",9 Style "NT"
 @mFI0+08.0,mCO0+105.2 Say ":"                      Font "&mLetAri",9 Style "BT"
 @mFI0+09.5,mCO0+105.2 Say ":"                      Font "&mLetAri",9 Style "BT"
 @mFI0+11.0,mCO0+105.2 Say ":"                      Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+107.2 Get vLL1                     Font "&mLetAri",9 Style "NQ" Size 1,1.7 Pict "9" Color ,&mColBlN
 @mFI0+09.5,mCO0+107.2 Get vLL2                     Font "&mLetAri",9 Style "NQ" Size 1,1.7 Pict "9" Color ,&mColBlN
 @mFI0+11.0,mCO0+107.2 Get vLL3                     Font "&mLetAri",9 Style "NQ" Size 1,1.7 Pict "9" Color ,&mColBlN
ENDPROC
*
PROCEDURE P03_0000a
 DO coLron
 @ mfI0+21.7, mcO0+000.1 TO mfI0+35.5, mcO0+40 PATTERN 1
 DO coL_fondo
 @mFI0+21.9,mCO0+001.2 Say "(3) Calcula Items en Detalle" Font "&mLetAri",9 Style "BT"
 @mFI0+23.3,mCO0+001.2 Say "Factura"                      Font "&mLetAri",9 Style "NT"
 @mFI0+24.8,mCO0+001.2 Say "F/Electrónica"                Font "&mLetAri",9 Style "NT"
 @mFI0+26.3,mCO0+001.2 Say "F/Electrónica SOL"            Font "&mLetAri",9 Style "NT"
 @mFI0+27.8,mCO0+001.2 Say "Boleta de Venta"              Font "&mLetAri",9 Style "NT"
 @mFI0+29.3,mCO0+001.2 Say "B/Electrónica"                Font "&mLetAri",9 Style "NT"
 @mFI0+30.8,mCO0+001.2 Say "B/Electrónica SOL"            Font "&mLetAri",9 Style "NT"
 @mFI0+32.3,mCO0+001.2 Say "Nota de Pedido"               Font "&mLetAri",9 Style "NT"
 @mFI0+33.8,mCO0+001.2 Say "Cotización"                   Font "&mLetAri",9 Style "NT"
 @mFI0+23.3,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+24.8,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+26.3,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+27.8,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+29.3,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+30.8,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+32.3,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+33.8,mCO0+022.2 Say ":"                            Font "&mLetAri",9 Style "BT"
 @mFI0+23.3,mCO0+024.2 Get vLLZ                           Font "&mLetAri",9 Style "NQ" Default vLLZ Function "*RHT Si;No" Size 1,6
 @mFI0+24.8,mCO0+024.2 Get vLLX                           Font "&mLetAri",9 Style "NQ" Default vLLX Function "*RHT Si;No" Size 1,6
 @mFI0+26.3,mCO0+024.2 Get vLLY                           Font "&mLetAri",9 Style "NQ" Default vLLY Function "*RHT Si;No" Size 1,6
 @mFI0+27.8,mCO0+024.2 Get vLLB                           Font "&mLetAri",9 Style "NQ" Default vLLB Function "*RHT Si;No" Size 1,6
 @mFI0+29.3,mCO0+024.2 Get vLLD                           Font "&mLetAri",9 Style "NQ" Default vLLD Function "*RHT Si;No" Size 1,6
 @mFI0+30.8,mCO0+024.2 Get vLLE                           Font "&mLetAri",9 Style "NQ" Default vLLE Function "*RHT Si;No" Size 1,6
 @mFI0+32.3,mCO0+024.2 Get vLLN                           Font "&mLetAri",9 Style "NQ" Default vLLN Function "*RHT Si;No" Size 1,6
 @mFI0+33.8,mCO0+024.2 Get vLLC                           Font "&mLetAri",9 Style "NQ" Default vLLC Function "*RHT Si;No" Size 1,6
ENDPROC
*
PROCEDURE P04_0000a
 DO coLsc4
 @ mfI0+21.7, mcO0+041.0 TO mfI0+35.5, mcO0+94 PATTERN 1
 DO coL_fondo
 @mFI0+21.9,mCO0+043.0 Say "(4) Imprime Referencia en:" Font "&mLetAri",9 Style "BT"
 @mFI0+23.3,mCO0+043.0 Say "Factura"                    Font "&mLetAri",9 Style "NT"
 @mFI0+24.8,mCO0+043.0 Say "F/Electrónica"              Font "&mLetAri",9 Style "NT"
 @mFI0+26.3,mCO0+043.0 Say "F/Electrónica SOL"          Font "&mLetAri",9 Style "NT"
 @mFI0+27.8,mCO0+043.0 Say "Boleta de Venta"            Font "&mLetAri",9 Style "NT"
 @mFI0+29.3,mCO0+043.0 Say "B/Electrónica"              Font "&mLetAri",9 Style "NT"
 @mFI0+30.8,mCO0+043.0 Say "B/Electrónica SOL"          Font "&mLetAri",9 Style "NT"
 @mFI0+32.3,mCO0+043.0 Say "Nota de Pedido"             Font "&mLetAri",9 Style "NT"
 @mFI0+33.8,mCO0+043.0 Say "Cotización"                 Font "&mLetAri",9 Style "NT"
 @mFI0+23.3,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+24.8,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+26.3,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+27.8,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+29.3,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+30.8,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+32.3,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+33.8,mCO0+064.0 Say ":"                          Font "&mLetAri",9 Style "BT"
 @mFI0+23.3,mCO0+066.0 Get vLL0                         Font "&mLetAri",9 Style "NQ" Default vLL0 Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+24.8,mCO0+066.0 Get vL10                         Font "&mLetAri",9 Style "NQ" Default vL10 Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+26.3,mCO0+066.0 Get vL20                         Font "&mLetAri",9 Style "NQ" Default vL20 Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+27.8,mCO0+066.0 Get vL0B                         Font "&mLetAri",9 Style "NQ" Default vL0B Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+29.3,mCO0+066.0 Get vL1B                         Font "&mLetAri",9 Style "NQ" Default vL1B Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+30.8,mCO0+066.0 Get vL2B                         Font "&mLetAri",9 Style "NQ" Default vL2B Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+32.3,mCO0+066.0 Get vL0N                         Font "&mLetAri",9 Style "NQ" Default vL0N Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
 @mFI0+33.8,mCO0+066.0 Get vL0C                         Font "&mLetAri",9 Style "NQ" Default vL0C Function "*RHT sg.Lin;No;m.Lin" Size 1,6,.01
ENDPROC
*
PROCEDURE P05_0000a
 DO coLplp
 @ mfI0+12.8, mcO0+083.1 TO mfI0+19.1, mcO0+112 PATTERN 1
 DO coL_fondo
 @mFI0+13.0,mCO0+084.2 Say "(5) Lista Precios-Vta" Font "&mLetAri",9 Style "BT" Color 4
 @mFI0+14.6,mCO0+084.2 Say "Total Listas"          Font "&mLetAri",9 Style "NT"
 @mFI0+16.1,mCO0+084.2 Say "Lista x Defecto"       Font "&mLetAri",9 Style "NT"
 @mFI0+17.6,mCO0+084.2 Say "Lista de Obra"         Font "&mLetAri",9 Style "NT"
 @mFI0+14.6,mCO0+105.2 Say ":"                     Font "&mLetAri",9 Style "BT"
 @mFI0+16.1,mCO0+105.2 Say ":"                     Font "&mLetAri",9 Style "BT"
 @mFI0+17.6,mCO0+105.2 Say ":"                     Font "&mLetAri",9 Style "BT"
 @mFI0+14.6,mCO0+107.2 Get vLST                    Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+16.1,mCO0+107.2 Get vLIS                    Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
 @mFI0+17.6,mCO0+107.2 Get vOBR                    Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99" Color ,&mColBlN
ENDPROC
*
PROCEDURE P06_0000a
 DO coLbln
 @ mfI0+06.2, mcO0+113.1 TO mfI0+19.1, mcO0+190 PATTERN 1
 DO coL_fondo
 @mFI0+06.4,mCO0+114.2 Say "(6) Datos x Defecto Inventarios:" Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+114.2 Say "Tam.máx.Cód-Prod"                 Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+114.2 Say "Dec.en Stock/Cant"                Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+114.2 Say "Cód.de Transp. G/R"               Font "&mLetAri",9 Style "NT"
 @mFI0+12.5,mCO0+114.2 Say "Cód.de Almacén G/R"               Font "&mLetAri",9 Style "NT"
 @mFI0+14.0,mCO0+114.2 Say "#CIM x Empresa G/R"               Font "&mLetAri",9 Style "NT"
 @mFI0+15.5,mCO0+114.2 Say "Controla Stock-Pedid"             Font "&mLetAri",9 Style "NT"
 @mFI0+08.0,mCO0+154.2 Say "Controla Stock Mín"               Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+154.2 Say "Controla Stock Máx"               Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+154.2 Say "Controla Cajones"                 Font "&mLetAri",9 Style "NT"
 @mFI0+12.5,mCO0+154.2 Say "Contr.Fecha-Desp"                 Font "&mLetAri",9 Style "NT"
 @mFI0+08.0,mCO0+138.2 Say ":"                                Font "&mLetAri",9 Style "BT"
 @mFI0+09.5,mCO0+138.2 Say ":"                                Font "&mLetAri",9 Style "BT"
 @mFI0+11.0,mCO0+138.2 Say ":"                                Font "&mLetAri",9 Style "BT"
 @mFI0+12.5,mCO0+138.2 Say ":"                                Font "&mLetAri",9 Style "BT"
 @mFI0+14.0,mCO0+138.2 Say ":"                                Font "&mLetAri",9 Style "BT"
 @mFI0+15.5,mCO0+138.2 Say ":"                                Font "&mLetAri",9 Style "BT"
 DO coLbln
 @mFI0+08.0,mCO0+140.2 Get vTMC                               Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"         Color ,&mColBlN
 @mFI0+09.5,mCO0+140.2 Get vDEC                               Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"         Color ,&mColBlN
 @mFI0+11.0,mCO0+140.2 Get vTRA                               Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"       Color ,&mColBlN
 @mFI0+12.5,mCO0+140.2 Get vALM                               Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"       Color ,&mColBlN
 @mFI0+14.0,mCO0+140.2 Get vCIM                               Font "&mLetAri",9 Style "NQ" Size 1,14.7 Pict "!!!!!!!!!!" Color ,&mColBlN
 @mFI0+08.0,mCO0+175.8 Get vMII                               Font "&mLetAri",9 Style "NQ" Default vMII Function "*RHT Si;No" Size 1,6
 @mFI0+09.5,mCO0+175.8 Get vMAX                               Font "&mLetAri",9 Style "NQ" Default vMAX Function "*RHT Si;No" Size 1,6
 @mFI0+11.0,mCO0+175.8 Get vCAJ                               Font "&mLetAri",9 Style "NQ" Default vCAJ Function "*RHT Si;No" Size 1,6
 @mFI0+12.5,mCO0+175.8 Get vDSP                               Font "&mLetAri",9 Style "NQ" Default vDSP Function "*RHT Si;No" Size 1,6
 @mFI0+15.5,mCO0+140.2 Get vSTP                               Font "&mLetAri",9 Style "NQ" Default vSTP Function "*RVT Controla y Descuenta;No Controla y Descuenta en Generación;Controla y Descuenta en Generación"
ENDPROC
*
PROCEDURE P07_0000a
 DO coLazn
 @ mfI0+19.4, mcO0+094.8 TO mfI0+35.5, mcO0+190 PATTERN 1
 DO coL_fondo
 @mFI0+19.7,mCO0+095.7 Say "(7) Datos de Ventas-1"             Font "&mLetAri",9  Style "BT" Color 2
 @mFI0+19.7,mCO0+154.7 Say "Tipo de Facturación"               Font "&mLetRom",12 Style "BT" Color 4
 @mFI0+21.5,mCO0+095.7 Say "Cód.Cliente-Empresa"               Font "&mLetAri",9 Style "NT"
 @mFI0+23.0,mCO0+095.7 Say "Monto Mínimo-Boletas"              Font "&mLetAri",9 Style "NT"
 @mFI0+24.5,mCO0+095.7 Say "Control-Vendedor"                  Font "&mLetAri",9 Style "NT"
 @mFI0+24.5,mCO0+150.7 Say "Impresión Pedidos"                 Font "&mLetAri",9 Style "NT"
 @mFI0+25.6,mCO0+095.7 Say "Cancelac.de Vtas"                  Font "&mLetAri",9 Style "NT"
 @mFI0+25.6,mCO0+150.7 Say "Modificación %IGV"                 Font "&mLetAri",9 Style "NT"
 @mFI0+26.7,mCO0+095.7 Say "Dct x Item se calc.en"             Font "&mLetAri",9 Style "NT"
 @mFI0+26.7,mCO0+150.7 Say "En Fact.imprime"                   Font "&mLetAri",9 Style "NT"
 @mFI0+27.9,mCO0+095.7 Say "Redondeo-Vtas"                     Font "&mLetAri",9 Style "NT"
 @mFI0+29.1,mCO0+095.7 Say "Impresión de Documentos de Ventas" Font "&mLetAri",9 Style "NT"
 @mFI0+32.1,mCO0+095.7 Say "Moneda x Defecto"                  Font "&mLetAri",9 Style "NT"
 @mFI0+21.5,mCO0+121.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+23.0,mCO0+121.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+21.1,mCO0+154.7 Get vFEL                                Font "&mLetAri",9 Style "NQ" Default vFEL Function "*RVT Electrónica;Normal;Electrónica SOL"
 @mFI0+21.5,mCO0+123.2 Get vEMP                                Font "&mLetAri",9 Style "NQ" Size 1,06.2 Pict "!!!!"      Color ,&mColBlN
 @mFI0+23.0,mCO0+123.2 Get vMBO                                Font "&mLetAri",9 Style "NQ" Size 1,12.5 Pict "9999.9999" Color ,&mColBlN
 @mFI0+24.5,mCO0+119.2 Get vVND                                Font "&mLetAri",9 Style "NQ" Default vVND Function "*RHT Identif;Cliente"           Size 1,10
 @mFI0+24.5,mCO0+172.2 Get vPED                                Font "&mLetAri",9 Style "NQ" Default vPED Function "*RHT Si;No"                     Size 1,5
 @mFI0+25.6,mCO0+119.2 Get vGRA                                Font "&mLetAri",9 Style "NQ" Default vGRA Function "*RHT Automatica;Manual"         Size 1,10
 @mFI0+25.6,mCO0+172.2 Get vPIG                                Font "&mLetAri",9 Style "NQ" Default vPIG Function "*RHT Si;No"                     Size 1,5
 @mFI0+26.7,mCO0+119.2 Get vPDC                                Font "&mLetAri",9 Style "NQ" Default vPDC Function "*RHT Items;Sub-Totales"         Size 1,10
 @mFI0+26.7,mCO0+172.2 Get vTFA                                Font "&mLetAri",9 Style "NQ" Default vTFA Function "*RHT V.V;Total"                 Size 1,5
 @mFI0+27.9,mCO0+119.2 Get vRED                                Font "&mLetAri",9 Style "NQ" Default vRED Function "*RHT 0 dec;1 dec;2 dec;.0 y .5" Size 1,9
 @mFI0+29.1,mCO0+138.7 Get vDES                                Font "&mLetAri",9 Style "NQ" Default vDES Function "*RVT Sólo Despacho en Grabación;Despacho y Docum.en Grabación                                                                 ;Solo Documentos en Grabación;Ni Despacho ni Documentos;Despacho con Cancelación y Doc.en Grab"
 @mFI0+32.1,mCO0+116.2 Get vMON                                Font "&mLetAri",9 Style "NQ" Default vMON Function "*RHT S/;US$"                    Size 1,5
ENDPROC
*
PROCEDURE P08_0000a
 DO coLbln
 @ mfI0+06.2, mcO0+00.1 TO mfI0+18.5, mcO0+109 PATTERN 1
 DO coL_fondo
 @mFI0+06.4,mCO0+01.2 Say "(8) Datos de Ventas-2"               Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+01.2 Say "Numer.Generac.Doc.Vtas"              Font "&mLetAri",9 Style "NT"
 @mFI0+09.5,mCO0+01.2 Say "Cálculo de P2 en Vidrios"            Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+01.2 Say "En Mantenim.de Clientes"             Font "&mLetAri",9 Style "NT"
 @mFI0+12.5,mCO0+01.2 Say "En Vtas escoge un Producto si Lista" Font "&mLetAri",9 Style "NT"
 @mFI0+14.0,mCO0+01.2 Say "En Copia de Pedidos o Doc.Vta"       Font "&mLetAri",9 Style "NT"
 @mFI0+15.5,mCO0+01.2 Say "Prec.Unitario en Detalle de Item"    Font "&mLetAri",9 Style "NT"
 @mFI0+08.0,mCO0+41.2 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+09.5,mCO0+41.2 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+11.0,mCO0+41.2 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+12.5,mCO0+41.2 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+14.0,mCO0+41.2 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+15.5,mCO0+41.2 Say ":"                                   Font "&mLetAri",9 Style "BT"
 DO coLbln
 @mFI0+08.0,mCO0+43.2 Get vCOR                                  Font "&mLetAri",9 Style "NQ" Default vCOR Function "*RHT Correlativa;Manual"
 @mFI0+09.5,mCO0+43.2 Get vPIE                                  Font "&mLetAri",9 Style "NQ" Default vPIE Function "*RHT pulg;5to.cm;exacto;cm/900"      Size 1,6
 @mFI0+11.0,mCO0+43.2 Get vVID                                  Font "&mLetAri",9 Style "NQ" Default vVID Function "*RHT Controla cm y pulg;No controla" Size 1,10
 @mFI0+12.5,mCO0+43.2 Get vLI1                                  Font "&mLetAri",9 Style "NQ" Default vLI1 Function "*RHT tiene o no Precio;tiene Precio" Size 1,12,.01
 @mFI0+14.0,mCO0+43.2 Get vJAL                                  Font "&mLetAri",9 Style "NQ" Default vJAL Function "*RHT Copia Precios del Doc.selecc.;Copia Precios de Lista" Size 1,10,.01
 @mFI0+15.5,mCO0+43.2 Get vPRE                                  Font "&mLetAri",9 Style "NQ" Default vPRE Function "*RHT Se Visualiza;No se Visualiza" Size 1,17,.01
ENDPROC
*
PROCEDURE P09_0000a
 DO coLsc7
 @ mfI0+18.7, mcO0+00.1 TO mfI0+29.4, mcO0+62 PATTERN 1
 DO coL_fondo
 @mFI0+18.9,mCO0+01.2 Say "(9) Varios"                            Font "&mLetAri",9 Style "BT"
 @mFI0+20.4,mCO0+01.2 Say "Factor de Importación de Vidrios"      Font "&mLetAri",9 Style "NT"
 @mFI0+21.9,mCO0+01.2 Say "Factor de Venta cm. (Vidrios)"         Font "&mLetAri",9 Style "NT"
 @mFI0+23.4,mCO0+01.2 Say "Factor de Venta pulg. (Vidrios)"       Font "&mLetAri",9 Style "NT"
 @mFI0+24.9,mCO0+01.2 Say "Percepción"                            Font "&mLetAri",9 Style "BT"
 @mFI0+26.4,mCO0+01.2 Say "Detracción"                            Font "&mLetAri",9 Style "BT"
 @mFI0+27.9,mCO0+01.2 Say "Dígitos de Password de Asistencia 6-8" Font "&mLetAri",9 Style "NT"
 @mFI0+20.4,mCO0+45.2 Say ":"                                     Font "&mLetAri",9 Style "BT"
 @mFI0+21.9,mCO0+45.2 Say ":"                                     Font "&mLetAri",9 Style "BT"
 @mFI0+23.4,mCO0+45.2 Say ":"                                     Font "&mLetAri",9 Style "BT"
 @mFI0+24.9,mCO0+45.2 Say ":"                                     Font "&mLetAri",9 Style "BT"
 @mFI0+26.4,mCO0+45.2 Say ":"                                     Font "&mLetAri",9 Style "BT"
 @mFI0+27.9,mCO0+45.2 Say ":"                                     Font "&mLetAri",9 Style "BT"
 DO coLbln
 @mFI0+20.4,mCO0+47.2 Get vFCC                                    Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "999.999" Color ,&mColBlN
 @mFI0+21.9,mCO0+47.2 Get vFCT                                    Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "999.999" Color ,&mColBlN
 @mFI0+23.4,mCO0+47.2 Get vFCP                                    Font "&mLetAri",9 Style "NQ" Size 1,10.7 Pict "999.999" Color ,&mColBlN
 @mFI0+24.9,mCO0+47.2 Get vSEP                                    Font "&mLetAri",9 Style "NQ" Default vSEP Function "*RHT Si;No" Size 1,6
 @mFI0+26.4,mCO0+47.2 Get vSED                                    Font "&mLetAri",9 Style "NQ" Default vSED Function "*RHT Si;No" Size 1,6
 @mFI0+27.9,mCO0+47.2 Get vPSS                                    Font "&mLetAri",9 Style "NQ" Size 1,01.4 Pict "9"       Color ,&mColBlN
ENDPROC
*
PROCEDURE P10_0000a
 DO coLron
 @ mfI0+06.2, mcO0+110 TO mfI0+18.5, mcO0+189 PATTERN 1
 DO coL_fondo
 @mFI0+06.4,mCO0+111.2 Say "(10) Compras/Ctas x Cobrar/Letras" Font "&mLetAri",9 Style "BT"
 @mFI0+08.0,mCO0+111.2 Say "Tipo de Compras"                   Font "&mLetAri",9 Style "BT" Color 1
 @mFI0+09.5,mCO0+111.2 Say "Moneda de Compras"                 Font "&mLetAri",9 Style "NT"
 @mFI0+11.0,mCO0+111.2 Say "%Interés en Ctas.x Cobrar"         Font "&mLetAri",9 Style "NT"
 @mFI0+12.5,mCO0+111.2 Say "Días-Vencimiento de la Letra"      Font "&mLetAri",9 Style "NT"
 @mFI0+14.0,mCO0+111.2 Say "Comisiones x Canje-Letras"         Font "&mLetAri",9 Style "NT" Color RGB(0,0,120,0,0,0)
 @mFI0+15.5,mCO0+111.2 Say "Renovación de Letras"              Font "&mLetAri",9 Style "NT" Color RGB(0,0,120,0,0,0)
 @mFI0+08.0,mCO0+144.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+09.5,mCO0+144.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+11.0,mCO0+144.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+12.5,mCO0+144.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+14.0,mCO0+144.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 @mFI0+15.5,mCO0+144.2 Say ":"                                 Font "&mLetAri",9 Style "BT"
 DO coLbln
 @mFI0+08.0,mCO0+146.0 Get vIMP                                Font "&mLetAri",9 Style "NQ" Default vIMP Function "*RHT Import/Nacion;Nacionales"
 @mFI0+09.5,mCO0+146.0 Get vMNC                                Font "&mLetAri",9 Style "NQ" Default vMNC Function "*RHT S/.;US$" Size 1,6
 @mFI0+11.0,mCO0+146.0 Get vINT                                Font "&mLetAri",9 Style "NQ" Size 1,08.2 Pict "99.999"  Color ,&mColBlN
 @mFI0+12.5,mCO0+146.0 Get vDIA                                Font "&mLetAri",9 Style "NQ" Size 1,02.7 Pict "99"      Color ,&mColBlN
 @mFI0+14.0,mCO0+146.0 Get vCOM                                Font "&mLetAri",9 Style "NQ" Default vCOM Function "*RHT Si;No" Size 1,6
 @mFI0+15.5,mCO0+146.0 Get vLET                                Font "&mLetAri",9 Style "NQ" Default vLET Function "*RHT Correlativo;# igual (00000-XX)"
ENDPROC
*
PROCEDURE P11_0000a
 DO coLazn
 @ mfI0+18.7, mcO0+062.9 TO mfI0+29.4, mcO0+184 PATTERN 1
 DO coL_fondo
 @mFI0+18.9,mCO0+064.0 Say "(11) Parámetros Generales"           Font "&mLetAri",9  Style "BT" Color 4
 @mFI0+18.8,mCO0+107.0 Say "Sistema-Tipo"                        Font "&mLetRom",12 Style "BT" Color 1
 @mFI0+20.4,mCO0+064.0 Say "Cursor Predeterminado en"            Font "&mLetAri",9 Style "NT"
 @mFI0+21.9,mCO0+064.0 Say "Fondo en Ayuda"                      Font "&mLetAri",9 Style "NT"
 @mFI0+23.4,mCO0+064.0 Say "Confirmación al Salir del Sistema"   Font "&mLetAri",9 Style "NT"
 @mFI0+24.9,mCO0+064.0 Say "Campos adicionales en Inglés"        Font "&mLetAri",9 Style "NT"
 @mFI0+26.4,mCO0+064.0 Say "Uso de Palm en Inventarios y Ventas" Font "&mLetAri",9 Style "NT"
 @mFI0+27.9,mCO0+064.0 Say "Carpeta de XLS"                      Font "&mLetAri",9 Style "NT"
 @mFI0+20.4,mCO0+105.1 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+21.9,mCO0+105.1 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+23.4,mCO0+105.1 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+24.9,mCO0+105.1 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+26.4,mCO0+105.1 Say ":"                                   Font "&mLetAri",9 Style "BT"
 @mFI0+27.9,mCO0+105.1 Say ":"                                   Font "&mLetAri",9 Style "BT"
 DO coLbln
 @mFI0+19.0,mCO0+127.1 Get  vVIT                                 Font "&mLetAri",9 Style "NQ" Default vVIT Function "*RHT Sam;Vitral;SamMad;SamJoy;SIM" Size 1,8.5
 @mFI0+20.4,mCO0+107.1 Get  vDET                                 Font "&mLetAri",9 Style "NQ" Default vDET Function "*RHT Cabecera;Detalle"      Size 1,14.5
 @mFI0+21.9,mCO0+107.1 Get  vHLP                                 Font "&mLetAri",9 Style "NQ" Default vHLP Function "*RHT Verde;Plomo"           Size 1,10
 @mFI0+23.4,mCO0+107.1 Get  vSLD                                 Font "&mLetAri",9 Style "NQ" Default vSLD Function "*RHT Si;No"                 Size 1,06
 @mFI0+24.9,mCO0+107.1 Get  vING                                 Font "&mLetAri",9 Style "NQ" Default vING Function "*RHT Si;No"                 Size 1,06
 @mFI0+26.4,mCO0+107.1 Get  vPAL                                 Font "&mLetAri",9 Style "NQ" Default vPAL Function "*RHT Si;No"                 Size 1,06
 @mFI0+27.9,mCO0+107.1 Edit vVIN                                 Font "&mLetAri",9 Style "NQ" Size 1,40,30
ENDPROC
*
PROCEDURE P12_0000a
 @mFI0+29.6,mCO0+47 Say "P A N T A L L A / I C O N O" Font "&mLetRom",12 Style "BT" Color 4
 @mFI0+31.0,mCO0+47 Get  vPAN                         Font "&mLetAri",11 Style "NQ" Default vPAN Function "*RHT 1;2;3;4;5;6;7;8;9;10;11;12;13" Size 1,4
 DO pa1_0000a
 DO pa2_0000a
ENDPROC
*
PROCEDURE Pa1_0000a
 DO coL_beige
 @ mfI0+29.5, mcO0+33.4 CLEAR TO mfI0+31.4, mcO0+39.4
 DO CASE
      CASE vpAn=1 .AND. vfEl=1
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PFE1.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON01.ICO" BITMAP STYLE "T"
      CASE vpAn=1 .AND. vfEl=2 .AND. vvIt<>2
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PF2S.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON01.ICO" BITMAP STYLE "T"
      CASE vpAn=1 .AND. vfEl=2
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PF2V.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON01.ICO" BITMAP STYLE "T"
      CASE vpAn=1 .AND. vfEl=3
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PFE3.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON01.ICO" BITMAP STYLE "T"
      CASE vpAn=2
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS02.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON02.ICO" BITMAP STYLE "T"
      CASE vpAn=3
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS03.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON03.ICO" BITMAP STYLE "T"
      CASE vpAn=4
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS04.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON04.ICO" BITMAP STYLE "T"
      CASE vpAn=5
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS05.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON05.ICO" BITMAP STYLE "T"
      CASE vpAn=6
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS06.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON06.ICO" BITMAP STYLE "T"
      CASE vpAn=7
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS07.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON07.ICO" BITMAP STYLE "T"
      CASE vpAn=8
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS08.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON08.ICO" BITMAP STYLE "T"
      CASE vpAn=9
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS09.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON09.ICO" BITMAP STYLE "T"
      CASE vpAn=10
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS10.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON10.ICO" BITMAP STYLE "T"
      CASE vpAn=11
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS11.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON11.ICO" BITMAP STYLE "T"
      CASE vpAn=12
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS12.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON12.ICO" BITMAP STYLE "T"
      CASE vpAn=13
           @ mfI0+29.5, mcO0+00.5 SAY "BMP\MNU_PS13.JPG" BITMAP STYLE "Q"  ;
             SIZE 6.35, 32 STRETCH
           @ mfI0+29.5, mcO0+33.5 SAY "ICON13.ICO" BITMAP STYLE "T"
 ENDCASE
ENDPROC
*
PROCEDURE Pa2_0000a
 DO CASE
      CASE vfEl=1
           @ mfI0+32.1, mcO0+46.9 SAY "BMP\MNU_PFE1.JPG" BITMAP STYLE "Q"  ;
             SIZE 2.2, 5.5 STRETCH
      CASE vfEl=2 .AND. vvIt<>2
           @ mfI0+32.1, mcO0+46.9 SAY "BMP\MNU_PF2S.JPG" BITMAP STYLE "Q"  ;
             SIZE 2.2, 5.5 STRETCH
      CASE vfEl=2
           @ mfI0+32.1, mcO0+46.9 SAY "BMP\MNU_PF2V.JPG" BITMAP STYLE "Q"  ;
             SIZE 2.2, 5.5 STRETCH
      CASE vfEl=3
           @ mfI0+32.1, mcO0+46.9 SAY "BMP\MNU_PFE3.JPG" BITMAP STYLE "Q"  ;
             SIZE 2.2, 5.5 STRETCH
 ENDCASE
 @ mfI0+34.4, mcO0+47.9 SAY "ICON01.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2 STRETCH
 @ mfI0+32.1, mcO0+053.9 SAY "BMP\MNU_PS02.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+054.9 SAY "ICON02.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+060.9 SAY "BMP\MNU_PS03.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+061.9 SAY "ICON03.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+067.9 SAY "BMP\MNU_PS04.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+068.9 SAY "ICON04.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+074.9 SAY "BMP\MNU_PS05.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+075.9 SAY "ICON05.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+081.9 SAY "BMP\MNU_PS06.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+082.9 SAY "ICON06.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+088.9 SAY "BMP\MNU_PS07.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+089.9 SAY "ICON07.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+095.9 SAY "BMP\MNU_PS08.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+096.9 SAY "ICON08.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+102.9 SAY "BMP\MNU_PS09.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   5.5 STRETCH
 @ mfI0+34.4, mcO0+103.9 SAY "ICON09.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+110.1 SAY "BMP\MNU_PS10.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   6.5 STRETCH
 @ mfI0+34.4, mcO0+111.8 SAY "ICON10.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+118.1 SAY "BMP\MNU_PS11.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   6.5 STRETCH
 @ mfI0+34.4, mcO0+119.8 SAY "ICON11.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+127.0 SAY "BMP\MNU_PS12.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   6.5 STRETCH
 @ mfI0+34.4, mcO0+128.8 SAY "ICON12.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
 @ mfI0+32.1, mcO0+135.1 SAY "BMP\MNU_PS13.JPG" BITMAP STYLE "Q" SIZE 2.2,  ;
   6.5 STRETCH
 @ mfI0+34.4, mcO0+136.8 SAY "ICON13.ICO" BITMAP STYLE "T" SIZE 1.4, 3.2  ;
   STRETCH
ENDPROC
*
PROCEDURE Mue_0000a
 PRIVATE pnUm, pnU1
 PUBLIC psW0_rz1, psW0_tip, psW0_dir, psW0_ruc, psW0_tel, psW0_web,  ;
        psW0_ema, psW0_lfa
 PUBLIC psW0_lfe, psW0_lfc, psW0_lbo, psW0_lbe, psW0_lbc, psW0_lnc,  ;
        psW0_ln1, psW0_ln3
 PUBLIC psW0_lnd, psW0_ln2, psW0_ln4, psW0_lgr, psW0_lge, psW0_lnp,  ;
        psW0_lcp, psW0_lcr
 PUBLIC psW0_ll1, psW0_ll2, psW0_ll3, psW0_llz, psW0_llx, psW0_lly,  ;
        psW0_llb, psW0_lld
 PUBLIC psW0_lle, psW0_lln, psW0_llc, psW0_ll0, psW0_l10, psW0_l20,  ;
        psW0_l0b, psW0_l1b
 PUBLIC psW0_l2b, psW0_l0n, psW0_l0c, psW0_lst, psW0_lis, psW0_obr,  ;
        psW0_tmc, psW0_dec
 PUBLIC psW0_tra, psW0_alm, psW0_cim, psW0_caj, psW0_mii, psW0_max,  ;
        psW0_dsp, psW0_stp
 PUBLIC psW0_emp, psW0_mbo, psW0_ped, psW0_vnd, psW0_pig, psW0_fel,  ;
        psW0_des, psW0_mon
 PUBLIC psW0_igv, psW0_gra, psW0_red, psW0_pdc, psW0_tfa, psW0_cor,  ;
        psW0_pie, psW0_vid
 PUBLIC psW0_li1, psW0_jal, psW0_pre, psW0_imp, psW0_mnc, psW0_fcc,  ;
        psW0_fct, psW0_fcp
 PUBLIC psW0_int, psW0_dia, psW0_com, psW0_let, psW0_sep, psW0_sed,  ;
        psW0_pss, psW0_vit
 PUBLIC psW0_det, psW0_hlp, psW0_sld, psW0_ing, psW0_pal, psW0_vin, psW0_pan
 STORE 0 TO psW0_rz1, psW0_tip, psW0_dir, psW0_ruc, psW0_tel, psW0_web,  ;
       psW0_ema, psW0_lfa
 STORE 0 TO psW0_lfe, psW0_lfc, psW0_lbo, psW0_lbe, psW0_lbc, psW0_lnc,  ;
       psW0_ln1, psW0_ln3
 STORE 0 TO psW0_lnd, psW0_ln2, psW0_ln4, psW0_lgr, psW0_lge, psW0_lnp,  ;
       psW0_lcp, psW0_lcr
 STORE 0 TO psW0_ll1, psW0_ll2, psW0_ll3, psW0_llz, psW0_llx, psW0_lly,  ;
       psW0_llb, psW0_lld
 STORE 0 TO psW0_lle, psW0_lln, psW0_llc, psW0_ll0, psW0_l10, psW0_l20,  ;
       psW0_l0b, psW0_l1b
 STORE 0 TO psW0_l2b, psW0_l0n, psW0_l0c, psW0_lst, psW0_lis, psW0_obr,  ;
       psW0_tmc, psW0_dec
 STORE 0 TO psW0_tra, psW0_alm, psW0_cim, psW0_caj, psW0_mii, psW0_max,  ;
       psW0_dsp, psW0_stp
 STORE 0 TO psW0_emp, psW0_mbo, psW0_ped, psW0_vnd, psW0_pig, psW0_fel,  ;
       psW0_des, psW0_mon
 STORE 0 TO psW0_igv, psW0_gra, psW0_red, psW0_pdc, psW0_tfa, psW0_cor,  ;
       psW0_pie, psW0_vid
 STORE 0 TO psW0_li1, psW0_jal, psW0_pre, psW0_imp, psW0_mnc, psW0_fcc,  ;
       psW0_fct, psW0_fcp
 STORE 0 TO psW0_int, psW0_dia, psW0_com, psW0_let, psW0_sep, psW0_sed,  ;
       psW0_pss, psW0_vit
 STORE 0 TO psW0_det, psW0_hlp, psW0_sld, psW0_ing, psW0_pal, psW0_vin,  ;
       psW0_pan
 STORE FCOUNT() TO pnUm
 STORE 1 TO pnU1
 DO WHILE .T.
      DO CASE
           CASE FIELD(pnU1)="RZ1"
                STORE 1 TO psW0_rz1
           CASE FIELD(pnU1)="TIP"
                STORE 1 TO psW0_tip
           CASE FIELD(pnU1)="DIR"
                STORE 1 TO psW0_dir
           CASE FIELD(pnU1)="RUC"
                STORE 1 TO psW0_ruc
           CASE FIELD(pnU1)="TEL"
                STORE 1 TO psW0_tel
           CASE FIELD(pnU1)="WEB"
                STORE 1 TO psW0_web
           CASE FIELD(pnU1)="EMA"
                STORE 1 TO psW0_ema
           CASE FIELD(pnU1)="LFA"
                STORE 1 TO psW0_lfa
           CASE FIELD(pnU1)="LFE"
                STORE 1 TO psW0_lfe
           CASE FIELD(pnU1)="LFC"
                STORE 1 TO psW0_lfc
           CASE FIELD(pnU1)="LBO"
                STORE 1 TO psW0_lbo
           CASE FIELD(pnU1)="LBE"
                STORE 1 TO psW0_lbe
           CASE FIELD(pnU1)="LBC"
                STORE 1 TO psW0_lbc
           CASE FIELD(pnU1)="LNC"
                STORE 1 TO psW0_lnc
           CASE FIELD(pnU1)="LN1"
                STORE 1 TO psW0_ln1
           CASE FIELD(pnU1)="LN3"
                STORE 1 TO psW0_ln3
           CASE FIELD(pnU1)="LND"
                STORE 1 TO psW0_lnd
           CASE FIELD(pnU1)="LN2"
                STORE 1 TO psW0_ln2
           CASE FIELD(pnU1)="LN4"
                STORE 1 TO psW0_ln4
           CASE FIELD(pnU1)="LGR"
                STORE 1 TO psW0_lgr
           CASE FIELD(pnU1)="LGE"
                STORE 1 TO psW0_lge
           CASE FIELD(pnU1)="LNP"
                STORE 1 TO psW0_lnp
           CASE FIELD(pnU1)="LCP"
                STORE 1 TO psW0_lcp
           CASE FIELD(pnU1)="LCR"
                STORE 1 TO psW0_lcr
           CASE FIELD(pnU1)="LL1"
                STORE 1 TO psW0_ll1
           CASE FIELD(pnU1)="LL2"
                STORE 1 TO psW0_ll2
           CASE FIELD(pnU1)="LL3"
                STORE 1 TO psW0_ll3
           CASE FIELD(pnU1)="LLZ"
                STORE 1 TO psW0_llz
           CASE FIELD(pnU1)="LLX"
                STORE 1 TO psW0_llx
           CASE FIELD(pnU1)="LLY"
                STORE 1 TO psW0_lly
           CASE FIELD(pnU1)="LLB"
                STORE 1 TO psW0_llb
           CASE FIELD(pnU1)="LLD"
                STORE 1 TO psW0_lld
           CASE FIELD(pnU1)="LLE"
                STORE 1 TO psW0_lle
           CASE FIELD(pnU1)="LLN"
                STORE 1 TO psW0_lln
           CASE FIELD(pnU1)="LLC"
                STORE 1 TO psW0_llc
           CASE FIELD(pnU1)="LL0"
                STORE 1 TO psW0_ll0
           CASE FIELD(pnU1)="L10"
                STORE 1 TO psW0_l10
           CASE FIELD(pnU1)="L20"
                STORE 1 TO psW0_l20
           CASE FIELD(pnU1)="L0B"
                STORE 1 TO psW0_l0b
           CASE FIELD(pnU1)="L1B"
                STORE 1 TO psW0_l1b
           CASE FIELD(pnU1)="L2B"
                STORE 1 TO psW0_l2b
           CASE FIELD(pnU1)="L0N"
                STORE 1 TO psW0_l0n
           CASE FIELD(pnU1)="L0C"
                STORE 1 TO psW0_l0c
           CASE FIELD(pnU1)="LST"
                STORE 1 TO psW0_lst
           CASE FIELD(pnU1)="LIS"
                STORE 1 TO psW0_lis
           CASE FIELD(pnU1)="OBR"
                STORE 1 TO psW0_obr
           CASE FIELD(pnU1)="TMC"
                STORE 1 TO psW0_tmc
           CASE FIELD(pnU1)="DEC"
                STORE 1 TO psW0_dec
           CASE FIELD(pnU1)="TRA"
                STORE 1 TO psW0_tra
           CASE FIELD(pnU1)="ALM"
                STORE 1 TO psW0_alm
           CASE FIELD(pnU1)="CIM"
                STORE 1 TO psW0_cim
           CASE FIELD(pnU1)="CAJ"
                STORE 1 TO psW0_caj
           CASE FIELD(pnU1)="MII"
                STORE 1 TO psW0_mii
           CASE FIELD(pnU1)="MAX"
                STORE 1 TO psW0_max
           CASE FIELD(pnU1)="DSP"
                STORE 1 TO psW0_dsp
           CASE FIELD(pnU1)="STP"
                STORE 1 TO psW0_stp
           CASE FIELD(pnU1)="EMP"
                STORE 1 TO psW0_emp
           CASE FIELD(pnU1)="MBO"
                STORE 1 TO psW0_mbo
           CASE FIELD(pnU1)="PED"
                STORE 1 TO psW0_ped
           CASE FIELD(pnU1)="VND"
                STORE 1 TO psW0_vnd
           CASE FIELD(pnU1)="PIG"
                STORE 1 TO psW0_pig
           CASE FIELD(pnU1)="FEL"
                STORE 1 TO psW0_fel
           CASE FIELD(pnU1)="DES"
                STORE 1 TO psW0_des
           CASE FIELD(pnU1)="MON"
                STORE 1 TO psW0_mon
           CASE FIELD(pnU1)="GRA"
                STORE 1 TO psW0_gra
           CASE FIELD(pnU1)="RED"
                STORE 1 TO psW0_red
           CASE FIELD(pnU1)="PDC"
                STORE 1 TO psW0_pdc
           CASE FIELD(pnU1)="TFA"
                STORE 1 TO psW0_tfa
           CASE FIELD(pnU1)="COR"
                STORE 1 TO psW0_cor
           CASE FIELD(pnU1)="PIE"
                STORE 1 TO psW0_pie
           CASE FIELD(pnU1)="VID"
                STORE 1 TO psW0_vid
           CASE FIELD(pnU1)="LI1"
                STORE 1 TO psW0_li1
           CASE FIELD(pnU1)="JAL"
                STORE 1 TO psW0_jal
           CASE FIELD(pnU1)="PRE"
                STORE 1 TO psW0_pre
           CASE FIELD(pnU1)="IMP"
                STORE 1 TO psW0_imp
           CASE FIELD(pnU1)="MNC"
                STORE 1 TO psW0_mnc
           CASE FIELD(pnU1)="FCC"
                STORE 1 TO psW0_fcc
           CASE FIELD(pnU1)="FCT"
                STORE 1 TO psW0_fct
           CASE FIELD(pnU1)="FCP"
                STORE 1 TO psW0_fcp
           CASE FIELD(pnU1)="INT"
                STORE 1 TO psW0_int
           CASE FIELD(pnU1)="DIA"
                STORE 1 TO psW0_dia
           CASE FIELD(pnU1)="COM"
                STORE 1 TO psW0_com
           CASE FIELD(pnU1)="LET"
                STORE 1 TO psW0_let
           CASE FIELD(pnU1)="SEP"
                STORE 1 TO psW0_sep
           CASE FIELD(pnU1)="SED"
                STORE 1 TO psW0_sed
           CASE FIELD(pnU1)="PSS"
                STORE 1 TO psW0_pss
           CASE FIELD(pnU1)="VIT"
                STORE 1 TO psW0_vit
           CASE FIELD(pnU1)="DET"
                STORE 1 TO psW0_det
           CASE FIELD(pnU1)="HLP"
                STORE 1 TO psW0_hlp
           CASE FIELD(pnU1)="SLD"
                STORE 1 TO psW0_sld
           CASE FIELD(pnU1)="ING"
                STORE 1 TO psW0_ing
           CASE FIELD(pnU1)="PAL"
                STORE 1 TO psW0_pal
           CASE FIELD(pnU1)="VIN"
                STORE 1 TO psW0_vin
           CASE FIELD(pnU1)="PAN"
                STORE 1 TO psW0_pan
      ENDCASE
      STORE pnU1+1 TO pnU1
      IF pnU1>pnUm
           EXIT
      ENDIF
 ENDDO
 STORE mpAt+vcIa+"\IDENTI1.DBB" TO mdBf
 IF LEN(raZ)<50
      Alter Table &mDBF Alter Column RAZ C(50)
 ENDIF
 IF LEN(emA)<70
      Alter Table &mDBF Alter Column EMA C(70)
 ENDIF
 IF LEN(weB)<70
      Alter Table &mDBF Alter Column WEB C(70)
 ENDIF
 IF psW0_rz1=0
      Alter Table &mDBF Add   Column RZ1 C(40)
      STORE 2 TO psW0_rz1
 ENDIF
 IF psW0_tip=0
      Alter Table &mDBF Add   Column TIP C(10)
      STORE 2 TO psW0_tip
 ENDIF
 IF psW0_dir=0
      Alter Table &mDBF Add   Column DIR C(100)
      STORE 2 TO psW0_dir
 ENDIF
 IF LEN(diR)<100
      Alter Table &mDBF Alter Column DIR C(100)
 ENDIF
 IF psW0_ruc=0
      Alter Table &mDBF Add   Column RUC C(11)
      STORE 2 TO psW0_ruc
 ENDIF
 IF psW0_tel=0
      Alter Table &mDBF Add   Column TEL C(20)
      STORE 2 TO psW0_tel
 ENDIF
 IF psW0_web=0
      Alter Table &mDBF Add   Column WEB C(70)
      STORE 2 TO psW0_web
 ENDIF
 IF psW0_ema=0
      Alter Table &mDBF Add   Column EMA C(70)
      STORE 2 TO psW0_ema
 ENDIF
 IF psW0_lfa=0
      Alter Table &mDBF Add   Column LFA N(2)
      STORE 2 TO psW0_lfa
 ENDIF
 IF psW0_lfe=0
      Alter Table &mDBF Add   Column LFE N(2)
      STORE 2 TO psW0_lfe
 ENDIF
 IF psW0_lfc=0
      Alter Table &mDBF Add   Column LFC N(2)
      STORE 2 TO psW0_lfc
 ENDIF
 IF psW0_lbo=0
      Alter Table &mDBF Add   Column LBO N(2)
      STORE 2 TO psW0_lbo
 ENDIF
 IF psW0_lbe=0
      Alter Table &mDBF Add   Column LBE N(2)
      STORE 2 TO psW0_lbe
 ENDIF
 IF psW0_lbc=0
      Alter Table &mDBF Add   Column LBC N(2)
      STORE 2 TO psW0_lbc
 ENDIF
 IF psW0_lnc=0
      Alter Table &mDBF Add   Column LNC N(2)
      STORE 2 TO psW0_lnc
 ENDIF
 IF psW0_ln1=0
      Alter Table &mDBF Add   Column LN1 N(2)
      STORE 2 TO psW0_ln1
 ENDIF
 IF psW0_ln3=0
      Alter Table &mDBF Add   Column LN3 N(2)
      STORE 2 TO psW0_ln3
 ENDIF
 IF psW0_lnd=0
      Alter Table &mDBF Add   Column LND N(2)
      STORE 2 TO psW0_lnd
 ENDIF
 IF psW0_ln2=0
      Alter Table &mDBF Add   Column LN2 N(2)
      STORE 2 TO psW0_ln2
 ENDIF
 IF psW0_ln4=0
      Alter Table &mDBF Add   Column LN4 N(2)
      STORE 2 TO psW0_ln4
 ENDIF
 IF psW0_lgr=0
      Alter Table &mDBF Add   Column LGR N(2)
      STORE 2 TO psW0_lgr
 ENDIF
 IF psW0_lge=0
      Alter Table &mDBF Add   Column LGE N(2)
      STORE 2 TO psW0_lge
 ENDIF
 IF psW0_lnp=0
      Alter Table &mDBF Add   Column LNP N(2)
      STORE 2 TO psW0_lnp
 ENDIF
 IF psW0_lcp=0
      Alter Table &mDBF Add   Column LCP N(2)
      STORE 2 TO psW0_lcp
 ENDIF
 IF psW0_lcr=0
      Alter Table &mDBF Add   Column LCR N(2)
      STORE 2 TO psW0_lcr
 ENDIF
 IF psW0_ll1=0
      Alter Table &mDBF Add   Column LL1 N(1)
      STORE 2 TO psW0_ll1
 ENDIF
 IF psW0_ll2=0
      Alter Table &mDBF Add   Column LL2 N(1)
      STORE 2 TO psW0_ll2
 ENDIF
 IF psW0_ll3=0
      Alter Table &mDBF Add   Column LL3 N(1)
      STORE 2 TO psW0_ll3
 ENDIF
 IF psW0_llz=0
      Alter Table &mDBF Add   Column LLZ C(1)
      STORE 2 TO psW0_llz
 ENDIF
 IF psW0_llx=0
      Alter Table &mDBF Add   Column LLX C(1)
      STORE 2 TO psW0_llx
 ENDIF
 IF psW0_lly=0
      Alter Table &mDBF Add   Column LLY C(1)
      STORE 2 TO psW0_lly
 ENDIF
 IF psW0_llb=0
      Alter Table &mDBF Add   Column LLB C(1)
      STORE 2 TO psW0_llb
 ENDIF
 IF psW0_lld=0
      Alter Table &mDBF Add   Column LLD C(1)
      STORE 2 TO psW0_lld
 ENDIF
 IF psW0_lle=0
      Alter Table &mDBF Add   Column LLE C(1)
      STORE 2 TO psW0_lle
 ENDIF
 IF psW0_lln=0
      Alter Table &mDBF Add   Column LLN C(1)
      STORE 2 TO psW0_lln
 ENDIF
 IF psW0_llc=0
      Alter Table &mDBF Add   Column LLC C(1)
      STORE 2 TO psW0_llc
 ENDIF
 IF psW0_ll0=0
      Alter Table &mDBF Add   Column LL0 C(1)
      STORE 2 TO psW0_ll0
 ENDIF
 IF psW0_l10=0
      Alter Table &mDBF Add   Column L10 C(1)
      STORE 2 TO psW0_l10
 ENDIF
 IF psW0_l20=0
      Alter Table &mDBF Add   Column L20 C(1)
      STORE 2 TO psW0_l20
 ENDIF
 IF psW0_l0b=0
      Alter Table &mDBF Add   Column L0B C(1)
      STORE 2 TO psW0_l0b
 ENDIF
 IF psW0_l1b=0
      Alter Table &mDBF Add   Column L1B C(1)
      STORE 2 TO psW0_l1b
 ENDIF
 IF psW0_l2b=0
      Alter Table &mDBF Add   Column L2B C(1)
      STORE 2 TO psW0_l2b
 ENDIF
 IF psW0_l0n=0
      Alter Table &mDBF Add   Column L0N C(1)
      STORE 2 TO psW0_l0n
 ENDIF
 IF psW0_l0c=0
      Alter Table &mDBF Add   Column L0C C(1)
      STORE 2 TO psW0_l0c
 ENDIF
 IF psW0_lst=0
      Alter Table &mDBF Add   Column LST N(2)
      STORE 2 TO psW0_lst
 ELSE
      Alter Table &mDBF Alter Column LST N(2)
 ENDIF
 IF psW0_lis=0
      Alter Table &mDBF Add   Column LIS N(2)
      STORE 2 TO psW0_lis
 ELSE
      Alter Table &mDBF Alter Column LIS N(2)
 ENDIF
 IF psW0_obr=0
      Alter Table &mDBF Add   Column OBR N(2)
      STORE 2 TO psW0_obr
 ENDIF
 IF psW0_tmc=0
      Alter Table &mDBF Add   Column TMC N(2)
      STORE 2 TO psW0_tmc
 ENDIF
 IF psW0_dec=0
      Alter Table &mDBF Add   Column DEC N(1)
      STORE 2 TO psW0_dec
 ENDIF
 IF psW0_tra=0
      Alter Table &mDBF Add   Column TRA C(4)
      STORE 2 TO psW0_tra
 ENDIF
 IF psW0_alm=0
      Alter Table &mDBF Add   Column ALM C(4)
      STORE 2 TO psW0_alm
 ENDIF
 IF psW0_cim=0
      Alter Table &mDBF Add   Column CIM C(10)
      STORE 2 TO psW0_cim
 ENDIF
 IF psW0_caj=0
      Alter Table &mDBF Add   Column CAJ N(1)
      STORE 2 TO psW0_caj
 ENDIF
 IF psW0_mii=0
      Alter Table &mDBF Add   Column MII N(1)
      STORE 2 TO psW0_mii
 ENDIF
 IF psW0_max=0
      Alter Table &mDBF Add   Column MAX N(1)
      STORE 2 TO psW0_max
 ENDIF
 IF psW0_dsp=0
      Alter Table &mDBF Add   Column DSP N(1)
      STORE 2 TO psW0_dsp
 ENDIF
 IF psW0_stp=0
      Alter Table &mDBF Add   Column STP N(1)
      STORE 2 TO psW0_stp
 ENDIF
 IF psW0_emp=0
      Alter Table &mDBF Add   Column EMP C(4)
      STORE 2 TO psW0_emp
 ENDIF
 IF psW0_mbo=0
      Alter Table &mDBF Add   Column MBO N(9,4)
      STORE 2 TO psW0_mbo
 ENDIF
 IF psW0_ped=0
      Alter Table &mDBF Add   Column PED C(1)
      STORE 2 TO psW0_ped
 ENDIF
 IF psW0_vnd=0
      Alter Table &mDBF Add   Column VND N(1)
      STORE 2 TO psW0_vnd
 ENDIF
 IF psW0_pig=0
      Alter Table &mDBF Add   Column PIG N(1)
      STORE 2 TO psW0_pig
 ENDIF
 IF psW0_fel=0
      Alter Table &mDBF Add   Column FEL C(1)
      STORE 2 TO psW0_fel
 ENDIF
 IF psW0_des=0
      Alter Table &mDBF Add   Column DES N(1)
      STORE 2 TO psW0_des
 ENDIF
 IF psW0_mon=0
      Alter Table &mDBF Add   Column MON N(1)
      STORE 2 TO psW0_mon
 ENDIF
 IF psW0_gra=0
      Alter Table &mDBF Add   Column GRA N(1)
      STORE 2 TO psW0_gra
 ENDIF
 IF psW0_red=0
      Alter Table &mDBF Add   Column RED N(1)
      STORE 2 TO psW0_red
 ENDIF
 IF psW0_pdc=0
      Alter Table &mDBF Add   Column PDC N(2)
      STORE 2 TO psW0_pdc
 ENDIF
 IF psW0_tfa=0
      Alter Table &mDBF Add   Column TFA N(1)
      STORE 2 TO psW0_tfa
 ENDIF
 IF psW0_cor=0
      Alter Table &mDBF Add   Column COR C(1)
      STORE 2 TO psW0_cor
 ENDIF
 IF psW0_pie=0
      Alter Table &mDBF Add   Column PIE N(1)
      STORE 2 TO psW0_pie
 ENDIF
 IF psW0_vid=0
      Alter Table &mDBF Add   Column VID N(1)
      STORE 2 TO psW0_vid
 ENDIF
 IF psW0_li1=0
      Alter Table &mDBF Add   Column LI1 N(1)
      STORE 2 TO psW0_li1
 ENDIF
 IF psW0_jal=0
      Alter Table &mDBF Add   Column JAL N(1)
      STORE 2 TO psW0_jal
 ENDIF
 IF psW0_pre=0
      Alter Table &mDBF Add   Column PRE N(1)
      STORE 2 TO psW0_pre
 ENDIF
 IF psW0_imp=0
      Alter Table &mDBF Add   Column IMP N(1)
      STORE 2 TO psW0_imp
 ENDIF
 IF psW0_mnc=0
      Alter Table &mDBF Add   Column MNC N(1)
      STORE 2 TO psW0_mnc
 ENDIF
 IF psW0_fcc=0
      Alter Table &mDBF Add   Column FCC N(6,3)
      STORE 2 TO psW0_fcc
 ENDIF
 IF psW0_fct=0
      Alter Table &mDBF Add   Column FCT N(6,3)
      STORE 2 TO psW0_fct
 ENDIF
 IF psW0_fcp=0
      Alter Table &mDBF Add   Column FCP N(3)
      STORE 2 TO psW0_fcp
 ENDIF
 IF psW0_int=0
      Alter Table &mDBF Add   Column INT N(6,3)
      STORE 2 TO psW0_int
 ENDIF
 IF psW0_dia=0
      Alter Table &mDBF Add   Column DIA N(1)
      STORE 2 TO psW0_dia
 ENDIF
 IF psW0_com=0
      Alter Table &mDBF Add   Column COM N(1)
      STORE 2 TO psW0_com
 ENDIF
 IF psW0_let=0
      Alter Table &mDBF Add   Column LET N(1)
      STORE 2 TO psW0_let
 ENDIF
 IF psW0_sep=0
      Alter Table &mDBF Add   Column SEP N(1)
      STORE 2 TO psW0_sep
 ENDIF
 IF psW0_sed=0
      Alter Table &mDBF Add   Column SED N(1)
      STORE 2 TO psW0_sed
 ENDIF
 IF psW0_pss=0
      Alter Table &mDBF Add   Column PSS N(1)
      STORE 2 TO psW0_pss
 ENDIF
 IF psW0_vit=0
      Alter Table &mDBF Add   Column VIT N(1)
      STORE 2 TO psW0_vit
 ENDIF
 IF psW0_det=0
      Alter Table &mDBF Add   Column DET N(1)
      STORE 2 TO psW0_det
 ENDIF
 IF psW0_hlp=0
      Alter Table &mDBF Add   Column HLP N(1)
      STORE 2 TO psW0_hlp
 ENDIF
 IF psW0_sld=0
      Alter Table &mDBF Add   Column SLD C(1)
      STORE 2 TO psW0_sld
 ENDIF
 IF psW0_ing=0
      Alter Table &mDBF Add   Column ING C(1)
      STORE 2 TO psW0_ing
 ENDIF
 IF psW0_pal=0
      Alter Table &mDBF Add   Column PAL C(1)
      STORE 2 TO psW0_pal
 ENDIF
 IF psW0_vin=0
      Alter Table &mDBF Add   Column VIN C(30)
      STORE 2 TO psW0_vin
 ENDIF
 IF psW0_pan=0
      Alter Table &mDBF Add   Column PAN N(2)
      STORE 2 TO psW0_pan
 ELSE
      Alter Table &mDBF Alter Column PAN N(2)
 ENDIF
 STORE raZ TO vrAz
 STORE rz1 TO vrZ1
 STORE tiP TO vtIp
 STORE diR TO vdIr
 STORE ruC TO vrUc
 STORE teL TO vtEl
 STORE weB TO vwEb
 STORE emA TO veMa
 STORE lfA TO vlFa
 STORE lfE TO vlFe
 STORE lfC TO vlFc
 STORE lbO TO vlBo
 STORE lbE TO vlBe
 STORE lbC TO vlBc
 STORE lnC TO vlNc
 STORE ln1 TO vlN1
 STORE ln3 TO vlN3
 STORE lnD TO vlNd
 STORE ln2 TO vlN2
 STORE ln4 TO vlN4
 STORE lgR TO vlGr
 STORE lgE TO vlGe
 STORE lnP TO vlNp
 STORE lcP TO vlCp
 STORE lcR TO vlCr
 STORE ll1 TO vlL1
 STORE ll2 TO vlL2
 STORE ll3 TO vlL3
 STORE llZ TO vlLz
 STORE llX TO vlLx
 STORE llY TO vlLy
 STORE llB TO vlLb
 STORE llD TO vlLd
 STORE llE TO vlLe
 STORE llN TO vlLn
 STORE llC TO vlLc
 STORE ll0 TO vlL0
 STORE l10 TO vl10
 STORE l20 TO vl20
 STORE l0B TO vl0b
 STORE l1B TO vl1b
 STORE l2B TO vl2b
 STORE l0N TO vl0n
 STORE l0C TO vl0c
 STORE lsT TO vlSt
 STORE liS TO vlIs
 STORE obR TO voBr
 STORE tmC TO vtMc
 STORE deC TO vdEc
 STORE trA TO vtRa
 STORE alM TO vaLm
 STORE ciM TO vcIm
 STORE caJ TO vcAj
 STORE miI TO vmIi
 STORE maX TO vmAx
 STORE dsP TO vdSp
 STORE stP TO vsTp
 STORE emP TO veMp
 STORE mbO TO vmBo
 STORE peD TO vpEd
 STORE vnD TO vvNd
 STORE piG TO vpIg
 STORE feL TO vfEl
 STORE deS TO vdEs
 STORE moN TO vmOn
 STORE grA TO vgRa
 STORE reD TO vrEd
 STORE pdC TO vpDc
 STORE tfA TO vtFa
 STORE coR TO vcOr
 STORE piE TO vpIe
 STORE viD TO vvId
 STORE li1 TO vlI1
 STORE jaL TO vjAl
 STORE prE TO vpRe
 STORE imP TO viMp
 STORE mnC TO vmNc
 STORE fcC TO vfCc
 STORE fcT TO vfCt
 STORE fcP TO vfCp
 STORE inT TO viNt
 STORE diA TO vdIa
 STORE coM TO vcOm
 STORE leT TO vlEt
 STORE seP TO vsEp
 STORE seD TO vsEd
 STORE psS TO vpSs
 STORE viT TO vvIt
 STORE deT TO vdEt
 STORE hlP TO vhLp
 STORE slD TO vsLd
 STORE inG TO viNg
 STORE paL TO vpAl
 STORE viN TO vvIn
 STORE paN TO vpAn
 DO prO_0000a IN MODSET WITH vrAz
 STORE mfRa TO vrAz
 IF psW0_rz1<>2
      DO prO_0000a IN MODSET WITH vrZ1
      STORE mfRa TO vrZ1
 ENDIF
 IF psW0_tip<>2
      DO prO_0000a IN MODSET WITH vtIp
      STORE mfRa TO vtIp
 ENDIF
 IF psW0_dir<>2
      DO prO_0000a IN MODSET WITH vdIr
      STORE mfRa TO vdIr
 ENDIF
 IF psW0_ruc<>2
      DO prO_0000a IN MODSET WITH vrUc
      STORE mfRa TO vrUc
 ENDIF
 IF psW0_tel<>2
      DO prO_0000a IN MODSET WITH vtEl
      STORE mfRa TO vtEl
 ENDIF
 IF psW0_web<>2
      DO prO_0000a IN MODSET WITH vwEb
      STORE mfRa TO vwEb
 ENDIF
 IF psW0_ema<>2
      DO prO_0000a IN MODSET WITH veMa
      STORE mfRa TO veMa
 ENDIF
 IF psW0_llz<>2
      DO prO_0000a IN MODSET WITH vlLz
      STORE mfRa TO vlLz
 ENDIF
 IF psW0_llx<>2
      DO prO_0000a IN MODSET WITH vlLx
      STORE mfRa TO vlLx
 ENDIF
 IF psW0_lly<>2
      DO prO_0000a IN MODSET WITH vlLy
      STORE mfRa TO vlLy
 ENDIF
 IF psW0_llb<>2
      DO prO_0000a IN MODSET WITH vlLb
      STORE mfRa TO vlLb
 ENDIF
 IF psW0_lld<>2
      DO prO_0000a IN MODSET WITH vlLd
      STORE mfRa TO vlLd
 ENDIF
 IF psW0_lle<>2
      DO prO_0000a IN MODSET WITH vlLe
      STORE mfRa TO vlLe
 ENDIF
 IF psW0_lln<>2
      DO prO_0000a IN MODSET WITH vlLn
      STORE mfRa TO vlLn
 ENDIF
 IF psW0_llc<>2
      DO prO_0000a IN MODSET WITH vlLc
      STORE mfRa TO vlLc
 ENDIF
 IF psW0_ll0<>2
      DO prO_0000a IN MODSET WITH vlL0
      STORE mfRa TO vlL0
 ENDIF
 IF psW0_l10<>2
      DO prO_0000a IN MODSET WITH vl10
      STORE mfRa TO vl10
 ENDIF
 IF psW0_l20<>2
      DO prO_0000a IN MODSET WITH vl20
      STORE mfRa TO vl20
 ENDIF
 IF psW0_l0b<>2
      DO prO_0000a IN MODSET WITH vl0b
      STORE mfRa TO vl0b
 ENDIF
 IF psW0_l1b<>2
      DO prO_0000a IN MODSET WITH vl1b
      STORE mfRa TO vl1b
 ENDIF
 IF psW0_l2b<>2
      DO prO_0000a IN MODSET WITH vl2b
      STORE mfRa TO vl2b
 ENDIF
 IF psW0_l0n<>2
      DO prO_0000a IN MODSET WITH vl0n
      STORE mfRa TO vl0n
 ENDIF
 IF psW0_l0c<>2
      DO prO_0000a IN MODSET WITH vl0c
      STORE mfRa TO vl0c
 ENDIF
 IF psW0_tra<>2
      DO prO_0000a IN MODSET WITH vtRa
      STORE mfRa TO vtRa
 ENDIF
 IF psW0_alm<>2
      DO prO_0000a IN MODSET WITH vaLm
      STORE mfRa TO vaLm
 ENDIF
 IF psW0_cim<>2
      DO prO_0000a IN MODSET WITH vcIm
      STORE mfRa TO vcIm
 ENDIF
 IF psW0_emp<>2
      DO prO_0000a IN MODSET WITH veMp
      STORE mfRa TO veMp
 ENDIF
 IF psW0_ped<>2
      DO prO_0000a IN MODSET WITH vpEd
      STORE mfRa TO vpEd
 ENDIF
 IF psW0_fel<>2
      DO prO_0000a IN MODSET WITH vfEl
      STORE mfRa TO vfEl
 ENDIF
 IF psW0_cor<>2
      DO prO_0000a IN MODSET WITH vcOr
      STORE mfRa TO vcOr
 ENDIF
 IF psW0_sld<>2
      DO prO_0000a IN MODSET WITH vsLd
      STORE mfRa TO vsLd
 ENDIF
 IF psW0_ing<>2
      DO prO_0000a IN MODSET WITH viNg
      STORE mfRa TO viNg
 ENDIF
 IF psW0_pal<>2
      DO prO_0000a IN MODSET WITH vpAl
      STORE mfRa TO vpAl
 ENDIF
 IF psW0_vin<>2
      DO prO_0000a IN MODSET WITH vvIn
      STORE mfRa TO vvIn
 ENDIF
 IF psW0_rz1=2
      STORE SPACE(40) TO vrZ1
 ENDIF
 IF psW0_tip=2
      STORE SPACE(10) TO vtIp
 ENDIF
 IF psW0_dir=2
      STORE SPACE(100) TO vdIr
 ENDIF
 IF psW0_ruc=2
      STORE SPACE(11) TO vrUc
 ENDIF
 IF psW0_tel=2
      STORE SPACE(20) TO vtEl
 ENDIF
 IF psW0_web=2
      STORE SPACE(70) TO vwEb
 ENDIF
 IF psW0_ema=2
      STORE SPACE(70) TO veMa
 ENDIF
 IF psW0_lfa=2
      STORE 99 TO vlFa
 ENDIF
 IF psW0_lfe=2
      STORE 99 TO vlFe
 ENDIF
 IF psW0_lfc=2
      STORE 99 TO vlFc
 ENDIF
 IF psW0_lbo=2
      STORE 99 TO vlBo
 ENDIF
 IF psW0_lbe=2
      STORE 99 TO vlBe
 ENDIF
 IF psW0_lbc=2
      STORE 99 TO vlBc
 ENDIF
 IF psW0_lnc=2
      STORE 99 TO vlNc
 ENDIF
 IF psW0_ln1=2
      STORE 99 TO vlN1
 ENDIF
 IF psW0_ln3=2
      STORE 99 TO vlN3
 ENDIF
 IF psW0_lnd=2
      STORE 99 TO vlNd
 ENDIF
 IF psW0_ln2=2
      STORE 99 TO vlN2
 ENDIF
 IF psW0_ln4=2
      STORE 99 TO vlN4
 ENDIF
 IF psW0_lgr=2
      STORE vlFa TO vlGr
 ENDIF
 IF psW0_lge=2
      STORE 99 TO vlGe
 ENDIF
 IF psW0_lnp=2
      STORE 99 TO vlNp
 ENDIF
 IF psW0_lcp=2
      STORE 99 TO vlCp
 ENDIF
 IF psW0_lcr=2
      STORE 99 TO vlCr
 ENDIF
 IF psW0_ll1=2
      STORE 3 TO vlL1
 ENDIF
 IF psW0_ll2=2
      STORE 5 TO vlL2
 ENDIF
 IF psW0_ll3=2
      STORE 3 TO vlL3
 ENDIF
 IF psW0_llz=2
      STORE "S" TO vlLz
 ENDIF
 IF psW0_llx=2
      STORE "N" TO vlLx
 ENDIF
 IF psW0_lly=2
      STORE "N" TO vlLy
 ENDIF
 IF psW0_llb=2
      STORE "S" TO vlLb
 ENDIF
 IF psW0_lld=2
      STORE "N" TO vlLd
 ENDIF
 IF psW0_lle=2
      STORE "N" TO vlLe
 ENDIF
 IF psW0_lln=2
      STORE "S" TO vlLn
 ENDIF
 IF psW0_llc=2
      STORE "S" TO vlLc
 ENDIF
 IF psW0_ll0=2
      STORE "N" TO vlL0
 ENDIF
 IF psW0_l10=2
      STORE "N" TO vl10
 ENDIF
 IF psW0_l20=2
      STORE "N" TO vl20
 ENDIF
 IF psW0_l0b=2
      STORE "N" TO vl0b
 ENDIF
 IF psW0_l1b=2
      STORE "N" TO vl1b
 ENDIF
 IF psW0_l2b=2
      STORE "N" TO vl2b
 ENDIF
 IF psW0_l0n=2
      STORE "N" TO vl0n
 ENDIF
 IF psW0_l0c=2
      STORE "N" TO vl0c
 ENDIF
 IF psW0_lst=2
      STORE 1 TO vlSt
 ENDIF
 IF psW0_lis=2
      STORE 0 TO vlIs
 ENDIF
 IF psW0_obr=2
      STORE 1 TO voBr
 ENDIF
 IF psW0_tmc=2
      STORE 20 TO vtMc
 ENDIF
 IF psW0_dec=2
      STORE 4 TO vdEc
 ENDIF
 IF psW0_tra=2
      STORE SPACE(04) TO vtRa
 ENDIF
 IF psW0_alm=2
      STORE SPACE(04) TO vaLm
 ENDIF
 IF psW0_cim=2
      STORE SPACE(10) TO vcIm
 ENDIF
 IF psW0_caj=2
      STORE 2 TO vcAj
 ENDIF
 IF psW0_mii=2
      STORE 2 TO vmIi
 ENDIF
 IF psW0_max=2
      STORE 2 TO vmAx
 ENDIF
 IF psW0_dsp=2
      STORE 2 TO vdSp
 ENDIF
 IF psW0_stp=2
      STORE 3 TO vsTp
 ENDIF
 IF psW0_emp=2
      STORE SPACE(04) TO veMp
 ENDIF
 IF psW0_mbo=2
      STORE 1549.9999 TO vmBo
 ENDIF
 IF psW0_ped=2
      STORE 2 TO vpEd
 ENDIF
 IF psW0_vnd=2
      STORE 2 TO vvNd
 ENDIF
 IF psW0_pig=2
      STORE 2 TO vpIg
 ENDIF
 IF psW0_fel=2
      STORE "2" TO vfEl
 ENDIF
 IF psW0_des=2
      STORE 3 TO vdEs
 ENDIF
 IF psW0_mon=2
      STORE 1 TO vmOn
 ENDIF
 IF psW0_gra=2
      STORE 1 TO vgRa
 ENDIF
 IF psW0_red=2
      STORE 3 TO vrEd
 ENDIF
 IF psW0_pdc=2
      STORE 1 TO vpDc
 ENDIF
 IF psW0_tfa=2
      STORE 1 TO vtFa
 ENDIF
 IF psW0_cor=2
      STORE 1 TO vcOr
 ENDIF
 IF psW0_pie=2
      STORE 3 TO vpIe
 ENDIF
 IF psW0_vid=2
      STORE 2 TO vvId
 ENDIF
 IF psW0_li1=2
      STORE 1 TO vlI1
 ENDIF
 IF psW0_jal=2
      STORE 2 TO vjAl
 ENDIF
 IF psW0_pre=2
      STORE 1 TO vpRe
 ENDIF
 IF psW0_imp=2
      STORE 2 TO viMp
 ENDIF
 IF psW0_mnc=2
      STORE vmOn TO vmNc
 ENDIF
 IF psW0_fcc=2
      STORE 10.764 TO vfCc
 ENDIF
 IF psW0_fct=2
      STORE 10.77 TO vfCt
 ENDIF
 IF psW0_fcp=2
      STORE 144 TO vfCp
 ENDIF
 IF psW0_int=2
      STORE 00 TO viNt
 ENDIF
 IF psW0_dia=2
      STORE 8 TO vdIa
 ENDIF
 IF psW0_com=2
      STORE "N" TO vcOm
 ENDIF
 IF psW0_let=2
      STORE 1 TO vlEt
 ENDIF
 IF psW0_sep=2
      STORE 2 TO vsEp
 ENDIF
 IF psW0_sed=2
      STORE 2 TO vsEd
 ENDIF
 IF psW0_pss=2
      STORE 6 TO vpSs
 ENDIF
 IF psW0_vit=2
      STORE 1 TO vvIt
 ENDIF
 IF psW0_det=2
      STORE 1 TO vdEt
 ENDIF
 IF psW0_hlp=2
      STORE 1 TO vhLp
 ENDIF
 IF psW0_sld=2
      STORE 2 TO vsLd
 ENDIF
 IF psW0_ing=2
      STORE "N" TO viNg
 ENDIF
 IF psW0_pal=2
      STORE "N" TO vpAl
 ENDIF
 IF psW0_vin=2
      STORE "XLS\FORMATO\" TO vvIn
 ENDIF
 IF psW0_pan=2
      STORE 1 TO vpAn
 ENDIF
 DO CASE
      CASE vlLz="S"
           STORE 1 TO vlLz
      OTHERWISE
           STORE 2 TO vlLz
 ENDCASE
 DO CASE
      CASE vlLx="S"
           STORE 1 TO vlLx
      OTHERWISE
           STORE 2 TO vlLx
 ENDCASE
 DO CASE
      CASE vlLy="S"
           STORE 1 TO vlLy
      OTHERWISE
           STORE 2 TO vlLy
 ENDCASE
 DO CASE
      CASE vlLb="S"
           STORE 1 TO vlLb
      OTHERWISE
           STORE 2 TO vlLb
 ENDCASE
 DO CASE
      CASE vlLd="S"
           STORE 1 TO vlLd
      OTHERWISE
           STORE 2 TO vlLd
 ENDCASE
 DO CASE
      CASE vlLe="S"
           STORE 1 TO vlLe
      OTHERWISE
           STORE 2 TO vlLe
 ENDCASE
 DO CASE
      CASE vlLn="S"
           STORE 1 TO vlLn
      OTHERWISE
           STORE 2 TO vlLn
 ENDCASE
 DO CASE
      CASE vlLc="S"
           STORE 1 TO vlLc
      OTHERWISE
           STORE 2 TO vlLc
 ENDCASE
 DO CASE
      CASE vlL0="S"
           STORE 1 TO vlL0
      CASE vlL0="N"
           STORE 2 TO vlL0
      OTHERWISE
           STORE 3 TO vlL0
 ENDCASE
 DO CASE
      CASE vl10="S"
           STORE 1 TO vl10
      CASE vl10="N"
           STORE 2 TO vl10
      OTHERWISE
           STORE 3 TO vl10
 ENDCASE
 DO CASE
      CASE vl20="S"
           STORE 1 TO vl20
      CASE vl20="N"
           STORE 2 TO vl20
      OTHERWISE
           STORE 3 TO vl20
 ENDCASE
 DO CASE
      CASE vl0b="S"
           STORE 1 TO vl0b
      CASE vl0b="N"
           STORE 2 TO vl0b
      OTHERWISE
           STORE 3 TO vl0b
 ENDCASE
 DO CASE
      CASE vl1b="S"
           STORE 1 TO vl1b
      CASE vl1b="N"
           STORE 2 TO vl1b
      OTHERWISE
           STORE 3 TO vl1b
 ENDCASE
 DO CASE
      CASE vl2b="S"
           STORE 1 TO vl2b
      CASE vl2b="N"
           STORE 2 TO vl2b
      OTHERWISE
           STORE 3 TO vl2b
 ENDCASE
 DO CASE
      CASE vl0n="S"
           STORE 1 TO vl0n
      CASE vl0n="N"
           STORE 2 TO vl0n
      OTHERWISE
           STORE 3 TO vl0n
 ENDCASE
 DO CASE
      CASE vl0c="S"
           STORE 1 TO vl0c
      CASE vl0c="N"
           STORE 2 TO vl0c
      OTHERWISE
           STORE 3 TO vl0c
 ENDCASE
 DO CASE
      CASE vfEl="1"
           STORE 1 TO vfEl
      CASE vfEl="3"
           STORE 3 TO vfEl
      OTHERWISE
           STORE 2 TO vfEl
 ENDCASE
 DO CASE
      CASE vpEd="S"
           STORE 1 TO vpEd
      OTHERWISE
           STORE 2 TO vpEd
 ENDCASE
 DO CASE
      CASE vcOr="S"
           STORE 1 TO vcOr
      OTHERWISE
           STORE 2 TO vcOr
 ENDCASE
 DO CASE
      CASE vsLd="S"
           STORE 1 TO vsLd
      OTHERWISE
           STORE 2 TO vsLd
 ENDCASE
 DO CASE
      CASE viNg="S"
           STORE 1 TO viNg
      OTHERWISE
           STORE 2 TO viNg
 ENDCASE
 DO CASE
      CASE vpAl="S"
           STORE 1 TO vpAl
      OTHERWISE
           STORE 2 TO vpAl
 ENDCASE
 DO CASE
      CASE vcOm="S"
           STORE 1 TO vcOm
      OTHERWISE
           STORE 2 TO vcOm
 ENDCASE
 IF vvIt=9
      STORE 5 TO vvIt
 ENDIF
 DO CASE
      CASE vrEd=0
           STORE 1 TO vrEd
      CASE vrEd=1
           STORE 2 TO vrEd
      CASE vrEd=2
           STORE 3 TO vrEd
      OTHERWISE
           STORE 4 TO vrEd
 ENDCASE
 DO CASE
      CASE vhLp=0
           STORE 1 TO vhLp
      OTHERWISE
           STORE 2 TO vhLp
 ENDCASE
 RELEASE pnUm, pnU1
 RELEASE psW0_rz1, psW0_tip, psW0_dir, psW0_ruc, psW0_tel, psW0_web,  ;
         psW0_ema, psW0_lfa
 RELEASE psW0_lfe, psW0_lfc, psW0_lbo, psW0_lbe, psW0_lbc, psW0_lnc,  ;
         psW0_ln1, psW0_ln3
 RELEASE psW0_lnd, psW0_ln2, psW0_ln4, psW0_lgr, psW0_lge, psW0_lnp,  ;
         psW0_lcp, psW0_lcr
 RELEASE psW0_ll1, psW0_ll2, psW0_ll3, psW0_llz, psW0_llx, psW0_lly,  ;
         psW0_llb, psW0_lld
 RELEASE psW0_lle, psW0_lln, psW0_llc, psW0_ll0, psW0_l10, psW0_l20,  ;
         psW0_l0b, psW0_l1b
 RELEASE psW0_l2b, psW0_l0n, psW0_l0c, psW0_lst, psW0_lis, psW0_obr,  ;
         psW0_tmc, psW0_dec
 RELEASE psW0_tra, psW0_alm, psW0_cim, psW0_caj, psW0_mii, psW0_max,  ;
         psW0_dsp, psW0_stp
 RELEASE psW0_emp, psW0_mbo, psW0_ped, psW0_vnd, psW0_pig, psW0_fel,  ;
         psW0_des, psW0_mon
 RELEASE psW0_igv, psW0_gra, psW0_red, psW0_pdc, psW0_tfa, psW0_cor,  ;
         psW0_pie, psW0_vid
 RELEASE psW0_li1, psW0_jal, psW0_pre, psW0_imp, psW0_mnc, psW0_fcc,  ;
         psW0_fct, psW0_fcp
 RELEASE psW0_int, psW0_dia, psW0_com, psW0_let, psW0_sep, psW0_sed,  ;
         psW0_pss, psW0_vit
 RELEASE psW0_det, psW0_hlp, psW0_sld, psW0_ing, psW0_pal, psW0_vin, psW0_pan
 RETURN
ENDPROC
*
PROCEDURE Gra_0000a
 PRIVATE ppAt
 = INKEY(0.01)
 DO prE_docum WITH "¿Está seguro de grabar?"
 IF moPc$"Nn"
      RETURN
 ENDIF
 DO grAbar WITH "1"
 DO crE_0000a
 STORE mpAt+vcIa+"\IDENTI1.DBB" TO mdBf
 STORE 04 TO meRr
 Use &mDBF Exclusive
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 03 TO meRr
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
      CASE vfEl=2
           STORE "2" TO vfEl
      OTHERWISE
           STORE "3" TO vfEl
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
 DO gr1_0000a
 DO prO_0000a IN MODSET WITH vcIa
 STORE mfRa TO vcIa
 STORE SPACE(02) TO ccIa
 STORE 1 TO vpAg
 WAIT CLEAR
ENDPROC
*
PROCEDURE Gr1_0000a
 DO prO_0000a IN MODSET WITH vcIa
 STORE mfRa TO vcIa
 DO prO_0000a IN MODSET WITH vrAz
 STORE mfRa TO vrAz
 DO prO_0000a IN MODSET WITH vrZ1
 STORE mfRa TO vrZ1
 DO prO_0000a IN MODSET WITH vtIp
 STORE mfRa TO vtIp
 DO prO_0000a IN MODSET WITH vdIr
 STORE mfRa TO vdIr
 DO prO_0000a IN MODSET WITH vrUc
 STORE mfRa TO vrUc
 DO prO_0000a IN MODSET WITH vtEl
 STORE mfRa TO vtEl
 DO prO_0000a IN MODSET WITH vwEb
 STORE mfRa TO vwEb
 DO prO_0000a IN MODSET WITH veMa
 STORE mfRa TO veMa
 DO prO_0000a IN MODSET WITH vlLz
 STORE mfRa TO vlLz
 DO prO_0000a IN MODSET WITH vlLx
 STORE mfRa TO vlLx
 DO prO_0000a IN MODSET WITH vlLy
 STORE mfRa TO vlLy
 DO prO_0000a IN MODSET WITH vlLb
 STORE mfRa TO vlLb
 DO prO_0000a IN MODSET WITH vlLd
 STORE mfRa TO vlLd
 DO prO_0000a IN MODSET WITH vlLe
 STORE mfRa TO vlLe
 DO prO_0000a IN MODSET WITH vlLn
 STORE mfRa TO vlLn
 DO prO_0000a IN MODSET WITH vlLc
 STORE mfRa TO vlLc
 DO prO_0000a IN MODSET WITH vlL0
 STORE mfRa TO vlL0
 DO prO_0000a IN MODSET WITH vl10
 STORE mfRa TO vl10
 DO prO_0000a IN MODSET WITH vl20
 STORE mfRa TO vl20
 DO prO_0000a IN MODSET WITH vl0b
 STORE mfRa TO vl0b
 DO prO_0000a IN MODSET WITH vl1b
 STORE mfRa TO vl1b
 DO prO_0000a IN MODSET WITH vl2b
 STORE mfRa TO vl2b
 DO prO_0000a IN MODSET WITH vl0n
 STORE mfRa TO vl0n
 DO prO_0000a IN MODSET WITH vl0c
 STORE mfRa TO vl0c
 DO prO_0000a IN MODSET WITH vtRa
 STORE mfRa TO vtRa
 DO prO_0000a IN MODSET WITH vaLm
 STORE mfRa TO vaLm
 DO prO_0000a IN MODSET WITH vcIm
 STORE mfRa TO vcIm
 DO prO_0000a IN MODSET WITH veMp
 STORE mfRa TO veMp
 DO prO_0000a IN MODSET WITH vpEd
 STORE mfRa TO vpEd
 DO prO_0000a IN MODSET WITH vfEl
 STORE mfRa TO vfEl
 DO prO_0000a IN MODSET WITH vcOr
 STORE mfRa TO vcOr
 DO prO_0000a IN MODSET WITH vsLd
 STORE mfRa TO vsLd
 DO prO_0000a IN MODSET WITH viNg
 STORE mfRa TO viNg
 DO prO_0000a IN MODSET WITH vpAl
 STORE mfRa TO vpAl
 DO prO_0000a IN MODSET WITH vvIn
 STORE mfRa TO vvIn
 REPLACE ciA WITH vcIa
 REPLACE raZ WITH vrAz
 REPLACE rz1 WITH vrZ1
 REPLACE tiP WITH vtIp
 REPLACE diR WITH vdIr
 REPLACE ruC WITH vrUc
 REPLACE teL WITH vtEl
 REPLACE weB WITH vwEb
 REPLACE emA WITH veMa
 REPLACE lfA WITH vlFa
 REPLACE lfE WITH vlFe
 REPLACE lfC WITH vlFc
 REPLACE lbO WITH vlBo
 REPLACE lbE WITH vlBe
 REPLACE lbC WITH vlBc
 REPLACE lnC WITH vlNc
 REPLACE ln1 WITH vlN1
 REPLACE ln3 WITH vlN3
 REPLACE lnD WITH vlNd
 REPLACE ln2 WITH vlN2
 REPLACE ln4 WITH vlN4
 REPLACE lgR WITH vlGr
 REPLACE lgE WITH vlGe
 REPLACE lnP WITH vlNp
 REPLACE lcP WITH vlCp
 REPLACE lcR WITH vlCr
 REPLACE ll1 WITH vlL1
 REPLACE ll2 WITH vlL2
 REPLACE ll3 WITH vlL3
 REPLACE llZ WITH vlLz
 REPLACE llX WITH vlLx
 REPLACE llY WITH vlLy
 REPLACE llB WITH vlLb
 REPLACE llD WITH vlLd
 REPLACE llE WITH vlLe
 REPLACE llN WITH vlLn
 REPLACE llC WITH vlLc
 REPLACE ll0 WITH vlL0
 REPLACE l10 WITH vl10
 REPLACE l20 WITH vl20
 REPLACE l0B WITH vl0b
 REPLACE l1B WITH vl1b
 REPLACE l2B WITH vl2b
 REPLACE l0N WITH vl0n
 REPLACE l0C WITH vl0c
 REPLACE lsT WITH vlSt
 REPLACE liS WITH vlIs
 REPLACE obR WITH voBr
 REPLACE tmC WITH vtMc
 REPLACE deC WITH vdEc
 REPLACE trA WITH vtRa
 REPLACE alM WITH vaLm
 REPLACE ciM WITH vcIm
 REPLACE caJ WITH vcAj
 REPLACE miI WITH vmIi
 REPLACE maX WITH vmAx
 REPLACE dsP WITH vdSp
 REPLACE stP WITH vsTp
 REPLACE emP WITH veMp
 REPLACE mbO WITH vmBo
 REPLACE peD WITH vpEd
 REPLACE vnD WITH vvNd
 REPLACE piG WITH vpIg
 REPLACE feL WITH vfEl
 REPLACE deS WITH vdEs
 REPLACE moN WITH vmOn
 REPLACE grA WITH vgRa
 REPLACE reD WITH vrEd
 REPLACE pdC WITH vpDc
 REPLACE tfA WITH vtFa
 REPLACE coR WITH vcOr
 REPLACE piE WITH vpIe
 REPLACE viD WITH vvId
 REPLACE li1 WITH vlI1
 REPLACE jaL WITH vjAl
 REPLACE prE WITH vpRe
 REPLACE imP WITH viMp
 REPLACE mnC WITH vmNc
 REPLACE fcC WITH vfCc
 REPLACE fcT WITH vfCt
 REPLACE fcP WITH vfCp
 REPLACE inT WITH viNt
 REPLACE diA WITH vdIa
 REPLACE coM WITH vcOm
 REPLACE leT WITH vlEt
 REPLACE seP WITH vsEp
 REPLACE seD WITH vsEd
 REPLACE psS WITH vpSs
 REPLACE viT WITH vvIt
 REPLACE deT WITH vdEt
 REPLACE hlP WITH vhLp
 REPLACE slD WITH vsLd
 REPLACE inG WITH viNg
 REPLACE paL WITH vpAl
 REPLACE viN WITH vvIn
 REPLACE paN WITH vpAn
 RETURN
ENDPROC
*
PROCEDURE Cre_0000a
 STORE mpAt+vcIa+"\" TO ppAt
 If .not.Directory("&pPAT")
      MD &pPAT
 ENDIF
 STORE mpAt+"IDENTI2.DBB" TO mdBf
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      PUBLIC afIl, x
      DIMENSION afIl[1, 4]
      STORE 1 TO x
      afIl[x, 1] = "CIA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      CLOSE DATABASES
      STORE 04 TO meRr
      Use &mDBF Exclusive
      IF mkEy=k_Esc
           RETURN
      ENDIF
      STORE 03 TO meRr
      APPEND BLANK
      REPLACE ciA WITH vcIa
      CLOSE DATABASES
 ENDIF
 STORE mpAt+vcIa+"\IDENTI1.DBB" TO mdBf
 meXi = fiLsobj.fiLeexists(mdBf)
 If .not.File("&mDBF") .and. mEXI = .F.
      PUBLIC afIl, x
      DIMENSION afIl[96, 4]
      STORE 1 TO x
      afIl[x, 1] = "CIA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RAZ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 50
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RZ1"
      afIl[x, 2] = "C"
      afIl[x, 3] = 40
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TIP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DIR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 100
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RUC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TEL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 20
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "WEB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "EMA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 70
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LFA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LFE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LFC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LBO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LBE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LBC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LNC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LN1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LN3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LND"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LN2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LN4"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LGR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LGE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LNP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LCP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LCR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LNP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LL1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LL2"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LL3"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLZ"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLX"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLY"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLB"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLE"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LLC"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LL0"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L10"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L20"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L0B"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L1B"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L2B"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L0N"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "L0C"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LST"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LIS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "OBR"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TMC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DEC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TRA"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "ALM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "CIM"
      afIl[x, 2] = "C"
      afIl[x, 3] = 10
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "CAJ"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MII"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MAX"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DSP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "STP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "EMP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 4
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MBO"
      afIl[x, 2] = "N"
      afIl[x, 3] = 9
      afIl[x, 4] = 4
      STORE x+1 TO x
      afIl[x, 1] = "PED"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "VND"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PIG"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "FEL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DES"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MON"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "GRA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "RED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PDC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "TFA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "COR"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PIE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "VID"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LI1"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "JAL"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PRE"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "IMP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "MNC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "FCC"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "FCT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "FCP"
      afIl[x, 2] = "C"
      afIl[x, 3] = 3
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "INT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 6
      afIl[x, 4] = 3
      STORE x+1 TO x
      afIl[x, 1] = "DIA"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "COM"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "LET"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "SEP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "SED"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PSS"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "VIT"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "DET"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "HLP"
      afIl[x, 2] = "N"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "SLD"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "ING"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PAL"
      afIl[x, 2] = "C"
      afIl[x, 3] = 1
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "VIN"
      afIl[x, 2] = "C"
      afIl[x, 3] = 30
      afIl[x, 4] = 0
      STORE x+1 TO x
      afIl[x, 1] = "PAN"
      afIl[x, 2] = "N"
      afIl[x, 3] = 2
      afIl[x, 4] = 0
      STORE 02 TO meRr
      CREATE TABLE (mdBf) FROM ARRAY afIl
      STORE 00 TO meRr
      IF mkEy=k_Esc
           RETURN
      ENDIF
      RELEASE afIl, x
      Use &mDBF Exclusive
      IF mkEy=k_Esc
           RETURN
      ENDIF
      APPEND BLANK
      CLOSE DATABASES
 ENDIF
ENDPROC
*
PROCEDURE Clp_0000a
 = INKEY(0.01)
 STORE 00 TO ciTx
 DO CASE
      CASE mfIl>=mfI0+36.4 .AND. mfIl<=mfI0+38 .AND. mcCc>=mcO0+60 .AND.  ;
           mcCc<=mcO0+88.4 .AND. viTe>1
           IF vpAg=1
                STORE 2 TO vpAg
           ELSE
                STORE 1 TO vpAg
           ENDIF
           DO coL_beige
           STORE 99 TO mkEy, coPc
           @ mfI0+6.2, mcO0 TO mfI0+muFi, mcO0+muCo PATTERN 1
           DO pnT_0000a
      CASE mfIl>=mfI0+36.4 .AND. mfIl<=mfI0+38 .AND. mcCc>=mcO0+90.2  ;
           .AND. mcCc<=mcO0+109.4 .AND. viTe>1
           STORE k_Tab TO mkEy
      CASE mfIl>=mfI0+36.4 .AND. mfIl<=mfI0+38 .AND. mcCc>=mcO0+111 .AND.  ;
           mcCc<=mcO0+126
           STORE k_Esc TO mkEy
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLz<>1
           STORE 01 TO vlLz
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLz<>2
           STORE 02 TO vlLz
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+25.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLx<>1
           STORE 01 TO vlLx
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+25.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLx<>2
           STORE 02 TO vlLx
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.928 .AND. mfIl<=mfI0+27.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLy<>1
           STORE 01 TO vlLy
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.928 .AND. mfIl<=mfI0+27.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLy<>2
           STORE 02 TO vlLy
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.500 .AND. mfIl<=mfI0+29.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLb<>1
           STORE 01 TO vlLb
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.500 .AND. mfIl<=mfI0+29.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLb<>2
           STORE 02 TO vlLb
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+29.000 .AND. mfIl<=mfI0+30.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLd<>1
           STORE 01 TO vlLd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+29.000 .AND. mfIl<=mfI0+30.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLd<>2
           STORE 02 TO vlLd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.571 .AND. mfIl<=mfI0+32.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLe<>1
           STORE 01 TO vlLe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.571 .AND. mfIl<=mfI0+32.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLe<>2
           STORE 02 TO vlLe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLn<>1
           STORE 01 TO vlLn
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLn<>2
           STORE 02 TO vlLn
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+33.500 .AND. mfIl<=mfI0+34.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+23.200 .AND. mcCc<=mcO0+30.400 .AND. viTe>1 .AND. vlLc<>1
           STORE 01 TO vlLc
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+33.500 .AND. mfIl<=mfI0+34.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+30.400 .AND. mcCc<=mcO0+38.000 .AND. viTe>1 .AND. vlLc<>2
           STORE 02 TO vlLc
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vlL0<>1
           STORE 01 TO vlL0
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vlL0<>2
           STORE 02 TO vlL0
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vlL0<>3
           STORE 03 TO vlL0
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+25.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl10<>1
           STORE 01 TO vl10
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+25.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl10<>2
           STORE 02 TO vl10
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+25.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl10<>3
           STORE 03 TO vl10
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.928 .AND. mfIl<=mfI0+27.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl20<>1
           STORE 01 TO vl20
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.928 .AND. mfIl<=mfI0+27.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl20<>2
           STORE 02 TO vl20
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.928 .AND. mfIl<=mfI0+27.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl20<>3
           STORE 03 TO vl20
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.500 .AND. mfIl<=mfI0+29.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl0b<>1
           STORE 01 TO vl0b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.500 .AND. mfIl<=mfI0+29.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl0b<>2
           STORE 02 TO vl0b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.500 .AND. mfIl<=mfI0+29.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl0b<>3
           STORE 03 TO vl0b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+29.000 .AND. mfIl<=mfI0+30.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl1b<>1
           STORE 01 TO vl1b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+29.000 .AND. mfIl<=mfI0+30.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl1b<>2
           STORE 02 TO vl1b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+29.000 .AND. mfIl<=mfI0+30.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl1b<>3
           STORE 03 TO vl1b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.571 .AND. mfIl<=mfI0+32.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl2b<>1
           STORE 01 TO vl2b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.571 .AND. mfIl<=mfI0+32.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl2b<>2
           STORE 02 TO vl2b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.571 .AND. mfIl<=mfI0+32.000 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl2b<>3
           STORE 03 TO vl2b
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl0n<>1
           STORE 01 TO vl0n
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl0n<>2
           STORE 02 TO vl0n
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl0n<>3
           STORE 03 TO vl0n
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+33.500 .AND. mfIl<=mfI0+34.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+65.200 .AND. mcCc<=mcO0+76.200 .AND. viTe>1 .AND. vl0c<>1
           STORE 01 TO vl0c
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+33.500 .AND. mfIl<=mfI0+34.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+76.200 .AND. mcCc<=mcO0+83.000 .AND. viTe>1 .AND. vl0c<>2
           STORE 02 TO vl0c
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+33.500 .AND. mfIl<=mfI0+34.928 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.000 .AND. mcCc<=mcO0+92.800 .AND. viTe>1 .AND. vl0c<>3
           STORE 03 TO vl0c
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+07.928 .AND. mfIl<=mfI0+09.143 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+175.40 .AND. mcCc<=mcO0+181.60 .AND. viTe>1 .AND. vmIi<>1
           STORE 01 TO vmIi
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+07.928 .AND. mfIl<=mfI0+09.143 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+181.60 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vmIi<>2
           STORE 02 TO vmIi
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+09.143 .AND. mfIl<=mfI0+10.643 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+175.40 .AND. mcCc<=mcO0+181.60 .AND. viTe>1 .AND. vmAx<>1
           STORE 01 TO vmAx
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+09.143 .AND. mfIl<=mfI0+10.643 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+181.60 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vmAx<>2
           STORE 02 TO vmAx
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+10.643 .AND. mfIl<=mfI0+12.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+175.40 .AND. mcCc<=mcO0+181.60 .AND. viTe>1 .AND. vcAj<>1
           STORE 01 TO vcAj
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+10.643 .AND. mfIl<=mfI0+12.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+181.60 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vcAj<>2
           STORE 02 TO vcAj
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+12.214 .AND. mfIl<=mfI0+13.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+175.40 .AND. mcCc<=mcO0+181.60 .AND. viTe>1 .AND. vdSp<>1
           STORE 01 TO vdSp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+12.214 .AND. mfIl<=mfI0+13.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+181.60 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vdSp<>2
           STORE 02 TO vdSp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+15.357 .AND. mfIl<=mfI0+16.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+139.60 .AND. mcCc<=mcO0+187.60 .AND. viTe>1 .AND. vsTp<>1
           STORE 01 TO vsTp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+16.500 .AND. mfIl<=mfI0+17.643 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+139.60 .AND. mcCc<=mcO0+187.60 .AND. viTe>1 .AND. vsTp<>2
           STORE 02 TO vsTp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+17.643 .AND. mfIl<=mfI0+18.643 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+139.60 .AND. mcCc<=mcO0+187.60 .AND. viTe>1 .AND. vsTp<>3
           STORE 03 TO vsTp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+21.071 .AND. mfIl<=mfI0+22.071 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+154.20 .AND. mcCc<=mcO0+166.20 .AND. viTe>1 .AND. vfEl<>1
           STORE 01 TO vfEl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+22.071 .AND. mfIl<=mfI0+23.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+154.20 .AND. mcCc<=mcO0+171.20 .AND. viTe>1 .AND. vfEl<>2
           STORE 02 TO vfEl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.214 .AND. mfIl<=mfI0+24.357 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+154.20 .AND. mcCc<=mcO0+175.80 .AND. viTe>1 .AND. vfEl<>3
           STORE 03 TO vfEl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.357 .AND. mfIl<=mfI0+25.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+118.20 .AND. mcCc<=mcO0+129.40 .AND. viTe>1 .AND. vvNd<>1
           STORE 01 TO vvNd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.357 .AND. mfIl<=mfI0+25.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+129.40 .AND. mcCc<=mcO0+142.00 .AND. viTe>1 .AND. vvNd<>2
           STORE 02 TO vvNd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.357 .AND. mfIl<=mfI0+25.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+171.60 .AND. mcCc<=mcO0+178.40 .AND. viTe>1 .AND. vpEd<>1
           STORE 01 TO vpEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.357 .AND. mfIl<=mfI0+25.500 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+178.40 .AND. mcCc<=mcO0+185.60 .AND. viTe>1 .AND. vpEd<>2
           STORE 02 TO vpEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.500 .AND. mfIl<=mfI0+26.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+118.20 .AND. mcCc<=mcO0+135.40 .AND. viTe>1 .AND. vgRa<>1
           STORE 01 TO vgRa
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.500 .AND. mfIl<=mfI0+26.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+134.40 .AND. mcCc<=mcO0+147.60 .AND. viTe>1 .AND. vgRa<>2
           STORE 02 TO vgRa
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.500 .AND. mfIl<=mfI0+26.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+171.60 .AND. mcCc<=mcO0+178.40 .AND. viTe>1 .AND. vpIg<>1
           STORE 01 TO vpIg
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+25.500 .AND. mfIl<=mfI0+26.571 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+178.40 .AND. mcCc<=mcO0+185.60 .AND. viTe>1 .AND. vpIg<>2
           STORE 02 TO vpIg
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.571 .AND. mfIl<=mfI0+27.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+118.20 .AND. mcCc<=mcO0+129.60 .AND. viTe>1 .AND. vpDc<>1
           STORE 01 TO vpDc
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.571 .AND. mfIl<=mfI0+27.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+129.60 .AND. mcCc<=mcO0+149.60 .AND. viTe>1 .AND. vpDc<>2
           STORE 02 TO vpDc
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.571 .AND. mfIl<=mfI0+27.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+171.60 .AND. mcCc<=mcO0+179.40 .AND. viTe>1 .AND. vtFa<>1
           STORE 01 TO vtFa
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.571 .AND. mfIl<=mfI0+27.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+179.40 .AND. mcCc<=mcO0+189.20 .AND. viTe>1 .AND. vtFa<>2
           STORE 02 TO vtFa
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.857 .AND. mfIl<=mfI0+28.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+118.20 .AND. mcCc<=mcO0+129.40 .AND. viTe>1 .AND. vrEd<>1
           STORE 01 TO vrEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.857 .AND. mfIl<=mfI0+28.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+129.40 .AND. mcCc<=mcO0+139.40 .AND. viTe>1 .AND. vrEd<>2
           STORE 02 TO vrEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.857 .AND. mfIl<=mfI0+28.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+139.40 .AND. mcCc<=mcO0+150.00 .AND. viTe>1 .AND. vrEd<>3
           STORE 03 TO vrEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+27.857 .AND. mfIl<=mfI0+28.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+150.00 .AND. mcCc<=mcO0+161.60 .AND. viTe>1 .AND. vrEd<>4
           STORE 04 TO vrEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+28.928 .AND. mfIl<=mfI0+30.071 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+137.40 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vdEs<>1
           STORE 01 TO vdEs
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.071 .AND. mfIl<=mfI0+31.143 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+138.40 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vdEs<>2
           STORE 02 TO vdEs
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+31.143 .AND. mfIl<=mfI0+32.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+138.40 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vdEs<>3
           STORE 03 TO vdEs
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.286 .AND. mfIl<=mfI0+33.357 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+138.40 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vdEs<>4
           STORE 04 TO vdEs
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+33.357 .AND. mfIl<=mfI0+34.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+138.40 .AND. mcCc<=mcO0+188.60 .AND. viTe>1 .AND. vdEs<>5
           STORE 05 TO vdEs
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+115.60 .AND. mcCc<=mcO0+122.40 .AND. viTe>1 .AND. vmOn<>1
           STORE 01 TO vmOn
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+32.000 .AND. mfIl<=mfI0+33.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+122.40 .AND. mcCc<=mcO0+131.40 .AND. viTe>1 .AND. vmOn<>2
           STORE 02 TO vmOn
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+7.928 .AND. mfIl<=mfI0+9.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+42.40 .AND. mcCc<=mcO0+59.0 .AND. viTe>1 .AND. vcOr<>1
           STORE 01 TO vcOr
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+7.928 .AND. mfIl<=mfI0+9.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+59.00 .AND. mcCc<=mcO0+71.40 .AND. viTe>1 .AND. vcOr<>2
           STORE 02 TO vcOr
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+9.143 .AND. mfIl<=mfI0+10.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+42.40 .AND. mcCc<=mcO0+51.80 .AND. viTe>1 .AND. vpIe<>1
           STORE 01 TO vpIe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+9.143 .AND. mfIl<=mfI0+10.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+51.80 .AND. mcCc<=mcO0+63.600 .AND. viTe>1 .AND. vpIe<>2
           STORE 02 TO vpIe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+9.143 .AND. mfIl<=mfI0+10.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+63.60 .AND. mcCc<=mcO0+75.200 .AND. viTe>1 .AND. vpIe<>3
           STORE 03 TO vpIe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+9.143 .AND. mfIl<=mfI0+10.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+75.20 .AND. mcCc<=mcO0+88.000 .AND. viTe>1 .AND. vpIe<>4
           STORE 04 TO vpIe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+10.643 .AND. mfIl<=mfI0+12.214 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+42.40 .AND. mcCc<=mcO0+67.600 .AND. viTe>1 .AND. vvId<>1
           STORE 01 TO vvId
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+10.643 .AND. mfIl<=mfI0+12.214 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+67.60 .AND. mcCc<=mcO0+85.200 .AND. viTe>1 .AND. vvId<>2
           STORE 02 TO vvId
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+12.214 .AND. mfIl<=mfI0+13.786 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+42.40 .AND. mcCc<=mcO0+64.800 .AND. viTe>1 .AND. vlI1<>1
           STORE 01 TO vlI1
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+12.214 .AND. mfIl<=mfI0+13.786 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+64.80 .AND. mcCc<=mcO0+81.600 .AND. viTe>1 .AND. vlI1<>2
           STORE 02 TO vlI1
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+13.786 .AND. mfIl<=mfI0+15.071 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+42.40 .AND. mcCc<=mcO0+79.400 .AND. viTe>1 .AND. vjAl<>1
           STORE 01 TO vjAl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+13.786 .AND. mfIl<=mfI0+15.071 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+79.40 .AND. mcCc<=mcO0+108.40 .AND. viTe>1 .AND. vjAl<>2
           STORE 02 TO vjAl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+15.071 .AND. mfIl<=mfI0+16.571 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+42.40 .AND. mcCc<=mcO0+59.800 .AND. viTe>1 .AND. vpRe<>1
           STORE 01 TO vpRe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+15.071 .AND. mfIl<=mfI0+16.571 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+59.80 .AND. mcCc<=mcO0+81.200 .AND. viTe>1 .AND. vpRe<>2
           STORE 02 TO vpRe
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.786 .AND. mfIl<=mfI0+26.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+46.40 .AND. mcCc<=mcO0+53.60 .AND. viTe>1 .AND. vsEp<>1
           STORE 01 TO vsEp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.786 .AND. mfIl<=mfI0+26.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+60.80 .AND. viTe>1 .AND. vsEp<>2
           STORE 02 TO vsEp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.143 .AND. mfIl<=mfI0+27.500 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+46.40 .AND. mcCc<=mcO0+53.60 .AND. viTe>1 .AND. vsEd<>1
           STORE 01 TO vsEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.143 .AND. mfIl<=mfI0+27.500 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+53.60 .AND. mcCc<=mcO0+60.80 .AND. viTe>1 .AND. vsEd<>2
           STORE 02 TO vsEd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+07.714 .AND. mfIl<=mfI0+09.071 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+145.20 .AND. mcCc<=mcO0+165.40 .AND. viTe>1 .AND. viMp<>1
           STORE 01 TO viMp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+07.714 .AND. mfIl<=mfI0+09.071 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+165.40 .AND. mcCc<=mcO0+183.0 .AND. viTe>1 .AND. viMp<>2
           STORE 02 TO viMp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+09.071 .AND. mfIl<=mfI0+10.428 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+145.20 .AND. mcCc<=mcO0+152.60 .AND. viTe>1 .AND. vmNc<>1
           STORE 01 TO vmNc
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+09.071 .AND. mfIl<=mfI0+10.428 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+152.60 .AND. mcCc<=mcO0+162.20 .AND. viTe>1 .AND. vmNc<>2
           STORE 02 TO vmNc
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+13.928 .AND. mfIl<=mfI0+15.071 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+145.20 .AND. mcCc<=mcO0+152.6 .AND. viTe>1 .AND. vcOm<>1
           STORE 01 TO vcOm
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+13.928 .AND. mfIl<=mfI0+15.071 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+152.60 .AND. mcCc<=mcO0+160 .AND. viTe>1 .AND. vcOm<>2
           STORE 02 TO vcOm
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+15.071 .AND. mfIl<=mfI0+16.428 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+145.20 .AND. mcCc<=mcO0+161.6 .AND. viTe>1 .AND. vlEt<>1
           STORE 01 TO vlEt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+15.071 .AND. mfIl<=mfI0+16.428 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+161.6 .AND. mcCc<=mcO0+186 .AND. viTe>1 .AND. vlEt<>2
           STORE 02 TO vlEt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+15.071 .AND. mfIl<=mfI0+16.428 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+161.6 .AND. mcCc<=mcO0+186 .AND. viTe>1 .AND. vlEt<>2
           STORE 02 TO vlEt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+19 .AND. mfIl<=mfI0+20.143 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+126.2 .AND. mcCc<=mcO0+136 .AND. viTe>1 .AND. vvIt<>1
           STORE 01 TO vvIt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+19 .AND. mfIl<=mfI0+20.143 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+136 .AND. mcCc<=mcO0+146.4 .AND. viTe>1 .AND. vvIt<>2
           STORE 02 TO vvIt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+19 .AND. mfIl<=mfI0+20.143 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+146.4 .AND. mcCc<=mcO0+161 .AND. viTe>1 .AND. vvIt<>3
           STORE 03 TO vvIt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+19 .AND. mfIl<=mfI0+20.143 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+161 .AND. mcCc<=mcO0+173.8 .AND. viTe>1 .AND. vvIt<>4
           STORE 04 TO vvIt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+19 .AND. mfIl<=mfI0+20.143 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+173.8 .AND. mcCc<=mcO0+182.4 .AND. viTe>1 .AND. vvIt<>5
           STORE 05 TO vvIt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+20.143 .AND. mfIl<=mfI0+21.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+106.8 .AND. mcCc<=mcO0+122 .AND. viTe>1 .AND. vdEt<>1
           STORE 01 TO vdEt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+20.143 .AND. mfIl<=mfI0+21.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+122 .AND. mcCc<=mcO0+134.6 .AND. viTe>1 .AND. vdEt<>2
           STORE 02 TO vdEt
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+21.643 .AND. mfIl<=mfI0+23.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+106.8 .AND. mcCc<=mcO0+117.4 .AND. viTe>1 .AND. vhLp<>1
           STORE 01 TO vhLp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+21.643 .AND. mfIl<=mfI0+23.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+117.4 .AND. mcCc<=mcO0+129.2 .AND. viTe>1 .AND. vhLp<>2
           STORE 02 TO vhLp
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+106.8 .AND. mcCc<=mcO0+113.2 .AND. viTe>1 .AND. vsLd<>1
           STORE 01 TO vsLd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.571 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+113.2 .AND. mcCc<=mcO0+121.2 .AND. viTe>1 .AND. vsLd<>2
           STORE 02 TO vsLd
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+26.0 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+106.8 .AND. mcCc<=mcO0+113.2 .AND. viTe>1 .AND. viNg<>1
           STORE 01 TO viNg
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+24.571 .AND. mfIl<=mfI0+26.0 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+113.2 .AND. mcCc<=mcO0+121.2 .AND. viTe>1 .AND. viNg<>2
           STORE 02 TO viNg
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.0 .AND. mfIl<=mfI0+27.5 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+106.8 .AND. mcCc<=mcO0+113.2 .AND. viTe>1 .AND. vpAl<>1
           STORE 01 TO vpAl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+26.0 .AND. mfIl<=mfI0+27.5 .AND. vpAg=2 .AND. mcCc>= ;
           mcO0+113.2 .AND. mcCc<=mcO0+121.2 .AND. viTe>1 .AND. vpAl<>2
           STORE 02 TO vpAl
           STORE 99 TO mkEy
           DO geT_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+46 .AND. mcCc<=mcO0+53 .AND. viTe>1 .AND. vpAn<>1
           STORE 1 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+53 .AND. mcCc<=mcO0+60 .AND. viTe>1 .AND. vpAn<>2
           STORE 2 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+60 .AND. mcCc<=mcO0+67 .AND. viTe>1 .AND. vpAn<>3
           STORE 3 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+67 .AND. mcCc<=mcO0+74 .AND. viTe>1 .AND. vpAn<>4
           STORE 4 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+74 .AND. mcCc<=mcO0+81 .AND. viTe>1 .AND. vpAn<>5
           STORE 5 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+81 .AND. mcCc<=mcO0+88 .AND. viTe>1 .AND. vpAn<>6
           STORE 6 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+88 .AND. mcCc<=mcO0+95 .AND. viTe>1 .AND. vpAn<>7
           STORE 7 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+95 .AND. mcCc<=mcO0+102 .AND. viTe>1 .AND. vpAn<>8
           STORE 8 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+102 .AND. mcCc<=mcO0+109 .AND. viTe>1 .AND. vpAn<>9
           STORE 9 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+109 .AND. mcCc<=mcO0+117 .AND. viTe>1 .AND. vpAn<>10
           STORE 10 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+117 .AND. mcCc<=mcO0+125 .AND. viTe>1 .AND. vpAn<>11
           STORE 11 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+125 .AND. mcCc<=mcO0+134 .AND. viTe>1 .AND. vpAn<>12
           STORE 12 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+30.857 .AND. mfIl<=mfI0+35.857 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+134 .AND. mcCc<=mcO0+142 .AND. viTe>1 .AND. vpAn<>13
           STORE 13 TO vpAn
           DO p12_0000a
      CASE mfIl>=mfI0+0.714 .AND. mfIl<=mfI0+2 .AND. mcCc>=mcO0+1.4 .AND.  ;
           mcCc<=mcO0+21 .AND. viTe<>1
           STORE 1 TO ciTx
      CASE mfIl>=mfI0+0.714 .AND. mfIl<=mfI0+2 .AND. mcCc>=mcO0+23.0  ;
           .AND. mcCc<=mcO0+120.2 .AND. viTe<>2
           STORE 2 TO ciTx
      CASE mfIl>=mfI0+0.714 .AND. mfIl<=mfI0+2 .AND. mcCc>=mcO0+121.4  ;
           .AND. mcCc<=mcO0+179.2 .AND. viTe<>3
           STORE 3 TO ciTx
      CASE mfIl>=mfI0+2 .AND. mfIl<=mfI0+3.571 .AND. mcCc>=mcO0+1.4 .AND.  ;
           mcCc<=mcO0+120.2 .AND. viTe<>4
           STORE 4 TO ciTx
      CASE mfIl>=mfI0+2 .AND. mfIl<=mfI0+3.571 .AND. mcCc>=mcO0+121.2  ;
           .AND. mcCc<=mcO0+150.2 .AND. viTe<>5
           STORE 5 TO ciTx
      CASE mfIl>=mfI0+2 .AND. mfIl<=mfI0+3.571 .AND. mcCc>=mcO0+153.6  ;
           .AND. mcCc<=mcO0+179.6 .AND. viTe<>6
           STORE 6 TO ciTx
      CASE mfIl>=mfI0+3.571 .AND. mfIl<=mfI0+5 .AND. mcCc>=mcO0+1.20  ;
           .AND. mcCc<=mcO0+46.2 .AND. viTe<>7
           STORE 7 TO ciTx
      CASE mfIl>=mfI0+3.571 .AND. mfIl<=mfI0+5 .AND. mcCc>=mcO0+73 .AND.  ;
           mcCc<=mcO0+120.2 .AND. viTe<>8
           STORE 8 TO ciTx
      CASE mfIl>=mfI0+3.571 .AND. mfIl<=mfI0+5 .AND. mcCc>=mcO0+122 .AND.  ;
           mcCc<=mcO0+159.4 .AND. viTe<>9
           STORE 9 TO ciTx
      CASE mfIl>=mfI0+7.714 .AND. mfIl<=mfI0+9.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>10
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+9.286 .AND. mfIl<=mfI0+10.714 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>11
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+10.714 .AND. mfIl<=mfI0+12.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>12
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+12.214 .AND. mfIl<=mfI0+13.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+13.786 .AND. mfIl<=mfI0+15.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>14
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+15.214 .AND. mfIl<=mfI0+16.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>15
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+16.786 .AND. mfIl<=mfI0+18.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>16
           STORE 16 TO ciTx
      CASE mfIl>=mfI0+18.286 .AND. mfIl<=mfI0+19.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>17
           STORE 17 TO ciTx
      CASE mfIl>=mfI0+19.786 .AND. mfIl<=mfI0+21.357 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+0.80 .AND. mcCc<=mcO0+36 .AND. viTe<>18
           STORE 18 TO ciTx
      CASE mfIl>=mfI0+7.714 .AND. mfIl<=mfI0+9.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>19
           STORE 19 TO ciTx
      CASE mfIl>=mfI0+9.286 .AND. mfIl<=mfI0+10.714 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>20
           STORE 20 TO ciTx
      CASE mfIl>=mfI0+10.714 .AND. mfIl<=mfI0+12.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>21
           STORE 21 TO ciTx
      CASE mfIl>=mfI0+12.214 .AND. mfIl<=mfI0+13.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>22
           STORE 22 TO ciTx
      CASE mfIl>=mfI0+13.786 .AND. mfIl<=mfI0+15.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>23
           STORE 23 TO ciTx
      CASE mfIl>=mfI0+15.214 .AND. mfIl<=mfI0+16.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>24
           STORE 24 TO ciTx
      CASE mfIl>=mfI0+16.786 .AND. mfIl<=mfI0+18.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>25
           STORE 25 TO ciTx
      CASE mfIl>=mfI0+18.286 .AND. mfIl<=mfI0+19.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+40.8 .AND. mcCc<=mcO0+80.8 .AND. viTe<>26
           STORE 26 TO ciTx
      CASE mfIl>=mfI0+7.714 .AND. mfIl<=mfI0+9.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+109.6 .AND. viTe<>27
           STORE 27 TO ciTx
      CASE mfIl>=mfI0+9.286 .AND. mfIl<=mfI0+10.714 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+109.6 .AND. viTe<>28
           STORE 28 TO ciTx
      CASE mfIl>=mfI0+10.714 .AND. mfIl<=mfI0+12.214 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+109.6 .AND. viTe<>29
           STORE 29 TO ciTx
      CASE mfIl>=mfI0+14.357 .AND. mfIl<=mfI0+15.786 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+111.2 .AND. viTe<>30
           STORE 30 TO ciTx
      CASE mfIl>=mfI0+15.786 .AND. mfIl<=mfI0+17.286 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+111.2 .AND. viTe<>31
           STORE 31 TO ciTx
      CASE mfIl>=mfI0+17.286 .AND. mfIl<=mfI0+18.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+83.6 .AND. mcCc<=mcO0+111.2 .AND. viTe<>32
           STORE 32 TO ciTx
      CASE mfIl>=mfI0+2.25 .AND. mfIl<=mfI0+3.464 .AND. vpAg=1 .AND. mcCc>= ;
           mcO0+114 .AND. mcCc<=mcO0+143.8 .AND. viTe<>33
           STORE 33 TO ciTx
      CASE mfIl>=mfI0+2.25 .AND. mfIl<=mfI0+3.464 .AND. vpAg=1 .AND. mcCc>= ;
           mcO0+114 .AND. mcCc<=mcO0+143.8 .AND. viTe<>34
           STORE 34 TO ciTx
      CASE mfIl>=mfI0+2.25 .AND. mfIl<=mfI0+3.464 .AND. vpAg=1 .AND. mcCc>= ;
           mcO0+114 .AND. mcCc<=mcO0+147.2 .AND. viTe<>35
           STORE 35 TO ciTx
      CASE mfIl>=mfI0+2.25 .AND. mfIl<=mfI0+3.464 .AND. vpAg=1 .AND. mcCc>= ;
           mcO0+114 .AND. mcCc<=mcO0+147.2 .AND. viTe<>36
           STORE 36 TO ciTx
      CASE mfIl>=mfI0+2.25 .AND. mfIl<=mfI0+3.464 .AND. vpAg=1 .AND. mcCc>= ;
           mcO0+114 .AND. mcCc<=mcO0+155.8 .AND. viTe<>37
           STORE 37 TO ciTx
      CASE mfIl>=mfI0+21.286 .AND. mfIl<=mfI0+22.857 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+95.6 .AND. mcCc<=mcO0+130.2 .AND. viTe<>38
           STORE 38 TO ciTx
      CASE mfIl>=mfI0+22.857 .AND. mfIl<=mfI0+24.143 .AND. vpAg=1 .AND.  ;
           mcCc>=mcO0+95.6 .AND. mcCc<=mcO0+136.6 .AND. viTe<>39
           STORE 39 TO ciTx
      CASE mfIl>=mfI0+20.286 .AND. mfIl<=mfI0+21.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+59 .AND. viTe<>10
           STORE 10 TO ciTx
      CASE mfIl>=mfI0+21.643 .AND. mfIl<=mfI0+23.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+59 .AND. viTe<>11
           STORE 11 TO ciTx
      CASE mfIl>=mfI0+23.143 .AND. mfIl<=mfI0+24.643 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+59 .AND. viTe<>12
           STORE 12 TO ciTx
      CASE mfIl>=mfI0+27.786 .AND. mfIl<=mfI0+29.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+1 .AND. mcCc<=mcO0+50 .AND. viTe<>13
           STORE 13 TO ciTx
      CASE mfIl>=mfI0+10.714 .AND. mfIl<=mfI0+12.286 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+110.6 .AND. mcCc<=mcO0+154.8 .AND. viTe<>14
           STORE 14 TO ciTx
      CASE mfIl>=mfI0+12.286 .AND. mfIl<=mfI0+13.786 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+110.6 .AND. mcCc<=mcO0+149.8 .AND. viTe<>15
           STORE 15 TO ciTx
      CASE mfIl>=mfI0+27.714 .AND. mfIl<=mfI0+29.143 .AND. vpAg=2 .AND.  ;
           mcCc>=mcO0+63.8 .AND. mcCc<=mcO0+147.4 .AND. viTe<>16
           STORE 16 TO ciTx
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
 IF ciTx<>0
      DO WHILE viTe<ciTx .AND. mkEy<>99
           DO veR_0000a
           IF mkEy=k_Esc
                EXIT
           ENDIF
           IF mkEy<>99
                STORE viTe+1 TO viTe
           ENDIF
      ENDDO
      IF mkEy=k_Esc
           RETURN
      ENDIF
      IF mkEy<>99
           STORE ciTx TO viTe
           STORE 99 TO mkEy
      ENDIF
 ENDIF
ENDPROC
*
PROCEDURE P1_0000a
 ON KEY LABEL F2 DO P_F2
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
 ON KEY LABEL F2
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
 CLOSE INDEXES
 CLOSE DATABASES
 STORE 99 TO mkEy
 SET READBORDER OFF
 RELEASE vpAg, viTe, ciTe, ciTx, voPc, coPc, vcIa, ccIa, vrAz, vrZ1, vdIr,  ;
         vtIp, vrUc
 RELEASE vwEb, veMa, vtEl, vlFa, vlFe, vlFc, vlBo, vlBe, vlBc, vlNc, vlN1,  ;
         vlN3, vlNd
 RELEASE vlN2, vlN4, vlGr, vlGe, vlNp, vlCp, vlCr, vlL1, vlL2, vlL3, vlLz,  ;
         vlLx, vlLy
 RELEASE vlLb, vlLd, vlLe, vlLn, vlLc, vlL0, vl10, vl20, vl0b, vl1b, vl2b,  ;
         vl0n, vl0c
 RELEASE vlSt, vlIs, voBr, vtMc, vdEc, vtRa, vaLm, vcIm, vcAj, vmIi, vmAx,  ;
         vdSp, vsTp
 RELEASE veMp, vmBo, vpEd, vvNd, vpIg, vfEl, vdEs, vmOn, vgRa, vrEd, vpDc,  ;
         vtFa, vcOr
 RELEASE vpIe, vvId, vlI1, vjAl, vpRe, viMp, vmNc, vfCc, vfCt, vfCp, viNt,  ;
         vdIa, vcOm
 RELEASE vlEt, vsEp, vsEd, vpSs, vvIt, vdEt, vhLp, vsLd, viNg, vpAl, vvIn, vpAn
 RELEASE exTended
 RELEASE exTended
 CLEAR RESOURCES
 FLUSH
ENDPROC
*
