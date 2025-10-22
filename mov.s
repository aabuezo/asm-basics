.intel_syntax noprefix
.global _start
.text
_start:
    # Load immediate values into registers
    mov rax, 10        # Move the value 10 into register rax
    mov rbx, 20        # Move the value 20 into register rbx

    # Add the values in rax and rbx, store result in rax
    add rax, rbx       # rax now contains 30

    /* this is a comment */
    
    # Exit the program
    mov rdi, 0         # Exit code 0
    mov rax, 60        # syscall: exit
    syscall
    # The program will exit with code 0

