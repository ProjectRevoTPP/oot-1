glabel func_80841EE4
/* 0FCD4 80841EE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0FCD8 80841EE8 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 0FCDC 80841EEC AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0FCE0 80841EF0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0FCE4 80841EF4 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 0FCE8 80841EF8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0FCEC 80841EFC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0FCF0 80841F00 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 0FCF4 80841F04 C4840864 */  lwc1    $f4, 0x0864($a0)           ## 00000864
/* 0FCF8 80841F08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0FCFC 80841F0C 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FD00 80841F10 4616203C */  c.lt.s  $f4, $f22                  
/* 0FD04 80841F14 00000000 */  nop
/* 0FD08 80841F18 4500002A */  bc1f    .L80841FC4                 
/* 0FD0C 80841F1C 00000000 */  nop
/* 0FD10 80841F20 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0FD14 80841F24 8C42FA90 */  lw      $v0, -0x0570($v0)          ## 8015FA90
/* 0FD18 80841F28 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0FD1C 80841F2C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 0FD20 80841F30 844F005A */  lh      $t7, 0x005A($v0)           ## 8016005A
/* 0FD24 80841F34 844E0110 */  lh      $t6, 0x0110($v0)           ## 80160110
/* 0FD28 80841F38 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0FD2C 80841F3C 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 0FD30 80841F40 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0FD34 80841F44 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0FD38 80841F48 468084A0 */  cvt.s.w $f18, $f16                 
/* 0FD3C 80841F4C 46803220 */  cvt.s.w $f8, $f6                   
/* 0FD40 80841F50 460C9103 */  div.s   $f4, $f18, $f12            
/* 0FD44 80841F54 460A4502 */  mul.s   $f20, $f8, $f10            
/* 0FD48 80841F58 44052000 */  mfc1    $a1, $f4                   
/* 0FD4C 80841F5C 0C2100A7 */  jal     func_8084029C              
/* 0FD50 80841F60 00000000 */  nop
/* 0FD54 80841F64 9218015B */  lbu     $t8, 0x015B($s0)           ## 0000015B
/* 0FD58 80841F68 3C068085 */  lui     $a2, %hi(D_8085392C)       ## $a2 = 80850000
/* 0FD5C 80841F6C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0FD60 80841F70 0018C880 */  sll     $t9, $t8,  2               
/* 0FD64 80841F74 00D93021 */  addu    $a2, $a2, $t9              
/* 0FD68 80841F78 8CC6392C */  lw      $a2, %lo(D_8085392C)($a2)  
/* 0FD6C 80841F7C 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0FD70 80841F80 0C0290A8 */  jal     func_800A42A0              
/* 0FD74 80841F84 8E070868 */  lw      $a3, 0x0868($s0)           ## 00000868
/* 0FD78 80841F88 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0FD7C 80841F8C 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 0FD80 80841F90 C6060864 */  lwc1    $f6, 0x0864($s0)           ## 00000864
/* 0FD84 80841F94 46144282 */  mul.s   $f10, $f8, $f20            
/* 0FD88 80841F98 460A3400 */  add.s   $f16, $f6, $f10            
/* 0FD8C 80841F9C E6100864 */  swc1    $f16, 0x0864($s0)          ## 00000864
/* 0FD90 80841FA0 C6000864 */  lwc1    $f0, 0x0864($s0)           ## 00000864
/* 0FD94 80841FA4 4600B03E */  c.le.s  $f22, $f0                  
/* 0FD98 80841FA8 00000000 */  nop
/* 0FD9C 80841FAC 45000003 */  bc1f    .L80841FBC                 
/* 0FDA0 80841FB0 00000000 */  nop
/* 0FDA4 80841FB4 E6160864 */  swc1    $f22, 0x0864($s0)          ## 00000864
/* 0FDA8 80841FB8 C6000864 */  lwc1    $f0, 0x0864($s0)           ## 00000864
.L80841FBC:
/* 0FDAC 80841FBC 10000060 */  beq     $zero, $zero, .L80842140   
/* 0FDB0 80841FC0 46000506 */  mov.s   $f20, $f0                  
.L80841FC4:
/* 0FDB4 80841FC4 8C42FA90 */  lw      $v0, -0x0570($v0)          ## FFFFFA90
/* 0FDB8 80841FC8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0FDBC 80841FCC 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 0FDC0 80841FD0 84480074 */  lh      $t0, 0x0074($v0)           ## 00000074
/* 0FDC4 80841FD4 C6020838 */  lwc1    $f2, 0x0838($s0)           ## 00000838
/* 0FDC8 80841FD8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0FDCC 80841FDC 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 0FDD0 80841FE0 00000000 */  nop
/* 0FDD4 80841FE4 46809120 */  cvt.s.w $f4, $f18                  
/* 0FDD8 80841FE8 46082183 */  div.s   $f6, $f4, $f8              
/* 0FDDC 80841FEC 46061001 */  sub.s   $f0, $f2, $f6              
/* 0FDE0 80841FF0 460A003C */  c.lt.s  $f0, $f10                  
/* 0FDE4 80841FF4 00000000 */  nop
/* 0FDE8 80841FF8 45020019 */  bc1fl   .L80842060                 
/* 0FDEC 80841FFC 844B005E */  lh      $t3, 0x005E($v0)           ## 0000005E
/* 0FDF0 80842000 8449005C */  lh      $t1, 0x005C($v0)           ## 0000005C
/* 0FDF4 80842004 844A005A */  lh      $t2, 0x005A($v0)           ## 0000005A
/* 0FDF8 80842008 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0FDFC 8084200C 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 0FE00 80842010 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 0FE04 80842014 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 0FE08 80842018 468084A0 */  cvt.s.w $f18, $f16                 
/* 0FE0C 8084201C 4600B506 */  mov.s   $f20, $f22                 
/* 0FE10 80842020 468032A0 */  cvt.s.w $f10, $f6                  
/* 0FE14 80842024 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FE18 80842028 460C9103 */  div.s   $f4, $f18, $f12            
/* 0FE1C 8084202C 460C5403 */  div.s   $f16, $f10, $f12           
/* 0FE20 80842030 46022202 */  mul.s   $f8, $f4, $f2              
/* 0FE24 80842034 46104480 */  add.s   $f18, $f8, $f16            
/* 0FE28 80842038 44059000 */  mfc1    $a1, $f18                  
/* 0FE2C 8084203C 0C2100A7 */  jal     func_8084029C              
/* 0FE30 80842040 00000000 */  nop
/* 0FE34 80842044 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FE38 80842048 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0FE3C 8084204C 0C210731 */  jal     func_80841CC4              
/* 0FE40 80842050 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0FE44 80842054 1000003B */  beq     $zero, $zero, .L80842144   
/* 0FE48 80842058 4616A03C */  c.lt.s  $f20, $f22                 
/* 0FE4C 8084205C 844B005E */  lh      $t3, 0x005E($v0)           ## 0000005E
.L80842060:
/* 0FE50 80842060 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0FE54 80842064 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 0FE58 80842068 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 0FE5C 8084206C 00000000 */  nop
/* 0FE60 80842070 468021A0 */  cvt.s.w $f6, $f4                   
/* 0FE64 80842074 460C3283 */  div.s   $f10, $f6, $f12            
/* 0FE68 80842078 46005502 */  mul.s   $f20, $f10, $f0            
/* 0FE6C 8084207C 4616A03C */  c.lt.s  $f20, $f22                 
/* 0FE70 80842080 00000000 */  nop
/* 0FE74 80842084 45020012 */  bc1fl   .L808420D0                 
/* 0FE78 80842088 844E0060 */  lh      $t6, 0x0060($v0)           ## 00000060
/* 0FE7C 8084208C 844C005C */  lh      $t4, 0x005C($v0)           ## 0000005C
/* 0FE80 80842090 844D005A */  lh      $t5, 0x005A($v0)           ## 0000005A
/* 0FE84 80842094 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FE88 80842098 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 0FE8C 8084209C 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 0FE90 808420A0 46804420 */  cvt.s.w $f16, $f8                  
/* 0FE94 808420A4 468032A0 */  cvt.s.w $f10, $f6                  
/* 0FE98 808420A8 460C8483 */  div.s   $f18, $f16, $f12           
/* 0FE9C 808420AC 460C5203 */  div.s   $f8, $f10, $f12            
/* 0FEA0 808420B0 46029102 */  mul.s   $f4, $f18, $f2             
/* 0FEA4 808420B4 46082400 */  add.s   $f16, $f4, $f8             
/* 0FEA8 808420B8 44058000 */  mfc1    $a1, $f16                  
/* 0FEAC 808420BC 0C2100A7 */  jal     func_8084029C              
/* 0FEB0 808420C0 00000000 */  nop
/* 0FEB4 808420C4 1000000F */  beq     $zero, $zero, .L80842104   
/* 0FEB8 808420C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FEBC 808420CC 844E0060 */  lh      $t6, 0x0060($v0)           ## 00000060
.L808420D0:
/* 0FEC0 808420D0 3C018085 */  lui     $at, %hi(D_80855444)       ## $at = 80850000
/* 0FEC4 808420D4 C4285444 */  lwc1    $f8, %lo(D_80855444)($at)  
/* 0FEC8 808420D8 448E9000 */  mtc1    $t6, $f18                  ## $f18 = 0.00
/* 0FECC 808420DC 4600B506 */  mov.s   $f20, $f22                 
/* 0FED0 808420E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FED4 808420E4 468091A0 */  cvt.s.w $f6, $f18                  
/* 0FED8 808420E8 460C3283 */  div.s   $f10, $f6, $f12            
/* 0FEDC 808420EC 46005102 */  mul.s   $f4, $f10, $f0             
/* 0FEE0 808420F0 46082400 */  add.s   $f16, $f4, $f8             
/* 0FEE4 808420F4 44058000 */  mfc1    $a1, $f16                  
/* 0FEE8 808420F8 0C2100A7 */  jal     func_8084029C              
/* 0FEEC 808420FC 00000000 */  nop
/* 0FEF0 80842100 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80842104:
/* 0FEF4 80842104 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0FEF8 80842108 0C210731 */  jal     func_80841CC4              
/* 0FEFC 8084210C 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 0FF00 80842110 0C20CD0E */  jal     func_80833438              
/* 0FF04 80842114 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0FF08 80842118 3C018085 */  lui     $at, %hi(D_80855448)       ## $at = 80850000
/* 0FF0C 8084211C C4265448 */  lwc1    $f6, %lo(D_80855448)($at)  
/* 0FF10 80842120 C6120868 */  lwc1    $f18, 0x0868($s0)          ## 00000868
/* 0FF14 80842124 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0FF18 80842128 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0FF1C 8084212C 46069282 */  mul.s   $f10, $f18, $f6            
/* 0FF20 80842130 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 0FF24 80842134 44075000 */  mfc1    $a3, $f10                  
/* 0FF28 80842138 0C0290A8 */  jal     func_800A42A0              
/* 0FF2C 8084213C 00000000 */  nop
.L80842140:
/* 0FF30 80842140 4616A03C */  c.lt.s  $f20, $f22                 
.L80842144:
/* 0FF34 80842144 00000000 */  nop
/* 0FF38 80842148 45020008 */  bc1fl   .L8084216C                 
/* 0FF3C 8084214C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0FF40 80842150 4614B101 */  sub.s   $f4, $f22, $f20            
/* 0FF44 80842154 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0FF48 80842158 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 0FF4C 8084215C 44062000 */  mfc1    $a2, $f4                   
/* 0FF50 80842160 0C0290B9 */  jal     func_800A42E4              
/* 0FF54 80842164 00000000 */  nop
/* 0FF58 80842168 8FBF002C */  lw      $ra, 0x002C($sp)           
.L8084216C:
/* 0FF5C 8084216C D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 0FF60 80842170 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 0FF64 80842174 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0FF68 80842178 03E00008 */  jr      $ra                        
/* 0FF6C 8084217C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


