SCREEN 12
OptNum = 1'...............Number of the option player is on
OptMax = 3'...............Number of options in current area
PRINT "Toby"

DO
SELECT CASE A$

CASE " " '..........If player presses spacebar then do the folowing
SELECT CASE OptNum
CASE 1
GOTO Roses
CASE 2
GOTO Bob
CASE 3
GOTO RunLife
END SELECT

CASE "2"'..........If player presses down then do the folowing
OptNum = OptNum + 1
IF OptNum = OptMax + 1 THEN OptNum = 1
END SELECT
VIEW PRINT 10 TO 11
CLS 2
SELECT CASE OptNum
CASE 1
PRINT "Get Roses"
CASE 2
PRINT "Talk to Bob"
CASE 3
PRINT "Run for your life"
VIEW PRINT
END SELECT

A$ = INPUT$(1)
LOOP

Roses:
CLS : PRINT "Roses"
END

Bob:
CLS : PRINT "Bob"
END

RunLife:
CLS : PRINT "RunLife"
END

