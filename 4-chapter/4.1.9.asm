

 global    _start
 
 section   .data
val1 dw 1000h
val2 dw 2000h

arrayB db 10h,20h,30h,40h,50h
arrayW dw 100h,200h,300h
arrayD dd 10000h,20000H

section  .text

_start:
; MOVZX
    mov bx,0A69Bh
    movzx eax,bx
    movzx edx,bl
    movzx cx ,bl

; MOVSX
    mov  bx,0A69Bh
    movsx eax,bx
    movsx edx,bl
    mov bl,7Bh
    movsx cx,bl
; 内存交换
    mov ax,val1
    xchg ax,val2
    mov val1,ax
;直接偏移寻址 (字节数组)
    mov al,arrayB
    mov al,[arrayB + 1]
    mov al,[arrayB + 2]
; 直接偏移寻址(字数组)
    mov ax,arrayW
    mov ax,[arrayW+2]
; 直接偏移寻址(双字数组)
    mov eax,arrayD
    mov eax,[arrayD+4]
    mov eax,[arrayD+TYPE arrayD]



