
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
                
      ;  mov ax, 234h
        mov bx, 4466h  
        
        mov ax, 2h
             mul bx    
             
             xchg ax,cx
             mov ax, 234h
             add cx, ax
        
        ;ax+ (bx*2)        
                
; add your code here

ret




