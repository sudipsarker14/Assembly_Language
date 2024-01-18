code segment
        assume cs:code,ds:code
        org 100h 
        
        mov ax, 0d
        mov cx, 6h
        mov di, 0             
        
        sdp:
        mov bx, arr[di]
        add ax,bx
        add di,2
        loop sdp
        
        mov sum, ax
   
        hlt  
         
         sum dw ?    
        arr dw 3,6,2,7,8,9
        code ends
        end
