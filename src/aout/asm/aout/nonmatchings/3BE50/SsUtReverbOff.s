.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SsUtReverbOff
/* A7334 800B6B34 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A7338 800B6B38 1000BFAF */  sw         $ra, 0x10($sp)
/* A733C 800B6B3C D5DA020C */  jal        _SpuInit
/* A7340 800B6B40 21200000 */   addu      $a0, $zero, $zero
/* A7344 800B6B44 1000BF8F */  lw         $ra, 0x10($sp)
/* A7348 800B6B48 1800BD27 */  addiu      $sp, $sp, 0x18
/* A734C 800B6B4C 0800E003 */  jr         $ra
/* A7350 800B6B50 00000000 */   nop
