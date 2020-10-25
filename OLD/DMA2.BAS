SCREEN 12
COLOR 1
PRINT "Toby"
VIEW PRINT 2 TO 6

DO
A$ = INPUT$(1): A$ = UCASE$(A$)
SELECT CASE A$
CASE "B"
B = B + 1
IF B > 63 THEN B = 0
CASE "G"
G = G + 1
IF G > 63 OR G < 0 THEN G = 1
CASE "R"
R = R + 1
IF R > 63 OR R < 0 THEN R = 1
END SELECT
C = (65536 * B) + (256 * G) + R
PALETTE 1, C
CLS 2: COLOR 15:
PRINT "Color"; C
PRINT "Blue"; B
PRINT "Green"; G
PRINT "Red"; R
LOOP

