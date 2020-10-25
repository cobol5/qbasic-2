SCREEN 0
WIDTH 40
C1 = 14
C2 = 9
disk$ = "Have not"


TobyRoom:
COLOR C1: CLS : PRINT
'...........sentence length.....................
PRINT "  You are in Toby's room. It is a nice a"
PRINT "nice room. There are posters on the wall"
PRINT "and junk all over the floor. You see"
PRINT "Toby's computer on a desk that sits in"
PRINT "corner of the room."
IF disk$ = "Have not" THEN
PRINT "On Toby's coputer desk you notice a"
PRINT "disk."
END IF
COLOR C2
PRINT : PRINT "1 Look at posters"
PRINT : PRINT "2 Use Computer"
PRINT : PRINT "3 Leave room"
PRINT : PRINT "4 Inventory"
IF disk$ = "Have not" THEN
PRINT : PRINT "5 Get disk"
END IF
A$ = INPUT$(1)
SELECT CASE A$
CASE "1"
GOTO Poster
CASE "2"
GOTO Computer
CASE "3"
GOTO Stairs
CASE "4"
GOSUB Inventory
CASE "5"
IF disk$ = "Have not" THEN
COLOR C1: CLS : PRINT
'...........sentence length.....................
PRINT "You pick up the disk. It reads Toby's"
PRINT "Secret Info. You put it in your"
PRINT "inventory."
COLOR C2
PRINT : PRINT "PRESS ANY KEY"
A$ = INPUT$(1)
disk$ = "Have"
END IF
END SELECT
GOTO TobyRoom

Poster:
Computer:
Stairs:

END

Inventory:
COLOR C1: CLS : PRINT
PRINT "You have:"
IF disk$ = "Have" THEN PRINT "A Computer disk"
PRINT : PRINT "PRESS ANY KEY"
RETURN

