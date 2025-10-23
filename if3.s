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

;# Try it at: https://app.x64.halb.it/?appstate=H4sIAJBeyFcAA3VUwXLaMBD9la16gRnqMTMlB7fk0JJkcqGHTg6d0mFkWzGiskQlQU0I_96VLdyNM_EBvO_t231aST6xmleyYBmTPtlwlSfN1Uc2YQdhnTSaZdMJK7nnLDsxUUpv7FejvdAeFZ_ew_f7u-XNYqXxdVvBB9ju6x3IR6is4F5Y8BuuIyveoMFYEH_2XHV5iqQp4RwpoWiJniP6Nu1hSU1xIuG5OQgYxebjmECLDjIG1nKSmQtl_sKodxGr5bTaq5yh1VuMc-M3cYzAdTmwT8sRJ5ri2njKPRHqSVgTFRQOiv9UQZiCW3sM7hKJu6zW7qg9b1Cws-JRNohXyuRcwdp5bj3GXjT414VZUAI-tTmA5c0EpukFwk5Yf9TAfA4pPD9DA9cwS8dw6vnwlAacqYXfSF31xJkUub-Fz4XReBTxeF53cIHm23ZpW-PSC6G22xhEI9FkoHCiO4trGwhnnZIIO3NEWFHhFoUd1xv78m3xY6XbHJzDyymQuJR9rAQHvGUT-OmmvwhUogQhJXRE3dEVXOH-xlY3ywXOIfQOHobdrnDmAWjwdLXt8GdQB_ctXOqITjNIuCukhBULS5cOB4niF7d0lr5bsYsArcEcEjw4DteCn4valAK_CHfLh7W3e_2bnc__ABI8fbZaBAAA


.intel_syntax noprefix
.global _start
.text
_start:

    mov rax, 0

    ;# if (x == 0 || x > 50) {
    ;#     do something
    ;# }

    ;# IF <condition>
    cmp rax, 0      ;# if (rax == 0) exit
    je print
    cmp rax, 50     ;# if (rax > 50) exit
    jg print
    jmp exit

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
    s1: .ascii "rax is 0 or greater than 50!"
    s1len = . - s1
