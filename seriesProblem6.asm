org 100h 
code segment
    assume cs: code, ds: code
    
    mov ax, 1h
    mov bx, 10d
    mov cx, 2d
    mov dx, 1h
    
    sdp:
    
    cmp ax, 1234d
    je exit
    mul bl
    add ax, cx
    add dx, ax
    inc cx
    jmp sdp 
  
 exit:
 
 hlt
 ends
 ret
 

'using loop
org 100h 
code segment
    assume cs: code, ds: code
    
    mov ax, 1h
    mov bx, 10d
    mov bp, 2d
    mov cx, 3d
    mov dx, 1h
    
    sdp:
    
    mul bl
    add ax, bp
    add dx, ax
    inc bp
    loop sdp
     
  
 exit:
 
 hlt
 ends
 
 ret
