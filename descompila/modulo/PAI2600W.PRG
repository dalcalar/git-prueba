*
PROCEDURE Cl1_2600w
 PRIVATE pmTt
 STORE vmTt TO pmTt
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2
           STORE 01 TO viTe
           STORE k_F3 TO mkEy
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2
           STORE 01 TO viTe
           STORE k_Ctrl_del TO mkEy
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. mcCc>=vcB4+mcO1  ;
           .AND. mcCc<=vcB4+mcO2 .AND. LEN(ALLTRIM(vcLi))<>0
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. mcCc>=vcB9+mcO1  ;
           .AND. mcCc<=vcB9+mcO2
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2 .AND. mcCc>=vcBa+mcO1  ;
           .AND. mcCc<=vcBa+mcO2
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2 .AND. mcCc>=vcBb+mcO1  ;
           .AND. mcCc<=vcBb+mcO2
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2 .AND. mcCc>=vcBc+mcO1  ;
           .AND. mcCc<=vcBc+mcO2
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2 .AND. mcCc>=vcBd+mcO1  ;
           .AND. mcCc<=vcBd+mcO2
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2 .AND. mcCc>=vcBe+mcO1  ;
           .AND. mcCc<=vcBe+mcO2
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2 .AND. mcCc>=vcBf+mcO1  ;
           .AND. mcCc<=vcBf+mcO2
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBg+mfI1 .AND. mfIl<=vfBg+mfI2 .AND. mcCc>=vcBg+mcO1  ;
           .AND. mcCc<=vcBg+mcO2
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBh+mfI1 .AND. mfIl<=vfBh+mfI2 .AND. mcCc>=vcBh+mcO1  ;
           .AND. mcCc<=vcBh+mcO2
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBi .AND. mfIl<=vfBi+1.257 .AND. (vmTt=5 .OR. vmTt=11)  ;
           .AND. mcCc>=vcBi .AND. mcCc<=vcBi+13.8 .AND. vcSs<>1
           STORE "El Motivo de la Guía no controlan Stock..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
      CASE mfIl>=vfBi .AND. mfIl<=vfBi+1.257 .AND. mcCc>=vcBi .AND. mcCc<= ;
           vcBi+13.8 .AND. vcSs<>1
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                STORE 99 TO mkEy
                DO poNmsj
           ELSE
                STORE 1 TO vcSs
                DO csS_2600w
           ENDIF
      CASE mfIl>=vfBi .AND. mfIl<=vfBi+1.257 .AND. mcCc>=vcBi+15.8 .AND.  ;
           mcCc<=vcBi+30.2 .AND. vcSs<>2
           STORE 2 TO vcSs
           DO csS_2600w
      CASE mfIl>=mfI0+4.043 .AND. mfIl<=mfI0+5.043 .AND. vmTt<>1 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 1 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.043 .AND. mfIl<=mfI0+6.043 .AND. vmTt<>2 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 2 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.043 .AND. mfIl<=mfI0+7.043 .AND. vmTt<>3 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 3 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.043 .AND. mfIl<=mfI0+8.043 .AND. vmTt<>4 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 4 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.043 .AND. mfIl<=mfI0+9.043 .AND. vmTt<>5 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 5 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt<>5 .AND. pmTt<>11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                IF vcSs=1
                     STORE 2 TO vcSs
                     DO csS_2600w
                ENDIF
           ENDIF
      CASE mfIl>=mfI0+9.043 .AND. mfIl<=mfI0+10.043 .AND. vmTt<>6 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 6 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.043 .AND. mfIl<=mfI0+11.043 .AND. vmTt<>7 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 7 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.043 .AND. mfIl<=mfI0+12.043 .AND. vmTt<>8 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 8 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.043 .AND. mfIl<=mfI0+13.043 .AND. vmTt<>9 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 9 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.043 .AND. mfIl<=mfI0+14.043 .AND. vmTt<>10 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 10 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.043 .AND. mfIl<=mfI0+15.043 .AND. vmTt<>11 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 11 TO vmTt
                STORE 99 TO mkEy
                DO moT_2600a IN PAI2600A
                IF pmTt<>5 .AND. pmTt<>11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vcSs=1
                     STORE 2 TO vcSs
                     DO csS_2600w
                ENDIF
           ENDIF
      CASE mfIl>=mfI0+15.043 .AND. mfIl<=mfI0+16.043 .AND. vmTt<>12 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 12 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.328 .AND. mfIl<=mfI0+1.543 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+83 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.328 .AND. mfIl<=mfI0+6.471 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+83 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.186 .AND. mfIl<=mfI0+8.328 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+94.8 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.614 .AND. mfIl<=mfI0+9.828 .AND. viTe<>4 .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+47.6
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.614 .AND. mfIl<=mfI0+9.828 .AND. viTe<>5 .AND.  ;
           mcCc>=mcO0+51.4 .AND. mcCc<=mcO0+77.2
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.471 .AND. mfIl<=mfI0+11.614 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+83 .AND. viTe<>6
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.9 .AND. mfIl<=mfI0+13.114 .AND. mcCc>=mcO0+10  ;
           .AND. mcCc<=mcO0+34.6 .AND. viTe<>7
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.9 .AND. mfIl<=mfI0+13.114 .AND. mcCc>=mcO0+54.7  ;
           .AND. mcCc<=mcO0+95.2 .AND. viTe<>8
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.4 .AND. mfIl<=mfI0+14.614 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+46.6 .AND. viTe<>9
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.4 .AND. mfIl<=mfI0+14.614 .AND. mcCc>=mcO0+56.6  ;
           .AND. mcCc<=mcO0+95 .AND. viTe<>10
           STORE 10 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.9 .AND. mfIl<=mfI0+16.114 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+46.6 .AND. viTe<>11
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.9 .AND. mfIl<=mfI0+16.114 .AND. mcCc>=mcO0+56.6  ;
           .AND. mcCc<=mcO0+95 .AND. viTe<>12
           STORE 12 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.757 .AND. mfIl<=mfI0+17.971 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+26.6 .AND. viTe<>13
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.328 .AND. mfIl<=mfI0+19.471 .AND. mcCc>=mcO0+ ;
           36.2 .AND. mcCc<=mcO0+57.8 .AND. viTe<>14
           STORE 14 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.757 .AND. mfIl<=mfI0+17.971 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+26.6 .AND. viTe<>15
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.328 .AND. mfIl<=mfI0+19.471 .AND. mcCc>=mcO0+ ;
           36.2 .AND. mcCc<=mcO0+57.8 .AND. viTe<>16
           STORE 16 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.043 .AND. mfIl<=mfI0+1.257 .AND. mcCc>=vcL9+0.2  ;
           .AND. mcCc<=vcL9+27.4 .AND. viTe<>17
           STORE 17 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.114 .AND. mfIl<=mfI0+3.257 .AND. mcCc>=vcL9+0.2  ;
           .AND. mcCc<=vcL9+27.4 .AND. viTe<>18
           STORE 18 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.757 .AND. mfIl<=mfI0+17.971 .AND. viTe<>19 .AND.  ;
           mcCc>=mcO0+61 .AND. mcCc<=mcO0+188
           STORE 19 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.328 .AND. mfIl<=mfI0+19.471 .AND. viTe<>20 .AND.  ;
           mcCc>=mcO0+61 .AND. mcCc<=mcO0+188
           STORE 20 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Cl2_2600w
 PRIVATE pmTt
 STORE vmTt TO pmTt
 = INKEY(0.01)
 DO CASE
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+59.6 .AND.  ;
           mcCc<=mmC1+68
           STORE k_Tab TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+68 .AND.  ;
           mcCc<=mmC1+77
           STORE k_F1 TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+77 .AND.  ;
           mcCc<=mmC1+85.8
           STORE k_Esc TO mkEy
      CASE mfIl>=mmF1 .AND. mfIl<=mmF1+03.11 .AND. mcCc>=mmC1+85.8 .AND.  ;
           mcCc<=mmC1+95
           STORE k_F10 TO mkEy
      CASE mfIl>=vfBj+mfG1 .AND. mfIl<=vfBj+mfG2 .AND. mcCc>=vcBj+mcG1  ;
           .AND. mcCc<=vcBj+mcG2
           STORE 01 TO viTe
           STORE k_F2 TO mkEy
      CASE mfIl>=vfB1+mfI1 .AND. mfIl<=vfB1+mfI2 .AND. mcCc>=vcB1+mcO1  ;
           .AND. mcCc<=vcB1+mcO2 .AND. viTe>2
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB2+mfI1 .AND. mfIl<=vfB2+mfI2 .AND. mcCc>=vcB2+mcO1  ;
           .AND. mcCc<=vcB2+mcO2 .AND. viTe>2
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB3+mfI1 .AND. mfIl<=vfB3+mfI2 .AND. mcCc>=vcB3+mcO1  ;
           .AND. mcCc<=vcB3+mcO2 .AND. viTe>2
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfB4+mfI1 .AND. mfIl<=vfB4+mfI2 .AND. viTe>2 .AND. mcCc>= ;
           vcB4+mcO1 .AND. mcCc<=vcB4+mcO2 .AND. LEN(ALLTRIM(vcLi))<>0
           STORE k_F5 TO mkEy
      CASE mfIl>=vfB5+mfI1 .AND. mfIl<=vfB5+mfI2 .AND. mcCc>=vcB5+mcO1  ;
           .AND. mcCc<=vcB5+mcO2 .AND. viTe>2
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB6+mfI1 .AND. mfIl<=vfB6+mfI2 .AND. mcCc>=vcB6+mcO1  ;
           .AND. mcCc<=vcB6+mcO2 .AND. viTe>2
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB7+mfI1 .AND. mfIl<=vfB7+mfI2 .AND. mcCc>=vcB7+mcO1  ;
           .AND. mcCc<=vcB7+mcO2 .AND. viTe>2
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfB8+mfI1 .AND. mfIl<=vfB8+mfI2 .AND. mcCc>=vcB8+mcO1  ;
           .AND. mcCc<=vcB8+mcO2 .AND. viTe>2
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfB9+mfI1 .AND. mfIl<=vfB9+mfI2 .AND. mcCc>=vcB9+mcO1  ;
           .AND. mcCc<=vcB9+mcO2 .AND. viTe>2
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F3 TO mkEy
           ENDIF
      CASE mfIl>=vfB0+mfI1 .AND. mfIl<=vfB0+mfI2 .AND. mcCc>=vcB0+mcO1  ;
           .AND. mcCc<=vcB0+mcO2 .AND. viTe>2
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBa+mfI1 .AND. mfIl<=vfBa+mfI2 .AND. mcCc>=vcBa+mcO1  ;
           .AND. mcCc<=vcBa+mcO2 .AND. viTe>2
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBb+mfI1 .AND. mfIl<=vfBb+mfI2 .AND. mcCc>=vcBb+mcO1  ;
           .AND. mcCc<=vcBb+mcO2 .AND. viTe>2
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBc+mfI1 .AND. mfIl<=vfBc+mfI2 .AND. mcCc>=vcBc+mcO1  ;
           .AND. mcCc<=vcBc+mcO2 .AND. viTe>2
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBd+mfI1 .AND. mfIl<=vfBd+mfI2 .AND. mcCc>=vcBd+mcO1  ;
           .AND. mcCc<=vcBd+mcO2 .AND. viTe>2
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBe+mfI1 .AND. mfIl<=vfBe+mfI2 .AND. mcCc>=vcBe+mcO1  ;
           .AND. mcCc<=vcBe+mcO2 .AND. viTe>2
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBf+mfI1 .AND. mfIl<=vfBf+mfI2 .AND. mcCc>=vcBf+mcO1  ;
           .AND. mcCc<=vcBf+mcO2 .AND. viTe>2
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBg+mfI1 .AND. mfIl<=vfBg+mfI2 .AND. mcCc>=vcBg+mcO1  ;
           .AND. mcCc<=vcBg+mcO2 .AND. viTe>2
           STORE 17 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_F2 TO mkEy
           ENDIF
      CASE mfIl>=vfBh+mfI1 .AND. mfIl<=vfBh+mfI2 .AND. mcCc>=vcBh+mcO1  ;
           .AND. mcCc<=vcBh+mcO2 .AND. viTe>2
           STORE 17 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
                STORE k_Ctrl_del TO mkEy
           ENDIF
      CASE mfIl>=vfBi .AND. mfIl<=vfBi+1.257 .AND. (vmTt=5 .OR. vmTt=11)  ;
           .AND. mcCc>=vcBi .AND. mcCc<=vcBi+13.8 .AND. vcSs<>1 .AND. viTe>2
           STORE "El Motivo de la Guía no controlan Stock..." TO mmSj
           STORE 99 TO mkEy
           DO poNmsj
      CASE mfIl>=vfBi .AND. mfIl<=vfBi+1.257 .AND. viTe>2 .AND. mcCc>= ;
           vcBi .AND. mcCc<=vcBi+13.8 .AND. vcSs<>1
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                STORE 99 TO mkEy
                DO poNmsj
           ELSE
                STORE 1 TO vcSs
                DO csS_2600w
           ENDIF
      CASE mfIl>=vfBi .AND. mfIl<=vfBi+1.257 .AND. viTe>2 .AND. mcCc>= ;
           vcBi+15.8 .AND. mcCc<=vcBi+30.2 .AND. vcSs<>2
           STORE 2 TO vcSs
           DO csS_2600w
      CASE mfIl>=mfI0+4.043 .AND. mfIl<=mfI0+5.043 .AND. vmTt<>1 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 1 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.043 .AND. mfIl<=mfI0+6.043 .AND. vmTt<>2 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 2 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+6.043 .AND. mfIl<=mfI0+7.043 .AND. vmTt<>3 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 3 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.043 .AND. mfIl<=mfI0+8.043 .AND. vmTt<>4 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 4 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.043 .AND. mfIl<=mfI0+9.043 .AND. vmTt<>5 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 5 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt<>5 .AND. pmTt<>11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                STORE 99 TO mkEy
                IF vcSs=1
                     STORE 2 TO vcSs
                     DO csS_2600w
                ENDIF
           ENDIF
      CASE mfIl>=mfI0+9.043 .AND. mfIl<=mfI0+10.043 .AND. vmTt<>6 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 6 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.043 .AND. mfIl<=mfI0+11.043 .AND. vmTt<>7 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 7 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.043 .AND. mfIl<=mfI0+12.043 .AND. vmTt<>8 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 8 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+12.043 .AND. mfIl<=mfI0+13.043 .AND. vmTt<>9 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 9 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.043 .AND. mfIl<=mfI0+14.043 .AND. vmTt<>10 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 10 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.043 .AND. mfIl<=mfI0+15.043 .AND. vmTt<>11 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 11 TO vmTt
                STORE 99 TO mkEy
                DO moT_2600a IN PAI2600A
                IF pmTt<>5 .AND. pmTt<>11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
                IF vcSs=1
                     STORE 2 TO vcSs
                     DO csS_2600w
                ENDIF
           ENDIF
      CASE mfIl>=mfI0+15.043 .AND. mfIl<=mfI0+16.043 .AND. vmTt<>12 .AND.  ;
           mcCc<=vcL9+27.2 .AND. mcCc>=vcL9-17.2 .AND. viTe>2
           SELECT teMporal
           GOTO TOP
           IF  .NOT. BOF()
                STORE "No se puede cambiar a esta opción porque hay datos en el detalle..."  ;
                      TO mmSj
                DO poNmsj
           ELSE
                STORE 12 TO vmTt
                DO moT_2600a IN PAI2600A
                IF pmTt=5 .OR. pmTt=11
                     DO clI_2600w
                     DO cnO_2600w
                     IF mkEy=k_Esc
                          EXIT
                     ENDIF
                ENDIF
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.885 .AND. mfIl<=mfI0-0.6 .AND. mcCc>=mcO0+29  ;
           .AND. mcCc<=mcO0+35 .AND. viTe<>1
           STORE 01 TO viTe
           STORE 99 TO mkEy
      CASE mfIl>=mfI0-1.885 .AND. mfIl<=mfI0-0.6 .AND. mcCc>=mcO0+35.8  ;
           .AND. mcCc<=mcO0+48 .AND. viTe<>2
           STORE 2 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.328 .AND. mfIl<=mfI0+1.543 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+83 .AND. viTe<>3
           STORE 3 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+5.328 .AND. mfIl<=mfI0+6.471 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+83 .AND. viTe<>4
           STORE 4 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+7.186 .AND. mfIl<=mfI0+8.328 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+94.8 .AND. viTe<>5
           STORE 5 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.614 .AND. mfIl<=mfI0+9.828 .AND. viTe<>6 .AND.  ;
           mcCc>=mcO0+0.6 .AND. mcCc<=mcO0+47.6
           STORE 6 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+8.614 .AND. mfIl<=mfI0+9.828 .AND. viTe<>7 .AND.  ;
           mcCc>=mcO0+51.4 .AND. mcCc<=mcO0+77.2
           STORE 7 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+10.471 .AND. mfIl<=mfI0+11.614 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+83 .AND. viTe<>8
           STORE 8 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.9 .AND. mfIl<=mfI0+13.114 .AND. mcCc>=mcO0+10  ;
           .AND. mcCc<=mcO0+34.6 .AND. viTe<>9
           STORE 9 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+11.9 .AND. mfIl<=mfI0+13.114 .AND. mcCc>=mcO0+54.7  ;
           .AND. mcCc<=mcO0+95.2 .AND. viTe<>10
           STORE 10 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.4 .AND. mfIl<=mfI0+14.614 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+46.6 .AND. viTe<>11
           STORE 11 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+13.4 .AND. mfIl<=mfI0+14.614 .AND. mcCc>=mcO0+56.6  ;
           .AND. mcCc<=mcO0+95 .AND. viTe<>12
           STORE 12 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.9 .AND. mfIl<=mfI0+16.114 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+46.6 .AND. viTe<>13
           STORE 13 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+14.9 .AND. mfIl<=mfI0+16.114 .AND. mcCc>=mcO0+56.6  ;
           .AND. mcCc<=mcO0+95 .AND. viTe<>14
           STORE 14 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.757 .AND. mfIl<=mfI0+17.971 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+26.6 .AND. viTe<>15
           STORE 15 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.328 .AND. mfIl<=mfI0+19.471 .AND. mcCc>=mcO0+ ;
           36.2 .AND. mcCc<=mcO0+57.8 .AND. viTe<>16
           STORE 16 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.757 .AND. mfIl<=mfI0+17.971 .AND. mcCc>=mcO0+0.6  ;
           .AND. mcCc<=mcO0+26.6 .AND. viTe<>17
           STORE 17 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.328 .AND. mfIl<=mfI0+19.471 .AND. mcCc>=mcO0+ ;
           36.2 .AND. mcCc<=mcO0+57.8 .AND. viTe<>18
           STORE 18 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+0.043 .AND. mfIl<=mfI0+1.257 .AND. mcCc>=vcL9+0.2  ;
           .AND. mcCc<=vcL9+27.4 .AND. viTe<>19
           STORE 19 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+2.114 .AND. mfIl<=mfI0+3.257 .AND. mcCc>=vcL9+0.2  ;
           .AND. mcCc<=vcL9+27.4 .AND. viTe<>20
           STORE 20 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+16.757 .AND. mfIl<=mfI0+17.971 .AND. viTe<>21 .AND.  ;
           mcCc>=mcO0+61 .AND. mcCc<=mcO0+188.0
           STORE 21 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      CASE mfIl>=mfI0+18.328 .AND. mfIl<=mfI0+19.471 .AND. viTe<>22 .AND.  ;
           mcCc>=mcO0+61 .AND. mcCc<=mcO0+188.0
           STORE 22 TO ciTx
           DO WHILE viTe<ciTx .AND. mkEy<>99
                DO veR_2600a
                IF mkEy<>99
                     STORE viTe+1 TO viTe
                ENDIF
           ENDDO
           IF mkEy<>99
                STORE ciTx TO viTe
           ENDIF
           STORE 99 TO mkEy
      OTHERWISE
           STORE 99 TO mkEy
 ENDCASE
