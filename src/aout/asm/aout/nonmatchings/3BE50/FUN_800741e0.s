.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800741e0
/* 649E0 800741E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 649E4 800741E4 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 649E8 800741E8 21988000 */  addu       $s3, $a0, $zero
/* 649EC 800741EC 0800622E */  sltiu      $v0, $s3, 8
/* 649F0 800741F0 2400BFAF */  sw         $ra, 0x24($sp)
/* 649F4 800741F4 2000B4AF */  sw         $s4, 0x20($sp)
/* 649F8 800741F8 1800B2AF */  sw         $s2, 0x18($sp)
/* 649FC 800741FC 1400B1AF */  sw         $s1, 0x14($sp)
/* 64A00 80074200 03004014 */  bnez       $v0, .L80074210
/* 64A04 80074204 1000B0AF */   sw        $s0, 0x10($sp)
/* 64A08 80074208 A4D00108 */  j          .L80074290
/* 64A0C 8007420C FFFF0224 */   addiu     $v0, $zero, -1
.L80074210:
/* 64A10 80074210 1B80073C */  lui        $a3, %hi(D_801B0C98)
/* 64A14 80074214 980CE724 */  addiu      $a3, $a3, %lo(D_801B0C98)
/* 64A18 80074218 80201300 */  sll        $a0, $s3, 2
/* 64A1C 8007421C 21209300 */  addu       $a0, $a0, $s3
/* 64A20 80074220 80200400 */  sll        $a0, $a0, 2
/* 64A24 80074224 0C00E224 */  addiu      $v0, $a3, 0xc
/* 64A28 80074228 21A08200 */  addu       $s4, $a0, $v0
/* 64A2C 8007422C 02000324 */  addiu      $v1, $zero, 2
/* 64A30 80074230 21888700 */  addu       $s1, $a0, $a3
/* 64A34 80074234 0800E224 */  addiu      $v0, $a3, 8
/* 64A38 80074238 21808200 */  addu       $s0, $a0, $v0
/* 64A3C 8007423C 000083AE */  sw         $v1, ($s4)
/* 64A40 80074240 000025AE */  sw         $a1, ($s1)
/* 64A44 80074244 1000E524 */  addiu      $a1, $a3, 0x10
/* 64A48 80074248 0F80023C */  lui        $v0, %hi(D_800F0014)
/* 64A4C 8007424C 21908500 */  addu       $s2, $a0, $a1
/* 64A50 80074250 000006AE */  sw         $a2, ($s0)
/* 64A54 80074254 1400438C */  lw         $v1, %lo(D_800F0014)($v0)
/* 64A58 80074258 2138E400 */  addu       $a3, $a3, $a0
/* 64A5C 8007425C 000043AE */  sw         $v1, ($s2)
/* 64A60 80074260 0000248E */  lw         $a0, ($s1)
/* 64A64 80074264 0000058E */  lw         $a1, ($s0)
/* 64A68 80074268 0400E68C */  lw         $a2, 4($a3)
/* 64A6C 8007426C 67CB010C */  jal        FUN_80072d9c
/* 64A70 80074270 00000000 */   nop
/* 64A74 80074274 06004104 */  bgez       $v0, .L80074290
/* 64A78 80074278 21106002 */   addu      $v0, $s3, $zero
/* 64A7C 8007427C FFFF0224 */  addiu      $v0, $zero, -1
/* 64A80 80074280 000020AE */  sw         $zero, ($s1)
/* 64A84 80074284 000000AE */  sw         $zero, ($s0)
/* 64A88 80074288 000080AE */  sw         $zero, ($s4)
/* 64A8C 8007428C 000040AE */  sw         $zero, ($s2)
.L80074290:
/* 64A90 80074290 2400BF8F */  lw         $ra, 0x24($sp)
/* 64A94 80074294 2000B48F */  lw         $s4, 0x20($sp)
/* 64A98 80074298 1C00B38F */  lw         $s3, 0x1c($sp)
/* 64A9C 8007429C 1800B28F */  lw         $s2, 0x18($sp)
/* 64AA0 800742A0 1400B18F */  lw         $s1, 0x14($sp)
/* 64AA4 800742A4 1000B08F */  lw         $s0, 0x10($sp)
/* 64AA8 800742A8 0800E003 */  jr         $ra
/* 64AAC 800742AC 2800BD27 */   addiu     $sp, $sp, 0x28
