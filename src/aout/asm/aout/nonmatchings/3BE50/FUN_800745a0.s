.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800745a0
/* 64DA0 800745A0 21280000 */  addu       $a1, $zero, $zero
/* 64DA4 800745A4 1B80023C */  lui        $v0, %hi(D_801B0C98)
/* 64DA8 800745A8 980C4324 */  addiu      $v1, $v0, %lo(D_801B0C98)
.L800745AC:
/* 64DAC 800745AC 0000628C */  lw         $v0, ($v1)
/* 64DB0 800745B0 00000000 */  nop
/* 64DB4 800745B4 09004414 */  bne        $v0, $a0, .L800745DC
/* 64DB8 800745B8 00000000 */   nop
/* 64DBC 800745BC 0800628C */  lw         $v0, 8($v1)
/* 64DC0 800745C0 00000000 */  nop
/* 64DC4 800745C4 05004010 */  beqz       $v0, .L800745DC
/* 64DC8 800745C8 00000000 */   nop
/* 64DCC 800745CC 0C00628C */  lw         $v0, 0xc($v1)
/* 64DD0 800745D0 00000000 */  nop
/* 64DD4 800745D4 07004014 */  bnez       $v0, .L800745F4
/* 64DD8 800745D8 2110A000 */   addu      $v0, $a1, $zero
.L800745DC:
/* 64DDC 800745DC 0100A524 */  addiu      $a1, $a1, 1
/* 64DE0 800745E0 0800A228 */  slti       $v0, $a1, 8
/* 64DE4 800745E4 F1FF4014 */  bnez       $v0, .L800745AC
/* 64DE8 800745E8 14006324 */   addiu     $v1, $v1, 0x14
/* 64DEC 800745EC 0800E003 */  jr         $ra
/* 64DF0 800745F0 FFFF0224 */   addiu     $v0, $zero, -1
.L800745F4:
/* 64DF4 800745F4 0800E003 */  jr         $ra
/* 64DF8 800745F8 00000000 */   nop