ENDPROC
*
PROCEDURE Nom_2600w
 PARAMETER ptPo
 DO CASE
      CASE ptPo="2"
           DO coL_fondo
      CASE LEN(ALLTRIM(vcLi))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+0.4,mCO0+13 Say vNOM Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
ENDPROC
*
PROCEDURE Drc_2600w
 DO coL_beige
 @mFI0+1.9,mCO0+13 Say vDIR Font "&mLetAri",9 Style "NQ" Size 1,70 Pict "@S70"
 @mFI0+3.4,mCO0+13 Say vDIS Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
 @mFI0+3.4,mCO0+40 Say vDEP Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
 IF LEN(ALLTRIM(vdNi))=0 .OR. LEN(ALLTRIM(vrUc))<>0
      @mFI0+3.4,mCO0+78.5 Say vRUC Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S11"
 ELSE
      @mFI0+3.4,mCO0+78.5 Say vDNI Font "&mLetAri",9 Style "NQ" Size 1,12 Pict "@S08"
 ENDIF
ENDPROC
*
PROCEDURE Lug_2600w
 DO coLbln
 @mFI0+7.2,mCO0+22.5 Say vLUG Font "&mLetAri",9 Style "NQ" Size 1,72.1 Pict "@S70"
 @mFI0+8.7,mCO0+22.5 Say vLUD Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
 @mFI0+8.7,mCO0+52.0 Say vLUP Font "&mLetAri",9 Style "NQ" Size 1,25 Pict "@S25"
