glabel func_80845EF8
/* 13CE8 80845EF8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 13CEC 80845EFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 13CF0 80845F00 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 13CF4 80845F04 8C8E0680 */  lw      $t6, 0x0680($a0)           ## 00000680
/* 13CF8 80845F08 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 13CFC 80845F0C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 13D00 80845F10 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 13D04 80845F14 AC8F0680 */  sw      $t7, 0x0680($a0)           ## 00000680
/* 13D08 80845F18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 13D0C 80845F1C 24C501B4 */  addiu   $a1, $a2, 0x01B4           ## $a1 = 000001B4
/* 13D10 80845F20 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 13D14 80845F24 0C028EF0 */  jal     func_800A3BC0              
/* 13D18 80845F28 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 13D1C 80845F2C 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 13D20 80845F30 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 13D24 80845F34 0C20D99C */  jal     func_80836670              
/* 13D28 80845F38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 13D2C 80845F3C 8FB8002C */  lw      $t8, 0x002C($sp)           
/* 13D30 80845F40 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 13D34 80845F44 5300002D */  beql    $t8, $zero, .L80845FFC     
/* 13D38 80845F48 8CCB067C */  lw      $t3, 0x067C($a2)           ## 0000067C
/* 13D3C 80845F4C 84D90850 */  lh      $t9, 0x0850($a2)           ## 00000850
/* 13D40 80845F50 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 13D44 80845F54 17200012 */  bne     $t9, $zero, .L80845FA0     
/* 13D48 80845F58 00000000 */  nop
/* 13D4C 80845F5C 84C2042E */  lh      $v0, 0x042E($a2)           ## 0000042E
/* 13D50 80845F60 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 13D54 80845F64 14400003 */  bne     $v0, $zero, .L80845F74     
/* 13D58 80845F68 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 13D5C 80845F6C 10000003 */  beq     $zero, $zero, .L80845F7C   
/* 13D60 80845F70 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80845F74:
/* 13D64 80845F74 A4C8042E */  sh      $t0, 0x042E($a2)           ## 0000042E
/* 13D68 80845F78 84C3042E */  lh      $v1, 0x042E($a2)           ## 0000042E
.L80845F7C:
/* 13D6C 80845F7C 54600030 */  bnel    $v1, $zero, .L80846040     
/* 13D70 80845F80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 13D74 80845F84 C4C401C8 */  lwc1    $f4, 0x01C8($a2)           ## 000001C8
/* 13D78 80845F88 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 13D7C 80845F8C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 13D80 80845F90 A4C90850 */  sh      $t1, 0x0850($a2)           ## 00000850
/* 13D84 80845F94 46062201 */  sub.s   $f8, $f4, $f6              
/* 13D88 80845F98 10000028 */  beq     $zero, $zero, .L8084603C   
/* 13D8C 80845F9C E4C801C4 */  swc1    $f8, 0x01C4($a2)           ## 000001C4
.L80845FA0:
/* 13D90 80845FA0 0C20F03A */  jal     func_8083C0E8              
/* 13D94 80845FA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 13D98 80845FA8 3C0A0001 */  lui     $t2, 0x0001                ## $t2 = 00010000
/* 13D9C 80845FAC 01505021 */  addu    $t2, $t2, $s0              
/* 13DA0 80845FB0 814A1CD0 */  lb      $t2, 0x1CD0($t2)           ## 00011CD0
/* 13DA4 80845FB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 13DA8 80845FB8 34211CBC */  ori     $at, $at, 0x1CBC           ## $at = 00011CBC
/* 13DAC 80845FBC 05400003 */  bltz    $t2, .L80845FCC            
/* 13DB0 80845FC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13DB4 80845FC4 0C025D4D */  jal     func_80097534              
/* 13DB8 80845FC8 02012821 */  addu    $a1, $s0, $at              
.L80845FCC:
/* 13DBC 80845FCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13DC0 80845FD0 0C030129 */  jal     func_800C04A4              
/* 13DC4 80845FD4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 13DC8 80845FD8 0C016C69 */  jal     func_8005B1A4              
/* 13DCC 80845FDC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 13DD0 80845FE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 13DD4 80845FE4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 13DD8 80845FE8 0C0302BD */  jal     func_800C0AF4              
/* 13DDC 80845FEC 24060DFF */  addiu   $a2, $zero, 0x0DFF         ## $a2 = 00000DFF
/* 13DE0 80845FF0 10000013 */  beq     $zero, $zero, .L80846040   
/* 13DE4 80845FF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 13DE8 80845FF8 8CCB067C */  lw      $t3, 0x067C($a2)           ## 0000067C
.L80845FFC:
/* 13DEC 80845FFC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 13DF0 80846000 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 13DF4 80846004 000B6080 */  sll     $t4, $t3,  2               
/* 13DF8 80846008 0582000D */  bltzl   $t4, .L80846040            
/* 13DFC 8084600C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 13E00 80846010 0C02914C */  jal     func_800A4530              
/* 13E04 80846014 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 13E08 80846018 10400008 */  beq     $v0, $zero, .L8084603C     
/* 13E0C 8084601C 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 13E10 80846020 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 13E14 80846024 0330C821 */  addu    $t9, $t9, $s0              
/* 13E18 80846028 8F391D54 */  lw      $t9, 0x1D54($t9)           ## 00011D54
/* 13E1C 8084602C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 13E20 80846030 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 13E24 80846034 0320F809 */  jalr    $ra, $t9                   
/* 13E28 80846038 00000000 */  nop
.L8084603C:
/* 13E2C 8084603C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80846040:
/* 13E30 80846040 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 13E34 80846044 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 13E38 80846048 03E00008 */  jr      $ra                        
/* 13E3C 8084604C 00000000 */  nop


