.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800279C8
/* 181C8 800279C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 181CC 800279CC 0F80023C */  lui        $v0, %hi(D_800F0020)
/* 181D0 800279D0 08008424 */  addiu      $a0, $a0, 8
/* 181D4 800279D4 1000BFAF */  sw         $ra, 0x10($sp)
/* 181D8 800279D8 FD77020C */  jal        FUN_8009dff4
/* 181DC 800279DC 200040AC */   sw        $zero, %lo(D_800F0020)($v0)
/* 181E0 800279E0 1000BF8F */  lw         $ra, 0x10($sp)
/* 181E4 800279E4 00000000 */  nop
/* 181E8 800279E8 0800E003 */  jr         $ra
/* 181EC 800279EC 1800BD27 */   addiu     $sp, $sp, 0x18
