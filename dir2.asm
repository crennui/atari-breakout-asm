
proc dir2
     pop [address3]
	 sub [ballx],2 
     cmp [ballx],2
     jb ULFinX
     cmp [bally],2 
     jb ULFinY  
	 add [ballx],2 
	 call BallUL
	 call down 
	 call right 
     jmp FinD2	 
ULFinX: 
     mov [LastDirection],1
	 add [ballx],2 
     call BallUR 
	 call down 
	 call left 
	 jmp FinD2
ULFinY:  
	 mov [LastDirection],3
	 add [ballx],2 
     call BallDL
	 call up
	 call right 
     jmp FinD2 	 
FinD2:
     push [address3]
      ret 
Endp dir2