;#
;# functions with jmp
;# gcc -nostdlib -static functions1.s -o functions1
;#

.intel_syntax noprefix
.global _start
.text

_start:

    lea r15, [return]   ;# load address of return label into r15
    jmp print

return:
    jmp exit

exit:
    mov rax, 60     ;# syscall: exit
    xor rdi, rdi    ;# exit code 0
    syscall

print:
    mov rax, 1      ;# syscall: write
    mov rdi, 1      ;# file descriptor: stdout
    lea rsi, [msg]  ;# pointer to message
    lea rdx, [msglen] ;# message length
    syscall
    jmp r15     ;# jump to return address

.data
    msg:    .asciz "Hello from the print function!\n"
    msglen = . - msg
