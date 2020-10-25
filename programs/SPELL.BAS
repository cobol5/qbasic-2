CLS : WIDTH 80: COLOR 14
DATA difference
DATA noticeably
DATA fluently
DATA uninhabited
DATA gesticulated
DATA induce
DATA conspiracy
DATA spontaneous
DATA ebullience
DATA immediately
DATA absurd
DATA differentiated
DATA recrimination
DATA jaguar
DATA tirade
DATA furtive
DATA vicissitude
DATA incredulous
DATA indignant
DATA possession

DO
READ Word$
'READ Def$
'PRINT Def$
DO: INPUT "Enter word: ", A$
IF NOT LCASE$(A$) = Word$ THEN
BEEP
PRINT "WRONG!"
ELSE
PRINT "YES!"
END IF
LOOP UNTIL LCASE$(A$) = Word$
LOOP



