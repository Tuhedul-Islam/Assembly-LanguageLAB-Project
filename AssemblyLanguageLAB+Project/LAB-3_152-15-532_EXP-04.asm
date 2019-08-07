.STACK 100H
.MODEL SMALL
.DATA

MSG DB "First Number : $"
MSG1 DB "Second Number : $"
MSG2 DB "Result : $" 

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG    ; FIRST MESSAGE PRINT
    INT 21H
    
    MOV AH,1
    INT 21H        ;SCAN 1ST NUMBER
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H        ;NEW LINE PRINT
    MOV DL,0DH
    INT 21H
    
    MOV AH,9        ;SECOND MESSAGE PRINT
    LEA DX,MSG1
    INT 21H
                          
                              
    MOV AH,1
    INT 21H        ;SCAN 2ND NUMBER
    
    
    SUB BL,AL
    ADD BL,30H       ;CONVERTING + ADD 
    
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H          ;NEW LINE PRINT
    MOV DL,0DH
    INT 21H 
    
    MOV AH,9
    LEA DX,MSG2      ;THIRD MESSAGE PRINT
    INT 21H
    
    
    MOV AH,2
    MOV DL,BL        ;PRINT SUM
    INT 21H    
    
    
    MAIN ENDP
END MAIN