SCREEN 12
X = 100
Y = 100
CLS
DIM Dumb(1 TO 1000)
PRINT "DUMB"
'LINE (0, 0)-(32, 13), , B
GET (0, 0)-(32, 13), Dumb

DO
LINE (LX, LY)-(LX + 32, LY + 13), 0, BF
PUT (X, Y), Dumb
LX = X: LY = Y
X = X - 3
'Y = Y - 1
IF X < 1 THEN X = 1: GET (X + 3, Y)-(X + 32, Y + 13), Dumb
FOR P = 1 TO 1000
NEXT P
LOOP

