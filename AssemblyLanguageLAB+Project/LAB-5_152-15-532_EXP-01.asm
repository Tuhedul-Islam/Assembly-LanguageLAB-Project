.STACK 100H
.MODEL SMALL
.DATA
   MSG DB "BIG NUMBER : $"
.CODE
MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
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
    LEA DX,MSG
    INT 21H
        
    CMP CL,BL
    JG BIG
    
      MOV AH,2
      MOV DL,BL
      INT 21H
      JMP END
    
    
    
    BIG:
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP END
    
    END:
    
    
   
    
    MAIN ENDP
END MAIN