ENDPROC
*
PROCEDURE Nal_2600w
 PARAMETER ptPo
 DO CASE
      CASE ptPo="2"
           DO coL_fondo
      CASE LEN(ALLTRIM(vaLm))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+5.3,mCO0+20.5 Say vNAL Font "&mLetAri",9 Style "NQ" Size 1,62.2 Pict "@S65"
ENDPROC
*
PROCEDURE Tra_2600w
 PARAMETER ptPo
 DO CASE
      CASE LEN(ALLTRIM(vtRa))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+10.5,mCO0+17.5 Say vTNO Font "&mLetAri",9 Style "NQ" Size 1,65.2 Pict "@S67"
 @mFI0+12.0,mCO0+17.5 Say vTRU Font "&mLetAri",9 Style "NQ" Size 1,17   Pict "@S11"
 @mFI0+12.0,mCO0+67.8 Say vCIM Font "&mLetAri",9 Style "NQ" Size 1,27   Pict "@S25"
 DO coL_fondo
 DO CASE
      CASE ptPo="2"
           @mFI0+10.5,mCO0+17.5 Say vTNO Font "&mLetAri",9 Style "NQ" Size 1,65.2 Pict "@S67"
      CASE ptPo="3"
           @mFI0+12.0,mCO0+17.5 Say vTRU Font "&mLetAri",9 Style "NQ" Size 1,17   Pict "@S11"
      CASE ptPo="4"
           @mFI0+12.0,mCO0+67.8 Say vCIM Font "&mLetAri",9 Style "NQ" Size 1,27   Pict "@S25"
 ENDCASE
