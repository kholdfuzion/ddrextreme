.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DrawSyncCallback
/* 8A68 80018268 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 8A6C 8001826C 1000B0AF */  sw         $s0, 0x10($sp)
/* 8A70 80018270 0D80103C */  lui        $s0, %hi(D_800D2B9A)
/* 8A74 80018274 9A2B1026 */  addiu      $s0, $s0, %lo(D_800D2B9A)
/* 8A78 80018278 1800BFAF */  sw         $ra, 0x18($sp)
/* 8A7C 8001827C 1400B1AF */  sw         $s1, 0x14($sp)
/* 8A80 80018280 00000292 */  lbu        $v0, ($s0)
/* 8A84 80018284 00000000 */  nop
/* 8A88 80018288 0200422C */  sltiu      $v0, $v0, 2
/* 8A8C 8001828C 07004014 */  bnez       $v0, .L800182AC
/* 8A90 80018290 21888000 */   addu      $s1, $a0, $zero
/* 8A94 80018294 0D80023C */  lui        $v0, %hi(D_800D2B94)
/* 8A98 80018298 942B428C */  lw         $v0, %lo(D_800D2B94)($v0)
/* 8A9C 8001829C 0180043C */  lui        $a0, %hi(D_8001014C)
/* 8AA0 800182A0 4C018424 */  addiu      $a0, $a0, %lo(D_8001014C)
/* 8AA4 800182A4 09F84000 */  jalr       $v0
/* 8AA8 800182A8 21282002 */   addu      $a1, $s1, $zero
.L800182AC:
/* 8AAC 800182AC 0A00028E */  lw         $v0, 0xa($s0)
/* 8AB0 800182B0 0A0011AE */  sw         $s1, 0xa($s0)
/* 8AB4 800182B4 1800BF8F */  lw         $ra, 0x18($sp)
/* 8AB8 800182B8 1400B18F */  lw         $s1, 0x14($sp)
/* 8ABC 800182BC 1000B08F */  lw         $s0, 0x10($sp)
/* 8AC0 800182C0 0800E003 */  jr         $ra
/* 8AC4 800182C4 2000BD27 */   addiu     $sp, $sp, 0x20
