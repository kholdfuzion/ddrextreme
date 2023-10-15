.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80049eb4
/* 3A6B4 80049EB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3A6B8 80049EB8 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 3A6BC 80049EBC 6D4B010C */  jal        FUN_80052db4
/* 3A6C0 80049EC0 1800B0AF */   sw        $s0, 0x18($sp)
/* 3A6C4 80049EC4 9128010C */  jal        FUN_8004a244
/* 3A6C8 80049EC8 FFFF1024 */   addiu     $s0, $zero, -1
/* 3A6CC 80049ECC 21200000 */  addu       $a0, $zero, $zero
/* 3A6D0 80049ED0 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A6D4 80049ED4 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A6D8 80049ED8 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A6DC 80049EDC 766C010C */  jal        FUN_8005b1d8
/* 3A6E0 80049EE0 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A6E4 80049EE4 01000424 */  addiu      $a0, $zero, 1
/* 3A6E8 80049EE8 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A6EC 80049EEC FFFF0624 */  addiu      $a2, $zero, -1
/* 3A6F0 80049EF0 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A6F4 80049EF4 766C010C */  jal        FUN_8005b1d8
/* 3A6F8 80049EF8 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A6FC 80049EFC 03000424 */  addiu      $a0, $zero, 3
/* 3A700 80049F00 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A704 80049F04 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A708 80049F08 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A70C 80049F0C 766C010C */  jal        FUN_8005b1d8
/* 3A710 80049F10 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A714 80049F14 04000424 */  addiu      $a0, $zero, 4
/* 3A718 80049F18 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A71C 80049F1C FFFF0624 */  addiu      $a2, $zero, -1
/* 3A720 80049F20 FFFF0724 */  addiu      $a3, $zero, -1
/* 3A724 80049F24 766C010C */  jal        FUN_8005b1d8
/* 3A728 80049F28 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A72C 80049F2C 0F80023C */  lui        $v0, %hi(D_800F004E)
/* 3A730 80049F30 4E004380 */  lb         $v1, %lo(D_800F004E)($v0)
/* 3A734 80049F34 00000000 */  nop
/* 3A738 80049F38 03006010 */  beqz       $v1, .L80049F48
/* 3A73C 80049F3C 00000000 */   nop
/* 3A740 80049F40 6CD5010C */  jal        FUN_800755b0
/* 3A744 80049F44 00000000 */   nop
.L80049F48:
/* 3A748 80049F48 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 3A74C 80049F4C 1800B08F */  lw         $s0, 0x18($sp)
/* 3A750 80049F50 0800E003 */  jr         $ra
/* 3A754 80049F54 2000BD27 */   addiu     $sp, $sp, 0x20
