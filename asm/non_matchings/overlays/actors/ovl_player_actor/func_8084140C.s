glabel func_8084140C
/* 0F1FC 8084140C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0F200 80841410 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0F204 80841414 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0F208 80841418 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0F20C 8084141C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0F210 80841420 3C068084 */  lui     $a2, %hi(func_8084170C)    ## $a2 = 80840000
/* 0F214 80841424 24C6170C */  addiu   $a2, $a2, %lo(func_8084170C) ## $a2 = 8084170C
/* 0F218 80841428 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0F21C 8084142C 0C20D716 */  jal     func_80835C58              
/* 0F220 80841430 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0F224 80841434 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0F228 80841438 24C62DA0 */  addiu   $a2, $a2, 0x2DA0           ## $a2 = 04002DA0
/* 0F22C 8084143C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0F230 80841440 0C20CAC3 */  jal     func_80832B0C              
/* 0F234 80841444 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0F238 80841448 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0F23C 8084144C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0F240 80841450 03E00008 */  jr      $ra                        
/* 0F244 80841454 00000000 */  nop


