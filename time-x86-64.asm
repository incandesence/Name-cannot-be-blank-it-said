section .data
    nl db 10

section .bss
    buf resb 32

section .text
    global _start

_start:
    ; time(NULL)
    mov rax, 201        ; sys_time
    xor rdi, rdi
    syscall             ; rax = seconds since epoch

    mov rbx, 10
    lea rsi, [buf+31]
    mov byte [rsi], 0

.convert:
    xor rdx, rdx
    div rbx
    add dl, '0'
    dec rsi
    mov [rsi], dl
    test rax, rax
    jnz .convert

    ; write(stdout , rsi , len)
    mov rax, 1          ; sys_write
    mov rdi, 1
    mov rdx, buf+31
    sub rdx, rsi
    syscall

    ; newline
    mov rax, 1
    mov rdi, 1
    mov rsi, nl
    mov rdx, 1
    syscall

    ; exit(0)
    mov rax, 60
    xor rdi, rdi
    syscall
