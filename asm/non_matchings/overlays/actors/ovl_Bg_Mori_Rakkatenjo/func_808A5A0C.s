glabel func_808A5A0C
/* 0049C 808A5A0C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 004A0 808A5A10 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004A4 808A5A14 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 004A8 808A5A18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004AC 808A5A1C 0C00B638 */  jal     Actor_MoveForward
              
/* 004B0 808A5A20 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 004B4 808A5A24 C60C0060 */  lwc1    $f12, 0x0060($s0)          ## 00000060
/* 004B8 808A5A28 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 004BC 808A5A2C 3C01808A */  lui     $at, %hi(D_808A6074)       ## $at = 808A0000
/* 004C0 808A5A30 4604603C */  c.lt.s  $f12, $f4                  
/* 004C4 808A5A34 00000000 */  nop
/* 004C8 808A5A38 4502004D */  bc1fl   .L808A5B70                 
/* 004CC 808A5A3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004D0 808A5A40 C42E6074 */  lwc1    $f14, %lo(D_808A6074)($at) 
/* 004D4 808A5A44 C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
/* 004D8 808A5A48 460E103E */  c.le.s  $f2, $f14                  
/* 004DC 808A5A4C 00000000 */  nop
/* 004E0 808A5A50 45020047 */  bc1fl   .L808A5B70                 
/* 004E4 808A5A54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004E8 808A5A58 8E02016C */  lw      $v0, 0x016C($s0)           ## 0000016C
/* 004EC 808A5A5C 28410004 */  slti    $at, $v0, 0x0004           
/* 004F0 808A5A60 14200005 */  bne     $at, $zero, .L808A5A78     
/* 004F4 808A5A64 00000000 */  nop
/* 004F8 808A5A68 0C2296E0 */  jal     func_808A5B80              
/* 004FC 808A5A6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00500 808A5A70 1000003F */  beq     $zero, $zero, .L808A5B70   
/* 00504 808A5A74 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A5A78:
/* 00508 808A5A78 14400011 */  bne     $v0, $zero, .L808A5AC0     
/* 0050C 808A5A7C 00000000 */  nop
/* 00510 808A5A80 8E0E0170 */  lw      $t6, 0x0170($s0)           ## 00000170
/* 00514 808A5A84 2404281D */  addiu   $a0, $zero, 0x281D         ## $a0 = 0000281D
/* 00518 808A5A88 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0051C 808A5A8C 0C01E233 */  jal     func_800788CC              
/* 00520 808A5A90 AE0F0170 */  sw      $t7, 0x0170($s0)           ## 00000170
/* 00524 808A5A94 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 00528 808A5A98 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 0052C 808A5A9C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00530 808A5AA0 46000302 */  mul.s   $f12, $f0, $f0             
/* 00534 808A5AA4 0C02A800 */  jal     func_800AA000              
/* 00538 808A5AA8 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 0053C 808A5AAC 3C01808A */  lui     $at, %hi(D_808A6078)       ## $at = 808A0000
/* 00540 808A5AB0 C42E6078 */  lwc1    $f14, %lo(D_808A6078)($at) 
/* 00544 808A5AB4 8E02016C */  lw      $v0, 0x016C($s0)           ## 0000016C
/* 00548 808A5AB8 C60C0060 */  lwc1    $f12, 0x0060($s0)          ## 00000060
/* 0054C 808A5ABC C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
.L808A5AC0:
/* 00550 808A5AC0 3C03808A */  lui     $v1, %hi(D_808A5E90)       ## $v1 = 808A0000
/* 00554 808A5AC4 24635E90 */  addiu   $v1, $v1, %lo(D_808A5E90)  ## $v1 = 808A5E90
/* 00558 808A5AC8 0002C080 */  sll     $t8, $v0,  2               
/* 0055C 808A5ACC 460E1181 */  sub.s   $f6, $f2, $f14             
/* 00560 808A5AD0 0078C821 */  addu    $t9, $v1, $t8              
/* 00564 808A5AD4 C7280000 */  lwc1    $f8, 0x0000($t9)           ## 00000000
/* 00568 808A5AD8 46006005 */  abs.s   $f0, $f12                  
/* 0056C 808A5ADC 8E08016C */  lw      $t0, 0x016C($s0)           ## 0000016C
/* 00570 808A5AE0 46083282 */  mul.s   $f10, $f6, $f8             
/* 00574 808A5AE4 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 00578 808A5AE8 00084880 */  sll     $t1, $t0,  2               
/* 0057C 808A5AEC 8E0B016C */  lw      $t3, 0x016C($s0)           ## 0000016C
/* 00580 808A5AF0 00695021 */  addu    $t2, $v1, $t1              
/* 00584 808A5AF4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00588 808A5AF8 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0058C 808A5AFC 46005403 */  div.s   $f16, $f10, $f0            
/* 00590 808A5B00 46107481 */  sub.s   $f18, $f14, $f16           
/* 00594 808A5B04 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 00598 808A5B08 C5440000 */  lwc1    $f4, 0x0000($t2)           ## 00000000
/* 0059C 808A5B0C AE0C016C */  sw      $t4, 0x016C($s0)           ## 0000016C
/* 005A0 808A5B10 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 005A4 808A5B14 84CD07A0 */  lh      $t5, 0x07A0($a2)           ## 000007A0
/* 005A8 808A5B18 000D7080 */  sll     $t6, $t5,  2               
/* 005AC 808A5B1C 00CE7821 */  addu    $t7, $a2, $t6              
/* 005B0 808A5B20 0C024BE2 */  jal     Quake_Add              
/* 005B4 808A5B24 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 005B8 808A5B28 00022400 */  sll     $a0, $v0, 16               
/* 005BC 808A5B2C AFA2002C */  sw      $v0, 0x002C($sp)           
/* 005C0 808A5B30 00042403 */  sra     $a0, $a0, 16               
/* 005C4 808A5B34 0C024B6B */  jal     Quake_SetSpeed              
/* 005C8 808A5B38 2405C350 */  addiu   $a1, $zero, 0xC350         ## $a1 = FFFFC350
/* 005CC 808A5B3C 87B0002E */  lh      $s0, 0x002E($sp)           
/* 005D0 808A5B40 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 005D4 808A5B44 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005D8 808A5B48 00102400 */  sll     $a0, $s0, 16               
/* 005DC 808A5B4C 00042403 */  sra     $a0, $a0, 16               
/* 005E0 808A5B50 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005E4 808A5B54 0C024B9C */  jal     Quake_SetQuakeValues              
/* 005E8 808A5B58 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 005EC 808A5B5C 00102400 */  sll     $a0, $s0, 16               
/* 005F0 808A5B60 00042403 */  sra     $a0, $a0, 16               
/* 005F4 808A5B64 0C024B7C */  jal     Quake_SetCountdown              
/* 005F8 808A5B68 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 005FC 808A5B6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808A5B70:
/* 00600 808A5B70 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00604 808A5B74 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00608 808A5B78 03E00008 */  jr      $ra                        
/* 0060C 808A5B7C 00000000 */  nop


