glabel func_80ACD130
/* 03210 80ACD130 00067080 */  sll     $t6, $a2,  2               
/* 03214 80ACD134 00AE1021 */  addu    $v0, $a1, $t6              
/* 03218 80ACD138 8C4F1D8C */  lw      $t7, 0x1D8C($v0)           ## 00001D8C
/* 0321C 80ACD13C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03220 80ACD140 27AB000C */  addiu   $t3, $sp, 0x000C           ## $t3 = FFFFFFF4
/* 03224 80ACD144 8DF8000C */  lw      $t8, 0x000C($t7)           ## 0000000C
/* 03228 80ACD148 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 0322C 80ACD14C 00000000 */  nop
/* 03230 80ACD150 468021A0 */  cvt.s.w $f6, $f4                   
/* 03234 80ACD154 E7A6000C */  swc1    $f6, 0x000C($sp)           
/* 03238 80ACD158 8C591D8C */  lw      $t9, 0x1D8C($v0)           ## 00001D8C
/* 0323C 80ACD15C 8F280010 */  lw      $t0, 0x0010($t9)           ## 00000010
/* 03240 80ACD160 44884000 */  mtc1    $t0, $f8                   ## $f8 = 0.00
/* 03244 80ACD164 00000000 */  nop
/* 03248 80ACD168 468042A0 */  cvt.s.w $f10, $f8                  
/* 0324C 80ACD16C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 03250 80ACD170 8C491D8C */  lw      $t1, 0x1D8C($v0)           ## 00001D8C
/* 03254 80ACD174 8D2A0014 */  lw      $t2, 0x0014($t1)           ## 00000014
/* 03258 80ACD178 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 0325C 80ACD17C 00000000 */  nop
/* 03260 80ACD180 468084A0 */  cvt.s.w $f18, $f16                 
/* 03264 80ACD184 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 03268 80ACD188 8D6D0000 */  lw      $t5, 0x0000($t3)           ## FFFFFFF4
/* 0326C 80ACD18C AC8D0024 */  sw      $t5, 0x0024($a0)           ## 00000024
/* 03270 80ACD190 8D6C0004 */  lw      $t4, 0x0004($t3)           ## FFFFFFF8
/* 03274 80ACD194 AC8C0028 */  sw      $t4, 0x0028($a0)           ## 00000028
/* 03278 80ACD198 8D6D0008 */  lw      $t5, 0x0008($t3)           ## FFFFFFFC
/* 0327C 80ACD19C AC8D002C */  sw      $t5, 0x002C($a0)           ## 0000002C
/* 03280 80ACD1A0 8C4E1D8C */  lw      $t6, 0x1D8C($v0)           ## 00001D8C
/* 03284 80ACD1A4 85C30008 */  lh      $v1, 0x0008($t6)           ## 00000008
/* 03288 80ACD1A8 A48300B6 */  sh      $v1, 0x00B6($a0)           ## 000000B6
/* 0328C 80ACD1AC A4830032 */  sh      $v1, 0x0032($a0)           ## 00000032
/* 03290 80ACD1B0 8C4F1D8C */  lw      $t7, 0x1D8C($v0)           ## 00001D8C
/* 03294 80ACD1B4 95F8000A */  lhu     $t8, 0x000A($t7)           ## 0000000A
/* 03298 80ACD1B8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0329C 80ACD1BC 03E00008 */  jr      $ra                        
/* 032A0 80ACD1C0 A49800B8 */  sh      $t8, 0x00B8($a0)           ## 000000B8


