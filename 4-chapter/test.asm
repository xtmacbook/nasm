 global    _start

          section   .text
_start:   mov       ax, 1                  ; system call for write
          mov       di, 1                  ; file handle 1 is stdout
          mov       si, message            ; address of string to output
          mov       dx, 13                 ; number of bytes
          syscall                           ; invoke operating system to do the write
          mov       ax, 60                 ; system call for exit
          xor       di, di                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data
message:  db        "Hello, World", 10      ; note the newline at the end