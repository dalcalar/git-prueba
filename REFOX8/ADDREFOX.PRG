* 1997, Xitech (Europe)
* use this program to add the lines :   IF .F./_REFOX_=(9876543210)/ENDIF
*										ENDIF 
* Specify by the file skeleton 
* the program checks to see if the line already exists and will place it 
* after any comments (* / &&), split lines, PROCEDURE or PARAMETER statements
* For SCX (FoxPro 2.x) /MNX files the line is added to the first line of the setup code

PARAMETER mSkeleton
SET TALK OFF
IF TYPE('mSkeleton') <> 'C' OR PARAMETER() <> 1
	WAIT WINDOW 'Syntax: =ADDREFOX(<file skeleton>) or DO ADDREFOX WITH <file skeleton>'
	RETURN 0
ENDIF

* create an array containing the files to be processed
mCount=ADIR(aFileList, mSkeleton)

* do we have files to process?
IF mCount >= 1
	mAddLine = 'IF .F. '+CHR(38)+CHR(38)+' REFOX'+CHR(13)+CHR(10)+;
				'    * ReFox Level I Branding'+CHR(13)+CHR(10)+;
				'    _REFOX_ = (9876543210)'+CHR(13)+CHR(10)+;
                                '    _REFOX_ = (9876543210)'+CHR(13)+CHR(10)+;
				'ENDIF'
	FOR FileCnt = 1 TO mCount
		IF NOT RIGHT(TRIM(aFileList(FileCnt, 1)),3) $ 'PRG^SPR^MPR^REF^SCX^MNX'
			LOOP
		ENDIF
		mTempFile = SYS(3)+'.TMP'
		mFile = aFileList(FileCnt, 1)
		mFile = LEFT(mSkeleton,RAT('\',mSkeleton))+mFile
		DO CASE
			* ONLY ADD TO NON VISUAL FOXPRO SCX FILES
			CASE RIGHT(mFile,3) $ 'SCX' 
				* 'VISUAL'$UPPER(VERSION())	 
				USE (mFile)
				IF VFPPLAT()
					WAIT WINDOW mFile+' is VFP Form : Ignored...' TIMEOUT 2
					USE
					LOOP
				ENDIF
				IF .NOT. '_REFOX_'$setupcode 
					REPLACE setupcode WITH mAddLine+CHR(13)+chr(10)+setupcode
					WAIT WINDOW mFile+' Updated...' TIMEOUT 0.5
				ELSE
					WAIT WINDOW mFile+' Already Updated...' TIMEOUT 0.5
				ENDIF
				USE
				LOOP
			CASE RIGHT(mFile,3) $ 'MNX'
				USE (mFile)
				IF .NOT. '_REFOX_'$setup
					REPLACE setup WITH mAddLine+CHR(13)+chr(10)+setup
					WAIT WINDOW mFile+' Updated...' TIMEOUT 0.5
				ELSE
					WAIT WINDOW mFile+' Already Updated...' TIMEOUT 0.5
				ENDIF	
				USE
				LOOP
		ENDCASE
		wait window 'Processing '+mfile timeout 0.5
		mInHandle = FOPEN( mFile )
		mOutHandle = FCREATE( mTempFile )
		IF mInHandle > 0 AND mOutHandle > 0
			WAIT WINDOW 'Checking file ' + mFile TIMEOUT 0.5
			mLineCnt = 1
			mDone = .F.
			mline=''
			DO WHILE .T.
				mskip = RIGHT(ALLTRIM(mLine),1) =';' 
				mLine = FGETS(mInHandle,4096)

				* add if this is line 1
				IF NOT mDone            && check to see its already done
					* check for comment lines/ parameter etc.
					IF NOT ( LEFT(ALLTRIM(mLine),1) = '*' OR ;
					   LEFT(ALLTRIM(mLine),2) = '&'+'&' OR ;
					   UPPER(LEFT(ALLTRIM(mLine),4)) = 'PARA' OR ;
					   UPPER(LEFT(ALLTRIM(mLine),4)) = 'PROC' OR ;
					   UPPER(LEFT(ALLTRIM(mLine),4)) = 'FUNC' OR ;
   					   UPPER(LEFT(ALLTRIM(mLine),4)) = '#INC' OR ;
   					   UPPER(LEFT(ALLTRIM(mLine),4)) = '#DEF' OR ;
   					   UPPER(LEFT(ALLTRIM(mLine),4)) = '#SEC' OR ;
 					   ALLTRIM(mLine) == '' )
						IF UPPER(LEFT(ALLTRIM(mLine),15)) = 'IF .F. '+CHR(38)+CHR(38)+' REFOX'
							* line already exists stop and exit
							WAIT WINDOW 'File ' + mFile +' has ReFox variable already!' NOWAIT
							mOk = .F.
							EXIT
						ELSE
							IF .NOT. mSkip
								=FPUTS(mOutHandle, mAddLine)
								mOk = .T.
								mDone = .T.
							ENDIF
						ENDIF
					ENDIF
				ENDIF
				=FPUTS(mOutHandle, mLine)
				IF FEOF(mInHandle)
					EXIT
				ENDIF
				mLineCnt = mLineCnt + 1
			ENDDO
			=FCLOSE(mInHandle)
			=FCLOSE(mOutHandle)
 			IF mOk
				* calculate the file name without extension
				IF '.' $ aFileList(FileCnt, 1)
					mName = LEFT(mSkeleton,RAT('\',mSkeleton))+LEFT( aFileList(FileCnt, 1), AT('.', aFileList(FileCnt, 1) )-1 )
				ELSE
					mName = mFile
				ENDIF
				* delete .bak file if it exists
				IF FILE(mName+'.BAK')
					DELETE FILE (mName+'.BAK')
					ENDIF
				* rename the .file to .bak
				RENAME (mFile) TO (mName+'.BAK')
				* rename the temp file to .prg
				RENAME (mTempFile) TO (mFile)
			ELSE
				IF FILE(mTempFile)
					DELETE FILE (mTempFile)
				ENDIF
			ENDIF
		ELSE
			WAIT WINDOW 'file open errors :'+mFile+' or '+mTempFile
			CLOSE ALL
		ENDIF
	NEXT
ENDIF
RETURN(FileCnt)


FUNCTION VFPPLAT
=AFIELDS(tmpSA)
tPlat = ascan(tmpsa,'METHODS')>0
RELEASE tmpSA
RETURN tPlat
