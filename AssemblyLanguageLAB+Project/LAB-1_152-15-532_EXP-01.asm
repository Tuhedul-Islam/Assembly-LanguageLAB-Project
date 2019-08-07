.STACK 100h      
.MODEL SMALL
.DATA            

.CODE
MAIN PROC        

MOV AH,2
MOV DL,'A'
INT 21H    
      

MAIN ENDP        

END MAIN
