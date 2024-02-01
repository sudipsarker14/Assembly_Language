org 100h
code segment
assume cs:code, ds: code
   
   mov ax, 1h
   mov bx, 1h
   mov cx, 1h
   mov dx, 0h
   
   sdp:
   cmp cx, 30d
   jg exit
   mul bl
   mul bl
   mul bl 
   add dx, ax
   inc cx
   inc bx
   mov ax, 1h
   jmp sdp
   
   exit:
   hlt

  code ends
end
