.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV CX,1     
    PRINT:
    MOV AH,2    
    MOV DL,'*'
    INT 21H       
    LOOP PRINT
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV CX,2     
    PRINT1:
    MOV AH,2    
    MOV DL,'*'
    INT 21H
    LOOP PRINT1 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV CX,3     
    PRINT2:
    MOV AH,2    
    MOV DL,'*'
    INT 21H
    LOOP PRINT2 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV CX,4     
    PRINT3:
    MOV AH,2    
    MOV DL,'*'
    INT 21H
    LOOP PRINT3
    
    
    
    MAIN ENDP
END MAIN