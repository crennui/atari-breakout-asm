;input x,y 
;output in boolean1 
proc UpCheck
  pop [address6]
  dec [MalbenY3]
  push cx 
  push dx 
  push ax
  push bx  
  mov cx,20 
UpCheckL:
  push cx
  mov cx,[MalbenX3]
  mov dx,[Malbeny3]
  mov bh,1
  mov ah,0Dh
  int 10h
  cmp al,15h 
  je HitUp
  jmp Continue1
HitUp:
   mov [Boolean1],1
Continue1: 
  inc [MalbenX3]  
  pop cx
  loop UpCheckL
  cmp [boolean1],0
  jne hitP4
  jmp EUC
  hitP4:
  inc [points]
EUC:  
  sub [MalbenX3],20 
  inc [MalbenY3]
  pop bx
  pop ax
  pop dx 
  pop cx 
  push [address6]
  ret 
  EndP UpCheck