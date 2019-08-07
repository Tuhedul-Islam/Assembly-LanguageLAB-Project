.STACK 100h
.MODEL SMALL
.DATA  
MSG DB "Odd value $"
MSG1 DB "Even value $"

.CODE
MAIN PROC
    MOV DX,@DATA
    MOV DS,DX
   
    MOV AH,1 
    INT 21H
    MOV BL,AL
    
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP BL,'1'
    JE ODD 
    CMP BL,'3'
    JE ODD 
    CMP BL,'2'
    JE EVEN  
    CMP BL,'4'
    JE EVEN 
    
    JMP END_CASE
    
    
    
    
    ODD:
    MOV AH,9
    LEA DX,MSG
    INT 21H
    JMP END_CASE
    
    EVEN:
    MOV AH,9
    LEA DX,MSG1
    INT 21H 
    
     END_CASE:
    
MAIN ENDP
END MAIN