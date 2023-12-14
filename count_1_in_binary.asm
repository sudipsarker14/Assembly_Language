org 100h

code segment
    assume cs: code, ds:code
     
     mov al, 10100101b
     mov bx, 8d
     mov cx, 0d
     
     check:
     cmp bx, 0
     je exit
     dec bx
     shr ax, 1
     jc count
     jnc check
     
     count:
     inc cx
     jmp check
     
     exit:
     
    code ends
ends

ret
