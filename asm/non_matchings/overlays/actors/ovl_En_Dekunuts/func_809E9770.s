glabel func_809E9770
/* 00210 809E9770 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00214 809E9774 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00218 809E9778 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0021C 809E977C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00220 809E9780 24A50AF0 */  addiu   $a1, $a1, 0x0AF0           ## $a1 = 06000AF0
/* 00224 809E9784 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00228 809E9788 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 0022C 809E978C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00230 809E9790 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00234 809E9794 3C0F809F */  lui     $t7, %hi(func_809E9DFC)    ## $t7 = 809F0000
/* 00238 809E9798 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0023C 809E979C 25EF9DFC */  addiu   $t7, $t7, %lo(func_809E9DFC) ## $t7 = 809E9DFC
/* 00240 809E97A0 A4CE0196 */  sh      $t6, 0x0196($a2)           ## 00000196
/* 00244 809E97A4 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00248 809E97A8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0024C 809E97AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00250 809E97B0 03E00008 */  jr      $ra
/* 00254 809E97B4 00000000 */  nop


