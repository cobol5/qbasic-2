SCREEN 12
CLS

DO
SELECT CASE INKEY$
CASE CHR$(0) + "H"'UP
Y = -1: X = 0
CASE CHR$(0) + "M"'Right
X = 1: Y = 0
CASE CHR$(0) + "P"'Down
Y = 1: X = 0
CASE CHR$(0) + "K"'Left
X = -1: Y = 0
END SELECT
X1 = X1 + X
Y1 = Y1 + Y
PSET (X1, Y1)
FOR P = 1 TO 200
NEXT P
LOOP


