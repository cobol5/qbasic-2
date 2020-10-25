CLS
WIDTH 40
C1 = 14
C2 = 9

SecretBase:
CLS : COLOR C1
'...............................................
PRINT " You are in a top sectet base somewere"
PRINT "deep under the ocean. Your codename is:"
PRINT "Fishbowl. You received orders from the"
PRINT "base computer. You are to KILL THE"
PRINT "CHICKENS. Being an expert spy guy you"
PRINT "should know what that means, because I"
PRINT "sure don't."
COLOR C2
PRINT : PRINT "1 Folow orders"
PRINT : PRINT "2 Blow up secret base"
PRINT : PRINT "3 Quit"
PRINT : PRINT "4 Wait for more orders"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO FolowO
CASE "2"
GOTO BlowUpB
CASE "3"
GOTO Quit
CASE "4"
GOTO WaitForO
END SELECT
GOTO SecretBase

FolowO:
CLS : COLOR C1
'...............................................
PRINT "You now have to gather equipment you  "
PRINT "can carry 50 pounds in your backpack."
PRINT "What will you carry?  One weapon and "
PRINT "tool can be placed around your waist as "
PRINT "an easy to grab and easy to carry object"
PRINT "You permanently get a pocketknife which"
PRINT "is always useful"
COLOR C2
PRINT : PRINT "1 Get supplied with weapons"
PRINT : PRINT "2 Get supplied with food"
PRINT : PRINT "3 Get supplied with tools"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
Weapons$ = "Have"
GOTO SuperSub
CASE "2"
Food$ = "Have"
GOTO SuperSub
CASE "3"
Tools$ = "Have"
GOTO SuperSub
END SELECT
GOTO FolowO

BlowUpB:
CLS : COLOR C1
'...............................................
PRINT " You plant bombs all over the base. Your"
PRINT "just aboute to blow the place up when"
PRINT "base security shoots you. You lose."
COLOR C2
PRINT : PRINT "Press any key"
A$ = INPUT$(1)
GOTO GameOver


Quit:
CLS : COLOR C1
'...............................................
PRINT " You Quiter!"
COLOR C2
PRINT : PRINT "Press any key"
A$ = INPUT$(1)
GOTO GameOver



WaitForO:
CLS : COLOR C1
'...............................................
PRINT " You aint gonna get any other orders"
PRINT "pal! KILL THE CHICKENS!"
COLOR C2
PRINT : PRINT "1 Live with it"
PRINT : PRINT "2 Quit"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO FolowO
CASE "2"
GOTO Quit
END SELECT
GOTO WaitForO

SuperSub:
CLS : COLOR C1
'...............................................
PRINT " You head off to the super sonic sub."
PRINT "as you open the hatch and step in side"
PRINT "the one man sub, you think to yourself"
PRINT "I must be stupid. The hatch closes and"
PRINT "your ready to go."
PRINT " A panel in front of you has three but-"
PRINT "tons: red, green, and blue."
COLOR C2
PRINT : PRINT "1 Press red"
PRINT : PRINT "2 Press green"
PRINT : PRINT "3 Press blue"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO Red
CASE "2"
GOTO Green
CASE "3"
GOTO Blue
END SELECT
GOTO SuperSub


Red:
Green:
Blue:



GameOver:
CLS
LOCATE 12, 17
PRINT "GAME OVER"
END