ENDPROC
*
PROCEDURE Mr1_2600w
 PARAMETER ptPo
 DO CASE
      CASE LEN(ALLTRIM(vcR1))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+16.8,mCO0+10.5 Say vMR1 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S18"
 @mFI0+16.8,mCO0+43.5 Say vPLC Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "@S16"
 DO coL_fondo
 DO CASE
      CASE ptPo="2"
           @mFI0+16.8,mCO0+10.5 Say vMR1 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S18"
      CASE ptPo="3"
           @mFI0+16.8,mCO0+43.5 Say vPLC Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "@S16"
 ENDCASE
ENDPROC
*
PROCEDURE Mr2_2600w
 PARAMETER ptPo
 DO CASE
      CASE LEN(ALLTRIM(vcR2))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+18.3,mCO0+10.5 Say vMR2 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S18"
 @mFI0+18.3,mCO0+43.5 Say vPL2 Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "@S16"
 DO coL_fondo
 DO CASE
      CASE ptPo="2"
           @mFI0+18.3,mCO0+10.5 Say vMR2 Font "&mLetAri",9 Style "NQ" Size 1,16 Pict "@S18"
      CASE ptPo="3"
           @mFI0+18.3,mCO0+43.5 Say vPL2 Font "&mLetAri",9 Style "NQ" Size 1,14 Pict "@S16"
 ENDCASE
