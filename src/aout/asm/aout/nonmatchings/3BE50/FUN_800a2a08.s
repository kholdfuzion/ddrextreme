.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2a08
/* 93208 800A2A08 FFFF8224 */  addiu      $v0, $a0, -1
/* 9320C 800A2A0C 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 93210 800A2A10 03004014 */  bnez       $v0, .L800A2A20
/* 93214 800A2A14 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 93218 800A2A18 0800E003 */  jr         $ra
/* 9321C 800A2A1C 21100000 */   addu      $v0, $zero, $zero
.L800A2A20:
/* 93220 800A2A20 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 93224 800A2A24 80200400 */  sll        $a0, $a0, 2
/* 93228 800A2A28 21186400 */  addu       $v1, $v1, $a0
/* 9322C 800A2A2C 0400628C */  lw         $v0, 4($v1)
/* 93230 800A2A30 00000000 */  nop
/* 93234 800A2A34 06004010 */  beqz       $v0, .L800A2A50
/* 93238 800A2A38 00000000 */   nop
/* 9323C 800A2A3C 0E004284 */  lh         $v0, 0xe($v0)
/* 93240 800A2A40 00000000 */  nop
/* 93244 800A2A44 10004238 */  xori       $v0, $v0, 0x10
/* 93248 800A2A48 0800E003 */  jr         $ra
/* 9324C 800A2A4C 0100422C */   sltiu     $v0, $v0, 1
.L800A2A50:
/* 93250 800A2A50 0800E003 */  jr         $ra
/* 93254 800A2A54 21100000 */   addu      $v0, $zero, $zero
