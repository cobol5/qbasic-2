SCREEN 0
WIDTH 80
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
GOTO TobyRoom
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
CASE "1"
GOTO Place
END SELECT
GOTO Place

TobyRoom:
CLS : COLOR C1: PRINT
'...........sentence length................................................
PRINT " You are in Toby's room. There is Junk laying all over the"
PRINT "place. Two beds, (one Toby's and one Justins), are here. There are"
PRINT "three desk here. On top of one desk sets Toby's compputer. The"
PRINT "other two desk contain Justin and Toby's stuff. Two doors are"
PRINT "here. One leads into Toby's bathroom and the other exit's the room"
PRINT "Into the Hall. A eindow looks down into one of the many dirty"; ""
PRINT "streets of Bankok. Two closets are standing here, and a green chest"
PRINT "full of Justins cothes sets on a green and purple Chest"
PRINT ""
COLOR C2
PRINT : PRINT "1"
COLOR C3
PRINT : A$ = INPUT$(1, 0)
SELECT CASE A$
CASE "1"
GOTO Place
END SELECT
GOTO TobyRoom

COLOR C5: PRINT : PRINT "             Press any key": A$ = INPUT$(1, 0)

