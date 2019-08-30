
proc dir4
     pop [address3]
     cmp [ballx],306
     ja DRFinX
     cmp [bally],180
     ja DRFinY  
	 call BallDR
	 call up 
	 call Left
     jmp FinD4 	 
DRFinX: 
     mov [LastDirection],3
     call BallDL 
	 call up 
	 call right 
	 jmp FinD4
DRFinY:  
	 add [LostBall],1	 
     mov [LastDirection],1 
	 call Clear_Screen
	 call print2 
     mov [ballx],148
     mov [bally],168
	 mov [x],140
	 mov [y],185
FinD4:     
     push [address3]
      ret 
Endp dir4