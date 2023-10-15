.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80049F58
/* 3A758 80049F58 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 3A75C 80049F5C 21200000 */  addu       $a0, $zero, $zero
/* 3A760 80049F60 08000524 */  addiu      $a1, $zero, 8
/* 3A764 80049F64 19000624 */  addiu      $a2, $zero, 0x19
/* 3A768 80049F68 30010724 */  addiu      $a3, $zero, 0x130
/* 3A76C 80049F6C 1800B0AF */  sw         $s0, 0x18($sp)
/* 3A770 80049F70 B0001024 */  addiu      $s0, $zero, 0xb0
/* 3A774 80049F74 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 3A778 80049F78 766C010C */  jal        FUN_8005b1d8
/* 3A77C 80049F7C 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A780 80049F80 01000424 */  addiu      $a0, $zero, 1
/* 3A784 80049F84 08000524 */  addiu      $a1, $zero, 8
/* 3A788 80049F88 19000624 */  addiu      $a2, $zero, 0x19
/* 3A78C 80049F8C 30010724 */  addiu      $a3, $zero, 0x130
/* 3A790 80049F90 766C010C */  jal        FUN_8005b1d8
/* 3A794 80049F94 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A798 80049F98 03000424 */  addiu      $a0, $zero, 3
/* 3A79C 80049F9C 08000524 */  addiu      $a1, $zero, 8
/* 3A7A0 80049FA0 19000624 */  addiu      $a2, $zero, 0x19
/* 3A7A4 80049FA4 30010724 */  addiu      $a3, $zero, 0x130
/* 3A7A8 80049FA8 766C010C */  jal        FUN_8005b1d8
/* 3A7AC 80049FAC 1000B0AF */   sw        $s0, 0x10($sp)
/* 3A7B0 80049FB0 04000424 */  addiu      $a0, $zero, 4
/* 3A7B4 80049FB4 FFFF0524 */  addiu      $a1, $zero, -1
/* 3A7B8 80049FB8 FFFF0624 */  addiu      $a2, $zero, -1
/* 3A7BC 80049FBC FFFF0724 */  addiu      $a3, $zero, -1
/* 3A7C0 80049FC0 FFFF0224 */  addiu      $v0, $zero, -1
/* 3A7C4 80049FC4 766C010C */  jal        FUN_8005b1d8
/* 3A7C8 80049FC8 1000A2AF */   sw        $v0, 0x10($sp)
/* 3A7CC 80049FCC 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 3A7D0 80049FD0 1800B08F */  lw         $s0, 0x18($sp)
/* 3A7D4 80049FD4 0800E003 */  jr         $ra
/* 3A7D8 80049FD8 2000BD27 */   addiu     $sp, $sp, 0x20
