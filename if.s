.intel_syntax noprefix
.global _start
.text
_start:

    mov rax, 4

    ;# if (rax == 3) print("rax is 3!")

    ;# IF <condition>
    cmp rax, 3
    jne exit

    ;# BODY
print:
    mov rax, 1
    mov rdi, 1
    lea rsi, [s1]
    lea rdx, [s1len]
    syscall
    ;# END IF

exit:
    mov rax, 60
    xor rdi, rdi
    syscall

.data
    s1: .ascii "rax is 3!"
    s1len = . - s1
