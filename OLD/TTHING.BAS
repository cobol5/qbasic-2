'GOTO example2

'Example:
'This example requires a color graphics adapter.
'    SCREEN 1
'    VIEW (10, 10)-(300, 180), , 1
'    LOCATE 1, 11: PRINT "A big graphics viewport";
'    VIEW SCREEN (80, 80)-(200, 125), , 1
'    LOCATE 11, 11: PRINT "A small graphics viewport";

VIEW PRINT 10 TO 15
example2:
INPUT "", a$
GOTO example2

