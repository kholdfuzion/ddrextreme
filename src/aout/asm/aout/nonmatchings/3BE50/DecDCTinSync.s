.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCTinSync
/* 63B38 80073338 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63B3C 8007333C 05008014 */  bnez       $a0, .L80073354
/* 63B40 80073340 1000BFAF */   sw        $ra, 0x10($sp)
/* 63B44 80073344 84CD010C */  jal        LIBPRESS_OBJ_4CC
/* 63B48 80073348 00000000 */   nop
/* 63B4C 8007334C D9CC0108 */  j          LIBPRESS_OBJ_220
/* 63B50 80073350 00000000 */   nop
.L80073354:
/* 63B54 80073354 CECD010C */  jal        LIBPRESS_OBJ_5F4
/* 63B58 80073358 00000000 */   nop
/* 63B5C 8007335C 42170200 */  srl        $v0, $v0, 0x1d
/* 63B60 80073360 01004230 */  andi       $v0, $v0, 1
