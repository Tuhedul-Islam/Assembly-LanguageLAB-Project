.STACK 100h
.MODEL SMALL
.DATA

.CODE
MAIN PROC   
    ;Scan Block
    
    MOV AH,1
    INT 21H   
    MOV BL,AL 
    
    
    ;New Line Block
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H        
    
    ;Print Block
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    ;New Line Block
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H        
    
    ;Print Block
    
    MOV AH,2
    MOV DL,BL
    INT 21H   
    
MAIN ENDP
END MAIN