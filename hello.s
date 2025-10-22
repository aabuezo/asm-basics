;#
;# gcc -nostdlib -static hello.s -o hello
;#

.intel_syntax noprefix
.global _start
.text

_start:
	// sys_write
	mov rax, 1		;# write syscall
					;# https://filippo.io/linux-syscall-table/
	mov rdi, 1		;# stdout
	lea rsi, [s1]
	lea rdx, [s1len]
	syscall

	mov rax, 1		;# writ syscall
	mov rdi, 1		;# stdout
	lea rsi, [s2]
	lea rdx, [s2len]
	syscall

	// sys_exit
	mov rax, 60		;# exit syscall
	mov rdi, 69		;# exit code 69
	syscall 

.data
	s1: .asciz "Hello, World!\n"
	s1len = . - s1

	s2: .asciz "You big, beautiful world!\n"
	s2len = . - s2

