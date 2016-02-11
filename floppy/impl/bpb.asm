jmp SHORT 3Ch ; jump over BPB and EBR
nop

db 'ASMOSis ' ; 8-byte OEM identifier
dw 0200h      ; bytes per sector
db 01h        ; sectors per cluster
dw 0001h      ; # of reserved sectors
db 02h        ; # of FATs
dw 00E0h      ; # of directory entries
dw 0B40h      ; Total # of sectors
db 0F0h       ; Media type
dw 0009h      ; Sectors per FAT
dw 0012h      ; Sectors per track
dw 0002h      ; # of heads/sides
dd 00000000h  ; # of hidden sectors
dd 00000000h  ; # of sectors if more than 65535
