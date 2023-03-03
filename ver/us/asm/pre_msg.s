.include "macro.inc"

.section .text

.4byte 0x00000000
.4byte 0xFFFFFFFF
.skip 0x2030000 - 0x202f210 - 8, 0xFF

