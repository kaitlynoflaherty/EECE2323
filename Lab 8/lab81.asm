clr $0			
clr $1			
clr $2			
clr $3
			
addi $0, $0, 0xFE	#-5		
addi $1, $1, 0xFE	#-5
andi $2, $1, 0x80
beq $2, $3, loop	

inv $0, $0
addi $0, $0, 0x01 #2s complement num 1
inv $1, $1 
addi $1,$1, 0x01 #2s complement num 2	
sw $1, 0x08($0)
sw $0, 0x06($0)

loop:			
clr $2	
#counter 		
while: 
beq $2, $1, done
add $3, $3, $0
addi $2, $2, 0x01
beq $3, $3, while
done:
clr $0
sw $3, 0x10($0)
