.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_80020594
/* 10D94 80020594 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 10D98 80020598 FF3F023C */  lui        $v0, 0x3fff
/* 10D9C 8002059C 0F80033C */  lui        $v1, %hi(D_800EFFA8)
/* 10DA0 800205A0 A8FF6324 */  addiu      $v1, $v1, %lo(D_800EFFA8)
/* 10DA4 800205A4 1000BFAF */  sw         $ra, 0x10($sp)
/* 10DA8 800205A8 7400658C */  lw         $a1, 0x74($v1)
/* 10DAC 800205AC FFFF4234 */  ori        $v0, $v0, 0xffff
/* 10DB0 800205B0 2B104500 */  sltu       $v0, $v0, $a1
/* 10DB4 800205B4 02004010 */  beqz       $v0, .L800205C0
/* 10DB8 800205B8 00000000 */   nop
/* 10DBC 800205BC 740060AC */  sw         $zero, 0x74($v1)
.L800205C0:
/* 10DC0 800205C0 7E97000C */  jal        FUN_80025df8
/* 10DC4 800205C4 04008424 */   addiu     $a0, $a0, 4
/* 10DC8 800205C8 1000BF8F */  lw         $ra, 0x10($sp)
/* 10DCC 800205CC 00000000 */  nop
/* 10DD0 800205D0 0800E003 */  jr         $ra
/* 10DD4 800205D4 1800BD27 */   addiu     $sp, $sp, 0x18
