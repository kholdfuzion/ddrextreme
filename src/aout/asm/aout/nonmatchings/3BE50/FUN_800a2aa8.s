.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2aa8
/* 932A8 800A2AA8 FFFF8224 */  addiu      $v0, $a0, -1
/* 932AC 800A2AAC 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 932B0 800A2AB0 03004014 */  bnez       $v0, .L800A2AC0
/* 932B4 800A2AB4 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 932B8 800A2AB8 0800E003 */  jr         $ra
/* 932BC 800A2ABC 21100000 */   addu      $v0, $zero, $zero
.L800A2AC0:
/* 932C0 800A2AC0 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 932C4 800A2AC4 80200400 */  sll        $a0, $a0, 2
/* 932C8 800A2AC8 21186400 */  addu       $v1, $v1, $a0
/* 932CC 800A2ACC 0400628C */  lw         $v0, 4($v1)
/* 932D0 800A2AD0 00000000 */  nop
/* 932D4 800A2AD4 06004010 */  beqz       $v0, .L800A2AF0
/* 932D8 800A2AD8 00000000 */   nop
/* 932DC 800A2ADC 0E004284 */  lh         $v0, 0xe($v0)
/* 932E0 800A2AE0 00000000 */  nop
/* 932E4 800A2AE4 11004238 */  xori       $v0, $v0, 0x11
/* 932E8 800A2AE8 0800E003 */  jr         $ra
/* 932EC 800A2AEC 0100422C */   sltiu     $v0, $v0, 1
.L800A2AF0:
/* 932F0 800A2AF0 0800E003 */  jr         $ra
/* 932F4 800A2AF4 21100000 */   addu      $v0, $zero, $zero
