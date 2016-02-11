Offset | Size | Meaning
-------|------|--------
0 | 3 | The first three bytes EB 3C 90 disassemble to JMP SHORT 3C NOP. The reason for this is to jump over the disk format information (the BPB and EBPB). Since the first sector of the disk is loaded into ram at location 0x0000:0x7c00 and executed, without this jump, the processor would attempt to execute data that isn't code.
3 | 8 | OEM identifier. The official FAT Specification from Microsoft says that this field is really meaningless and is ignored by MS FAT Drivers.
11 | 2 | The number of Bytes per sector (remember, all numbers are in the little-endian format).
13 | 1 | Number of sectors per cluster.
14 | 2 | Number of reserved sectors. The boot record sectors are included in this value.
16 | 1 | Number of File Allocation Tables (FAT's) on the storage media. Often this value is 2.
17 | 2 | Number of directory entries (must be set so that the root directory occupies entire sectors).
19 | 2 | The total sectors in the logical volume. If this value is 0, it means there are more than 65535 sectors in the volume, and the actual count is stored in "Large Sectors (bytes 32-35).
21 | 1 | This Byte indicates the media descriptor type.
22 | 2 | Number of sectors per FAT. FAT12/FAT16 only.
24 | 2 | Number of sectors per track.
26 | 2 | Number of heads or sides on the storage media.
28 | 4 | Number of hidden sectors. (i.e. the LBA of the beginning of the partition.)
32 | 4 | Large amount of sector on media. This field is set if there are more than 65535 sectors in the volume.
