
    ;prints the malben2 
	proc Print2
	pop [address8]
	push cx
	push bx 
	push ax 
	push dx 
	push di
	push si 
;---------------
    mov dx,0  
    mov cx,40
    mov di,offset xyb 
LM3:push cx  
	mov dl,[byte ptr di]
	mov [byte ptr malben2x],dl
	mov dl,[byte ptr di+1]
	mov [byte ptr malben2y],dl 
	;---------------------
	cmp [byte ptr di+2],0
	jne SkipPrint
	;---------------------
	mov bx,offset malben2
	mov cx,8
LM1: 
    push cx ;-1
    mov cx,20
LM2: 
	push cx ;-2 
	push dx 
   	mov cx,[malben2x]
   	mov dx,[malben2y]
   	mov al,[byte ptr bx]
   	mov ah,0ch
  	int 10h
    inc bx
    inc [malben2x]
	pop dx 
	pop cx ;-2
    loop LM2 
    sub [malben2x],20 	
	pop cx ;-1 
	inc [malben2y]
    loop LM1 
	sub [malben2y],8 
	jmp SkipPrint2	
LM3A:
    jmp LM3 
SkipPrint:
    mov cx,8
LMB1: 
    push cx ;-1
    mov cx,20
LMB2: 
	push cx ;-2 
	push dx 
   	mov cx,[malben2x]
   	mov dx,[malben2y]
   	mov al,0h
   	mov ah,0ch
  	int 10h
    inc bx
    inc [malben2x]
	pop dx 
	pop cx ;-2
    loop LMB2 
    sub [malben2x],20 	
	pop cx ;-1 
	inc [malben2y]
    loop LMB1 
	sub [malben2y],8 
SkipPrint2:
	add di,3 
	pop cx 
	loop LM3A 
;-------------
    pop si 
    pop di 
    pop dx 
	pop ax 
	pop bx 
	pop cx
	push [address8]
    ret 	
	Endp Print2 