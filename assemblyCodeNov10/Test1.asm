.data
message: .asciiz "Hello, world!\n"

.text
main:
    li $v0, 4        # syscall code 4 = print string
    la $a0, message  # load address of message into $a0
    syscall           # execute syscall

    li $v0, 10       # syscall code 10 = exit program
syscall
