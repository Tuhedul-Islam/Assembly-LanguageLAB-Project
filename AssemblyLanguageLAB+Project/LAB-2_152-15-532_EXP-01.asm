.STACK 100h
.MODEL SMALL
.DATA 
MSG DB "TOUHID$"

.CODE
MAIN PROC
    
     MOV AX,@DATA
     MOV DS,AX
     
     MOV AH,9 
     LEA DX,MSG
     INT 21H
    
    
    MAIN ENDP 
    END MAIN
    

