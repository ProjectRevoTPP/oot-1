glabel func_8098E960
/* 00500 8098E960 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00504 8098E964 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00508 8098E968 904E1415 */  lbu     $t6, 0x1415($v0)           ## 8015FA75
/* 0050C 8098E96C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00510 8098E970 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00514 8098E974 15C00019 */  bne     $t6, $zero, .L8098E9DC     
/* 00518 8098E978 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0051C 8098E97C 8C4F1360 */  lw      $t7, 0x1360($v0)           ## 8015F9C0
/* 00520 8098E980 3C088099 */  lui     $t0, %hi(D_8099010C)       ## $t0 = 80990000
/* 00524 8098E984 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00528 8098E988 29E10004 */  slti    $at, $t7, 0x0004           
/* 0052C 8098E98C 10200013 */  beq     $at, $zero, .L8098E9DC     
/* 00530 8098E990 2508010C */  addiu   $t0, $t0, %lo(D_8099010C)  ## $t0 = 8099010C
/* 00534 8098E994 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00538 8098E998 AC980198 */  sw      $t8, 0x0198($a0)           ## 00000198
/* 0053C 8098E99C ACA81D68 */  sw      $t0, 0x1D68($a1)           ## 00001D68
/* 00540 8098E9A0 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00544 8098E9A4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00548 8098E9A8 A0491414 */  sb      $t1, 0x1414($v0)           ## 8015FA74
/* 0054C 8098E9AC 24050066 */  addiu   $a1, $zero, 0x0066         ## $a1 = 00000066
/* 00550 8098E9B0 0C021344 */  jal     Item_Give              
/* 00554 8098E9B4 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00558 8098E9B8 8FAA0028 */  lw      $t2, 0x0028($sp)           
/* 0055C 8098E9BC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00560 8098E9C0 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00564 8098E9C4 85420032 */  lh      $v0, 0x0032($t2)           ## 00000032
/* 00568 8098E9C8 00411021 */  addu    $v0, $v0, $at              
/* 0056C 8098E9CC 00021400 */  sll     $v0, $v0, 16               
/* 00570 8098E9D0 00021403 */  sra     $v0, $v0, 16               
/* 00574 8098E9D4 A46200B6 */  sh      $v0, 0x00B6($v1)           ## 000000B6
/* 00578 8098E9D8 A4620032 */  sh      $v0, 0x0032($v1)           ## 00000032
.L8098E9DC:
/* 0057C 8098E9DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00580 8098E9E0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00584 8098E9E4 03E00008 */  jr      $ra                        
/* 00588 8098E9E8 00000000 */  nop


