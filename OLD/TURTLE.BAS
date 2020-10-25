SCREEN 0
WIDTH 40
C1 = 14
C2 = 9

TurtleBowl:
CLS : COLOR C1: PRINT
'...............................................
PRINT " You are in a turtle bowl. That's right,"
PRINT "your not a turtle but this is a turtle"
PRINT "bowl. Guess what, there's a turtle here"
PRINT "staring at you."
COLOR C2
PRINT : PRINT "1 Climb out of bowl"
PRINT : PRINT "2 Talk to turtle"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
CLS : COLOR C1: PRINT
'...............................................
PRINT " You quickly climb out of the turtle"
PRINT "bowl"
COLOR C2
PRINT : PRINT "press any key"
A$ = INPUT$(1)
GOTO Desk
CASE "2"
CLS : COLOR C1: PRINT
'...............................................
PRINT "My aren't you intellegent.  I suppose"
PRINT "that where ever you come from, People"
PRINT "just freely speak to turtles.  Well,"
PRINT "we just don't do that around here, I"
PRINT "mean it's not exactly normal."
COLOR C2
PRINT : PRINT "press any key"
A$ = INPUT$(1)
GOTO GameOver
END SELECT
GOTO TurtleBowl


Desk:
GameOver:
CLS : COLOR C1: PRINT
'...............................................
PRINT "Game Over Man! Game Over!"
PRINT
PRINT "Well this is it.  It seems you've just"
PRINT "about scrwed up the whole game.  Well,"
PRINT "thats just lovely. I hope you're proud"
PRINT "of your self you pathetic loser!"

