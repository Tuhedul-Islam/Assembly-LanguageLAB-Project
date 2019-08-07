.STACK 100H
.MODEL SMALL
.DATA

MSG DB "UpperCase: $"
MSG1 DB "LawerCase: $"


.CODE
MAIN PROC
    
    MOV DX,@DATA
    MOV DS,DX
    
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
    
    ADD BL,20H
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    
    
    MAIN ENDP

END MAIN