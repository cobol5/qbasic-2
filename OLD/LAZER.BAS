SCREEN 12
DRAW "C15"
LD$ = "NU"

ScanAndDraw:
LOCATE 1, 1
PRINT LD$
PRINT D$
PRINT D
PRINT Draw$
SELECT CASE INPUT$(1)
CASE "7"
D$ = "H"
CASE "8"
D$ = "U"
CASE "9"
D$ = "E"
CASE "4"
D$ = "L"
CASE "6"
D$ = "R"
CASE "1"
D$ = "G"
CASE "2"
D$ = "D"
CASE "3"
D$ = "F"
CASE "c"
C1$ = INPUT$(2)
DRAW "C" + C1$
CASE "r"
CLS
Draw$ = Draw$ + LD$ + LTRIM$(STR$(D))
DRAW Draw$
GOTO ScanAndDraw
CASE ""
CLS
GOTO ScanAndDraw
END SELECT

DRAW D$
IF D$ = LD$ THEN D = D + 1: GOTO ScanAndDraw
Draw$ = Draw$ + LD$ + LTRIM$(STR$(D))
LD$ = D$
D = 1
GOTO ScanAndDraw

 'X = POINT(0)
 'Y = POINT(1)
 'IF D$ = "R" AND POINT(X + 1, Y) > 0 THEN END
 'IF D$ = "L" AND POINT(X - 1, Y) > 0 THEN END
 'IF D$ = "U" AND POINT(X, Y - 1) > 0 THEN END
 'IF D$ = "D" AND POINT(X, Y + 1) > 0 THEN END





