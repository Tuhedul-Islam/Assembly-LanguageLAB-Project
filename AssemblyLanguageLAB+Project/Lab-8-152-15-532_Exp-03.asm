.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    MOV AH,1
    
    INPUT:
    INT 21H
    CMP AL,'A'
    JAE INPUT
    CMP AL,'Z'
    JBE INPUT
    
          
    END:
          
    MAIN ENDP
END MAIN