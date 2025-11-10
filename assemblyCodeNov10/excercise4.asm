.data
prompt1: .asciiz "Enter the First Integer:"
prompt2: .asciiz "/nEnter the Second Integer:"
output1: .asciiz "You Typed 1st  Number: "
output2: .asciiz "/nYou Typed 2nd Number: "
prompt3: .asciiz "/nThe sum of the two numbers: "

.text
main:
    # Prompt user for the int to Enter
    # 1st int
    li $v0,4
    la $a0, prompt1
    syscall

    #Now have to read these entered ints
    # read 1st int
    li $v0, 5
    syscall
    move $t0, $v0 #storeing result to $t0

    #2nd int
    li $v0,4
    la $a0, prompt2
    syscall

    #read 2nd int
    li $v0, 5
    syscall
    move $t1, $v0 # second num store in $t1 from $v0

    #Ouput the text 
    #1st num
    li $v0,4
    la $a0 , output1
    syscall

    # Ouput the numbers
    # num1
    li $v0,1
    move $a0, $t0 # moving $t0 first num to $a0
    syscall

    #Ouput the text 
    #1st num
    li $v0,4
    la $a0 , output2
    syscall

    # Ouput the numbers
    #num2
    li $v0, 1
    move $a0, $t1
    syscall

    # show sum of the 2 numbers
    li $v0, 

    # exit 
    li $v0, 10
    syscall