ENDPROC
*
PROCEDURE Ch1_2600w
 PARAMETER ptPo
 DO CASE
      CASE LEN(ALLTRIM(vcC1))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+13.5,mCO0+12.5 Say vCHO Font "&mLetAri",9 Style "NQ" Size 1,34 Pict "@S36"
 @mFI0+13.5,mCO0+67.8 Say vLC1 Font "&mLetAri",9 Style "NQ" Size 1,27 Pict "@S20"
 DO coL_fondo
 DO CASE
      CASE ptPo="2"
           @mFI0+13.5,mCO0+12.5 Say vCHO Font "&mLetAri",9 Style "NQ" Size 1,34 Pict "@S36"
      CASE ptPo="3"
           @mFI0+13.5,mCO0+67.8 Say vLC1 Font "&mLetAri",9 Style "NQ" Size 1,27 Pict "@S20"
 ENDCASE
ENDPROC
*
PROCEDURE Ch2_2600w
 PARAMETER ptPo
 DO CASE
      CASE LEN(ALLTRIM(vcC2))<>0
           DO coL_beige
      OTHERWISE
           DO coLbln
 ENDCASE
 @mFI0+15,mCO0+12.5 Say vCH2 Font "&mLetAri",9 Style "NQ" Size 1,34 Pict "@S36"
 @mFI0+15,mCO0+67.8 Say vLC2 Font "&mLetAri",9 Style "NQ" Size 1,27 Pict "@S20"
 DO coL_fondo
 DO CASE
      CASE ptPo="2"
           @mFI0+15,mCO0+12.5 Say vCH2 Font "&mLetAri",9 Style "NQ" Size 1,34 Pict "@S36"
      CASE ptPo="3"
           @mFI0+15,mCO0+67.8 Say vLC2 Font "&mLetAri",9 Style "NQ" Size 1,27 Pict "@S20"
 ENDCASE
