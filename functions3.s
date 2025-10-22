;#
;#  Building a CallStack Manually in x86-64 Assembly
;#  https://app.x64.halb.it/?appstate=H4sIAJBeyFcAA71UwW7bMAz9FU69uoYDpEHmYoe1wDpg2C7DTnUQyJbiqJElQ5JTe0X_fZSlJs62rtsO9cUg-chH8kl6IA2tRUVyIly6pbJM-8WcJGTPjRVakXyWEEYdJfkD4Uw4ba61clw5zLg8K9TlGcBVJyQTqgYK11TKr45WO_hMVYfGAEJBv1ycL-bw3lrelHLwWYUqVCqwklzbQTnag9Kt4RvRo7-WuqQS1tZR49B2vMdfoYIjLxTgh8ySUzCziwRuDbddw9dbbvgqhI-xCtvAxGo3jdj2uQjtf1uv0Xt0zy5WiYcEH2UscCyDfde00BqcChOl1L7lSaHYtwfxXowD-X90-_oj9yLzph_PDtZ3mEe49_bagGECe2AionwQKs04ZAET03z9STM_08xGlhOaeyMcn8A8zxG2EZID47YyosVjkIN1THexr7BTxN-OZKuQ0mqvsAGnoeHW0jpWH9HM73lEryVXK4-PIIyr2m1_meYZiTzf_2hUa83KAVuaqHRclO3Kk7zD4kaCYy30hRWNE9916MJxDXedUZ4cS9ujFJHztcSIdONyXxYjov9ODm_886bGW--fkyc5Dzcwh9TuRAvz7O0igazPfAO4O272HOafrmCDJ9-jcVKEh-w_fJh9kWWhPi6Kt3Av3BaWUA6OW-C0igMFzUNSSm0lvkNBPnpncniw4EOnKofPoX1TYOdkkumXBe8ghfNgh9CTzCdFb4LzpbITFWLhyUHFl7nBq46P782Xb2tnOrUjj48_AHojBwzFBQAA
;#  gcc -nostdlib -static functions2.s -o functions2
;#  objdump -d functions2
;#  gdb functions2

.intel_syntax noprefix
.global _start
.text

_start:

    call print_hello
    jmp exit

exit:
    mov rax, 60     ;# syscall: exit
    xor rdi, rdi    ;# exit code 0
    syscall

print_hello:
    mov rax, 1      ;# syscall: write
    mov rdi, 1      ;# file descriptor: stdout
    lea rsi, [hello]   ;# pointer to message
    lea rdx, [hello_len] ;# message length
    syscall
    call print_goodbye
    ret

print_goodbye:
    mov rax, 1      ;# syscall: write
    mov rdi, 1      ;# file descriptor: stdout
    lea rsi, [goodbye] ;# pointer to message
    lea rdx, [goodbye_len] ;# message length
    syscall
    ret

.data

    hello:      .asciz "Hello, Assembly Functions!\n"
    hello_len = . - hello
    goodbye:    .asciz "Goodbye, Assembly Functions!\n"
    goodbye_len = . - goodbye

