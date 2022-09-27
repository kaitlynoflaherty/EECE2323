
#Ous's
clr $0  #clearing all addresses 
clr $1 
clr $2
clr $3
# initialize address 0x4 with 0x10 and 0x5 wih 0x0F
addi $1, $0, 0x10
addi $2, $0, 0x0F
sw $0, 0x4($1)
sw $0, 0x5($2)

clr $0  #clearing all addresses 
clr $1 
clr $2
clr $3
lw $1, 0x5($0) #addd 0x4 and 0x5 sum into 0x11
lw $2, 0x4($0)
add $3, $1, $2
sw $0, 0x11($3)

clr $0  #clearing all addresses 
clr $1 
clr $2
clr $3
lw $1, 0x5($0) #0x12 store twos complement 0x5 
inv $2, $1
addi $3, $2, 0x01
sw $0, 0x12($3)

clr $0  #clearing all addresses 
clr $1 
clr $2
clr $3
lw $1, 0x4($0) # subtract 0x12 from 0x4 store in 0x13
lw $2, 0x12($0)
inv $1, $1
addi $1, $1, 0x1
add $3, $1, $2
sw $0, 0x13($0)



