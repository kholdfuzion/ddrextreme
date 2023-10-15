.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2a58
/* 93258 800A2A58 FFFF8224 */  addiu      $v0, $a0, -1
/* 9325C 800A2A5C 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 93260 800A2A60 03004014 */  bnez       $v0, .L800A2A70
/* 93264 800A2A64 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 93268 800A2A68 0800E003 */  jr         $ra
/* 9326C 800A2A6C 21100000 */   addu      $v0, $zero, $zero
.L800A2A70:
/* 93270 800A2A70 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 93274 800A2A74 80200400 */  sll        $a0, $a0, 2
/* 93278 800A2A78 21186400 */  addu       $v1, $v1, $a0
/* 9327C 800A2A7C 0400628C */  lw         $v0, 4($v1)
/* 93280 800A2A80 00000000 */  nop
/* 93284 800A2A84 06004010 */  beqz       $v0, .L800A2AA0
/* 93288 800A2A88 00000000 */   nop
/* 9328C 800A2A8C 0E004294 */  lhu        $v0, 0xe($v0)
/* 93290 800A2A90 00000000 */  nop
/* 93294 800A2A94 FEFF4224 */  addiu      $v0, $v0, -2
/* 93298 800A2A98 0800E003 */  jr         $ra
/* 9329C 800A2A9C 0B00422C */   sltiu     $v0, $v0, 0xb
.L800A2AA0:
/* 932A0 800A2AA0 0800E003 */  jr         $ra
/* 932A4 800A2AA4 21100000 */   addu      $v0, $zero, $zero
