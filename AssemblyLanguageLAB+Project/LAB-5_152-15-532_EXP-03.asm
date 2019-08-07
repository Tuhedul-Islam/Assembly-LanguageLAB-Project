.STACK 100H
.MODEL SMALL
.DATA
MSG DB "SIMILLER$"
MSG1 DB "NOT SIMILLER$"
MSG2 DB "INPUT: $"
MSG3 DB "OUTPUT: $"

.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BH,'Y'
    MOV CH,'y'
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    
    CMP BL,BH
    JE SIMI
    
    CMP BL,CH
    JE SIMI
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    
    JMP END
    SIMI:
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    END:
    MAIN ENDP

END MAIN
