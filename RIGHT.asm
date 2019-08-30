
proc RIGHT
 pop[address5]
 push cx
 push ax 
 push dx 
 add [ballx],12
 sub [bally],1 
 mov cx,14
 DELRIGHT:
 push cx 
 mov cx,[ballx]
 mov dx,[bally]
 mov al,0h 
 mov ah,0ch
 int 10h
 inc [bally]
 pop cx 
 loop DELRIGHT
 sub [bally],13
 sub [ballx],12
 pop dx 
 pop ax  
 pop cx 
 push [address5]
ret 
Endp RIGHT  