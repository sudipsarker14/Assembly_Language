
org 100h
code segment
    assume cs:code, ds:code
   
    mov ax, 0A345h
    mov dx, 2231h
    mov cx, 2h
    
    and ax,dx
    not ax
    neg ax
    div cx
    
    hlt
    code ends
 end
ret



                     ;  and  1011 0011 0100 0101
                      ;      0010 0010 0011 0001
                          ;  0010 0010 0000 0001
                           
                           ; 2201                
                           ; nt 1101 1101 1111 1110
                              ;  DDFE     
                             ; 1101 1101 1111 1110
                            ;  0010 0010 0000 0001
                             ; +                 1
                              ;0010 0010 0000 0010                
                           ;   2202
                           