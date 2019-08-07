.STACK 100H
.MODEL SMALL
.DATA  
MSG DB "INPUT: $"
MSG1 DB "OUTPUT: $"
SANI DB ?

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
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV DL,BL
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV DL,BH
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    MOV DL,CH
    INT 21H
    
    MOV SANI,'5'
    
    MOV AH,2
    MOV DL,SANI
    INT 21H   
   
    
    
    MAIN ENDP
END MAIN