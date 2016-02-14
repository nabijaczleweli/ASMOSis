BITS 16
CPU 8086


%include "impl/bpb.asm"
%include "impl/ebr.asm"


showchar:
mov ah, 0Eh ; BIOS character display
mov al, 'G'
int 10h
mov al, 'i'
int 10h
mov al, 't'
int 10h
mov al, ' '
int 10h
mov al, 'G'
int 10h
mov al, 'u'
int 10h
mov al, 'd'
int 10h


blerb:
jmp short blerb


%include "impl/ebr_tail.asm"
