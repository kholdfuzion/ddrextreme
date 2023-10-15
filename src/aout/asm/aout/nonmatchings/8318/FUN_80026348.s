.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80026348
/* 16B48 80026348 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 16B4C 8002634C 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 16B50 80026350 1C000224 */  addiu      $v0, $zero, 0x1c
/* 16B54 80026354 1380043C */  lui        $a0, %hi(D_80129DA8)
/* 16B58 80026358 A89D8424 */  addiu      $a0, $a0, %lo(D_80129DA8)
/* 16B5C 8002635C 1000BFAF */  sw         $ra, 0x10($sp)
/* 16B60 80026360 280062A4 */  sh         $v0, %lo(D_800F0028)($v1)
/* 16B64 80026364 B40D828C */  lw         $v0, 0xdb4($a0)
/* 16B68 80026368 0FFF0324 */  addiu      $v1, $zero, -0xf1
/* 16B6C 8002636C B00D80A0 */  sb         $zero, 0xdb0($a0)
/* 16B70 80026370 24104300 */  and        $v0, $v0, $v1
/* 16B74 80026374 20004234 */  ori        $v0, $v0, 0x20
/* 16B78 80026378 EDC1020C */  jal        FUN_800b07b4
/* 16B7C 8002637C B40D82AC */   sw        $v0, 0xdb4($a0)
/* 16B80 80026380 0F80033C */  lui        $v1, %hi(D_800F0020)
/* 16B84 80026384 6E55010C */  jal        FUN_800555b8
/* 16B88 80026388 200060AC */   sw        $zero, %lo(D_800F0020)($v1)
/* 16B8C 8002638C 1000BF8F */  lw         $ra, 0x10($sp)
/* 16B90 80026390 00000000 */  nop
/* 16B94 80026394 0800E003 */  jr         $ra
/* 16B98 80026398 1800BD27 */   addiu     $sp, $sp, 0x18
