org 100h 
code segment
    assume cs: code, ds: code
    
    mov ax, 1h
    mov bx, 10d
    mov cx, 1d
    mov dx, 1h
    
    sdp:
    
    cmp cx, 2
    jg exit
    mul bl
    add ax, 1
    add dx, ax
    inc cx
    jmp sdp
  
 exit:
 
 hlt
 ends
 
 ret
      
