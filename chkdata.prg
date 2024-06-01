LOCAL lcP1,lcP2
lcP1 = HOME(2) + "Northwind\"
IF !DIRECTORY(lcP1)
	MD (lcP1)
ENDIF
lcP2 = "..\VFP9samplesData\Northwind\"
lnDC = ADIR(laD,lcP2 + "*.*")
FOR lnDI = 1 TO lnDC
	IF !FILE(lcP1 + laD[lnDI,1])
		COPY FILE (lcP2 + laD[lnDI,1]) TO (lcP1 + laD[lnDI,1])
	ENDIF
ENDFOR
