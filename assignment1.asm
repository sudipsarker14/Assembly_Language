org 100h

code segment
    assume cs:code, ds:code
    
    mov ax, 0A345h
    mov dx, 2231h
    mov cx, 2h
    
    sub ax,dx
    xor ax,dx
    xchg dx,cx
    mul cx
    div cx
    hlt
    code ends
end 
ret                       

;sub    1011 0011 0100 0101
;       0010 0010 0011 0001
                     1 0100