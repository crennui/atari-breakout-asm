IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your variables here
malben db 0,0,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,00,00
       db 0,0,06,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,06,00,00
       db 0,0,06,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,06,00,00
       db 0,0,06,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,06,00,00
       db 0,0,06,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,06,00,00
	   db 0,0,06,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,06,00,00
	   db 0,0,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,00,00
	   ;------------------------------------------------------------------------------------------------------------------------------------------
ball   db 00,00,00,00,15,15,15,15,00,00,00,00
	   db 00,00,15,15,15,15,15,15,15,15,00,00
	   db 00,15,15,15,15,15,15,15,15,15,15,00
	   db 00,15,15,15,15,15,15,15,15,15,15,00
	   db 15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15
	   db 15,15,15,15,15,15,15,15,15,15,15,15
	   db 00,15,15,15,15,15,15,15,15,15,15,00
	   db 00,15,15,15,15,15,15,15,15,15,15,00
	   db 00,00,15,15,15,15,15,15,15,15,00,00
	   db 00,00,00,00,15,15,15,15,00,00,00,00

malben2 db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00 	   
        db 00,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,00 
	    db 00,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,00  
	    db 00,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,00 
	    db 00,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,00  
	    db 00,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,00  
	    db 00,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,04,00 
	    db 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00 
		
	   
xyb db 70,04,0,90,04,0,110,04,0,130,04,0,150,04,0,170,04,0,190,04,0,210,04,0,230,04,0,250,04,0
    db 70,13,0,90,13,0,110,13,0,130,13,0,150,13,0,170,13,0,190,13,0,210,13,0,230,13,0,250,13,0
    db 70,22,0,90,22,0,110,22,0,130,22,0,150,22,0,170,22,0,190,22,0,210,22,0,230,22,0,250,22,0   
    db 70,31,0,90,31,0,110,31,0,130,31,0,150,31,0,170,31,0,190,31,0,210,31,0,230,31,0,250,31,0   	 
ballx dw 148
bally dw 168
MalbenX3 dw (?)
MalbenY3 dw (?)
xc dw (?) 
yc dw (?)
BooleanCheck dw 0 
BooleanCheck2 dw 0
points dw 0 
x dw  140
y dw 185
boolean dw 0 
boolean1 dw 0 
malben2x dw (?)
malben2y dw (?)
address dw (?)
address2 dw (?)
address3 dw (?)
address4 dw (?)
address5 dw (?)
address6 dw (?)
address7 dw (?)
address8 dw (?)
LostBall dw 0 
LastDirection dw 1
xd dw 0
yd dw 150
RIGHT_KEY equ 77
LEFT_KEY  equ 75
screen_RAM_graphics equ 0A000h
menu db 5 dup (0ah,13)
     db 15 dup (" ")  
	 db "1. play",0ah
	 db 2 dup (0ah,13)
	 db 15 dup (" ") 
	 db "2. instructions",0ah
	 db 2 dup (0ah,13)
	 db 15 dup (" ") 
     db "3. Exit",'$'
msg db  "Atari",0ah, "Breakout"

instructions db "Welcome to Atari Breakout, the rules are ",0ah
             db "simple use the right and left arrows to",0ah 
			 db " move the yellow rectangle." 
			 db "Your goal is to destroy all the red ",0ah
			 db "rectangles without letting the ball ",0ah
			 db "fall under the yellow rectangle's",0ah
			 db "height.",0ah
			 db "You got 3 lives use them wisely",0ah 
			 db 2 dup (0ah,13)
			 db 5 dup (" ")
			 db "press any key to go back ",0ah
			 db 5 dup (" ")
			 db "to the main menu",'$'
scoreV db 2 dup (0ah,13)
       db 2 dup (" ") 	      
       db "press any key to go to the main menu",0ah
	   db 10 dup (" ") 
       db "or press esc to exit.",0ah
	   db 2 dup (0ah,13)
       db 10 dup (" ") 
       db "your score is...",'$' 	  
			 
; --------------------------
CODESEG
start:
	mov ax, @data
	mov ds, ax
; --------------------------
; Your code here
  mov ax,013h               ;graph mode
  int 10h
