org 100h
code segment
assume cs:code, ds: code
   
   mov cx, 0d
   mov dx, 0d
   mov bx, 2d 
   sdp:
   mov ax, cx
   div bl
   cmp ah, 0
   jne cunt
   inc cx
   cmp cx, 20d
   je exit
   jne sdp  
   
   cunt:
   inc dx
   inc cx
   cmp cx, 20d
   je exit
   jne sdp
   
   exit:
   hlt 

  code ends
end
