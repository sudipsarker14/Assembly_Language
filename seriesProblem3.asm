org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 1h
   mov cx, 1d
   
   sdp:      
   cmp cx, 5d
   jge exit
   mul cx
   inc cx
   jmp sdp
     
    exit:
    code ends
end
ret

; using loop

org 100h

code segment
    assume cs:code, ds: code
   
   mov ax, 1h
   mov cx, 5d
   
   sdp:      
   mul cx
   loop sdp
  
     
    exit:
    code ends
end
ret
