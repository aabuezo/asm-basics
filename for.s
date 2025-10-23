.intel_syntax noprefix
.global _start
.text
_start:

    ;# for (int i = 0; i < 10; i++) {
    ;#     BODY
    ;# }

    mov rax, 0      ;# int i = 0

loop:
    cmp rax, 10     ;# i < 10
    je exit
    inc rax         ;# i++
    jmp loop

exit:
    mov rax, 60
    xor rdi, rdi
    syscall

