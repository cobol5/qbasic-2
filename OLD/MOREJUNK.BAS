CLS
COLOR 3
SBase:
Place$ = "SBase"
PRINT "Secret BASE"
COLOR 14: PRINT : INPUT "", A$: A$ = UCASE$(A$)
'A$ = " GET DAGGER"
A$ = A$ + " "
DO: L = L + 1: LOOP WHILE MID$(A$, L, 1) = " "
DO: L = L + 1: LOOP UNTIL MID$(A$, L, 1) = " "
PRINT L
PRINT LEFT$(A$, L)

'PRINT MID$(A$, 3, 3)

