org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 0h 
   mov bx, 1d
   
   sdp:
   cmp bx, 10d
   jg exit
   add ax, bx
   inc bx
   jmp sdp
   
    exit:
    code ends
end
ret

'using loop

org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 0h 
   mov cx, 10d
   
   sdp:
   add ax, cx
   loop sdp
   
    exit:
    code ends
end
ret
    
