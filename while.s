.intel_syntax noprefix
.global _start
.text
_start:

    mov rax, 0

    ;# while (rax < 3) {
    ;#     rax++;
    ;# }

loop:
    cmp rax, 3
    je exit
    inc rax

    jmp loop

exit:
    mov rax, 60
    xor rdi, rdi
    syscall

