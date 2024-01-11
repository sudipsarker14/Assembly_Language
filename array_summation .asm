code segment
    assume cs:code, ds:code

    org 100h                    

    mov di, 0
    mov cx, 6h
    
    sdp:
    mov bx, [arr1+di]
    add ax, bx
    add di, 2
    dec cx
    cmp cx, 0
    jnz sdp
    
    mov sum, ax

    hlt

    sum dw ?
    arr1 dw 5, 7, 8, 9, 3, 8
    
    code ends
ends
