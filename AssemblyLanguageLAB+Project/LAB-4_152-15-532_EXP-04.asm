.STACK 100H
.MODEL SMALL
.DATA
MSG DB "BIG$"
MSG1 DB "SMALL$"
MSG2 DB "EQUAL$"
MSG3 DB "SCAN: $"
MSG4 DB "PRINT: $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG3       ;SCAN MSG 
    INT 21H
    
    MOV AH,1
    INT 21H            ;SCAN
    MOV BL,AL 
    MOV CL,'7'
     
     MOV AH,2
     MOV DL,0AH
     INT 21H            ;NEWLINE
     MOV DL,0DH
     INT 21H 
     
     
     MOV AH,9
    LEA DX,MSG4        ;PRINT MSG
    INT 21H                      
    
    
    ;COMPARE
    
    CMP BL,CL
    JE EQUAL
    
    CMP BL,CL
    JA BIG
    
    CMP BL,CL
    JB SMALL
    
    
    EQUAL:
    MOV AH,9
    LEA DX,MSG2    
    INT 21H 
    JMP END_CASE
    
    
    BIG:
    MOV AH,9
    LEA DX,MSG    
    INT 21H
    JMP END_CASE
    
    SMALL: 
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    JMP END_CASE
    
    
    
    END_CASE:
    
    MAIN ENDP
END MAIN