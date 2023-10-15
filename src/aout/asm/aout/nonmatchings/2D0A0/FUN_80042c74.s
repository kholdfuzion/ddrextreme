.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80042c74
/* 33474 80042C74 1780023C */  lui        $v0, %hi(D_8016EB00)
/* 33478 80042C78 00EB438C */  lw         $v1, %lo(D_8016EB00)($v0)
/* 3347C 80042C7C D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 33480 80042C80 1000B0AF */  sw         $s0, 0x10($sp)
/* 33484 80042C84 21800000 */  addu       $s0, $zero, $zero
/* 33488 80042C88 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 3348C 80042C8C 21984000 */  addu       $s3, $v0, $zero
/* 33490 80042C90 2400BFAF */  sw         $ra, 0x24($sp)
/* 33494 80042C94 2000B4AF */  sw         $s4, 0x20($sp)
/* 33498 80042C98 1800B2AF */  sw         $s2, 0x18($sp)
/* 3349C 80042C9C 17006018 */  blez       $v1, .L80042CFC
/* 334A0 80042CA0 1400B1AF */   sw        $s1, 0x14($sp)
/* 334A4 80042CA4 1380123C */  lui        $s2, %hi(D_80129DA8)
/* 334A8 80042CA8 A89D5426 */  addiu      $s4, $s2, %lo(D_80129DA8)
/* 334AC 80042CAC 1580023C */  lui        $v0, %hi(D_80157400)
/* 334B0 80042CB0 00745124 */  addiu      $s1, $v0, %lo(D_80157400)
.L80042CB4:
/* 334B4 80042CB4 01001026 */  addiu      $s0, $s0, 1
/* 334B8 80042CB8 A89D428E */  lw         $v0, -0x6258($s2)
/* 334BC 80042CBC 2C0C838E */  lw         $v1, 0xc2c($s4)
/* 334C0 80042CC0 40280200 */  sll        $a1, $v0, 1
/* 334C4 80042CC4 2128A200 */  addu       $a1, $a1, $v0
/* 334C8 80042CC8 00290500 */  sll        $a1, $a1, 4
/* 334CC 80042CCC 2328A200 */  subu       $a1, $a1, $v0
/* 334D0 80042CD0 C0280500 */  sll        $a1, $a1, 3
/* 334D4 80042CD4 2328A200 */  subu       $a1, $a1, $v0
/* 334D8 80042CD8 C0290500 */  sll        $a1, $a1, 7
/* 334DC 80042CDC 0400648C */  lw         $a0, 4($v1)
/* 334E0 80042CE0 D685000C */  jal        AddPrim
/* 334E4 80042CE4 2128B100 */   addu      $a1, $a1, $s1
/* 334E8 80042CE8 00EB628E */  lw         $v0, -0x1500($s3)
/* 334EC 80042CEC 00000000 */  nop
/* 334F0 80042CF0 2A100202 */  slt        $v0, $s0, $v0
/* 334F4 80042CF4 EFFF4014 */  bnez       $v0, .L80042CB4
/* 334F8 80042CF8 28003126 */   addiu     $s1, $s1, 0x28
.L80042CFC:
/* 334FC 80042CFC 2400BF8F */  lw         $ra, 0x24($sp)
/* 33500 80042D00 2000B48F */  lw         $s4, 0x20($sp)
/* 33504 80042D04 00EB60AE */  sw         $zero, -0x1500($s3)
/* 33508 80042D08 1C00B38F */  lw         $s3, 0x1c($sp)
/* 3350C 80042D0C 1800B28F */  lw         $s2, 0x18($sp)
/* 33510 80042D10 1400B18F */  lw         $s1, 0x14($sp)
/* 33514 80042D14 1000B08F */  lw         $s0, 0x10($sp)
/* 33518 80042D18 0800E003 */  jr         $ra
/* 3351C 80042D1C 2800BD27 */   addiu     $sp, $sp, 0x28
