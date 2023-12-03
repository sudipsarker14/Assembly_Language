org 100h        

mov ax, 0008h
mov bx, 0003h

div bx
      ; ax = 0002
      ; dx = 0002
mov cx, 1122h
add ax, cx
       
        ;ax = 1124
neg cx     

  ;  cx = 0001 0001 0010 0010
  
  ;  1s comop =  1110 1110 1101 1101
  ;                               +1
   ; 2s comop =  1110 1110 1101 1110
   
    ; cx = EEDE        
or cx,bx

   ; cx     = 1110 1110 1101 1101
   ; bx     = 0000 0000 0000 0011
   ; result = 1110 1110 1101 1111
   ; cx = EEDF

xor ax,bx   

    ;ax = 0001 0001 0010 0100
    ;bx = 0000 0000 0000 0011
    ;     0001 0001 0010 0111
    ; ax = 1127

hlt

end

ret

     



