

  mov dx,offset menu 
  mov ah,09h 
  int 21h  

  mov ah, 13h
  mov bh, 0		; video page number
  mov bl, 11110011b	; attribute
  mov cx,14		; number of characters
  mov dl, 13	; starting column
  mov dh, 2	; starting row
  mov al, 0		; 0-3 indicating mode
  push ds
  pop es		; es:bp pointer to string to be written
  mov bp, offset msg
  int 10h
;----- Clear keyboard buffer
  mov ah,0ch
  mov al,07h
  int 21h
;----- Read SCAN code from keyboard port
  in al,060h
  cmp al,2 
  je game 
  cmp al,3
  je instructions
  jmp exit 
game: 

  jmp exit 
instructions:  
;----- Clear screen
  mov ax,screen_RAM_graphics
  mov es,ax          ; es:di - video memory
  xor di,di
  mov cx,320*200/2
  mov al,0          ; color
  mov ah,0		     ; color
  rep stosw		     ; mov es:[di],ax     add di,2
;----------------------
  mov dx,offset instructions 
  mov ah,09h 
  int 21h 
 

