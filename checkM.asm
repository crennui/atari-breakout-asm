
proc checkM
  pop [address]
  push cx
  push ax
  ;---------------------

  dec [x]
  dec [y]
  mov cx,52
CheckPixel:  
  push cx
  mov cx,[x]
  mov dx,[y]
  mov ah,0Dh
  int 10h
  cmp al,15
  je bool 
  jmp finish2
bool: 
  mov [boolean],1 
finish2:     
  inc [x]
  pop cx 
  loop CheckPixel
  inc [y]
  sub [x],51
  ;--------------------------------
  dec [x]
  dec [y]
  mov cx,9
CheckPixel2:  
  push cx
  mov cx,[x]
  mov dx,[y]
  mov ah,0Dh
  int 10h
  cmp al,15
  je bool2 
  jmp finish3
bool2: 
  mov [boolean],1 
finish3:     
  inc [y]
  pop cx 
  loop CheckPixel2
  inc [x]
  sub [y],8
  ;----------------------------------
  add [x],21
  dec [y]
  mov cx,9
CheckPixel3:  
  push cx
  mov cx,[x]
  mov dx,[y]
  mov bh,1
  mov ah,0Dh
  int 10h
  cmp al,15
  je bool3 
  jmp finish4
bool3: 
  mov [boolean],1 
finish4:     
  inc [y]
  pop cx 
  loop CheckPixel3
  sub [x],21
  sub [y],8
  ;-----------------------------------
  
  cmp [boolean],1
  je ChangeDirection
  jmp finish1 
ChangeDirection: 
  cmp [LastDirection],3
  je jump
  mov [LastDirection],1
  jmp finish1
jump:
  mov [LastDirection],2
finish1:   
  mov [boolean],0 
  pop ax 
  pop cx 
  push [address]
  ret 
EndP checkM 