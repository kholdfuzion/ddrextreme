.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003c54c
/* 2CD4C 8003C54C E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2CD50 8003C550 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 2CD54 8003C554 7AF1000C */  jal        FUN_8003c5e8
/* 2CD58 8003C558 1800B0AF */   sw        $s0, 0x18($sp)
/* 2CD5C 8003C55C 21200000 */  addu       $a0, $zero, $zero
/* 2CD60 8003C560 FF000524 */  addiu      $a1, $zero, 0xff
/* 2CD64 8003C564 0F80033C */  lui        $v1, %hi(D_800F0014)
/* 2CD68 8003C568 1400628C */  lw         $v0, %lo(D_800F0014)($v1)
/* 2CD6C 8003C56C 40000624 */  addiu      $a2, $zero, 0x40
/* 2CD70 8003C570 42100200 */  srl        $v0, $v0, 1
/* 2CD74 8003C574 3F004230 */  andi       $v0, $v0, 0x3f
/* 2CD78 8003C578 21384000 */  addu       $a3, $v0, $zero
/* 2CD7C 8003C57C 13EF000C */  jal        FUN_8003bc4c
/* 2CD80 8003C580 1000A2AF */   sw        $v0, 0x10($sp)
/* 2CD84 8003C584 21200000 */  addu       $a0, $zero, $zero
/* 2CD88 8003C588 DCFF0524 */  addiu      $a1, $zero, -0x24
/* 2CD8C 8003C58C A2FF0624 */  addiu      $a2, $zero, -0x5e
/* 2CD90 8003C590 00100724 */  addiu      $a3, $zero, 0x1000
/* 2CD94 8003C594 00101024 */  addiu      $s0, $zero, 0x1000
/* 2CD98 8003C598 0180023C */  lui        $v0, %hi(D_80012C54)
/* 2CD9C 8003C59C 542C4224 */  addiu      $v0, $v0, %lo(D_80012C54)
/* 2CDA0 8003C5A0 1000B0AF */  sw         $s0, 0x10($sp)
/* 2CDA4 8003C5A4 290A010C */  jal        PrintText_800428a4
/* 2CDA8 8003C5A8 1400A2AF */   sw        $v0, 0x14($sp)
/* 2CDAC 8003C5AC 21200000 */  addu       $a0, $zero, $zero
/* 2CDB0 8003C5B0 98FF0524 */  addiu      $a1, $zero, -0x68
/* 2CDB4 8003C5B4 5E000624 */  addiu      $a2, $zero, 0x5e
/* 2CDB8 8003C5B8 00100724 */  addiu      $a3, $zero, 0x1000
/* 2CDBC 8003C5BC 0180023C */  lui        $v0, %hi(D_80012C60)
/* 2CDC0 8003C5C0 602C4224 */  addiu      $v0, $v0, %lo(D_80012C60)
/* 2CDC4 8003C5C4 1000B0AF */  sw         $s0, 0x10($sp)
/* 2CDC8 8003C5C8 290A010C */  jal        PrintText_800428a4
/* 2CDCC 8003C5CC 1400A2AF */   sw        $v0, 0x14($sp)
/* 2CDD0 8003C5D0 7CAA000C */  jal        vsync_8002a9f0
/* 2CDD4 8003C5D4 00000000 */   nop
/* 2CDD8 8003C5D8 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 2CDDC 8003C5DC 1800B08F */  lw         $s0, 0x18($sp)
/* 2CDE0 8003C5E0 0800E003 */  jr         $ra
/* 2CDE4 8003C5E4 2000BD27 */   addiu     $sp, $sp, 0x20
