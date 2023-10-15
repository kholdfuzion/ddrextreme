.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a974c
/* 99F4C 800A974C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 99F50 800A9750 1000B0AF */  sw         $s0, 0x10($sp)
/* 99F54 800A9754 0F80103C */  lui        $s0, %hi(D_800EC6E8)
/* 99F58 800A9758 E8C6038E */  lw         $v1, %lo(D_800EC6E8)($s0)
/* 99F5C 800A975C 01000224 */  addiu      $v0, $zero, 1
/* 99F60 800A9760 0D006210 */  beq        $v1, $v0, .L800A9798
/* 99F64 800A9764 1400BFAF */   sw        $ra, 0x14($sp)
/* 99F68 800A9768 F9C1020C */  jal        FUN_800b07e4
/* 99F6C 800A976C 00000000 */   nop
/* 99F70 800A9770 FFFF0324 */  addiu      $v1, $zero, -1
/* 99F74 800A9774 09004314 */  bne        $v0, $v1, .L800A979C
/* 99F78 800A9778 03000224 */   addiu     $v0, $zero, 3
/* 99F7C 800A977C 0180043C */  lui        $a0, %hi(D_80016CE0)
/* 99F80 800A9780 E06C8424 */  addiu      $a0, $a0, %lo(D_80016CE0)
/* 99F84 800A9784 FFFF0524 */  addiu      $a1, $zero, -1
/* 99F88 800A9788 58AA000C */  jal        error_8002a960
/* 99F8C 800A978C 21300000 */   addu      $a2, $zero, $zero
/* 99F90 800A9790 E7A50208 */  j          .L800A979C
/* 99F94 800A9794 03000224 */   addiu     $v0, $zero, 3
.L800A9798:
/* 99F98 800A9798 02000224 */  addiu      $v0, $zero, 2
.L800A979C:
/* 99F9C 800A979C E8C602AE */  sw         $v0, -0x3918($s0)
/* 99FA0 800A97A0 1400BF8F */  lw         $ra, 0x14($sp)
/* 99FA4 800A97A4 1000B08F */  lw         $s0, 0x10($sp)
/* 99FA8 800A97A8 0800E003 */  jr         $ra
/* 99FAC 800A97AC 1800BD27 */   addiu     $sp, $sp, 0x18
