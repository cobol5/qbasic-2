SCREEN 12
C1 = 14'...............Color of desriptions
C2 = 9'................Color of options
O = 1'..............Option Number
Choice = 1'...............Curent choice that can be selected
ChoiceN = 3'...............Number of Choices in current area

YoEric:
CLS : COLOR C1: PRINT
'...........sentence length.....................
PRINT " Yo Eric. This is a personalized"
PRINT "adventure game, like the ones we used to"
PRINT "make, only more complex. Anyone else who"
PRINT "want's to play can if they don't mind"
PRINT "being called Eric all through the game."
PRINT "Here are your option. Have fun!"
COLOR C2
PRINT : PRINT "1 Talk to me, (Toby)"
PRINT : PRINT "2 Go to Toby's house"
PRINT : PRINT "3 Eat worms and die, (Quit)"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO Talk
CASE "2"
GOTO TobyRoom
CASE "3"
GOTO Quit
END SELECT
GOTO YoEric


Talk:
CLS : COLOR C1: PRINT
'...........sentence length.....................
PRINT " So Eric, what's happening in your life?"
PRINT "are you enjoying school? Is that a"
PRINT "stupid question?"
COLOR C2
PRINT : PRINT "1 My life is great"
PRINT : PRINT "2 My life stinks"
PRINT : PRINT "3 I hate school"
PRINT : PRINT "4 I toatally love school"
PRINT : PRINT "5 Yes, only an idiot would ask a"
        PRINT "  question like that"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
CASE "2"
CASE "3"
CASE "4"
CASE "5"
END SELECT
GOTO Talk

Quit:
CLS : COLOR C1: PRINT
'...........sentence length.....................
PRINT " So you don't like my game. You really"
PRINT "want to quit. "

TobyRoom:

