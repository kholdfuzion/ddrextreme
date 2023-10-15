.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bcb98
/* AD398 800BCB98 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* AD39C 800BCB9C 2800BFAF */  sw         $ra, 0x28($sp)
/* AD3A0 800BCBA0 2400B3AF */  sw         $s3, 0x24($sp)
/* AD3A4 800BCBA4 2000B2AF */  sw         $s2, 0x20($sp)
/* AD3A8 800BCBA8 1C00B1AF */  sw         $s1, 0x1c($sp)
/* AD3AC 800BCBAC 1800B0AF */  sw         $s0, 0x18($sp)
/* AD3B0 800BCBB0 21800000 */  addu       $s0, $zero, $zero
/* AD3B4 800BCBB4 08001124 */  addiu      $s1, $zero, 8
/* AD3B8 800BCBB8 1E80023C */  lui        $v0, %hi(D_801E188C)
/* AD3BC 800BCBBC 8C185224 */  addiu      $s2, $v0, %lo(D_801E188C)
/* AD3C0 800BCBC0 1E80023C */  lui        $v0, %hi(D_801E17A8)
/* AD3C4 800BCBC4 A8175324 */  addiu      $s3, $v0, %lo(D_801E17A8)
.L800BCBC8:
/* AD3C8 800BCBC8 80101000 */  sll        $v0, $s0, 2
/* AD3CC 800BCBCC 21105000 */  addu       $v0, $v0, $s0
/* AD3D0 800BCBD0 C0100200 */  sll        $v0, $v0, 3
/* AD3D4 800BCBD4 21285200 */  addu       $a1, $v0, $s2
/* AD3D8 800BCBD8 0D00A010 */  beqz       $a1, .L800BCC10
/* AD3DC 800BCBDC 08000624 */   addiu     $a2, $zero, 8
/* AD3E0 800BCBE0 B003428E */  lw         $v0, 0x3b0($s2)
/* AD3E4 800BCBE4 B0034486 */  lh         $a0, 0x3b0($s2)
/* AD3E8 800BCBE8 01004224 */  addiu      $v0, $v0, 1
/* AD3EC 800BCBEC B00342AE */  sw         $v0, 0x3b0($s2)
/* AD3F0 800BCBF0 003C1100 */  sll        $a3, $s1, 0x10
/* AD3F4 800BCBF4 1000A0AF */  sw         $zero, 0x10($sp)
/* AD3F8 800BCBF8 21101302 */  addu       $v0, $s0, $s3
/* AD3FC 800BCBFC 7C044290 */  lbu        $v0, 0x47c($v0)
/* AD400 800BCC00 00000000 */  nop
/* AD404 800BCC04 1400A2AF */  sw         $v0, 0x14($sp)
/* AD408 800BCC08 84F4020C */  jal        FUN_800bd210
/* AD40C 800BCC0C 033C0700 */   sra       $a3, $a3, 0x10
.L800BCC10:
/* AD410 800BCC10 01001026 */  addiu      $s0, $s0, 1
/* AD414 800BCC14 1700022A */  slti       $v0, $s0, 0x17
/* AD418 800BCC18 EBFF4014 */  bnez       $v0, .L800BCBC8
/* AD41C 800BCC1C 0A003126 */   addiu     $s1, $s1, 0xa
/* AD420 800BCC20 B2F4020C */  jal        FUN_800bd2c8
/* AD424 800BCC24 00000000 */   nop
/* AD428 800BCC28 1E80023C */  lui        $v0, %hi(D_801E17A8)
/* AD42C 800BCC2C A8174224 */  addiu      $v0, $v0, %lo(D_801E17A8)
/* AD430 800BCC30 1C104490 */  lbu        $a0, 0x101c($v0)
/* AD434 800BCC34 1D104590 */  lbu        $a1, 0x101d($v0)
/* AD438 800BCC38 1E104690 */  lbu        $a2, 0x101e($v0)
/* AD43C 800BCC3C 2C18478C */  lw         $a3, 0x182c($v0)
/* AD440 800BCC40 DCF3020C */  jal        FUN_800bcf70
/* AD444 800BCC44 00000000 */   nop
/* AD448 800BCC48 2800BF8F */  lw         $ra, 0x28($sp)
/* AD44C 800BCC4C 2400B38F */  lw         $s3, 0x24($sp)
/* AD450 800BCC50 2000B28F */  lw         $s2, 0x20($sp)
/* AD454 800BCC54 1C00B18F */  lw         $s1, 0x1c($sp)
/* AD458 800BCC58 1800B08F */  lw         $s0, 0x18($sp)
/* AD45C 800BCC5C 0800E003 */  jr         $ra
/* AD460 800BCC60 3000BD27 */   addiu     $sp, $sp, 0x30
