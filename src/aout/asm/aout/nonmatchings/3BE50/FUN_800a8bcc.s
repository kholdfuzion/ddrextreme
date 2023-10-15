.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a8bcc
/* 993CC 800A8BCC D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 993D0 800A8BD0 1C00B1AF */  sw         $s1, 0x1c($sp)
/* 993D4 800A8BD4 21888000 */  addu       $s1, $a0, $zero
/* 993D8 800A8BD8 1000A427 */  addiu      $a0, $sp, 0x10
/* 993DC 800A8BDC 2000B2AF */  sw         $s2, 0x20($sp)
/* 993E0 800A8BE0 2190C000 */  addu       $s2, $a2, $zero
/* 993E4 800A8BE4 2400BFAF */  sw         $ra, 0x24($sp)
/* 993E8 800A8BE8 057C000C */  jal        strcpy
/* 993EC 800A8BEC 1800B0AF */   sw        $s0, 0x18($sp)
/* 993F0 800A8BF0 21202002 */  addu       $a0, $s1, $zero
/* 993F4 800A8BF4 1C80103C */  lui        $s0, %hi(D_801BF758)
/* 993F8 800A8BF8 057C000C */  jal        strcpy
/* 993FC 800A8BFC 58F70526 */   addiu     $a1, $s0, %lo(D_801BF758)
/* 99400 800A8C00 21202002 */  addu       $a0, $s1, $zero
/* 99404 800A8C04 3F71000C */  jal        FUN_8001c4fc
/* 99408 800A8C08 1000A527 */   addiu     $a1, $sp, 0x10
/* 9940C 800A8C0C 21202002 */  addu       $a0, $s1, $zero
/* 99410 800A8C10 0180053C */  lui        $a1, %hi(D_80016BDC)
/* 99414 800A8C14 3F71000C */  jal        FUN_8001c4fc
/* 99418 800A8C18 DC6BA524 */   addiu     $a1, $a1, %lo(D_80016BDC)
/* 9941C 800A8C1C 21202002 */  addu       $a0, $s1, $zero
/* 99420 800A8C20 3F71000C */  jal        FUN_8001c4fc
/* 99424 800A8C24 1000A527 */   addiu     $a1, $sp, 0x10
/* 99428 800A8C28 0800432E */  sltiu      $v1, $s2, 8
/* 9942C 800A8C2C 2A006010 */  beqz       $v1, .L800A8CD8
/* 99430 800A8C30 0180023C */   lui       $v0, %hi(D_80016C40)
/* 99434 800A8C34 406C4224 */  addiu      $v0, $v0, %lo(D_80016C40)
/* 99438 800A8C38 80181200 */  sll        $v1, $s2, 2
/* 9943C 800A8C3C 21186200 */  addu       $v1, $v1, $v0
/* 99440 800A8C40 0000648C */  lw         $a0, ($v1)
/* 99444 800A8C44 00000000 */  nop
/* 99448 800A8C48 08008000 */  jr         $a0
/* 9944C 800A8C4C 00000000 */   nop
/* 99450 800A8C50 21202002 */  addu       $a0, $s1, $zero
/* 99454 800A8C54 057C000C */  jal        strcpy
/* 99458 800A8C58 58F70526 */   addiu     $a1, $s0, -0x8a8
/* 9945C 800A8C5C 21202002 */  addu       $a0, $s1, $zero
/* 99460 800A8C60 3F71000C */  jal        FUN_8001c4fc
/* 99464 800A8C64 1000A527 */   addiu     $a1, $sp, 0x10
/* 99468 800A8C68 21202002 */  addu       $a0, $s1, $zero
/* 9946C 800A8C6C 0180053C */  lui        $a1, %hi(D_80016BE0)
/* 99470 800A8C70 3F71000C */  jal        FUN_8001c4fc
/* 99474 800A8C74 E06BA524 */   addiu     $a1, $a1, %lo(D_80016BE0)
/* 99478 800A8C78 37A30208 */  j          .L800A8CDC
/* 9947C 800A8C7C 21102002 */   addu      $v0, $s1, $zero
/* 99480 800A8C80 21202002 */  addu       $a0, $s1, $zero
/* 99484 800A8C84 0180053C */  lui        $a1, %hi(D_80016BEC)
/* 99488 800A8C88 3F71000C */  jal        FUN_8001c4fc
/* 9948C 800A8C8C EC6BA524 */   addiu     $a1, $a1, %lo(D_80016BEC)
/* 99490 800A8C90 37A30208 */  j          .L800A8CDC
/* 99494 800A8C94 21102002 */   addu      $v0, $s1, $zero
/* 99498 800A8C98 21202002 */  addu       $a0, $s1, $zero
/* 9949C 800A8C9C 0180053C */  lui        $a1, %hi(D_80016BF4)
/* 994A0 800A8CA0 3F71000C */  jal        FUN_8001c4fc
/* 994A4 800A8CA4 F46BA524 */   addiu     $a1, $a1, %lo(D_80016BF4)
/* 994A8 800A8CA8 37A30208 */  j          .L800A8CDC
/* 994AC 800A8CAC 21102002 */   addu      $v0, $s1, $zero
/* 994B0 800A8CB0 21202002 */  addu       $a0, $s1, $zero
/* 994B4 800A8CB4 0180053C */  lui        $a1, %hi(D_80016BFC)
/* 994B8 800A8CB8 3F71000C */  jal        FUN_8001c4fc
/* 994BC 800A8CBC FC6BA524 */   addiu     $a1, $a1, %lo(D_80016BFC)
/* 994C0 800A8CC0 37A30208 */  j          .L800A8CDC
/* 994C4 800A8CC4 21102002 */   addu      $v0, $s1, $zero
/* 994C8 800A8CC8 21202002 */  addu       $a0, $s1, $zero
/* 994CC 800A8CCC 0180053C */  lui        $a1, %hi(D_80016C04)
/* 994D0 800A8CD0 3F71000C */  jal        FUN_8001c4fc
/* 994D4 800A8CD4 046CA524 */   addiu     $a1, $a1, %lo(D_80016C04)
.L800A8CD8:
/* 994D8 800A8CD8 21102002 */  addu       $v0, $s1, $zero
.L800A8CDC:
/* 994DC 800A8CDC 2400BF8F */  lw         $ra, 0x24($sp)
/* 994E0 800A8CE0 2000B28F */  lw         $s2, 0x20($sp)
/* 994E4 800A8CE4 1C00B18F */  lw         $s1, 0x1c($sp)
/* 994E8 800A8CE8 1800B08F */  lw         $s0, 0x18($sp)
/* 994EC 800A8CEC 0800E003 */  jr         $ra
/* 994F0 800A8CF0 2800BD27 */   addiu     $sp, $sp, 0x28
