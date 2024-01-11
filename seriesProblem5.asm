org 100h

code segment
    assume cs:code, ds: code
   
      mov dx, 1h
      ;2^2
      
      mov ax, 1h
      mov bx, 2h
      mov cx, 2d
      
      pw2:
      mul bl
      dec cx
      jnz pw2   
      add dx, ax  
      
     ;3^3
      
      mov ax, 1h
      mov bx, 3h
      mov cx, 3d
      
      pw3:
      mul bl
      dec cx
      jnz pw3   
      add dx, ax
                  
      ;4^4
      
      mov ax, 1h
      mov bx, 4h
      mov cx, 4d
      
      pw4:
      mul bl
      dec cx
      jnz pw4   
      add dx, ax            
      
     
    exit:
    code ends
end
ret
