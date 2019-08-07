.STACK 100h
.MODEL SMALL
.DATA  
MSG DB "Odd value $"
MSG1 DB "Even value $"

.CODE
MAIN PROC
   
    MOV AH,1 
    INT 21H
    MOV BL,AL
    
    
    CMP BL,40H
    JMP END_CASE 
    
    CMP BL,'Z'
    JLE DISPLAY
    JMP END_CASE 
    
    
    CMP BL,'A'
    JGE DISPLAY
    JMP END_CASE
    
    
    DISPLAY:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END_CASE
    
    
    
    
     END_CASE:
    
MAIN ENDP
END MAIN