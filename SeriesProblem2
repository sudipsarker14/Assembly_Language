org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 0h
   mov cx, 2d
   
   sdp:      
   cmp cx, 10d
   je exit
   add ax, cx
   add cx, 2
   jmp sdp
     
    exit:
    code ends
end
ret
