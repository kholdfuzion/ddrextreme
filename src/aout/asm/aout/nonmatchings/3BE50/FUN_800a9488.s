.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a9488
/* 99C88 800A9488 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 99C8C 800A948C 1400B1AF */  sw         $s1, 0x14($sp)
/* 99C90 800A9490 21888000 */  addu       $s1, $a0, $zero
/* 99C94 800A9494 1000B0AF */  sw         $s0, 0x10($sp)
/* 99C98 800A9498 21800000 */  addu       $s0, $zero, $zero
/* 99C9C 800A949C 1800BFAF */  sw         $ra, 0x18($sp)
.L800A94A0:
/* 99CA0 800A94A0 1BA2020C */  jal        FUN_800a886c
/* 99CA4 800A94A4 21200002 */   addu      $a0, $s0, $zero
/* 99CA8 800A94A8 21184000 */  addu       $v1, $v0, $zero
/* 99CAC 800A94AC 07006010 */  beqz       $v1, .L800A94CC
/* 99CB0 800A94B0 00000000 */   nop
/* 99CB4 800A94B4 16006294 */  lhu        $v0, 0x16($v1)
/* 99CB8 800A94B8 00000000 */  nop
/* 99CBC 800A94BC 04005114 */  bne        $v0, $s1, .L800A94D0
/* 99CC0 800A94C0 01001026 */   addiu     $s0, $s0, 1
/* 99CC4 800A94C4 38A50208 */  j          .L800A94E0
/* 99CC8 800A94C8 21106000 */   addu      $v0, $v1, $zero
.L800A94CC:
/* 99CCC 800A94CC 01001026 */  addiu      $s0, $s0, 1
.L800A94D0:
/* 99CD0 800A94D0 F900022A */  slti       $v0, $s0, 0xf9
/* 99CD4 800A94D4 F2FF4014 */  bnez       $v0, .L800A94A0
/* 99CD8 800A94D8 0180023C */   lui       $v0, %hi(D_80016CD4)
/* 99CDC 800A94DC D46C4224 */  addiu      $v0, $v0, %lo(D_80016CD4)
.L800A94E0:
/* 99CE0 800A94E0 1800BF8F */  lw         $ra, 0x18($sp)
/* 99CE4 800A94E4 1400B18F */  lw         $s1, 0x14($sp)
/* 99CE8 800A94E8 1000B08F */  lw         $s0, 0x10($sp)
/* 99CEC 800A94EC 0800E003 */  jr         $ra
/* 99CF0 800A94F0 2000BD27 */   addiu     $sp, $sp, 0x20
