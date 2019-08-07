.STACK 100H
.MODEL SMALL
.DATA
MSG DB "NUMBER$"
MSG1 DB "CHARACTER$"
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
    
    
    CMP BL,39H
    JA CHARACTER    ;JG
    CMP BL,30H
    JB CHARACTER    ;JL
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    JMP END:
    
    CHARACTER:
      MOV AH,9
      LEA DX,MSG1
      INT 21H
      JMP END:
    
    
    END:
    MAIN ENDP
END MAIN