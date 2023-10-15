.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80052db4
/* 435B4 80052DB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 435B8 80052DB8 06000424 */  addiu      $a0, $zero, 6
/* 435BC 80052DBC FFFF0524 */  addiu      $a1, $zero, -1
/* 435C0 80052DC0 FFFF0624 */  addiu      $a2, $zero, -1
/* 435C4 80052DC4 FFFF0724 */  addiu      $a3, $zero, -1
/* 435C8 80052DC8 1800B0AF */  sw         $s0, 0x18($sp)
/* 435CC 80052DCC FFFF1024 */  addiu      $s0, $zero, -1
/* 435D0 80052DD0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 435D4 80052DD4 766C010C */  jal        FUN_8005b1d8
/* 435D8 80052DD8 1000B0AF */   sw        $s0, 0x10($sp)
/* 435DC 80052DDC 07000424 */  addiu      $a0, $zero, 7
/* 435E0 80052DE0 FFFF0524 */  addiu      $a1, $zero, -1
/* 435E4 80052DE4 FFFF0624 */  addiu      $a2, $zero, -1
/* 435E8 80052DE8 FFFF0724 */  addiu      $a3, $zero, -1
/* 435EC 80052DEC 766C010C */  jal        FUN_8005b1d8
/* 435F0 80052DF0 1000B0AF */   sw        $s0, 0x10($sp)
/* 435F4 80052DF4 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 435F8 80052DF8 1800B08F */  lw         $s0, 0x18($sp)
/* 435FC 80052DFC 0800E003 */  jr         $ra
/* 43600 80052E00 2000BD27 */   addiu     $sp, $sp, 0x20
