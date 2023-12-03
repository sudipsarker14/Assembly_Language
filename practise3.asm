

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

