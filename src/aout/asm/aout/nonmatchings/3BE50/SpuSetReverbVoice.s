.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SpuSetReverbVoice
/* A8D94 800B8594 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* A8D98 800B8598 1000BFAF */  sw         $ra, 0x10($sp)
/* A8D9C 800B859C CC000624 */  addiu      $a2, $zero, 0xcc
/* A8DA0 800B85A0 71E1020C */  jal        _SpuSetAnyVoice
/* A8DA4 800B85A4 CD000724 */   addiu     $a3, $zero, 0xcd
/* A8DA8 800B85A8 1000BF8F */  lw         $ra, 0x10($sp)
/* A8DAC 800B85AC 1800BD27 */  addiu      $sp, $sp, 0x18
/* A8DB0 800B85B0 0800E003 */  jr         $ra
/* A8DB4 800B85B4 00000000 */   nop
/* A8DB8 800B85B8 00000000 */  nop
/* A8DBC 800B85BC 00000000 */  nop
/* A8DC0 800B85C0 00000000 */  nop
