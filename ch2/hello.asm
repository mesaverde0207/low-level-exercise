global _start

section .data
message: db 'hello, world!', 10

section .text
_start:
    mov rax, 1        ; syscall num. of 'write'
    mov rdi, 1        ; descriptor of stdout
    mov rsi, message
    mov rdx, 14
    syscall

    mov rax, 60       ; syscall num. of 'exit'
    xor rdi, rdi
    syscall
