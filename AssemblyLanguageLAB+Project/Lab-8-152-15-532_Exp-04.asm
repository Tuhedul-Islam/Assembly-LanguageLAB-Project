.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP BL,'0'
    JL END_CASE
    CMP BL,'9'
    JLE DISPLAY
    CMP BL,'A'
    JL END_CASE
    CMP BL,'F'
    JLE DISPLAY2
    
    JMP END_CASE
    
     
    DISPLAY:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP END_CASE
    
    DISPLAY2:
    SUB BL,11H
    MOV AH,2
    MOV DL,'1'
    INT 21H
    MOV DL,BL
    INT 21H
    
    JMP END_CASE
    
    
    END_CASE:
    
    MAIN ENDP
END MAIN