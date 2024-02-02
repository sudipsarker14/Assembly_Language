code segment
assume cs:code, ds: code
   org 100h
   mov cx, 9d
   mov di, 0
   
   sdp:
   mov bx, arr1[di]
   cmp bx, 5
   je cunt
   add di, 2
   dec cx
   cmp cx, 0
   jnz sdp
   jz exit
   
   count:
   inc ax
   add di, 2
   jmp sdp
   
   exit:
   mov arr2, num
   hlt 
   arr1 dw 1, 2, 5, 6, 7, 5, 3, 2, 5
   num dw ?

  code ends
end
