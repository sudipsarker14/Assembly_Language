org 100h
code segment
    assume cs:code, ds:code
    
    mov ax, 1011001011110101b
    mov cx,16d  
    mov dx,0h
    
    check:
    
    cmp cx,0
    je exit 
    dec cx
    shr ax,1
    jnc count
    jc check
    
    count:
    inc dx
    jmp check
    
    exit:
    hlt 
    code ends
end   
