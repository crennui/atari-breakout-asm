
proc dir3
     pop [address3]
	 sub [ballx],2
     cmp [ballx],2
     jb DLFinX
     cmp [bally],180
     ja DLFinY  
	 add [ballx],2 
	 call BallDL
	 call up 
	 call right 
     jmp FinD3 	 
DLFinX: 
     mov [LastDirection],4
	 add [ballx],2 
     call BallDR 
	 call up 
	 call left 
	 jmp FinD3
DLFinY:  
	 add [LostBall],1	
     mov [LastDirection],1
	 call Clear_Screen
	 call print2 
     mov [ballx],148
     mov [bally],168	
     mov [x],140
	 mov [y],185	 
FinD3:
     push [address3]
      ret 
Endp dir3