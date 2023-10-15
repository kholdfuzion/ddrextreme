.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800abb78
/* 9C378 800ABB78 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9C37C 800ABB7C 1400B1AF */  sw         $s1, 0x14($sp)
/* 9C380 800ABB80 21880000 */  addu       $s1, $zero, $zero
/* 9C384 800ABB84 1800BFAF */  sw         $ra, 0x18($sp)
/* 9C388 800ABB88 6E19030C */  jal        FUN_800c65b8
/* 9C38C 800ABB8C 1000B0AF */   sw        $s0, 0x10($sp)
/* 9C390 800ABB90 F8AE020C */  jal        FUN_800abbe0
/* 9C394 800ABB94 21804000 */   addu      $s0, $v0, $zero
/* 9C398 800ABB98 03004014 */  bnez       $v0, .L800ABBA8
/* 9C39C 800ABB9C 05000332 */   andi      $v1, $s0, 5
/* 9C3A0 800ABBA0 F3AE0208 */  j          .L800ABBCC
/* 9C3A4 800ABBA4 21100000 */   addu      $v0, $zero, $zero
.L800ABBA8:
/* 9C3A8 800ABBA8 05000224 */  addiu      $v0, $zero, 5
/* 9C3AC 800ABBAC 02006214 */  bne        $v1, $v0, .L800ABBB8
/* 9C3B0 800ABBB0 50000332 */   andi      $v1, $s0, 0x50
/* 9C3B4 800ABBB4 01001124 */  addiu      $s1, $zero, 1
.L800ABBB8:
/* 9C3B8 800ABBB8 50000224 */  addiu      $v0, $zero, 0x50
/* 9C3BC 800ABBBC 03006214 */  bne        $v1, $v0, .L800ABBCC
/* 9C3C0 800ABBC0 21102002 */   addu      $v0, $s1, $zero
/* 9C3C4 800ABBC4 02003136 */  ori        $s1, $s1, 2
/* 9C3C8 800ABBC8 21102002 */  addu       $v0, $s1, $zero
.L800ABBCC:
/* 9C3CC 800ABBCC 1800BF8F */  lw         $ra, 0x18($sp)
/* 9C3D0 800ABBD0 1400B18F */  lw         $s1, 0x14($sp)
/* 9C3D4 800ABBD4 1000B08F */  lw         $s0, 0x10($sp)
/* 9C3D8 800ABBD8 0800E003 */  jr         $ra
/* 9C3DC 800ABBDC 2000BD27 */   addiu     $sp, $sp, 0x20
