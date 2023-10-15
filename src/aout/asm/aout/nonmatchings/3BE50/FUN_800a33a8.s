.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a33a8
/* 93BA8 800A33A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 93BAC 800A33AC 1400B1AF */  sw         $s1, 0x14($sp)
/* 93BB0 800A33B0 0F80113C */  lui        $s1, 0x800f
/* 93BB4 800A33B4 1B80023C */  lui        $v0, %hi(D_801B2EA0)
/* 93BB8 800A33B8 2000B4AF */  sw         $s4, 0x20($sp)
/* 93BBC 800A33BC A02E5424 */  addiu      $s4, $v0, %lo(D_801B2EA0)
/* 93BC0 800A33C0 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 93BC4 800A33C4 28006484 */  lh         $a0, %lo(D_800F0028)($v1)
/* 93BC8 800A33C8 26000224 */  addiu      $v0, $zero, 0x26
/* 93BCC 800A33CC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 93BD0 800A33D0 21986000 */  addu       $s3, $v1, $zero
/* 93BD4 800A33D4 2400BFAF */  sw         $ra, 0x24($sp)
/* 93BD8 800A33D8 1800B2AF */  sw         $s2, 0x18($sp)
/* 93BDC 800A33DC 13008210 */  beq        $a0, $v0, .L800A342C
/* 93BE0 800A33E0 1000B0AF */   sw        $s0, 0x10($sp)
/* 93BE4 800A33E4 21800000 */  addu       $s0, $zero, $zero
/* 93BE8 800A33E8 46051224 */  addiu      $s2, $zero, 0x546
.L800A33EC:
/* 93BEC 800A33EC 5DF8010C */  jal        FUN_8007e174
/* 93BF0 800A33F0 21200002 */   addu      $a0, $s0, $zero
/* 93BF4 800A33F4 09004010 */  beqz       $v0, .L800A341C
/* 93BF8 800A33F8 A8FF2426 */   addiu     $a0, $s1, -0x58
/* 93BFC 800A33FC 7800838C */  lw         $v1, 0x78($a0)
/* 93C00 800A3400 00000000 */  nop
/* 93C04 800A3404 46056228 */  slti       $v0, $v1, 0x546
/* 93C08 800A3408 04004010 */  beqz       $v0, .L800A341C
/* 93C0C 800A340C 3D006228 */   slti      $v0, $v1, 0x3d
/* 93C10 800A3410 02004014 */  bnez       $v0, .L800A341C
/* 93C14 800A3414 00000000 */   nop
/* 93C18 800A3418 780092AC */  sw         $s2, 0x78($a0)
.L800A341C:
/* 93C1C 800A341C 01001026 */  addiu      $s0, $s0, 1
/* 93C20 800A3420 0200022A */  slti       $v0, $s0, 2
/* 93C24 800A3424 F1FF4014 */  bnez       $v0, .L800A33EC
/* 93C28 800A3428 00000000 */   nop
.L800A342C:
/* 93C2C 800A342C A8FF2226 */  addiu      $v0, $s1, -0x58
/* 93C30 800A3430 7800448C */  lw         $a0, 0x78($v0)
/* 93C34 800A3434 00000000 */  nop
/* 93C38 800A3438 82058328 */  slti       $v1, $a0, 0x582
/* 93C3C 800A343C 05006010 */  beqz       $v1, .L800A3454
/* 93C40 800A3440 82050224 */   addiu     $v0, $zero, 0x582
/* 93C44 800A3444 988B020C */  jal        FUN_800a2e60
/* 93C48 800A3448 21208002 */   addu      $a0, $s4, $zero
/* 93C4C 800A344C 278D0208 */  j          .L800A349C
/* 93C50 800A3450 21100000 */   addu      $v0, $zero, $zero
.L800A3454:
/* 93C54 800A3454 0E008214 */  bne        $a0, $v0, .L800A3490
/* 93C58 800A3458 AA058328 */   slti      $v1, $a0, 0x5aa
/* 93C5C 800A345C 28006386 */  lh         $v1, 0x28($s3)
/* 93C60 800A3460 26000224 */  addiu      $v0, $zero, 0x26
/* 93C64 800A3464 08006210 */  beq        $v1, $v0, .L800A3488
/* 93C68 800A3468 1380023C */   lui       $v0, %hi(D_80129DA8)
/* 93C6C 800A346C A89D4224 */  addiu      $v0, $v0, %lo(D_80129DA8)
/* 93C70 800A3470 B40D438C */  lw         $v1, 0xdb4($v0)
/* 93C74 800A3474 0FFF0424 */  addiu      $a0, $zero, -0xf1
/* 93C78 800A3478 24186400 */  and        $v1, $v1, $a0
/* 93C7C 800A347C 20006334 */  ori        $v1, $v1, 0x20
/* 93C80 800A3480 268D0208 */  j          .L800A3498
/* 93C84 800A3484 B40D43AC */   sw        $v1, 0xdb4($v0)
.L800A3488:
/* 93C88 800A3488 278D0208 */  j          .L800A349C
/* 93C8C 800A348C 01000224 */   addiu     $v0, $zero, 1
.L800A3490:
/* 93C90 800A3490 02006010 */  beqz       $v1, .L800A349C
/* 93C94 800A3494 01000224 */   addiu     $v0, $zero, 1
.L800A3498:
/* 93C98 800A3498 21100000 */  addu       $v0, $zero, $zero
.L800A349C:
/* 93C9C 800A349C 2400BF8F */  lw         $ra, 0x24($sp)
/* 93CA0 800A34A0 2000B48F */  lw         $s4, 0x20($sp)
/* 93CA4 800A34A4 1C00B38F */  lw         $s3, 0x1c($sp)
/* 93CA8 800A34A8 1800B28F */  lw         $s2, 0x18($sp)
/* 93CAC 800A34AC 1400B18F */  lw         $s1, 0x14($sp)
/* 93CB0 800A34B0 1000B08F */  lw         $s0, 0x10($sp)
/* 93CB4 800A34B4 0800E003 */  jr         $ra
/* 93CB8 800A34B8 2800BD27 */   addiu     $sp, $sp, 0x28
