glabel func_80A559B4
/* 00374 80A559B4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00378 80A559B8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0037C 80A559BC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00380 80A559C0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00384 80A559C4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00388 80A559C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0038C 80A559CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00390 80A559D0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00394 80A559D4 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00398 80A559D8 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 0039C 80A559DC 3C01C33E */  lui     $at, 0xC33E                ## $at = C33E0000
/* 003A0 80A559E0 44812000 */  mtc1    $at, $f4                   ## $f4 = -190.00
/* 003A4 80A559E4 C4420024 */  lwc1    $f2, 0x0024($v0)           ## 00000024
/* 003A8 80A559E8 3C01C3BE */  lui     $at, 0xC3BE                ## $at = C3BE0000
/* 003AC 80A559EC 4604103C */  c.lt.s  $f2, $f4                   
/* 003B0 80A559F0 00000000 */  nop
/* 003B4 80A559F4 45020049 */  bc1fl   .L80A55B1C                 
/* 003B8 80A559F8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003BC 80A559FC 44813000 */  mtc1    $at, $f6                   ## $f6 = -380.00
/* 003C0 80A55A00 00000000 */  nop
/* 003C4 80A55A04 4602303C */  c.lt.s  $f6, $f2                   
/* 003C8 80A55A08 00000000 */  nop
/* 003CC 80A55A0C 45020043 */  bc1fl   .L80A55B1C                 
/* 003D0 80A55A10 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003D4 80A55A14 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 003D8 80A55A18 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 003DC 80A55A1C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 003E0 80A55A20 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 003E4 80A55A24 460A4001 */  sub.s   $f0, $f8, $f10             
/* 003E8 80A55A28 3C01447F */  lui     $at, 0x447F                ## $at = 447F0000
/* 003EC 80A55A2C 46000005 */  abs.s   $f0, $f0                   
/* 003F0 80A55A30 4610003C */  c.lt.s  $f0, $f16                  
/* 003F4 80A55A34 00000000 */  nop
/* 003F8 80A55A38 45020038 */  bc1fl   .L80A55B1C                 
/* 003FC 80A55A3C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00400 80A55A40 C440002C */  lwc1    $f0, 0x002C($v0)           ## 0000002C
/* 00404 80A55A44 44819000 */  mtc1    $at, $f18                  ## $f18 = 1020.00
/* 00408 80A55A48 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 0040C 80A55A4C 4612003C */  c.lt.s  $f0, $f18                  
/* 00410 80A55A50 00000000 */  nop
/* 00414 80A55A54 45020031 */  bc1fl   .L80A55B1C                 
/* 00418 80A55A58 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0041C 80A55A5C 44812000 */  mtc1    $at, $f4                   ## $f4 = 700.00
/* 00420 80A55A60 3C0380A5 */  lui     $v1, %hi(D_80A55F40)       ## $v1 = 80A50000
/* 00424 80A55A64 24635F40 */  addiu   $v1, $v1, %lo(D_80A55F40)  ## $v1 = 80A55F40
/* 00428 80A55A68 4600203C */  c.lt.s  $f4, $f0                   
/* 0042C 80A55A6C 00000000 */  nop
/* 00430 80A55A70 4502002A */  bc1fl   .L80A55B1C                 
/* 00434 80A55A74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00438 80A55A78 846F0000 */  lh      $t7, 0x0000($v1)           ## 80A55F40
/* 0043C 80A55A7C 55E00027 */  bnel    $t7, $zero, .L80A55B1C     
/* 00440 80A55A80 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00444 80A55A84 86180278 */  lh      $t8, 0x0278($s0)           ## 00000278
/* 00448 80A55A88 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0044C 80A55A8C 3C01C391 */  lui     $at, 0xC391                ## $at = C3910000
/* 00450 80A55A90 5458000B */  bnel    $v0, $t8, .L80A55AC0       
/* 00454 80A55A94 44814000 */  mtc1    $at, $f8                   ## $f8 = -290.00
/* 00458 80A55A98 3C01C391 */  lui     $at, 0xC391                ## $at = C3910000
/* 0045C 80A55A9C 44813000 */  mtc1    $at, $f6                   ## $f6 = -290.00
/* 00460 80A55AA0 00000000 */  nop
/* 00464 80A55AA4 4606103C */  c.lt.s  $f2, $f6                   
/* 00468 80A55AA8 00000000 */  nop
/* 0046C 80A55AAC 4502000A */  bc1fl   .L80A55AD8                 
/* 00470 80A55AB0 A4620000 */  sh      $v0, 0x0000($v1)           ## 80A55F40
/* 00474 80A55AB4 10000019 */  beq     $zero, $zero, .L80A55B1C   
/* 00478 80A55AB8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0047C 80A55ABC 44814000 */  mtc1    $at, $f8                   ## $f8 = -290.00
.L80A55AC0:
/* 00480 80A55AC0 00000000 */  nop
/* 00484 80A55AC4 4602403C */  c.lt.s  $f8, $f2                   
/* 00488 80A55AC8 00000000 */  nop
/* 0048C 80A55ACC 45030013 */  bc1tl   .L80A55B1C                 
/* 00490 80A55AD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00494 80A55AD4 A4620000 */  sh      $v0, 0x0000($v1)           ## 80A55F40
.L80A55AD8:
/* 00498 80A55AD8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0049C 80A55ADC 2405702D */  addiu   $a1, $zero, 0x702D         ## $a1 = 0000702D
/* 004A0 80A55AE0 0C042DA0 */  jal     func_8010B680              
/* 004A4 80A55AE4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 004A8 80A55AE8 0C01E221 */  jal     func_80078884              
/* 004AC 80A55AEC 2404482C */  addiu   $a0, $zero, 0x482C         ## $a0 = 0000482C
/* 004B0 80A55AF0 3C0480A5 */  lui     $a0, %hi(D_80A55FEC)       ## $a0 = 80A50000
/* 004B4 80A55AF4 0C00084C */  jal     osSyncPrintf
              
/* 004B8 80A55AF8 24845FEC */  addiu   $a0, $a0, %lo(D_80A55FEC)  ## $a0 = 80A55FEC
/* 004BC 80A55AFC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 004C0 80A55B00 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 004C4 80A55B04 0C00B7D5 */  jal     func_8002DF54              
/* 004C8 80A55B08 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 004CC 80A55B0C 3C1980A5 */  lui     $t9, %hi(func_80A55B2C)    ## $t9 = 80A50000
/* 004D0 80A55B10 27395B2C */  addiu   $t9, $t9, %lo(func_80A55B2C) ## $t9 = 80A55B2C
/* 004D4 80A55B14 AE19025C */  sw      $t9, 0x025C($s0)           ## 0000025C
/* 004D8 80A55B18 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A55B1C:
/* 004DC 80A55B1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 004E0 80A55B20 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 004E4 80A55B24 03E00008 */  jr      $ra                        
/* 004E8 80A55B28 00000000 */  nop


