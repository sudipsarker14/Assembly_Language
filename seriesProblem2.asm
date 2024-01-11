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

'useing loop
org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 0h 
   mov bx, 2h
   mov cx, 30d
   
   sdp:      
   add ax, bx 
   add bx, 2
   loop sdp
     
    exit:
    code ends
end
ret
