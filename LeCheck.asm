
proc LeftCheck
  pop [address6]
  push cx 
  push dx 
  push ax 
  push bx
  dec [MalbenX3] 
  mov cx,8  
LeftCheckL:
  push cx
  mov cx,[MalbenX3]
  mov dx,[Malbeny3]
  mov bh,1
  mov ah,0Dh
  int 10h
  cmp al,15
  je HitLeft 
  jmp Continue3
HitLeft:
   mov [boolean1],3
Continue3: 
  inc [MalbenY3]   
  pop cx
  loop LeftCheckL
  cmp [boolean1],0
  jne hitP2
  jmp ELC
  hitP2:
  inc [points]
ELC:  
  pop bx
  pop ax
  pop dx 
  pop cx 
  push [address6]
  ret 
  EndP LeftCheck 