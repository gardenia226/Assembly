.386
DATA     SEGMENT    USE16
SUM      DW  0
DATA     ENDS
STACK    SEGMENT    USE16
         DB  200   DUP(0)
STACK    ENDS
CODE     SEGMENT    USE16
         ASSUME DS:DATA,SS:STACK,CS:CODE
START:   MOV AX,DATA
         MOV DS,AX
         MOV CX,50
         MOV AX,0
         MOV BX,1
NEXT:    ADD AX,BX
         INC BX
		     INC BX
		     DEC CX
		     JNE NEXT
		     MOV SUM,AX
		     MOV AH,4CH
		     INT 21H
CODE     ENDS
         END START
