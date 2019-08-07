.STACK 100H
.MODEL SMALL
.DATA
.CODE
MAIN PROC
    XOR CX,CX
    MOV AH,1
    INT 21H
    
    WHILE:
        CMP AL,0DH
        JE REVERSE
        PUSH AX
        INC CX
        INT 21H
        JMP WHILE 
      
        ;END_WHILE:
        
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H    
        
    ;JCXZ EXIT
    
    ;DEC CX
        
    REVERSE:
    
    MOV AH,2
    POP DX
    INT 21H
    LOOP REVERSE
    
    ;EXIT:
    MAIN ENDP
END MAIN