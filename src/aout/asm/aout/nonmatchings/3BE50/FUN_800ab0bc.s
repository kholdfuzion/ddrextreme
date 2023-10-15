.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab0bc
/* 9B8BC 800AB0BC FEFF0524 */  addiu      $a1, $zero, -2
/* 9B8C0 800AB0C0 03000424 */  addiu      $a0, $zero, 3
/* 9B8C4 800AB0C4 1C80023C */  lui        $v0, %hi(D_801BFBB8)
/* 9B8C8 800AB0C8 B8FB4224 */  addiu      $v0, $v0, %lo(D_801BFBB8)
/* 9B8CC 800AB0CC 1D000324 */  addiu      $v1, $zero, 0x1d
.L800AB0D0:
/* 9B8D0 800AB0D0 000040A0 */  sb         $zero, ($v0)
/* 9B8D4 800AB0D4 010040A0 */  sb         $zero, 1($v0)
/* 9B8D8 800AB0D8 0E0045A0 */  sb         $a1, 0xe($v0)
/* 9B8DC 800AB0DC 0F0044A0 */  sb         $a0, 0xf($v0)
/* 9B8E0 800AB0E0 100040A0 */  sb         $zero, 0x10($v0)
/* 9B8E4 800AB0E4 140040AC */  sw         $zero, 0x14($v0)
/* 9B8E8 800AB0E8 FFFF6324 */  addiu      $v1, $v1, -1
/* 9B8EC 800AB0EC F8FF6104 */  bgez       $v1, .L800AB0D0
/* 9B8F0 800AB0F0 18004224 */   addiu     $v0, $v0, 0x18
/* 9B8F4 800AB0F4 0800E003 */  jr         $ra
/* 9B8F8 800AB0F8 00000000 */   nop
