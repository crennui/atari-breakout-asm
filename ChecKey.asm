;; Checking the pressed key 
proc ChecKey
	pop [address]
	pop ax 
	push cx
	push bx
	;----- Checking the pressed key
 
    cmp al, RIGHT_KEY
   	je RightB

    cmp al, LEFT_KEY
    je LeftB
	
	cmp al,1 ;Esc
	je fin
   jmp fin  
RightB: 
    add [x],2
	cmp [x],268
	ja rangeR
	jmp fin 
rangeR:
    sub [x],2
	jmp fin
LeftB:
    sub [x],2 
    cmp [x],2h 
    jb rangeL
	jmp fin 
rangeL: add [x],2 	
fin: 
    pop bx 
    pop cx
	push ax 
	push[address]
	ret 
	Endp ChecKey