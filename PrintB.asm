    ;print the Ball 
	proc PrintB
	pop [address]
	push cx
	push bx 
	push ax 
	push dx 
;---------------
	mov bx,offset ball
	mov cx,12
LB1: 
    push cx ;-1
    mov cx,12
LB2: 
	push cx ;-2 
   	mov cx,[ballx]
   	mov dx,[bally]
   	mov al,[byte ptr bx]
   	mov ah,0ch
  	int 10h
    inc bx
    inc [ballx]
	pop cx ;-2
    loop LB2 
    sub [ballx],12
	pop cx ;-1 
	inc [bally]
    loop LB1 
	sub [bally],12 
;-------------
    pop dx 
	pop ax 
	pop bx 
	pop cx
	push [address]
    ret 	
	Endp PrintB