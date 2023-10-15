.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ab078
/* 9B878 800AB078 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9B87C 800AB07C 1400B1AF */  sw         $s1, 0x14($sp)
/* 9B880 800AB080 1C80113C */  lui        $s1, %hi(D_801C3E88)
/* 9B884 800AB084 883E248E */  lw         $a0, %lo(D_801C3E88)($s1)
/* 9B888 800AB088 1000B0AF */  sw         $s0, 0x10($sp)
/* 9B88C 800AB08C FFFF1024 */  addiu      $s0, $zero, -1
/* 9B890 800AB090 04009010 */  beq        $a0, $s0, .L800AB0A4
/* 9B894 800AB094 1800BFAF */   sw        $ra, 0x18($sp)
/* 9B898 800AB098 6618030C */  jal        FUN_800c6198
/* 9B89C 800AB09C 00000000 */   nop
/* 9B8A0 800AB0A0 883E30AE */  sw         $s0, 0x3e88($s1)
.L800AB0A4:
/* 9B8A4 800AB0A4 1800BF8F */  lw         $ra, 0x18($sp)
/* 9B8A8 800AB0A8 1400B18F */  lw         $s1, 0x14($sp)
/* 9B8AC 800AB0AC 1000B08F */  lw         $s0, 0x10($sp)
/* 9B8B0 800AB0B0 21100000 */  addu       $v0, $zero, $zero
/* 9B8B4 800AB0B4 0800E003 */  jr         $ra
/* 9B8B8 800AB0B8 2000BD27 */   addiu     $sp, $sp, 0x20
