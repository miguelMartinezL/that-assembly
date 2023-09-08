.section .text
.globl _start
_start:
    movw $0b0000000100000010, %bx       # 16-bit value loaded into %bx
    addb %bh, %bl                       # break the value into 2 pieces, added into %bl
    movb $0, %bh                        # cleared out the high value of %bx
    movq %rbx, %rdi                     # %move %rbx which includes %bx into %rdi to be the status code
    movq $60, %rax                      # set %rax to 60 (the exit syscall number)
    syscall