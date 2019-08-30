    ;prints the malben 
	proc Print
	pop [address]
	push cx
	push bx 
	push ax 
	push dx 
;---------------
	mov bx,offset malben
	mov cx,7
L1: 
    push cx ;-1
    mov cx,50
L2: 
	push cx ;-2 
   	mov cx,[x]
   	mov dx,[y]
   	mov al,[byte ptr bx]
   	mov ah,0ch
  	int 10h
    inc bx
    inc [x]
	pop cx ;-2
    loop L2 
    sub [x],50	
	pop cx ;-1 
	inc [y]
    loop L1 
	sub [y],7
;-------------
    pop dx 
	pop ax 
	pop bx 
	pop cx
	push [address]
    ret 	
	Endp Print 