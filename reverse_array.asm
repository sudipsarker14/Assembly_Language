 code segment
        assume cs:code,ds:code
        org 100h
        mov cx,5d
        mov di, 0
        mov si, 8h            
      
        sdp:
        mov bx, arr1[si]
        mov arr2[di], bx  
        add di, 2
        sub si, 2 
        loop sdp

        hlt 
        
        arr1 dw 0,1,2,3,4
        arr2 dw ?
        code ends
        end
