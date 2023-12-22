org 100h
code segment
    assume cs:code, ds:code
    
    mov bx, 1h
    mov cx, 0d 
   
    square:
    
    cmp bx, 20d
    jg exit    
    mov ax, bx
    mul ax 
    add cx, ax
    inc bx
   
    jmp square
    
    exit:
    hlt 
    code ends
end   
