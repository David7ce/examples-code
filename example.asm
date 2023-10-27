section .data
    message db "Madre mía, cómo me gusta la asignatura de ENTORNOS DE DESARROLLO 😊", 0

section .text
    global _start

_start:
    ; Write the message to stdout
    mov rax, 1            ; syscall number for sys_write
    mov rdi, 1            ; file descriptor 1 (stdout)
    mov rsi, message      ; pointer to the message
    mov rdx, 63           ; message length
    syscall

    ; Exit
    mov rax, 60           ; syscall number for sys_exit
    xor rdi, rdi          ; exit status
    syscall
