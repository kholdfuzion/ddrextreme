.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80069d3c
/* 5A53C 80069D3C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5A540 80069D40 1000B0AF */  sw         $s0, 0x10($sp)
/* 5A544 80069D44 21808000 */  addu       $s0, $a0, $zero
/* 5A548 80069D48 21280000 */  addu       $a1, $zero, $zero
/* 5A54C 80069D4C 1400BFAF */  sw         $ra, 0x14($sp)
/* 5A550 80069D50 F6A2000C */  jal        memset
/* 5A554 80069D54 F8030624 */   addiu     $a2, $zero, 0x3f8
/* 5A558 80069D58 21200002 */  addu       $a0, $s0, $zero
/* 5A55C 80069D5C 0F80023C */  lui        $v0, %hi(D_800F001C)
/* 5A560 80069D60 1C00458C */  lw         $a1, %lo(D_800F001C)($v0)
/* 5A564 80069D64 FFFF0324 */  addiu      $v1, $zero, -1
/* 5A568 80069D68 080003AE */  sw         $v1, 8($s0)
/* 5A56C 80069D6C 0C0003AE */  sw         $v1, 0xc($s0)
/* 5A570 80069D70 EAA5010C */  jal        FUN_800697a8
/* 5A574 80069D74 040005AE */   sw        $a1, 4($s0)
/* 5A578 80069D78 1400BF8F */  lw         $ra, 0x14($sp)
/* 5A57C 80069D7C 1000B08F */  lw         $s0, 0x10($sp)
/* 5A580 80069D80 0800E003 */  jr         $ra
/* 5A584 80069D84 1800BD27 */   addiu     $sp, $sp, 0x18
