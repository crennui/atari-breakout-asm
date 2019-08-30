
proc dir
     pop [address2]
     cmp [LastDirection],1
	 je Cdirection1
	 cmp [LastDirection],2
	 je Cdirection2 
	 cmp [LastDirection],3
	 je Cdirection3
	 call dir4 
	 jmp EndD 
Cdirection1:
     call dir1
	 jmp EndD
Cdirection2: 
      call dir2 
	  jmp EndD 
Cdirection3: 
      call dir3
	  jmp EndD
	  	  
EndD: 	 
     push[address2]
     ret 
Endp dir