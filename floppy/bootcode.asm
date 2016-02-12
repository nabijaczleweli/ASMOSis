BITS 16
CPU 8086


%include "impl/bpb.asm"
%include "impl/ebr.asm"


showchar:
mov ah, 0Eh  ; BIOS character display
mov al, 'B'
int 10h

jmp short showchar


%include "impl/ebr_tail.asm"
