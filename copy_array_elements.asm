code segment
        assume cs:code,ds:code
        org 100h 
        
        mov cx, 5h
        mov di, 0             
        
        sdp:
        mov bx, arr1[di]
        mov arr2[di], bx
        add di,2
        loop sdp
   
        hlt  
           
        arr1 dw 3,6,2,7,8
        arr2 dw ?
        code ends
        end
