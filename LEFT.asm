
proc LEFT
 pop[address5]
 push cx
 push ax 
 push dx
 dec [ballx] 
 dec [bally] 
 mov cx,14
 DELLEFT:
 push cx 
 mov cx,[ballx]
 mov dx,[bally]
 mov al,0h 
 mov ah,0ch
 int 10h
 inc [bally]
 pop cx 
 loop DELLEFT
 sub [bally],13
 inc [ballx]
 pop dx 
 pop ax  
 pop cx 
 push [address5]
ret 
Endp LEFT  