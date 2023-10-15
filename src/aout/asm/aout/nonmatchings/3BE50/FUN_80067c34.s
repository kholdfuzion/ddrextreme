.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80067c34
/* 58434 80067C34 C0FFBD27 */  addiu      $sp, $sp, -0x40
/* 58438 80067C38 2C00B3AF */  sw         $s3, 0x2c($sp)
/* 5843C 80067C3C 21980000 */  addu       $s3, $zero, $zero
/* 58440 80067C40 3000B4AF */  sw         $s4, 0x30($sp)
/* 58444 80067C44 21A08000 */  addu       $s4, $a0, $zero
/* 58448 80067C48 21200000 */  addu       $a0, $zero, $zero
/* 5844C 80067C4C 3400B5AF */  sw         $s5, 0x34($sp)
/* 58450 80067C50 21A8A000 */  addu       $s5, $a1, $zero
/* 58454 80067C54 1A80023C */  lui        $v0, %hi(D_801A27E8)
/* 58458 80067C58 2000B0AF */  sw         $s0, 0x20($sp)
/* 5845C 80067C5C E827508C */  lw         $s0, %lo(D_801A27E8)($v0)
/* 58460 80067C60 01000524 */  addiu      $a1, $zero, 1
/* 58464 80067C64 3800BFAF */  sw         $ra, 0x38($sp)
/* 58468 80067C68 2800B2AF */  sw         $s2, 0x28($sp)
/* 5846C 80067C6C C3B0010C */  jal        FUN_8006c30c
/* 58470 80067C70 2400B1AF */   sw        $s1, 0x24($sp)
/* 58474 80067C74 21200000 */  addu       $a0, $zero, $zero
/* 58478 80067C78 0BB2010C */  jal        FUN_8006c82c
/* 5847C 80067C7C FF000524 */   addiu     $a1, $zero, 0xff
/* 58480 80067C80 21200000 */  addu       $a0, $zero, $zero
/* 58484 80067C84 08000524 */  addiu      $a1, $zero, 8
/* 58488 80067C88 19000624 */  addiu      $a2, $zero, 0x19
/* 5848C 80067C8C 30010724 */  addiu      $a3, $zero, 0x130
/* 58490 80067C90 B0000224 */  addiu      $v0, $zero, 0xb0
/* 58494 80067C94 9CAE010C */  jal        FUN_8006ba70
/* 58498 80067C98 1000A2AF */   sw        $v0, 0x10($sp)
/* 5849C 80067C9C 21200000 */  addu       $a0, $zero, $zero
/* 584A0 80067CA0 33B1010C */  jal        FUN_8006c4cc
/* 584A4 80067CA4 21280000 */   addu      $a1, $zero, $zero
/* 584A8 80067CA8 21200000 */  addu       $a0, $zero, $zero
/* 584AC 80067CAC 81B1010C */  jal        FUN_8006c604
/* 584B0 80067CB0 FFFF0524 */   addiu     $a1, $zero, -1
/* 584B4 80067CB4 21880000 */  addu       $s1, $zero, $zero
.L80067CB8:
/* 584B8 80067CB8 80003226 */  addiu      $s2, $s1, 0x80
/* 584BC 80067CBC 4101422A */  slti       $v0, $s2, 0x141
/* 584C0 80067CC0 03004014 */  bnez       $v0, .L80067CD0
/* 584C4 80067CC4 80000324 */   addiu     $v1, $zero, 0x80
/* 584C8 80067CC8 40010224 */  addiu      $v0, $zero, 0x140
/* 584CC 80067CCC 23185100 */  subu       $v1, $v0, $s1
.L80067CD0:
/* 584D0 80067CD0 21200000 */  addu       $a0, $zero, $zero
/* 584D4 80067CD4 04000686 */  lh         $a2, 4($s0)
/* 584D8 80067CD8 06000786 */  lh         $a3, 6($s0)
/* 584DC 80067CDC F0000224 */  addiu      $v0, $zero, 0xf0
/* 584E0 80067CE0 1000A3AF */  sw         $v1, 0x10($sp)
/* 584E4 80067CE4 1400A2AF */  sw         $v0, 0x14($sp)
/* 584E8 80067CE8 0C000386 */  lh         $v1, 0xc($s0)
/* 584EC 80067CEC 21286002 */  addu       $a1, $s3, $zero
/* 584F0 80067CF0 1C00B5AF */  sw         $s5, 0x1c($sp)
/* 584F4 80067CF4 2130D100 */  addu       $a2, $a2, $s1
/* 584F8 80067CF8 25B2010C */  jal        FUN_8006c894
/* 584FC 80067CFC 1800A3AF */   sw        $v1, 0x18($sp)
/* 58500 80067D00 21200000 */  addu       $a0, $zero, $zero
/* 58504 80067D04 21286002 */  addu       $a1, $s3, $zero
/* 58508 80067D08 21308002 */  addu       $a2, $s4, $zero
/* 5850C 80067D0C 21388002 */  addu       $a3, $s4, $zero
/* 58510 80067D10 79B2010C */  jal        FUN_8006c9e4
/* 58514 80067D14 1000B4AF */   sw        $s4, 0x10($sp)
/* 58518 80067D18 21200000 */  addu       $a0, $zero, $zero
/* 5851C 80067D1C 16000686 */  lh         $a2, 0x16($s0)
/* 58520 80067D20 18000786 */  lh         $a3, 0x18($s0)
/* 58524 80067D24 FBB2010C */  jal        FUN_8006cbec
/* 58528 80067D28 21286002 */   addu      $a1, $s3, $zero
/* 5852C 80067D2C 21200000 */  addu       $a0, $zero, $zero
/* 58530 80067D30 21286002 */  addu       $a1, $s3, $zero
/* 58534 80067D34 60FF2626 */  addiu      $a2, $s1, -0xa0
/* 58538 80067D38 9BB2010C */  jal        FUN_8006ca6c
/* 5853C 80067D3C 88FF0724 */   addiu     $a3, $zero, -0x78
/* 58540 80067D40 21884002 */  addu       $s1, $s2, $zero
/* 58544 80067D44 4001222A */  slti       $v0, $s1, 0x140
/* 58548 80067D48 DBFF4014 */  bnez       $v0, .L80067CB8
/* 5854C 80067D4C 01007326 */   addiu     $s3, $s3, 1
/* 58550 80067D50 21200000 */  addu       $a0, $zero, $zero
/* 58554 80067D54 15B1010C */  jal        FUN_8006c454
/* 58558 80067D58 21286002 */   addu      $a1, $s3, $zero
/* 5855C 80067D5C EAAE010C */  jal        FUN_8006bba8
/* 58560 80067D60 21200000 */   addu      $a0, $zero, $zero
/* 58564 80067D64 3800BF8F */  lw         $ra, 0x38($sp)
/* 58568 80067D68 3400B58F */  lw         $s5, 0x34($sp)
/* 5856C 80067D6C 3000B48F */  lw         $s4, 0x30($sp)
/* 58570 80067D70 2C00B38F */  lw         $s3, 0x2c($sp)
/* 58574 80067D74 2800B28F */  lw         $s2, 0x28($sp)
/* 58578 80067D78 2400B18F */  lw         $s1, 0x24($sp)
/* 5857C 80067D7C 2000B08F */  lw         $s0, 0x20($sp)
/* 58580 80067D80 0800E003 */  jr         $ra
/* 58584 80067D84 4000BD27 */   addiu     $sp, $sp, 0x40
