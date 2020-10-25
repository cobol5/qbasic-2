SCREEN 12
X1 = 320
Y1 = 0
XC1 = 1
YC1 = 1
PL = 100
C1 = 9
C2 = 4
PixelN = 0
DataLN = 3

DATA 0,1, 100
DATA -1,0, 100
DATA -2, 0, 1000

FOR StopAt = 1 TO DataLN
READ XC1, YC1, PixelN
FOR N = 1 TO PixelN
PSET (X1, Y1), C1
'PSET (X1 + 10, Y1), C2
X1 = X1 + XC1
Y1 = Y1 + YC1
GOSUB Pause
NEXT N
NEXT StopAt
END

Pause:
FOR P = 1 TO PL
NEXT P
RETURN








'POINT(X1, Y1 - 1)

