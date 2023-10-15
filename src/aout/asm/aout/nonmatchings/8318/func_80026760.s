.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_80026760
/* 16F60 80026760 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 16F64 80026764 0200033C */  lui        $v1, 2
/* 16F68 80026768 28856334 */  ori        $v1, $v1, 0x8528
/* 16F6C 8002676C 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 16F70 80026770 28004224 */  addiu      $v0, $v0, %lo(D_800F0028)
/* 16F74 80026774 1000BFAF */  sw         $ra, 0x10($sp)
/* 16F78 80026778 1E004484 */  lh         $a0, 0x1e($v0)
/* 16F7C 8002677C 21104300 */  addu       $v0, $v0, $v1
/* 16F80 80026780 04000324 */  addiu      $v1, $zero, 4
/* 16F84 80026784 21104400 */  addu       $v0, $v0, $a0
/* 16F88 80026788 01000424 */  addiu      $a0, $zero, 1
/* 16F8C 8002678C 6A19030C */  jal        FUN_800c65a8
/* 16F90 80026790 000043A0 */   sb        $v1, ($v0)
/* 16F94 80026794 1000BF8F */  lw         $ra, 0x10($sp)
/* 16F98 80026798 00000000 */  nop
/* 16F9C 8002679C 0800E003 */  jr         $ra
/* 16FA0 800267A0 1800BD27 */   addiu     $sp, $sp, 0x18