ENDPROC
*
PROCEDURE Css_2600w
 DO CASE
      CASE vcSs=1
           DO prEsiona WITH "2", "CUADRO", vfBi, vcBi
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "1", "CUADRO", vfBi, vcBi+15.2
      CASE vcSs=2
           DO prEsiona WITH "1", "CUADRO", vfBi, vcBi
           IF mkEy=k_Esc
                RETURN
           ENDIF
           DO prEsiona WITH "2", "CUADRO", vfBi, vcBi+15.2
 ENDCASE
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO coLblz
 DO CASE
      CASE vcSs=1
           @vFBI+.3,vCBI+01.2 Say "Controla St." Font "&mLetAri",8 Style "BT"
           DO coLblv
           @vFBI+.1,vCBI+16.1 Say "no Controla"  Font "&mLetAri",8 Style "NT"
      CASE vcSs=2
           @vFBI+.1,vCBI+01.3 Say "Controla St." Font "&mLetAri",8 Style "NT"
           DO coLblv
           @vFBI+.3,vCBI+16.2 Say "no Controla"  Font "&mLetAri",8 Style "BT"
 ENDCASE
ENDPROC
*
PROCEDURE Cli_2600w
 DO coL_beige
 DO CASE
      CASE vmTt=5 .OR. vmTt=11
           @mFI0+0.4,mCO0+01.1 Say "Proveed" Font "&mLetAri",9 Style "BQ" Size 1,9
           @mFI0+3.4,mCO0+72.1 Say "RUC"     Font "&mLetAri",9 Style "NQ"
      OTHERWISE
           @mFI0+0.4,mCO0+01.1 Say "Cliente" Font "&mLetAri",9 Style "BQ" Size 1,9
           IF LEN(ALLTRIM(vdNi))=0 .OR. LEN(ALLTRIM(vrUc))<>0
                @mFI0+3.4,mCO0+72.1 Say "RUC"  Font "&mLetAri",9 Style "NQ"
           ELSE
                @mFI0+3.4,mCO0+72.1 Say "DNI"  Font "&mLetAri",9 Style "NQ"
           ENDIF
 ENDCASE
