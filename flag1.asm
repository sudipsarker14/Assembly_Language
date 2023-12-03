org 100h   
code segment
    assume cs:code, ds:code

  mov ax, 01h
  mov bx, FFh
  
  sub ax,bx   
  hlt
  code ends
end
