.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab7a0
/* 9BFA0 800AB7A0 01008424 */  addiu      $a0, $a0, 1
/* 9BFA4 800AB7A4 FEFF0724 */  addiu      $a3, $zero, -2
/* 9BFA8 800AB7A8 03000624 */  addiu      $a2, $zero, 3
/* 9BFAC 800AB7AC 1C80023C */  lui        $v0, %hi(D_801BFBB8)
/* 9BFB0 800AB7B0 B8FB4324 */  addiu      $v1, $v0, %lo(D_801BFBB8)
/* 9BFB4 800AB7B4 1D000524 */  addiu      $a1, $zero, 0x1d
.L800AB7B8:
/* 9BFB8 800AB7B8 10006290 */  lbu        $v0, 0x10($v1)
/* 9BFBC 800AB7BC 00000000 */  nop
/* 9BFC0 800AB7C0 07004414 */  bne        $v0, $a0, .L800AB7E0
/* 9BFC4 800AB7C4 00000000 */   nop
/* 9BFC8 800AB7C8 000060A0 */  sb         $zero, ($v1)
/* 9BFCC 800AB7CC 010060A0 */  sb         $zero, 1($v1)
/* 9BFD0 800AB7D0 0E0067A0 */  sb         $a3, 0xe($v1)
/* 9BFD4 800AB7D4 0F0066A0 */  sb         $a2, 0xf($v1)
/* 9BFD8 800AB7D8 100060A0 */  sb         $zero, 0x10($v1)
/* 9BFDC 800AB7DC 140060AC */  sw         $zero, 0x14($v1)
.L800AB7E0:
/* 9BFE0 800AB7E0 FFFFA524 */  addiu      $a1, $a1, -1
/* 9BFE4 800AB7E4 F4FFA104 */  bgez       $a1, .L800AB7B8
/* 9BFE8 800AB7E8 18006324 */   addiu     $v1, $v1, 0x18
/* 9BFEC 800AB7EC 0800E003 */  jr         $ra
/* 9BFF0 800AB7F0 00000000 */   nop