ENDPROC
*
PROCEDURE Cno_2600w
 IF wsW0=1
      STORE 1 TO viTe
 ELSE
      STORE 3 TO viTe
 ENDIF
 STORE SPACE(04) TO vcLi
 STORE SPACE(07) TO vtEl
 STORE SPACE(08) TO vdNi
 STORE SPACE(11) TO vrUc
 STORE SPACE(02) TO vsUc
 STORE SPACE(25) TO vdIs, vdEp, vlUd, vlUp
 STORE SPACE(70) TO vnOm, vdIr, vlUg, vnTt
 DO noM_2600w IN PAI2600W WITH "1"
 DO drC_2600w IN PAI2600W
 DO luG_2600w IN PAI2600W
 DO prEsiona WITH "3", "DESCAR", vfB3, vcB3
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO prEsiona WITH "3", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
ENDPROC
*
PROCEDURE Dir_2600w
 = INKEY(0.01)
 SELECT suCursal
 SET FILTER TO f1102cod=vcLi
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Este Cliente no tiene Sucursales..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB2 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f1102suc<>vsUc
      STORE f1102suc TO vsUc
      STORE f1102dir TO vdIr
      STORE f1102ndi TO vdIs
      STORE f1102ndp TO vdEp
      IF LEN(ALLTRIM(f1102tl1))<>0
           STORE f1102tl1 TO vtEl
      ELSE
           IF LEN(ALLTRIM(f1102tl2))<>0
                STORE f1102tl2 TO vtEl
           ELSE
                STORE f1102tl3 TO vtEl
           ENDIF
      ENDIF
      DO drC_2600w IN PAI2600W
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Di2_2600w
 = INKEY(0.01)
 SELECT suC_proveedores
 SET FILTER TO f2102cod=vcLi
 GOTO TOP
 IF BOF() .OR. EOF()
      STORE "Este Proveedor no tiene Sucursales..." TO mmSj
      STORE 99 TO mkEy
      DO poNmsj
      RETURN
 ENDIF
 DO prEsiona WITH "2", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 DO q1_0000a
 STORE 99 TO mkEy
 SET CONFIRM ON
 ACTIVATE POPUP vtB0 REST
 SET CONFIRM OFF
 DO p1_0000a
 IF mkEy=k_Enter .AND. f2102suc<>vsUc
      STORE f2102suc TO vsUc
      STORE f2102dir TO vdIr
      STORE f2102dis TO vdIs
      STORE SPACE(25) TO vdEp
      IF LEN(ALLTRIM(f2102tl1))<>0
           STORE f2102tl1 TO vtEl
      ELSE
           IF LEN(ALLTRIM(f2102tl2))<>0
                STORE f2102tl2 TO vtEl
           ELSE
                STORE f2102tl3 TO vtEl
           ENDIF
      ENDIF
      DO drC_2600w IN PAI2600W
 ENDIF
 DO prEsiona WITH "1", "CONSUL", vfB4, vcB4
 IF mkEy=k_Esc
      RETURN
 ENDIF
 STORE 99 TO mkEy
