.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80AD8E10

.incbin "baserom/ovl_En_Po_Relay", 0x16D0, 0x00000180
