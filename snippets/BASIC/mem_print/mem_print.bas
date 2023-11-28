2 PRINT "Input start address" : INPUT pe : PRINT pe
3 PRINT "Input last address" : INPUT ue : PRINT ue
5 PAUSE 50
7 CLS
8 IF ue < pe THEN PRINT "Last address is lower than start address. Please, repeat." : GO TO 2
10 FOR n = pe TO ue
20 PRINT n; TAB(12-LEN(STR$(ue))); "=>"; PEEK n
30 NEXT n
