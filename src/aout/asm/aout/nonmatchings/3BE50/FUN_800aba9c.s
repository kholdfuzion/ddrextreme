.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aba9c
/* 9C29C 800ABA9C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9C2A0 800ABAA0 1C80033C */  lui        $v1, %hi(D_801C3E88)
/* 9C2A4 800ABAA4 1000B0AF */  sw         $s0, 0x10($sp)
/* 9C2A8 800ABAA8 883E7024 */  addiu      $s0, $v1, %lo(D_801C3E88)
/* 9C2AC 800ABAAC 1400BFAF */  sw         $ra, 0x14($sp)
/* 9C2B0 800ABAB0 040000A2 */  sb         $zero, 4($s0)
/* 9C2B4 800ABAB4 883E648C */  lw         $a0, 0x3e88($v1)
/* 9C2B8 800ABAB8 FFFF0224 */  addiu      $v0, $zero, -1
/* 9C2BC 800ABABC 03008210 */  beq        $a0, $v0, .L800ABACC
/* 9C2C0 800ABAC0 00000000 */   nop
/* 9C2C4 800ABAC4 6618030C */  jal        FUN_800c6198
/* 9C2C8 800ABAC8 00000000 */   nop
.L800ABACC:
/* 9C2CC 800ABACC 1400BF8F */  lw         $ra, 0x14($sp)
/* 9C2D0 800ABAD0 07000224 */  addiu      $v0, $zero, 7
/* 9C2D4 800ABAD4 050002A2 */  sb         $v0, 5($s0)
/* 9C2D8 800ABAD8 1000B08F */  lw         $s0, 0x10($sp)
/* 9C2DC 800ABADC 0800E003 */  jr         $ra
/* 9C2E0 800ABAE0 1800BD27 */   addiu     $sp, $sp, 0x18