ENDPROC
*
PROCEDURE Tb0_2600w
 Define Popup vTB1 from mFI0+2.2,mCO0 to fFIL+2,mCO0+mUCO Font "&mLetCou",12 Style "NQ" Prompt Field F1101NOM Scroll Color Scheme 3 Footer "CONSULTA DE CLIENTES"
 Define Popup vTB2 from mFI0+3.7,mCO0 to fFIL+2,mCO0+mUCO Font "&mLetCou",12 Style "NQ" Prompt Field AllTrim(F1102DIR)+", "+AllTrim(F1102NDI) Scroll Color Scheme 3 Footer "SUCURSALES"
 Define Popup vTB3 from mFI0+7.3,mCO0  to fFIL+2,mCO0+mUCO Font "&mLetCou",12 Style "NQ" Prompt Field Substr(F9214NOM,1,30)+", "+F9214DIR+" "+F9214SR1+","+F9214SR2+","+F9214SR3 Scroll Color Scheme 3 Footer "LUGARES DE PARTIDA/ALMACENES"
 Define Popup vTB4 from mFI0+12.1,mCO0 to fFIL+2,mCO0+135 Font "&mLetCou",12 Style "NQ" Prompt Field Substr(F9215NOM,1,30)+", "+F9215DIR Scroll Color Scheme 3 Footer "TRANSPORTISTAS"
 Define Popup vTB5 from mFI0+13.6,mCO0 to fFIL+2,mCO0+100 Font "&mLetCou",12 Style "NQ" Prompt Field F9219MAR+" "+F9219PLA Scroll Color Scheme 3 Footer "CONSULTA DE CARROS"
 Define Popup vTB6 from mFI0+15.2,mCO0 to fFIL+2,mCO0+100 Font "&mLetCou",12 Style "NQ" Prompt Field F9219MAR+" "+F9219PLA Scroll Color Scheme 3 Footer "CONSULTA DE CARROS"
 Define Popup vTB7 from mFI0+16.7,mCO0 to fFIL+2,mCO0+155 Font "&mLetCou",12 Style "NQ" Prompt Field F9212NOM+" "+F9212LIC Scroll Color Scheme 3 Footer "CONSULTA DE CHOFERES"
 Define Popup vTB8 from mFI0+18.2,mCO0 to fFIL+2,mCO0+155 Font "&mLetCou",12 Style "NQ" Prompt Field F9212NOM+" "+F9212LIC Scroll Color Scheme 3 Footer "CONSULTA DE AYUDANTES"
 Define Popup vTB9 from mFI0+2.2,mCO0 to fFIL+2,mCO0+mUCO Font "&mLetCou",12 Style "NQ" Prompt Field F2101NOM Scroll Color Scheme 3 Footer "CONSULTA DE PROVEEDORES"
 Define Popup vTB0 from mFI0+3.7,mCO0 to fFIL+2,mCO0+mUCO Font "&mLetCou",12 Style "NQ" Prompt Field AllTrim(F2102DIR)+", "+AllTrim(F2102DIS) Scroll Color Scheme 3 Footer "SUCURSALES"
 ON SELECTION POPUP vtB1 DO TB1_0000A
 ON SELECTION POPUP vtB2 DO TB2_0000A
 ON SELECTION POPUP vtB3 DO TB3_0000A
 ON SELECTION POPUP vtB4 DO TB4_0000A
 ON SELECTION POPUP vtB5 DO TB5_0000A
 ON SELECTION POPUP vtB6 DO TB6_0000A
 ON SELECTION POPUP vtB7 DO TB7_0000A
 ON SELECTION POPUP vtB8 DO TB8_0000A
 ON SELECTION POPUP vtB9 DO TB9_0000A
 ON SELECTION POPUP vtB0 DO TB0_0000A
ENDPROC
*
