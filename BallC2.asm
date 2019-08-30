
proc BallC2
  pop [address]
  push cx
  push bx
  push dx
  push si 
;---------------------------
  mov dx,0 
  mov bx,offset xyb 
  mov cx,40 
BigLoop2:
  push cx
  cmp [byte ptr bx+2],0
  jne nextC2A
;------------------------ 
  mov dl,[byte ptr bx]                          ;check up hit 
  mov [byte ptr MalbenX3],dl
  mov dl,[byte ptr bx+1]
  mov [byte ptr MalbenY3],dl 
  call upCheck 
  cmp [boolean1],1 
  je yes1
  jmp ch2 
  yes1:
  mov [byte ptr bx+2],1 
  call print2  
  jmp nextC2
;-----------------------
ch2: 
  mov dl,[byte ptr bx]                          ;check down hit 
  mov [byte ptr MalbenX3],dl
  mov dl,[byte ptr bx+1]
  mov [byte ptr MalbenY3],dl  
  call DownCheck 
  cmp [boolean1],2 
  je yes2
  jmp ch3 
  yes2:
  mov [byte ptr bx+2],2 
  call print2 
 nextC2A:  
  jmp nextC2
jBigLoop2:
  jmp BigLoop2
;----------------------
ch3: 
  mov dl,[byte ptr bx]                          ;check left hit 
  mov [byte ptr MalbenX3],dl
  mov dl,[byte ptr bx+1]
  mov [byte ptr MalbenY3],dl 
  call LeftCheck 
  cmp [boolean1],3 
  je yes3
  jmp ch4 
yes3:
  mov [byte ptr bx+2],3 
  call print2 
  jmp nextC2
;---------------------
ch4:
  mov dl,[byte ptr bx]                          ;check Right hit 
  mov [byte ptr MalbenX3],dl
  mov dl,[byte ptr bx+1]
  mov [byte ptr MalbenY3],dl  
  call RightCheck 
  cmp [boolean1],4
  je yes4 
  jmp nextC2  
yes4:
  mov [byte ptr bx+2],4  
  call print2 
;---------------------  
nextC2:  
  call CheckBoolean
  mov [boolean1],0 
  add bx,3 
  pop cx 
  loop jBigLoop2
;---------------------------
  pop si 
  pop dx
  pop bx 
  pop cx 
  push [address]  
  ret 
EndP BallC2 