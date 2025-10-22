.intel_syntax noprefix
.global _start
.text
_start:

;# mov rax, [reg16]  ;# the value
;# lea rbx, [reg16]  ;# the address itself
;# mov al, [reg16]

;# lea rax, [reg16]
;# add rax, 8
;# mov rbx, [rax]

;# mov al, [mem]
;# lea rbx, [mem]

mov rax, 0x123456
lea rbx, [mem]
mov [mem], rax
mov rcx, [mem]

lea rsp, [mem]

;# rax register
;# rax = 8-byte register
;# eax = 4-byte register (subset or RAX)
;#  ax = 2-byte register (subset of EAX)
;#  ah = 1-byte register (subset of AX)
;#  al = 1-byte register (subset of AX)

;# .byte = 1 byte
;# .word = 2 bytes
;# .long = 4 bytes
;# .quad = 8 bytes

.data
reg16: .quad 0x0123456789abcdef
reg17: .quad 0xbbbbbbbbbbbbbbbb

mem: .byte 0x1, 0x2, 0x3, 0x4
     .word 0x0
     .skip 1024, 0xff

;# 40200 ef
;# 40201 cd
;# 40202 ab
;# 40203 89
;# 40204 67
;# 40205 45
;# 40206 23
;# 40207 01

;# 40208 bb
;# 40209 bb
;# 4020A bb
;# 4020B bb
;# 4020C bb
;# 4020D bb
;# 4020E bb
;# 4020F bb




