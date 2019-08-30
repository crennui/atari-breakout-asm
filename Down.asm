
proc DOWN
  pop[address5]
 push cx
 push ax 
 push dx 
 mov cx,14
 sub [ballx],1
 add [bally],12 
DELDOWN:
 push cx 
 mov cx,[ballx]
 mov dx,[bally]
 mov al,0h 
 mov ah,0ch
 int 10h
 inc [ballx]
 pop cx 
 loop DELDOWN
 sub [ballx],13
 sub [bally],12 
 pop dx  
 pop ax  
 pop cx 
 push [address5]
ret 
Endp DOWN