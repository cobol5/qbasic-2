SCREEN 12
X1 = 320
Y1 = 0
XC1 = 1
YC1 = 1
PL = 100
C1 = 9
C2 = 4


DO
PSET (X1, Y1), C1
PSET (X1 + 10, Y1), C2
X1 = X1 + XC1
Y1 = Y1 + YC1
IF X1 / 10 = FIX(X1 / 10) THEN
XC1 = XC1 * -1
END IF
GOSUB Pause
LOOP
END

Pause:
FOR P = 1 TO PL
NEXT P
P = 0
RETURN








'POINT(X1, Y1 - 1)

