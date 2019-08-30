

proc RightCheck
  pop [address6]
  push cx 
  push dx 
  push ax 
  push bx
  add [MalbenX3],21  
  mov cx,8  
RightCheckL:
  push cx
  mov cx,[MalbenX3]
  mov dx,[Malbeny3]
  mov bh,1
  mov ah,0Dh
  int 10h
  cmp al,15
  je HitRight 
  jmp Continue4
HitRight:
   mov [boolean1],4 
Continue4: 
  inc [MalbenY3]   
  pop cx
  loop RightCheckL
  cmp [boolean1],0
  jne hitP3
  jmp ERC
  hitP3:
  inc [points]
ERC:  
  sub [MalbenX3],21 
  sub [MalbenY3],8 
  pop bx
  pop ax
  pop dx 
  pop cx  
  push [address6]
  ret 
  EndP RightCheck 