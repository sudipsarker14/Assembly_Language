org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 1h 
   mov bx, 2h
   mov cx, 1d
   
   sdp:      
   cmp cx, 7d
   jge exit
   mul bx
   inc cx
   jmp sdp
     
    exit:
    code ends
end
ret
