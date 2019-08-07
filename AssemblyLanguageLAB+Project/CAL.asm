.STACK 100H
.MODEL SMALL
.DATA
MSG DB "FIRST NUMBER: $"
MSG1 DB "SECOND NUMBER: $"
MSG2 DB "OPTION + OR - : $"
VAR DB ?

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
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV VAR,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP VAR,'+'
    JE PLUS
    CMP VAR,'-'
    JE MINUS
    
    JMP END_CASE
    
    PLUS:
    ADD BL,CL
    SUB BL,30H
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END_CASE
    
    MINUS:
    SUB BL,CL
    ADD BL,30H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    END_CASE:
       
    
    
    
    
    MAIN ENDP 
END MAIN