.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca3a0
/* BABA0 800CA3A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* BABA4 800CA3A4 1000B0AF */  sw         $s0, 0x10($sp)
/* BABA8 800CA3A8 21808000 */  addu       $s0, $a0, $zero
/* BABAC 800CA3AC 1400B1AF */  sw         $s1, 0x14($sp)
/* BABB0 800CA3B0 1800BFAF */  sw         $ra, 0x18($sp)
/* BABB4 800CA3B4 A509030C */  jal        FUN_800c2694
/* BABB8 800CA3B8 2188A000 */   addu      $s1, $a1, $zero
/* BABBC 800CA3BC 21200002 */  addu       $a0, $s0, $zero
/* BABC0 800CA3C0 01000224 */  addiu      $v0, $zero, 1
/* BABC4 800CA3C4 1A0082A0 */  sb         $v0, 0x1a($a0)
/* BABC8 800CA3C8 2A0082A0 */  sb         $v0, 0x2a($a0)
/* BABCC 800CA3CC 7F000224 */  addiu      $v0, $zero, 0x7f
/* BABD0 800CA3D0 21282002 */  addu       $a1, $s1, $zero
/* BABD4 800CA3D4 21300000 */  addu       $a2, $zero, $zero
/* BABD8 800CA3D8 0C00838C */  lw         $v1, 0xc($a0)
/* BABDC 800CA3DC 09000724 */  addiu      $a3, $zero, 9
/* BABE0 800CA3E0 B209030C */  jal        FUN_800c26c8
/* BABE4 800CA3E4 000062A0 */   sb        $v0, ($v1)
/* BABE8 800CA3E8 1800BF8F */  lw         $ra, 0x18($sp)
/* BABEC 800CA3EC 1400B18F */  lw         $s1, 0x14($sp)
/* BABF0 800CA3F0 1000B08F */  lw         $s0, 0x10($sp)
/* BABF4 800CA3F4 0800E003 */  jr         $ra
/* BABF8 800CA3F8 2000BD27 */   addiu     $sp, $sp, 0x20
