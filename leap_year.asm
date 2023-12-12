org 100h

code segment
    assume cs:code:ds:code
   
    mov ax, 2024d
    mov bx, 400d 
    div bx
    cmp dx, 0
    
    je Leap_year
    jne check_2
    
    check_2:
     mov dx, 0d
     mov ax, 2024d
     mov bx, 4d   
     div bx
     cmp dx, 0d
     je check_3
     jne not_leap_year
     
     check_3:
     mov dx, 0d
     mov ax, 2024d
     mov bx, 100d
     div bx
     cmp dx, 0
     je not_leap_year
     jne leap_year
     
     leap_year:
     mov cx, 1d
     jmp exit
     
     not_leap_year:
     mov cx, 2d
     jmp exit
     
     exit:
    
    code ends
end
