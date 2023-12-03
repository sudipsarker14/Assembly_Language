
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
code segment
    assume cs:code, ds:code
    mov ax, 1245h
    mov dx, 2231h
    mov cx, 2h
    
    add dx,ax
    xor ax,ax
    and dx,cx
    mul cx
    div cx
    
    hlt
    code ends

ret




