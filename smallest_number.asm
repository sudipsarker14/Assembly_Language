 code segment
        assume cs:code,ds:code
        org 100h
        mov cx, 5d   
        mov di,0  
        mov ax, arr[di]           
        
        sdp: 
        mov bx, arr[di]
        cmp bx, ax
        jl replace
        add di, 2
        dec cx
        jnz sdp
        jmp exit
       
        replace:
        mov ax, bx 
        jmp sdp
        
        exit:
        hlt  
        
        arr dw 3,5,6,2,7
        code ends
        end
