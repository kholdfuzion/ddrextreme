.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a2c34
/* 93434 800A2C34 FFFF8224 */  addiu      $v0, $a0, -1
/* 93438 800A2C38 3F00422C */  sltiu      $v0, $v0, 0x3f
/* 9343C 800A2C3C 08004010 */  beqz       $v0, .L800A2C60
/* 93440 800A2C40 1B80023C */   lui       $v0, %hi(D_801B2B88)
/* 93444 800A2C44 882B438C */  lw         $v1, %lo(D_801B2B88)($v0)
/* 93448 800A2C48 80200400 */  sll        $a0, $a0, 2
/* 9344C 800A2C4C 21186400 */  addu       $v1, $v1, $a0
/* 93450 800A2C50 0400628C */  lw         $v0, 4($v1)
/* 93454 800A2C54 00000000 */  nop
/* 93458 800A2C58 03004014 */  bnez       $v0, .L800A2C68
/* 9345C 800A2C5C 00000000 */   nop
.L800A2C60:
/* 93460 800A2C60 0800E003 */  jr         $ra
/* 93464 800A2C64 21100000 */   addu      $v0, $zero, $zero
.L800A2C68:
/* 93468 800A2C68 08004284 */  lh         $v0, 8($v0)
/* 9346C 800A2C6C 0800E003 */  jr         $ra
/* 93470 800A2C70 00000000 */   nop
