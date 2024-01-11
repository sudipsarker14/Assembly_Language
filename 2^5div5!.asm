org 100h 
code segment
    assume cs: code, ds: code
   
   mov ax, 1h
   mov bx, 2h
   mov cx, 1d
   
   pw:
   
   mul bx  
   inc cx
   cmp cx, 5d
   jle pw
   mov cx, ax
   
   mov ax, 1h
   mov bx, 1h
   
   fact:
   mul bx
   inc bx
   cmp bx, 5h
   jle fact
   
   xchg cx, ax
   div cx
   
 exit:
 
 hlt
 ends
 
 ret


'using loop
org 100h 
code segment
    assume cs: code, ds: code
   
   mov ax, 1h
   mov bx, 2h
   mov cx, 5d
   
   pw:
   mul bl  
   loop pw
   mov dx, ax
   
   mov ax, 1h
   mov cx, 5d
   
   fact:
   mul cl
   loop fact 
   mov cx, ax
   mov ax, dx
   mov dx, 0
   
   div cx
   
   exit:
 
 hlt
ends
 
ret
