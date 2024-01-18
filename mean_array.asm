code segment
        assume cs:code,ds:code
        org 100h 
        
        mov ax, 0
        mov cx, 5h
        mov di, 0             
        
        sdp:
        mov bx, arr1[di]
        add ax, bx
        add di,2
        loop sdp  
        mov cx, 5h
        div cx
        mov mean, ax
   
        hlt  
        
        mean dw ?
        arr1 dw 3,6,2,7,8
        code ends
        end