;-----------------------------  
MainMenu:
  mov ax,screen_RAM_graphics
  mov es,ax          ; es:di - video memory
  xor di,di
  mov cx,320*200/2
  mov al,0          ; color
  mov ah,0		     ; color
  rep stosw		     ; mov es:[di],ax     add di,2
   mov ax,03
  int 10 
  mov ax,013h               ;graph mode
  int 10h
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
  je instruc
  jmp exit 
game:  
 mov ax,screen_RAM_graphics
  mov es,ax          ; es:di - video memory
  xor di,di
  mov cx,320*200/2
  mov al,0          ; color
  mov ah,0		     ; color
  rep stosw		     ; mov es:[di],ax     add di,2
   call Print2
   call printB
   call Print              ;Print malben  for the first screen 
MainLoop:
  mov ah,0Bh  ;check if a button is pressed 
  int 21h 
  cmp al,0h
  je jumpclick
  ;----- Read SCAN code from keyboard port
  in al,060h
  push ax 
  call ChecKey
  pop ax 
  cmp al,1 
  je exit2
jumpclick:
  cmp [LostBall],3
  je score
  cmp [points],40
  je score
  call print  
  call dir  
  call PrintB
  call checkM
  call ballC2
  jmp MainLoop  
;------------------------------------
MainMenu2:
  jmp MainMenu
instruc: 
  mov ax,screen_RAM_graphics
  mov es,ax          ; es:di - video memory
  xor di,di
  mov cx,320*200/2
  mov al,0          ; color
  mov ah,0		     ; color
  rep stosw		     ; mov es:[di],ax     add di,2
  
  mov ax,03
  int 10 
  mov ax,013h               ;graph mode
  int 10h
  mov dx,offset instructions 
  mov ah,09h 
  int 21h 
 ;----- Clear keyboard buffer
  mov ah,0ch
  mov al,07h
  int 21h
  in al,060h 
  cmp al,1 
  jne MainMenu2
exit2:  
  jmp exit 
score: 
  mov ax,screen_RAM_graphics
  mov es,ax          ; es:di - video memory
  xor di,di
  mov cx,320*200/2
  mov al,0          ; color
  mov ah,0		     ; color
  rep stosw		     ; mov es:[di],ax     add di,2
  mov ax,03
  int 10 
  mov ax,013h               ;graph mode
  int 10h
  mov dx,offset scoreV
  mov ah,09h 
  int 21h
  cmp [points],10 
  jae nums
  mov dx,[points]
  add dl,30h 
  mov ah,2 
  int 21 
nums:
  xor dx,dx 
  mov ax,[points]
  mov bx,10 
  div bx 
  push dx 
  mov dx ,ax 
  add dx,30h 
  mov ah,2h 
  int 21h 
  pop dx 
  add dx,30h 
  mov ah,2 
  int 21h    
  call reset
  ;----- Clear keyboard buffer
  mov ah,0ch
  mov al,07h
  int 21h
  in al,060h 
  cmp al,1h
  je exit 
  jmp MainMenu2
; --------------------------	
exit:
  mov ax,03h 
  int 10h
  mov ax, 4c00h
  int 21h
  proc Clear_Screen
 push es
 push cx
 push di
 push ax
 mov ax,13h
 int 10h
 mov ax,screen_RAM_graphics
 mov es,ax          ; es:di - video memory
 xor di,di
 mov cx,320*200/2
 xor ax,ax ;color   
 rep stosw  ; mov es:[di],ax     add di,2
 pop ax
 pop di
 pop cx
 pop es
 ret
 endp Clear_Screen
 
include "Print2.asm" 
include "UP.asm"
include "DOWN.asm"
include "LEFT.asm"
include "RIGHT.asm"
include "Print.asm"
include "ChecKey.asm"
include "PrintB.asm"
include "BallUR.asm"
include "BallUL.asm"
include "BallDR.asm"
include "BallDL.asm"
include "dir.asm"
include "dir1.asm"
include "dir2.asm"
include "dir3.asm"
include "dir4.asm"
include "checkM.asm"
include "BallC2.asm"
include "DoCheck.asm"
include "UpCheck.asm"
include "LeCheck.asm"
include "RiCheck.asm"
include "ChBoo.asm"
include "Reset.asm"
END start

