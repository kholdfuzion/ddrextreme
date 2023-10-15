.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a25a0
/* 92DA0 800A25A0 FFFF8224 */  addiu      $v0, $a0, -1
/* 92DA4 800A25A4 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 92DA8 800A25A8 0F004010 */  beqz       $v0, .L800A25E8
/* 92DAC 800A25AC 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 92DB0 800A25B0 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 92DB4 800A25B4 80200400 */  sll        $a0, $a0, 2
/* 92DB8 800A25B8 21186400 */  addu       $v1, $v1, $a0
/* 92DBC 800A25BC 0400648C */  lw         $a0, 4($v1)
/* 92DC0 800A25C0 00000000 */  nop
/* 92DC4 800A25C4 08008010 */  beqz       $a0, .L800A25E8
/* 92DC8 800A25C8 00000000 */   nop
/* 92DCC 800A25CC 0400A014 */  bnez       $a1, .L800A25E0
/* 92DD0 800A25D0 01000224 */   addiu     $v0, $zero, 1
/* 92DD4 800A25D4 14008284 */  lh         $v0, 0x14($a0)
/* 92DD8 800A25D8 0800E003 */  jr         $ra
/* 92DDC 800A25DC 00000000 */   nop
.L800A25E0:
/* 92DE0 800A25E0 0300A210 */  beq        $a1, $v0, .L800A25F0
/* 92DE4 800A25E4 00000000 */   nop
.L800A25E8:
/* 92DE8 800A25E8 0800E003 */  jr         $ra
/* 92DEC 800A25EC 21100000 */   addu      $v0, $zero, $zero
.L800A25F0:
/* 92DF0 800A25F0 16008284 */  lh         $v0, 0x16($a0)
/* 92DF4 800A25F4 0800E003 */  jr         $ra
/* 92DF8 800A25F8 00000000 */   nop
