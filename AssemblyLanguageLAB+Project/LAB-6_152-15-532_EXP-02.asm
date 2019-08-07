.STACK 100H
.MODEL SMALL
.DATA  
MSG DB "INPUT: $"
MSG1 DB "OUTPUT: $"

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP BL,'0'
    JL END_CASE
    CMP BL,'9'
    JA END_CASE
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    END_CASE:
    
    
    MAIN ENDP
END MAIN