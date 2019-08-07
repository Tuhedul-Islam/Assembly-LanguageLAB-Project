.STACK 100h
.MODEL SMALL
.DATA 
MSG DB "Scan: $" 
MSG1 DB "Print: $"

.CODE
MAIN PROC
    
     MOV AX,@DATA
     MOV DS,AX  
     
     
     MOV AH,9 
     LEA DX,MSG         ;MSG
     INT 21H 
     
     MOV AH,1
     INT 21H            ;SCAN
     MOV BL,AL
     
     
     MOV AH,2
     MOV DL,0DH
     INT 21H            ;NEWLINE
     MOV DL,0AH
     INT 21H
     
     
     MOV AH,9 
     LEA DX,MSG1         ;MSG
     INT 21H 
     
     
     MOV AH,2 
     MOV DL,BL          ;PRINT
     INT 21H
     
     
    
    
    MAIN ENDP 
    END MAIN
    

