.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel DecDCToutSync
/* 63B74 80073374 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 63B78 80073378 05008014 */  bnez       $a0, .L80073390
/* 63B7C 8007337C 1000BFAF */   sw        $ra, 0x10($sp)
/* 63B80 80073380 A9CD010C */  jal        LIBPRESS_OBJ_560
/* 63B84 80073384 00000000 */   nop
/* 63B88 80073388 EBCC0108 */  j          LIBPRESS_OBJ_268
/* 63B8C 8007338C 00000000 */   nop
.L80073390:
/* 63B90 80073390 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63B94 80073394 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63B98 80073398 00000000 */  nop
/* 63B9C 8007339C 0000428C */  lw         $v0, ($v0)
/* 63BA0 800733A0 00000000 */  nop
/* 63BA4 800733A4 02160200 */  srl        $v0, $v0, 0x18
/* 63BA8 800733A8 01004230 */  andi       $v0, $v0, 1
