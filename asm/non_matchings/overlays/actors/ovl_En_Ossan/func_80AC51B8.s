glabel func_80AC51B8
/* 02518 80AC51B8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0251C 80AC51BC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02520 80AC51C0 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 02524 80AC51C4 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 02528 80AC51C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0252C 80AC51CC 90AE0252 */  lbu     $t6, 0x0252($a1)           ## 00000252
/* 02530 80AC51D0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02534 80AC51D4 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 02538 80AC51D8 000E7880 */  sll     $t7, $t6,  2               
/* 0253C 80AC51DC 00AFC021 */  addu    $t8, $a1, $t7              
/* 02540 80AC51E0 8F100200 */  lw      $s0, 0x0200($t8)           ## 00000200
/* 02544 80AC51E4 8E1901BC */  lw      $t9, 0x01BC($s0)           ## 000001BC
/* 02548 80AC51E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0254C 80AC51EC 0320F809 */  jalr    $ra, $t9                   
/* 02550 80AC51F0 00000000 */  nop
/* 02554 80AC51F4 1040000B */  beq     $v0, $zero, .L80AC5224     
/* 02558 80AC51F8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0255C 80AC51FC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 02560 80AC5200 1041000E */  beq     $v0, $at, .L80AC523C       
/* 02564 80AC5204 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 02568 80AC5208 1041001F */  beq     $v0, $at, .L80AC5288       
/* 0256C 80AC520C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 02570 80AC5210 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 02574 80AC5214 10410021 */  beq     $v0, $at, .L80AC529C       
/* 02578 80AC5218 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0257C 80AC521C 10000023 */  beq     $zero, $zero, .L80AC52AC   
/* 02580 80AC5220 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AC5224:
/* 02584 80AC5224 0C042DC8 */  jal     func_8010B720              
/* 02588 80AC5228 2405009C */  addiu   $a1, $zero, 0x009C         ## $a1 = 0000009C
/* 0258C 80AC522C 24080012 */  addiu   $t0, $zero, 0x0012         ## $t0 = 00000012
/* 02590 80AC5230 A62801FC */  sh      $t0, 0x01FC($s1)           ## 000001FC
/* 02594 80AC5234 1000001C */  beq     $zero, $zero, .L80AC52A8   
/* 02598 80AC5238 A2200251 */  sb      $zero, 0x0251($s1)         ## 00000251
.L80AC523C:
/* 0259C 80AC523C 8E1901C0 */  lw      $t9, 0x01C0($s0)           ## 000001C0
/* 025A0 80AC5240 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 025A4 80AC5244 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 025A8 80AC5248 0320F809 */  jalr    $ra, $t9                   
/* 025AC 80AC524C 00000000 */  nop
/* 025B0 80AC5250 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 025B4 80AC5254 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 025B8 80AC5258 0C2B13F8 */  jal     func_80AC4FE0              
/* 025BC 80AC525C 24060098 */  addiu   $a2, $zero, 0x0098         ## $a2 = 00000098
/* 025C0 80AC5260 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 025C4 80AC5264 A2200251 */  sb      $zero, 0x0251($s1)         ## 00000251
/* 025C8 80AC5268 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 025CC 80AC526C E62402D0 */  swc1    $f4, 0x02D0($s1)           ## 000002D0
/* 025D0 80AC5270 8E1901AC */  lw      $t9, 0x01AC($s0)           ## 000001AC
/* 025D4 80AC5274 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 025D8 80AC5278 0320F809 */  jalr    $ra, $t9                   
/* 025DC 80AC527C 00000000 */  nop
/* 025E0 80AC5280 1000000A */  beq     $zero, $zero, .L80AC52AC   
/* 025E4 80AC5284 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AC5288:
/* 025E8 80AC5288 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 025EC 80AC528C 0C2B13EB */  jal     func_80AC4FAC              
/* 025F0 80AC5290 24060096 */  addiu   $a2, $zero, 0x0096         ## $a2 = 00000096
/* 025F4 80AC5294 10000005 */  beq     $zero, $zero, .L80AC52AC   
/* 025F8 80AC5298 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AC529C:
/* 025FC 80AC529C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02600 80AC52A0 0C2B13EB */  jal     func_80AC4FAC              
/* 02604 80AC52A4 24060085 */  addiu   $a2, $zero, 0x0085         ## $a2 = 00000085
.L80AC52A8:
/* 02608 80AC52A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AC52AC:
/* 0260C 80AC52AC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02610 80AC52B0 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 02614 80AC52B4 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 02618 80AC52B8 03E00008 */  jr      $ra                        
/* 0261C 80AC52BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


