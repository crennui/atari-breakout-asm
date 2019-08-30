 
 proc CheckBoolean
;-----------------------------------
 cmp [boolean1],0 
 je jump3
 cmp [boolean1],1
 je LD1
 cmp [boolean1],2 
 je LD2
 cmp [boolean1],3
 je LD3 
 cmp [boolean1],4 
 je LD4
 jmp jump2 
 ;--------------------------------
 LD1:                     ;UP
 cmp [LastDirection],3
 je boo1
 mov [LastDirection],1 
 jmp jump2 
 boo1: 
 mov [LastDirection],2
 jmp  jump2 
 ;---------------------------------
 LD2:                      ;Down
  cmp [LastDirection],1
 je boo2
 mov [LastDirection],3  
 jmp jump2 
 boo2: 
 mov [LastDirection],4
jump3: 
 jmp  jump2 
;----------------------------------
 LD3:                     ;Left 
  cmp [LastDirection],1
 je boo3
 mov [LastDirection],3  
 jmp jump2 
 boo3: 
 mov [LastDirection],2
 jmp  jump2
;---------------------------------
LD4:                      ;Right 
  cmp [LastDirection],2
 je boo4
 mov [LastDirection],4  
 jmp jump2 
 boo4: 
 mov [LastDirection],1
 ;-------------------------------
 jump2: 
 ret 
 EndP CheckBoolean 