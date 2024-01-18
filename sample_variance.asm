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
        
        mov cx, 5h 
        mov di, 0
        
        sdp2:
     
        mov bx, arr1[di]
        sub bx, mean
        mov arr2[di], bx  
        add di, 2
        loop sdp2  
        
       mov cx,5
       mov di,0
       
       sdp3:
       mov ax,arr2[di]
        mul ax
        mov arr3[di],ax
       add di,2
       loop sdp3
       
       mov cx, 5
       mov di, 0
       mov ax, 0
       
       sdp4:
       mov bx, arr3[di]
       add ax, bx
       add di, 2
       loop sdp4
       
       mov sum, ax
       mov cx, 5
       div cx
       mov variance, ax 
        
        hlt  
        
        sum dw ?
        mean dw ?
        variance dw ?
        arr1 dw 3,6,2,7,8
        arr2 dw 0,0,0,0,0
        arr3 dw 0,0,0,0,0 
        
   code ends
end
