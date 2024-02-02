code segment
        assume cs:code,ds:code
        org 100h 
         
        mov ax, 1d 
        mov cx, 7d
        mov di, 0             
        
        sdp:
        mov bx, arr1[di]
        mov dx, arr1[di+2]
        add dx, bx
        add ax, dx
        add di,2
        loop sdp  
   
        hlt  
       
        arr1 dw 0, 1, 1, 2, 3, 5, 8, 13, 21
        code ends
        end
