;# SIGNED
;# jg - jump if greater than
;# jge - jump if greater than or equal
;# jl - jump if less than
;# jle - jump if less than or equal

;# UNSIGNED
;# ja - jump if above (greater)
;# jae - jump if above (greater) or equal
;# jb - jump if below (less than)
;# jbe - jump if below (less than) or equal

;# For both SIGNED and UNSIGNED
;# je - jump if equal
;# jne - jump if not equal
;# jz - jump if zero
;# jnz - jump if not zero
;# jc - jump if carry

.intel_syntax noprefix
.global _start
.text
_start:

    mov rax, 4

    ;# if (x > 1 && x < 5) {
    ;#     do something
    ;# }

    ;# IF <condition>
    cmp rax, 1      ;# if (rax <= 1) exit
    jle exit
    cmp rax, 5      ;# if (rax >= 5) exit
    jge exit

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
    s1: .ascii "rax is between 1 and 5!"
    s1len = . - s1
