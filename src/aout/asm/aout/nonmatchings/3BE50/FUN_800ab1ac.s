.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab1ac
/* 9B9AC 800AB1AC E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9B9B0 800AB1B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 9B9B4 800AB1B4 1C80103C */  lui        $s0, %hi(D_801C3E88)
/* 9B9B8 800AB1B8 883E048E */  lw         $a0, %lo(D_801C3E88)($s0)
/* 9B9BC 800AB1BC 1400B1AF */  sw         $s1, 0x14($sp)
/* 9B9C0 800AB1C0 FFFF1124 */  addiu      $s1, $zero, -1
/* 9B9C4 800AB1C4 0C009110 */  beq        $a0, $s1, .L800AB1F8
/* 9B9C8 800AB1C8 1800BFAF */   sw        $ra, 0x18($sp)
/* 9B9CC 800AB1CC 7A19030C */  jal        FUN_800c65e8
/* 9B9D0 800AB1D0 00000000 */   nop
/* 9B9D4 800AB1D4 FEFF0324 */  addiu      $v1, $zero, -2
/* 9B9D8 800AB1D8 08004310 */  beq        $v0, $v1, .L800AB1FC
/* 9B9DC 800AB1DC FFFF0224 */   addiu     $v0, $zero, -1
/* 9B9E0 800AB1E0 883E048E */  lw         $a0, 0x3e88($s0)
/* 9B9E4 800AB1E4 6618030C */  jal        FUN_800c6198
/* 9B9E8 800AB1E8 00000000 */   nop
/* 9B9EC 800AB1EC 883E11AE */  sw         $s1, 0x3e88($s0)
/* 9B9F0 800AB1F0 7FAC0208 */  j          .L800AB1FC
/* 9B9F4 800AB1F4 FFFF0224 */   addiu     $v0, $zero, -1
.L800AB1F8:
/* 9B9F8 800AB1F8 21100000 */  addu       $v0, $zero, $zero
.L800AB1FC:
/* 9B9FC 800AB1FC 1800BF8F */  lw         $ra, 0x18($sp)
/* 9BA00 800AB200 1400B18F */  lw         $s1, 0x14($sp)
/* 9BA04 800AB204 1000B08F */  lw         $s0, 0x10($sp)
/* 9BA08 800AB208 0800E003 */  jr         $ra
/* 9BA0C 800AB20C 2000BD27 */   addiu     $sp, $sp, 0x20
