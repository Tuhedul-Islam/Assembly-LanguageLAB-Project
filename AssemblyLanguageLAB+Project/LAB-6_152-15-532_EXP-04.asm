.STACK 100H
.MODEL SMALL
.DATA
MSG DB "INTPUT: $"
MSG1 DB "OUTPUT: $"
MSG2 DB "CAPITAL LETTER$"
MSG3 DB "SMALL LETTER$"
MSG4 DB "SPECIAL LETTER$"
MSG5 DB "NUMBER$"

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
    
    CMP BL,'0'
    JL SPECIAL
    
    CMP BL,'z'
    JA SPECIAL
    
    CMP BL,'a'
    JAE SMALL
    
    CMP BL,'Z'
    JA SPECIAL
    
    
    CMP BL,'A'
    JAE CAPITAL
    
    CMP BL,'9'
    JA SPECIAL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    
    
    
    
    MOV AH,9
    LEA DX,MSG5
    INT 21H
    JMP END_CASE
    
            
    SPECIAL:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H
    JMP END_CASE
    
    
    CAPITAL:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    JMP END_CASE
    
    SMALL:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    +
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    JMP END_CASE
    
    END_CASE:
    
    MAIN ENDP
END MAIN