SCREEN 0
WIDTH 40
C1 = 14'.................Color of main text
C2 = 9'...................Color of options

TJRoom:
COLOR C1: CLS : PRINT
'..................................End of Screen
PRINT " You are in Toby and Justin's room. It's"
PRINT "really cool and you love it. It's the"
PRINT "coolest room you ever saw. Justin is"
PRINT "here."
COLOR C2
PRINT : PRINT "1 Talk to Justin"
PRINT : PRINT "2 Kill yourself"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO Justin
CASE "2"
GOTO KillSelf
END SELECT
GOTO TJRoom


Justin:
COLOR C1: CLS : PRINT
'..................................End of Screen
PRINT " Hi, I'm Justin I'm really cool. You"
PRINT "smell bad. Do you have any dog food?"
COLOR C2
PRINT : PRINT "1"
A$ = INPUT$(1)
SELECT CASE A$
CASE "1 Give Justin dog food"
GOTO DogFood
CASE "2 Kill Justin"
GOTO KillJustin
END SELECT
GOTO Justin

KillSelf:

