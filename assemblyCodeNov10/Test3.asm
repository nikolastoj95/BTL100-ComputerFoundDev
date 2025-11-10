# make a code to let user put input, and it shows that input
.data
prompt: .asciiz "Please Enter an integer:"
output: .asciiz "/nYou typed the number"

.text
main:
    #Prompt for the integer to Enter
    li $v0, 4
    la $a0, prompt
    syscall

    #Read the integer and save it in $s0
    li $v0, 5 #read int 
       syscall
    move $s0, $v0 #save the int entered to $s0 from $v0

    # Output the text
     li $v0, 4
     la $a0, output #output is var name which is output
     syscall

     # Output the number
      li $v0, 1
      move $a0, $s0 # move $s0 to $a0
      syscall

     #Exit the program
     li $v0, 10
     syscall

