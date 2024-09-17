org 100h
mov ax,1780h 
mov bx,1000h 
div bx  
 mov bx,ax
 mov cx,dx 
 mov ah,ch
 and ah,0f0h
 shr ah,4
 add ah,30h
 cmp ah,39h
 jle print_high_nibble32
 add ah,7
 print_high_nibble32:
    mov dl,ah
    mov ah,02h
    int 21h
 mov ah,ch
 and ah,0fh
 add ah,30h
 cmp ah,39h
 jle print_low_nibble32
 add ah,7         
 print_low_nibble32:
 mov dl,ah
 mov ah,02h
 int 21h
 
 mov ah,cl
 and ah,0f0h
 shr ah,4
 add ah,30h
 cmp ah,39h
 jle print_low_nibble24 
 add ah,7
 print_low_nibble24:
 mov dl,ah
 mov ah,02h
 int 21h
        
 mov ah,cl
 and ah,0fh
 add ah,30h
 cmp ah,39h
 jle print_high_nibble24:
 add ah,7
 print_high_nibble24:
 mov dl,ah
 mov ah,02h
 int 21h
        
        
 mov ah, bh 
 shr ah, 4 
 add ah, 30h
 cmp ah, 39h 
 jle print_high_nibble
 add ah, 7 
print_high_nibble:
 mov dl, ah
 mov ah, 02h 
 int 21h
 
 mov ah, bh
 and ah, 0fh
 add ah, 30h 
 cmp ah, 39h 
 jle print_low_nibble
 add ah, 7 
print_low_nibble:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 
 mov ah, bl 
 shr ah, 4 
 add ah, 30h 
 cmp ah, 39h 
 jle print_high_nibble2
 add ah, 7 
print_high_nibble2:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 
 mov ah, bl 
 and ah, 0fh 
 add ah, 30h 
 cmp ah, 39h 
 jle print_low_nibble2
 add ah, 7 
print_low_nibble2:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 mov ah,4ch
 int 21h