.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel LIBPRESS_OBJ_560
/* 63EA4 800736A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 63EA8 800736A8 0E80033C */  lui        $v1, %hi(D_800DB104)
/* 63EAC 800736AC 04B1638C */  lw         $v1, %lo(D_800DB104)($v1)
/* 63EB0 800736B0 1000023C */  lui        $v0, 0x10
/* 63EB4 800736B4 1800BFAF */  sw         $ra, 0x18($sp)
/* 63EB8 800736B8 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EBC 800736BC 0000628C */  lw         $v0, ($v1)
/* 63EC0 800736C0 0001033C */  lui        $v1, 0x100
/* 63EC4 800736C4 24104300 */  and        $v0, $v0, $v1
/* 63EC8 800736C8 17004010 */  beqz       $v0, LIBPRESS_OBJ_5E4
/* 63ECC 800736CC 21100000 */   addu      $v0, $zero, $zero
/* 63ED0 800736D0 FFFF0424 */  addiu      $a0, $zero, -1
.L800736D4:
/* 63ED4 800736D4 1000A28F */  lw         $v0, 0x10($sp)
/* 63ED8 800736D8 00000000 */  nop
/* 63EDC 800736DC FFFF4224 */  addiu      $v0, $v0, -1
/* 63EE0 800736E0 1000A2AF */  sw         $v0, 0x10($sp)
/* 63EE4 800736E4 1000A28F */  lw         $v0, 0x10($sp)
/* 63EE8 800736E8 00000000 */  nop
/* 63EEC 800736EC 06004414 */  bne        $v0, $a0, .L80073708
/* 63EF0 800736F0 00000000 */   nop
/* 63EF4 800736F4 0180043C */  lui        $a0, %hi(D_80014898)
/* 63EF8 800736F8 D4CD010C */  jal        LIBPRESS_OBJ_60C
/* 63EFC 800736FC 98488424 */   addiu     $a0, $a0, %lo(D_80014898)
/* 63F00 80073700 CACD0108 */  j          LIBPRESS_OBJ_5E4
/* 63F04 80073704 FFFF0224 */   addiu     $v0, $zero, -1
.L80073708:
/* 63F08 80073708 0E80023C */  lui        $v0, %hi(D_800DB104)
/* 63F0C 8007370C 04B1428C */  lw         $v0, %lo(D_800DB104)($v0)
/* 63F10 80073710 00000000 */  nop
/* 63F14 80073714 0000428C */  lw         $v0, ($v0)
/* 63F18 80073718 00000000 */  nop
/* 63F1C 8007371C 24104300 */  and        $v0, $v0, $v1
/* 63F20 80073720 ECFF4014 */  bnez       $v0, .L800736D4
/* 63F24 80073724 21100000 */   addu      $v0, $zero, $zero
