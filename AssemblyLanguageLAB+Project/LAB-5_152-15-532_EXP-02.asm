.STACK 100H
.MODEL SMALL
.DATA
MSG DB "GREATTER$"
MSG1 DB "LESS$"
MSG2 DB "EQUAL$"
MSG3 DB "SHAKIL IS A ABUL$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CL,'7'
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP BL,CL
    JG BIG
    
    CMP BL,CL
    JL SMALL
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    JMP END
    
    BIG:
    MOV AH,9
    LEA DX,MSG
    INT 21H
    JMP END
    
    SMALL:
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    JMP END
    
    
    END:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    
    MAIN ENDP

END MAIN