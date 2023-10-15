.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTin
/* 63A9C 8007329C E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63AA0 800732A0 0100A230 */  andi       $v0, $a1, 1
/* 63AA4 800732A4 06004010 */  beqz       $v0, .L800732C0
/* 63AA8 800732A8 1000BFAF */   sw        $ra, 0x10($sp)
/* 63AAC 800732AC FFF7033C */  lui        $v1, 0xf7ff
/* 63AB0 800732B0 0000828C */  lw         $v0, ($a0)
/* 63AB4 800732B4 FFFF6334 */  ori        $v1, $v1, 0xffff
/* 63AB8 800732B8 B3CC0108 */  j          LIBPRESS_OBJ_188
/* 63ABC 800732BC 24104300 */   and       $v0, $v0, $v1
.L800732C0:
/* 63AC0 800732C0 0000828C */  lw         $v0, ($a0)
/* 63AC4 800732C4 0008033C */  lui        $v1, 0x800
/* 63AC8 800732C8 25104300 */  or         $v0, $v0, $v1
