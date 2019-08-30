
proc DownCheck
  pop [address6]
  push cx 
  push dx 
  push ax 
  push bx
  add [MalbenY3],9 
  mov cx,20 
DownCheckL:
  push cx
  mov cx,[MalbenX3]
  mov dx,[Malbeny3]
  mov bh,1
  mov ah,0Dh
  int 10h
  cmp al,15
  je HitDown
  jmp Continue2
HitDown :
   mov [boolean1],2 
Continue2: 
  inc [MalbenX3]   
  pop cx
  loop DownCheckL
  cmp [boolean1],0
  jne hitP
  jmp EDC
  hitP:
  inc [points]
EDC:  
  sub [MalbenX3],20 
  sub [MalbenY3],9 
  pop bx
  pop ax
  pop dx 
  pop cx  
  push [address6]
  ret 
  EndP DownCheck 