SCREEN 12
'640 X 480
X1 = 3
Y1 = 3
XCH1 = 3
YCH1 = 2
CLS : COLOR 9
DIM Text(1 TO 369)
LOCATE 1, 1
PRINT "The Dumb Mall Adventure"
GET (0, 0)-(183, 15), Text
CLS

DO
PUT (X1, Y1), Text
FOR P = 1 TO 1000: NEXT P
LINE (X1, Y1)-(X1 + 183, Y1 + 15), 0, BF
IF X1 + 183 >= 637 OR X1 <= 2 THEN XCH1 = XCH1 * -1
IF Y1 + 15 >= 477 OR Y1 <= 2 THEN YCH1 = YCH1 * -1
X1 = X1 + XCH1
Y1 = Y1 + YCH1
LOOP WHILE INKEY$ = ""

