Offset | Length | Meaning
-------|--------|--------
36 | 1 | Drive number. The value here should be identical to the value returned by BIOS interrupt 0x13, or passed in the DL register; i.e. 0x00 for a floppy disk and 0x80 for hard disks. This number is useless because the media is likely to be moved to another machine and inserted in a drive with a different drive number.
37 | 1 | Flags in Windows NT. Reserved otherwise.
38 | 1 | Signature (must be 0x28 or 0x29).
39 | 4 | VolumeID 'Serial' number. Used for tracking volumes between computers. You can ignore this if you want.
43 | 11 | Volume label string. This field is padded with spaces.
54 | 8 | System identifier string. This field is a string representation of the FAT file system type. It is padded with spaces. The spec says never to trust the contents of this string for any use.
62 | 448 | Boot code.
510 | 2 | 0xAA55 bootable partition signature.
