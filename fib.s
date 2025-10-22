;#
;# Fibonacci sequence calculation
;# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89...
;# Practise with basic math operations in GAS
;# REGISTERS:
;# RAX, RBX, RCX, RDX, RSI, RDI, R8, R9, R10, R11, R12, R13, R14, R15
;# RSP: Stack Pointer (no modificar)
;# RBP: Base Pointer  (no modificar)
;# RIP: Instruction Pointer
;#
;# https://app.x64.halb.it/?appstate=H4sIAJBeyFcAA42UXWvbMBSG_8rBu9nAhCgfJfGu2i4ruRnF6WAXgSLLTirqSJ2kdC6l_33vkb862EVDoug9enw-dCS_Jid51CrJEh0mD7IuJs3FIkmT58p5bU2SiTQpZZBJ9ppUpQ7WXVsTKhPwxERjVt_7FxNkQ8Y-ueqgm72ZHGtbyJrufZAuQIeqwV8rs73Zm6-f6LsurJFKafLV73NlVEVK1upcy4C4EZmmJOJ3ltI8pWVKK0jMZrDNF7CwaR3ZWydV0L6iPzo8UCG9VnSSmNqnykWXnrShm8tdxPPNzXZ3t8l3SIfl5a-U8isernn4xsNuyzMeEDZf4yeQUS4QPBdIKedUcoE8crFs3exuM9oFqR7p1vLmOPpsLJ1sqQ9aSfelpa5AXUnk2kP_pbagtsYHd0Zh1vQwb9_JPpOTTUpTih_gkBlNh8UCizDtjTaKVct1aAFUDKhitAAqy7JT6GbPqn_YkldVz0bV-Wa2BDvr2nv22hxJUnE-HDjp-LhAv0B1j0fFzuKa11BiOTjzOqP5GJhXve4DsyrfBQaLDnQsugVLh7LweiBXGdFqINFTBxVBnpctGMk16h7jc-cdTlqbOIvViIop6h43iQ8IbD3Mav0OFqhrMcI4SLD1cFRtVyM8Q2FjZXzgYOvhqMQIz7N4G3oYBxO2Ho5qNsIL1Ld4lwc3Q0CPrRHzkV6iwnncDsiNKckePnKDN40OFB4qenL26OSJHTTW9R2M291jypYVn-DhcF8M--BfPDzXGVUA96aTMcLd6BxXv64j0r4Eeod4m-FuVXhh3fz4eY_7ZB6Tt7e_IaxjxfkEAAA.
;# excercise from: https://www.youtube.com/watch?v=XPetVqs85-g&list=PL9o2C-4xGfjHl5PF-Xt-yWH2zc4wjJ3AW&index=5
;# 
;# compile with: gcc -nostdlib -static fib.s -o fib
;#

.intel_syntax noprefix
.global _start
.text

_start:
    mov rax, 0      ;# rax: 0

    mov rbx, rax
    inc rbx         ;# rbx: 1

    mov rcx, rbx
    add rcx, rax     ;# rcx: 1

    mov rdx, rcx
    add rdx, rbx     ;# rdx: 2

    ;# using a buffer
    mov r15, rdx
    add r15, rcx
    mov rsi, r15     ;# rsi: 3

    mov rdi, rsi
    add rdi, rdx     ;# rdi: 5

    mov r8, rdi
    add r8, rsi     ;# r8:  8

    mov r9, r8
    add r9, rdi      ;# r9: 13

    mov r10, r9
    add r10, r8      ;# r10: 21

    mov r11, r10
    add r11, r9      ;# r11: 34

    mov r12, r11
    add r12, r10     ;# r12: 55

    mov r13, r12
    add r13, r11     ;# r13: 89

    mov r14, r13
    add r14, r12     ;# r14: 144

    mov r15, r14
    add r15, r13     ;# r15: 233
;# End of Fibonacci sequence calculation

;# Exit the program
exit:
    xor rdi, rdi    ;# Exit code 0
    mov rax, 60     ;# syscall: exit
    syscall
;# The program will exit with code 0
