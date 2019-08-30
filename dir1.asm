proc dir1
     pop [address3]
     cmp [ballx],306
     ja URFinX
     cmp [bally],2 
     jb URFinY  
	 call BallUR
     call down
	 call Left 
     jmp FinD1 	 
URFinX: 
     mov [LastDirection],2
     call BallUL 
	 call down 
	 call right 
	 jmp FinD1
URFinY:  
	 mov [LastDirection],4
     call BallDR
	 call up 
	 call left 
     jmp FinD1 	 
FinD1:
     push [address3]
      ret 
Endp dir1