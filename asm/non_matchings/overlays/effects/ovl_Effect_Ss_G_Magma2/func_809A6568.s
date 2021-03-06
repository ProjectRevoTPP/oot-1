glabel func_809A6568
/* 001C8 809A6568 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 001CC 809A656C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 001D0 809A6570 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 001D4 809A6574 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 001D8 809A6578 AFA40060 */  sw      $a0, 0x0060($sp)           
/* 001DC 809A657C AFA50064 */  sw      $a1, 0x0064($sp)           
/* 001E0 809A6580 84CF0056 */  lh      $t7, 0x0056($a2)           ## 00000056
/* 001E4 809A6584 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 001E8 809A6588 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 001EC 809A658C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 001F0 809A6590 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 001F4 809A6594 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 001F8 809A6598 468021A0 */  cvt.s.w $f6, $f4                   
/* 001FC 809A659C 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 00200 809A65A0 24070105 */  addiu   $a3, $zero, 0x0105         ## $a3 = 00000105
/* 00204 809A65A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00208 809A65A8 46083283 */  div.s   $f10, $f6, $f8             
/* 0020C 809A65AC E7AA0054 */  swc1    $f10, 0x0054($sp)          
/* 00210 809A65B0 84D80054 */  lh      $t8, 0x0054($a2)           ## 00000054
/* 00214 809A65B4 3C06809A */  lui     $a2, %hi(D_809A68B0)       ## $a2 = 809A0000
/* 00218 809A65B8 24C668B0 */  addiu   $a2, $a2, %lo(D_809A68B0)  ## $a2 = 809A68B0
/* 0021C 809A65BC 0018C900 */  sll     $t9, $t8,  4               
/* 00220 809A65C0 0338C821 */  addu    $t9, $t9, $t8              
/* 00224 809A65C4 0019C880 */  sll     $t9, $t9,  2               
/* 00228 809A65C8 00994021 */  addu    $t0, $a0, $t9              
/* 0022C 809A65CC 01284821 */  addu    $t1, $t1, $t0              
/* 00230 809A65D0 8D2917B4 */  lw      $t1, 0x17B4($t1)           ## 000117B4
/* 00234 809A65D4 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFDC
/* 00238 809A65D8 0C031AB1 */  jal     func_800C6AC4              
/* 0023C 809A65DC AFA90050 */  sw      $t1, 0x0050($sp)           
/* 00240 809A65E0 C62C0000 */  lwc1    $f12, 0x0000($s1)          ## 00000000
/* 00244 809A65E4 C62E0004 */  lwc1    $f14, 0x0004($s1)          ## 00000004
/* 00248 809A65E8 8E260008 */  lw      $a2, 0x0008($s1)           ## 00000008
/* 0024C 809A65EC 0C034261 */  jal     Matrix_Translate              
/* 00250 809A65F0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00254 809A65F4 C7AC0054 */  lwc1    $f12, 0x0054($sp)          
/* 00258 809A65F8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0025C 809A65FC 44066000 */  mfc1    $a2, $f12                  
/* 00260 809A6600 0C0342A3 */  jal     Matrix_Scale              
/* 00264 809A6604 46006386 */  mov.s   $f14, $f12                 
/* 00268 809A6608 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 0026C 809A660C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00270 809A6610 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00274 809A6614 00815021 */  addu    $t2, $a0, $at              
/* 00278 809A6618 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0027C 809A661C AC2A6FC0 */  sw      $t2, 0x6FC0($at)           ## 80166FC0
/* 00280 809A6620 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00284 809A6624 358C0018 */  ori     $t4, $t4, 0x0018           ## $t4 = DB060018
/* 00288 809A6628 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 0028C 809A662C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00290 809A6630 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00294 809A6634 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00298 809A6638 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 0029C 809A663C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 002A0 809A6640 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 002A4 809A6644 3C05809A */  lui     $a1, %hi(D_809A68C8)       ## $a1 = 809A0000
/* 002A8 809A6648 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 002AC 809A664C AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 002B0 809A6650 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 002B4 809A6654 24A568C8 */  addiu   $a1, $a1, %lo(D_809A68C8)  ## $a1 = 809A68C8
/* 002B8 809A6658 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002BC 809A665C 2406011A */  addiu   $a2, $zero, 0x011A         ## $a2 = 0000011A
/* 002C0 809A6660 0C0346A2 */  jal     Matrix_NewMtx              
/* 002C4 809A6664 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 002C8 809A6668 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 002CC 809A666C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 002D0 809A6670 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 002D4 809A6674 86380052 */  lh      $t8, 0x0052($s1)           ## 00000052
/* 002D8 809A6678 17000006 */  bne     $t8, $zero, .L809A6694     
/* 002DC 809A667C 00000000 */  nop
/* 002E0 809A6680 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 002E4 809A6684 0C024DDD */  jal     Gfx_CallSetupDL              
/* 002E8 809A6688 2405003D */  addiu   $a1, $zero, 0x003D         ## $a1 = 0000003D
/* 002EC 809A668C 10000004 */  beq     $zero, $zero, .L809A66A0   
/* 002F0 809A6690 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L809A6694:
/* 002F4 809A6694 0C024DDD */  jal     Gfx_CallSetupDL              
/* 002F8 809A6698 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 002FC 809A669C AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
.L809A66A0:
/* 00300 809A66A0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00304 809A66A4 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 00308 809A66A8 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 0030C 809A66AC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 00310 809A66B0 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 00314 809A66B4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00318 809A66B8 862F0042 */  lh      $t7, 0x0042($s1)           ## 00000042
/* 0031C 809A66BC 862B0040 */  lh      $t3, 0x0040($s1)           ## 00000040
/* 00320 809A66C0 86280044 */  lh      $t0, 0x0044($s1)           ## 00000044
/* 00324 809A66C4 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00328 809A66C8 000B6600 */  sll     $t4, $t3, 24               
/* 0032C 809A66CC 310900FF */  andi    $t1, $t0, 0x00FF           ## $t1 = 00000000
/* 00330 809A66D0 012C6825 */  or      $t5, $t1, $t4              ## $t5 = 00000000
/* 00334 809A66D4 00187400 */  sll     $t6, $t8, 16               
/* 00338 809A66D8 01AEC825 */  or      $t9, $t5, $t6              ## $t9 = 00000008
/* 0033C 809A66DC AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 00340 809A66E0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00344 809A66E4 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 00348 809A66E8 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 0034C 809A66EC 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00350 809A66F0 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00354 809A66F4 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00358 809A66F8 862E0048 */  lh      $t6, 0x0048($s1)           ## 00000048
/* 0035C 809A66FC 862F0046 */  lh      $t7, 0x0046($s1)           ## 00000046
/* 00360 809A6700 862B004A */  lh      $t3, 0x004A($s1)           ## 0000004A
/* 00364 809A6704 31D900FF */  andi    $t9, $t6, 0x00FF           ## $t9 = 00000008
/* 00368 809A6708 000FC600 */  sll     $t8, $t7, 24               
/* 0036C 809A670C 316900FF */  andi    $t1, $t3, 0x00FF           ## $t1 = 00000000
/* 00370 809A6710 01386825 */  or      $t5, $t1, $t8              ## $t5 = 00000000
/* 00374 809A6714 00194400 */  sll     $t0, $t9, 16               
/* 00378 809A6718 01A85025 */  or      $t2, $t5, $t0              ## $t2 = 00000008
/* 0037C 809A671C AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00380 809A6720 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00384 809A6724 3C04809A */  lui     $a0, %hi(D_809A6860)       ## $a0 = 809A0000
/* 00388 809A6728 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 0038C 809A672C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00390 809A6730 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00394 809A6734 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00398 809A6738 862F004C */  lh      $t7, 0x004C($s1)           ## 0000004C
/* 0039C 809A673C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 003A0 809A6740 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 003A4 809A6744 000F4880 */  sll     $t1, $t7,  2               
/* 003A8 809A6748 00892021 */  addu    $a0, $a0, $t1              
/* 003AC 809A674C 8C846860 */  lw      $a0, %lo(D_809A6860)($a0)  
/* 003B0 809A6750 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 003B4 809A6754 3C06809A */  lui     $a2, %hi(D_809A68E0)       ## $a2 = 809A0000
/* 003B8 809A6758 00047100 */  sll     $t6, $a0,  4               
/* 003BC 809A675C 000ECF02 */  srl     $t9, $t6, 28               
/* 003C0 809A6760 00196880 */  sll     $t5, $t9,  2               
/* 003C4 809A6764 010D4021 */  addu    $t0, $t0, $t5              
/* 003C8 809A6768 8D086FA8 */  lw      $t0, 0x6FA8($t0)           ## 80166FA8
/* 003CC 809A676C 0081C024 */  and     $t8, $a0, $at              
/* 003D0 809A6770 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 003D4 809A6774 03085021 */  addu    $t2, $t8, $t0              
/* 003D8 809A6778 01415821 */  addu    $t3, $t2, $at              
/* 003DC 809A677C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 003E0 809A6780 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 003E4 809A6784 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFDC
/* 003E8 809A6788 24C668E0 */  addiu   $a2, $a2, %lo(D_809A68E0)  ## $a2 = 809A68E0
/* 003EC 809A678C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 003F0 809A6790 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 003F4 809A6794 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 003F8 809A6798 8E290038 */  lw      $t1, 0x0038($s1)           ## 00000038
/* 003FC 809A679C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00400 809A67A0 24070137 */  addiu   $a3, $zero, 0x0137         ## $a3 = 00000137
/* 00404 809A67A4 0C031AD5 */  jal     func_800C6B54              
/* 00408 809A67A8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0040C 809A67AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00410 809A67B0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00414 809A67B4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00418 809A67B8 03E00008 */  jr      $ra                        
/* 0041C 809A67BC 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


