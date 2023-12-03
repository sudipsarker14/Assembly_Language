org 100

code segment 
    
    assume cs:code, ds:code
    
   
   mov ax, 40d
   cmp ax, 10d
   
   
   jg greater
   je equal
   jl less
   
   equal:
   
   mov cx,1d                                                                                                                       
   jmp exit    
   
   greater:
   
   mov cx,2d
   jmp exit
   
   less:
   mov cx, 3d
   jmp exit
   
   
   exit:
   
    
    hlt
    code ends

end