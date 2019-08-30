
proc UP
 pop[address5]
 push cx
 push ax 
 push dx 
 sub [ballx],1 
 sub [bally],1
 mov cx,14
 DELUP:
 push cx 
 mov cx,[ballx]
 mov dx,[bally]
 mov al,0h 
 mov ah,0ch
 int 10h
 inc [ballx]
 pop cx 
 loop DELUP
 sub [ballx],13
 inc [bally]
 pop dx 
 pop ax  
 pop cx 
 push [address5]
ret 
Endp UP