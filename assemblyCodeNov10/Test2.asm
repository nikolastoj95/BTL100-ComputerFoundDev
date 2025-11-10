.data
num1: .word 5
num2: .word 3

.text
main:
    lw $t0, num1        # load value of num1 into $t0
    lw $t1, num2        # load value of num2 into $t1
    add $t2, $t0, $t1   # $t2 = $t0 + $t1

    # print result
    li $v0, 1           # syscall code 1 = print integer
    move $a0, $t2       # copy sum into $a0
    syscall

    # exit program
    li $v0, 10
syscall

    

