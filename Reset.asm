
proc reset
  push bx 
  push cx
  mov cx,40
  mov bx,offset xyb   
reset1:
  mov [byte ptr bx+2],0
  add bx,3   
  loop reset1
  mov [ballx],148
  mov [bally],168
  mov [BooleanCheck],0 
  mov [BooleanCheck2],0
  mov [points],0 
  mov [x],140
  mov [y],185
  mov [boolean],0 
  mov [boolean1],0 
  mov [LostBall],0 
  mov [LastDirection],1
  mov [xd],0
  mov [yd],150
  pop cx 
  pop bx 
  ret 
Endp reset 