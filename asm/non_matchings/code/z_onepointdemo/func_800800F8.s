.rdata
glabel D_8013CC18
    .asciz "\x1b[41;37monepoint demo: error: too many cameras ... give up! type=%d\n\x1b[m"
    .balign 4

glabel D_8013CC60
    .asciz "\x1b[43;30monepointdemo camera[%d]: killed 'coz low priority (%d < %d)\n\x1b[m"
    .balign 4

.text
glabel func_800800F8
/* AF7298 800800F8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AF729C 800800FC AFB10020 */  sw    $s1, 0x20($sp)
/* AF72A0 80080100 87B1005A */  lh    $s1, 0x5a($sp)
/* AF72A4 80080104 AFB70038 */  sw    $s7, 0x38($sp)
/* AF72A8 80080108 AFB50030 */  sw    $s5, 0x30($sp)
/* AF72AC 8008010C AFB4002C */  sw    $s4, 0x2c($sp)
/* AF72B0 80080110 0005A400 */  sll   $s4, $a1, 0x10
/* AF72B4 80080114 0006AC00 */  sll   $s5, $a2, 0x10
/* AF72B8 80080118 2417FFFF */  li    $s7, -1
/* AF72BC 8008011C AFB30028 */  sw    $s3, 0x28($sp)
/* AF72C0 80080120 00809825 */  move  $s3, $a0
/* AF72C4 80080124 0015AC03 */  sra   $s5, $s5, 0x10
/* AF72C8 80080128 0014A403 */  sra   $s4, $s4, 0x10
/* AF72CC 8008012C AFBF003C */  sw    $ra, 0x3c($sp)
/* AF72D0 80080130 AFB60034 */  sw    $s6, 0x34($sp)
/* AF72D4 80080134 AFB20024 */  sw    $s2, 0x24($sp)
/* AF72D8 80080138 AFB0001C */  sw    $s0, 0x1c($sp)
/* AF72DC 8008013C AFA5004C */  sw    $a1, 0x4c($sp)
/* AF72E0 80080140 AFA60050 */  sw    $a2, 0x50($sp)
/* AF72E4 80080144 16370002 */  bne   $s1, $s7, .L80080150
/* AF72E8 80080148 AFA70054 */   sw    $a3, 0x54($sp)
/* AF72EC 8008014C 849107A0 */  lh    $s1, 0x7a0($a0)
.L80080150:
/* AF72F0 80080150 0C03008C */  jal   func_800C0230
/* AF72F4 80080154 02602025 */   move  $a0, $s3
/* AF72F8 80080158 14570007 */  bne   $v0, $s7, .L80080178
/* AF72FC 8008015C A7A20042 */   sh    $v0, 0x42($sp)
/* AF7300 80080160 3C048014 */  lui   $a0, %hi(D_8013CC18) # $a0, 0x8014
/* AF7304 80080164 2484CC18 */  addiu $a0, %lo(D_8013CC18) # addiu $a0, $a0, -0x33e8
/* AF7308 80080168 0C00084C */  jal   osSyncPrintf
/* AF730C 8008016C 02802825 */   move  $a1, $s4
/* AF7310 80080170 10000094 */  b     .L800803C4
/* AF7314 80080174 2402FFFF */   li    $v0, -1
.L80080178:
/* AF7318 80080178 00117080 */  sll   $t6, $s1, 2
/* AF731C 8008017C 026E7821 */  addu  $t7, $s3, $t6
/* AF7320 80080180 8DF80790 */  lw    $t8, 0x790($t7)
/* AF7324 80080184 24100007 */  li    $s0, 7
/* AF7328 80080188 02602025 */  move  $a0, $s3
/* AF732C 8008018C 8712014E */  lh    $s2, 0x14e($t8)
/* AF7330 80080190 87A60042 */  lh    $a2, 0x42($sp)
/* AF7334 80080194 1A400005 */  blez  $s2, .L800801AC
/* AF7338 80080198 00122C00 */   sll   $a1, $s2, 0x10
/* AF733C 8008019C 0C01FFF8 */  jal   func_8007FFE0
/* AF7340 800801A0 00052C03 */   sra   $a1, $a1, 0x10
/* AF7344 800801A4 10000003 */  b     .L800801B4
/* AF7348 800801A8 24100001 */   li    $s0, 1
.L800801AC:
/* AF734C 800801AC 0C020978 */  jal   Interface_ChangeAlpha
/* AF7350 800801B0 24040002 */   li    $a0, 2
.L800801B4:
/* AF7354 800801B4 00113400 */  sll   $a2, $s1, 0x10
/* AF7358 800801B8 00063403 */  sra   $a2, $a2, 0x10
/* AF735C 800801BC 02602025 */  move  $a0, $s3
/* AF7360 800801C0 0C01FFF8 */  jal   func_8007FFE0
/* AF7364 800801C4 87A50042 */   lh    $a1, 0x42($sp)
/* AF7368 800801C8 87B90042 */  lh    $t9, 0x42($sp)
/* AF736C 800801CC 00112C00 */  sll   $a1, $s1, 0x10
/* AF7370 800801D0 24060003 */  li    $a2, 3
/* AF7374 800801D4 00194080 */  sll   $t0, $t9, 2
/* AF7378 800801D8 0268B021 */  addu  $s6, $s3, $t0
/* AF737C 800801DC 8EC30790 */  lw    $v1, 0x790($s6)
/* AF7380 800801E0 00052C03 */  sra   $a1, $a1, 0x10
/* AF7384 800801E4 02602025 */  move  $a0, $s3
/* AF7388 800801E8 A4750160 */  sh    $s5, 0x160($v1)
/* AF738C 800801EC 8FA90054 */  lw    $t1, 0x54($sp)
/* AF7390 800801F0 AC6900A8 */  sw    $t1, 0xa8($v1)
/* AF7394 800801F4 8E6B00EC */  lw    $t3, 0xec($s3)
/* AF7398 800801F8 AC6B0050 */  sw    $t3, 0x50($v1)
/* AF739C 800801FC 8E6A00F0 */  lw    $t2, 0xf0($s3)
/* AF73A0 80080200 AC6A0054 */  sw    $t2, 0x54($v1)
/* AF73A4 80080204 8E6B00F4 */  lw    $t3, 0xf4($s3)
/* AF73A8 80080208 AC6B0058 */  sw    $t3, 0x58($v1)
/* AF73AC 8008020C 8E6D00E0 */  lw    $t5, 0xe0($s3)
/* AF73B0 80080210 AC6D005C */  sw    $t5, 0x5c($v1)
/* AF73B4 80080214 8E6C00E4 */  lw    $t4, 0xe4($s3)
/* AF73B8 80080218 AC6C0060 */  sw    $t4, 0x60($v1)
/* AF73BC 8008021C 8E6D00E8 */  lw    $t5, 0xe8($s3)
/* AF73C0 80080220 AC6D0064 */  sw    $t5, 0x64($v1)
/* AF73C4 80080224 C66400D0 */  lwc1  $f4, 0xd0($s3)
/* AF73C8 80080228 A4740168 */  sh    $s4, 0x168($v1)
/* AF73CC 8008022C 16200007 */  bnez  $s1, .L8008024C
/* AF73D0 80080230 E46400FC */   swc1  $f4, 0xfc($v1)
/* AF73D4 80080234 00112C00 */  sll   $a1, $s1, 0x10
/* AF73D8 80080238 00052C03 */  sra   $a1, $a1, 0x10
/* AF73DC 8008023C 0C0300C5 */  jal   func_800C0314
/* AF73E0 80080240 02602025 */   move  $a0, $s3
/* AF73E4 80080244 10000004 */  b     .L80080258
/* AF73E8 80080248 00143400 */   sll   $a2, $s4, 0x10
.L8008024C:
/* AF73EC 8008024C 0C0300C5 */  jal   func_800C0314
/* AF73F0 80080250 24060001 */   li    $a2, 1
/* AF73F4 80080254 00143400 */  sll   $a2, $s4, 0x10
.L80080258:
/* AF73F8 80080258 00063403 */  sra   $a2, $a2, 0x10
/* AF73FC 8008025C 02602025 */  move  $a0, $s3
/* AF7400 80080260 87A50042 */  lh    $a1, 0x42($sp)
/* AF7404 80080264 8FA70054 */  lw    $a3, 0x54($sp)
/* AF7408 80080268 0C01F214 */  jal   func_8007C850
/* AF740C 8008026C AFB50010 */   sw    $s5, 0x10($sp)
/* AF7410 80080270 00103400 */  sll   $a2, $s0, 0x10
/* AF7414 80080274 00063403 */  sra   $a2, $a2, 0x10
/* AF7418 80080278 02602025 */  move  $a0, $s3
/* AF741C 8008027C 0C0300C5 */  jal   func_800C0314
/* AF7420 80080280 87A50042 */   lh    $a1, 0x42($sp)
/* AF7424 80080284 8ECE0790 */  lw    $t6, 0x790($s6)
/* AF7428 80080288 87B20042 */  lh    $s2, 0x42($sp)
/* AF742C 8008028C 24151392 */  li    $s5, 5010
/* AF7430 80080290 85D0014E */  lh    $s0, 0x14e($t6)
/* AF7434 80080294 24140064 */  li    $s4, 100
/* AF7438 80080298 1A000049 */  blez  $s0, .L800803C0
/* AF743C 8008029C 00107880 */   sll   $t7, $s0, 2
.L800802A0:
/* AF7440 800802A0 026F8821 */  addu  $s1, $s3, $t7
/* AF7444 800802A4 8E380790 */  lw    $t8, 0x790($s1)
/* AF7448 800802A8 8ED90790 */  lw    $t9, 0x790($s6)
/* AF744C 800802AC 87060168 */  lh    $a2, 0x168($t8)
/* AF7450 800802B0 87270168 */  lh    $a3, 0x168($t9)
/* AF7454 800802B4 00D4001A */  div   $zero, $a2, $s4
/* AF7458 800802B8 00004012 */  mflo  $t0
/* AF745C 800802BC 16800002 */  bnez  $s4, .L800802C8
/* AF7460 800802C0 00000000 */   nop   
/* AF7464 800802C4 0007000D */  break 7
.L800802C8:
/* AF7468 800802C8 2401FFFF */  li    $at, -1
/* AF746C 800802CC 16810004 */  bne   $s4, $at, .L800802E0
/* AF7470 800802D0 3C018000 */   lui   $at, 0x8000
/* AF7474 800802D4 14C10002 */  bne   $a2, $at, .L800802E0
/* AF7478 800802D8 00000000 */   nop   
/* AF747C 800802DC 0006000D */  break 6
.L800802E0:
/* AF7480 800802E0 00F4001A */  div   $zero, $a3, $s4
/* AF7484 800802E4 16800002 */  bnez  $s4, .L800802F0
/* AF7488 800802E8 00000000 */   nop   
/* AF748C 800802EC 0007000D */  break 7
.L800802F0:
/* AF7490 800802F0 2401FFFF */  li    $at, -1
/* AF7494 800802F4 16810004 */  bne   $s4, $at, .L80080308
/* AF7498 800802F8 3C018000 */   lui   $at, 0x8000
/* AF749C 800802FC 14E10002 */  bne   $a3, $at, .L80080308
/* AF74A0 80080300 00000000 */   nop   
/* AF74A4 80080304 0006000D */  break 6
.L80080308:
/* AF74A8 80080308 00004812 */  mflo  $t1
/* AF74AC 8008030C 0109082A */  slt   $at, $t0, $t1
/* AF74B0 80080310 50200024 */  beql  $at, $zero, .L800803A4
/* AF74B4 80080314 00109400 */   sll   $s2, $s0, 0x10
/* AF74B8 80080318 3C048014 */  lui   $a0, %hi(D_8013CC60) # $a0, 0x8014
/* AF74BC 8008031C 2484CC60 */  addiu $a0, %lo(D_8013CC60) # addiu $a0, $a0, -0x33a0
/* AF74C0 80080320 0C00084C */  jal   osSyncPrintf
/* AF74C4 80080324 02002825 */   move  $a1, $s0
/* AF74C8 80080328 8E2A0790 */  lw    $t2, 0x790($s1)
/* AF74CC 8008032C 00126080 */  sll   $t4, $s2, 2
/* AF74D0 80080330 00102C00 */  sll   $a1, $s0, 0x10
/* AF74D4 80080334 854B0168 */  lh    $t3, 0x168($t2)
/* AF74D8 80080338 026C8821 */  addu  $s1, $s3, $t4
/* AF74DC 8008033C 00052C03 */  sra   $a1, $a1, 0x10
/* AF74E0 80080340 12AB0011 */  beq   $s5, $t3, .L80080388
/* AF74E4 80080344 02602025 */   move  $a0, $s3
/* AF74E8 80080348 00102C00 */  sll   $a1, $s0, 0x10
/* AF74EC 8008034C 00052C03 */  sra   $a1, $a1, 0x10
/* AF74F0 80080350 0C020009 */  jal   func_80080024
/* AF74F4 80080354 02602025 */   move  $a0, $s3
/* AF74F8 80080358 00026C00 */  sll   $t5, $v0, 0x10
/* AF74FC 8008035C 000D7403 */  sra   $t6, $t5, 0x10
/* AF7500 80080360 00028400 */  sll   $s0, $v0, 0x10
/* AF7504 80080364 12EE0012 */  beq   $s7, $t6, .L800803B0
/* AF7508 80080368 00108403 */   sra   $s0, $s0, 0x10
/* AF750C 8008036C 00102C00 */  sll   $a1, $s0, 0x10
/* AF7510 80080370 00052C03 */  sra   $a1, $a1, 0x10
/* AF7514 80080374 02602025 */  move  $a0, $s3
/* AF7518 80080378 0C0300C5 */  jal   func_800C0314
/* AF751C 8008037C 24060007 */   li    $a2, 7
/* AF7520 80080380 1000000C */  b     .L800803B4
/* AF7524 80080384 8E390790 */   lw    $t9, 0x790($s1)
.L80080388:
/* AF7528 80080388 00109400 */  sll   $s2, $s0, 0x10
/* AF752C 8008038C 0C0200FC */  jal   func_800803F0
/* AF7530 80080390 00129403 */   sra   $s2, $s2, 0x10
/* AF7534 80080394 00127880 */  sll   $t7, $s2, 2
/* AF7538 80080398 10000005 */  b     .L800803B0
/* AF753C 8008039C 026F8821 */   addu  $s1, $s3, $t7
/* AF7540 800803A0 00109400 */  sll   $s2, $s0, 0x10
.L800803A4:
/* AF7544 800803A4 00129403 */  sra   $s2, $s2, 0x10
/* AF7548 800803A8 0012C080 */  sll   $t8, $s2, 2
/* AF754C 800803AC 02788821 */  addu  $s1, $s3, $t8
.L800803B0:
/* AF7550 800803B0 8E390790 */  lw    $t9, 0x790($s1)
.L800803B4:
/* AF7554 800803B4 8730014E */  lh    $s0, 0x14e($t9)
/* AF7558 800803B8 5E00FFB9 */  bgtzl $s0, .L800802A0
/* AF755C 800803BC 00107880 */   sll   $t7, $s0, 2
.L800803C0:
/* AF7560 800803C0 87A20042 */  lh    $v0, 0x42($sp)
.L800803C4:
/* AF7564 800803C4 8FBF003C */  lw    $ra, 0x3c($sp)
/* AF7568 800803C8 8FB0001C */  lw    $s0, 0x1c($sp)
/* AF756C 800803CC 8FB10020 */  lw    $s1, 0x20($sp)
/* AF7570 800803D0 8FB20024 */  lw    $s2, 0x24($sp)
/* AF7574 800803D4 8FB30028 */  lw    $s3, 0x28($sp)
/* AF7578 800803D8 8FB4002C */  lw    $s4, 0x2c($sp)
/* AF757C 800803DC 8FB50030 */  lw    $s5, 0x30($sp)
/* AF7580 800803E0 8FB60034 */  lw    $s6, 0x34($sp)
/* AF7584 800803E4 8FB70038 */  lw    $s7, 0x38($sp)
/* AF7588 800803E8 03E00008 */  jr    $ra
/* AF758C 800803EC 27BD0048 */   addiu $sp, $sp, 0x48

