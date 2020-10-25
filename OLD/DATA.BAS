CLS
GOTO Test:

Mall:
DATA Mall, Mall 2, Mall 3
PRINT "Toby"
END

Store:
DATA Buy game, Leave store, Talk to man


Test:
RESTORE Store
GOSUB PrintIt
PRINT
RESTORE Mall
GOSUB PrintIt
GOTO Mall


PrintIt:
FOR N = 1 TO 3
READ A$
PRINT A$
NEXT N
RETURN

