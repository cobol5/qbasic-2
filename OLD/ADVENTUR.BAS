SCREEN 0
WIDTH 40
C1 = 10
C2 = 5
C3 = 12
GOTO MainGame

Inventory:
CLS : COLOR C3: PRINT "You have:"
IF Object$ = "Have" THEN PRINT ""
COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)
RETURN


'.....................................Main Game...............................
MainGame:

'.......................................Place.................................
Place:
CLS : COLOR C1: PRINT
'...........sentence length.....................
PRINT ""
COLOR C2
PRINT : PRINT "1"
COLOR C3
PRINT : A$ = INPUT$(1, 0)
SELECT CASE A$
CASE ""
GOTO Place
END SELECT
GOTO Place


COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)

