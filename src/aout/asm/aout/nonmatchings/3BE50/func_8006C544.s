.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8006C544
/* 5CD44 8006C544 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 5CD48 8006C548 21408000 */  addu       $t0, $a0, $zero
/* 5CD4C 8006C54C 1380023C */  lui        $v0, %hi(D_80129DA8)
/* 5CD50 8006C550 A89D438C */  lw         $v1, %lo(D_80129DA8)($v0)
/* 5CD54 8006C554 40100800 */  sll        $v0, $t0, 1
/* 5CD58 8006C558 21104800 */  addu       $v0, $v0, $t0
/* 5CD5C 8006C55C 80100200 */  sll        $v0, $v0, 2
/* 5CD60 8006C560 23104800 */  subu       $v0, $v0, $t0
/* 5CD64 8006C564 80100200 */  sll        $v0, $v0, 2
/* 5CD68 8006C568 23104800 */  subu       $v0, $v0, $t0
/* 5CD6C 8006C56C 80100200 */  sll        $v0, $v0, 2
/* 5CD70 8006C570 21104800 */  addu       $v0, $v0, $t0
/* 5CD74 8006C574 80100200 */  sll        $v0, $v0, 2
/* 5CD78 8006C578 23104800 */  subu       $v0, $v0, $t0
/* 5CD7C 8006C57C 80100200 */  sll        $v0, $v0, 2
/* 5CD80 8006C580 1000BFAF */  sw         $ra, 0x10($sp)
/* 5CD84 8006C584 80210300 */  sll        $a0, $v1, 6
/* 5CD88 8006C588 21208300 */  addu       $a0, $a0, $v1
/* 5CD8C 8006C58C 80200400 */  sll        $a0, $a0, 2
/* 5CD90 8006C590 23208300 */  subu       $a0, $a0, $v1
/* 5CD94 8006C594 C0200400 */  sll        $a0, $a0, 3
/* 5CD98 8006C598 21208300 */  addu       $a0, $a0, $v1
/* 5CD9C 8006C59C C0200400 */  sll        $a0, $a0, 3
/* 5CDA0 8006C5A0 1A80033C */  lui        $v1, %hi(D_801A7800)
/* 5CDA4 8006C5A4 00786324 */  addiu      $v1, $v1, %lo(D_801A7800)
/* 5CDA8 8006C5A8 21104300 */  addu       $v0, $v0, $v1
/* 5CDAC 8006C5AC 21208200 */  addu       $a0, $a0, $v0
/* 5CDB0 8006C5B0 BE0A8384 */  lh         $v1, 0xabe($a0)
/* 5CDB4 8006C5B4 00000000 */  nop
/* 5CDB8 8006C5B8 09006514 */  bne        $v1, $a1, .L8006C5E0
/* 5CDBC 8006C5BC 00000000 */   nop
/* 5CDC0 8006C5C0 C00A8284 */  lh         $v0, 0xac0($a0)
/* 5CDC4 8006C5C4 00000000 */  nop
/* 5CDC8 8006C5C8 05004614 */  bne        $v0, $a2, .L8006C5E0
/* 5CDCC 8006C5CC 00000000 */   nop
/* 5CDD0 8006C5D0 C20A8284 */  lh         $v0, 0xac2($a0)
/* 5CDD4 8006C5D4 00000000 */  nop
/* 5CDD8 8006C5D8 06004710 */  beq        $v0, $a3, .L8006C5F4
/* 5CDDC 8006C5DC 00000000 */   nop
.L8006C5E0:
/* 5CDE0 8006C5E0 BE0A85A4 */  sh         $a1, 0xabe($a0)
/* 5CDE4 8006C5E4 C00A86A4 */  sh         $a2, 0xac0($a0)
/* 5CDE8 8006C5E8 C20A87A4 */  sh         $a3, 0xac2($a0)
/* 5CDEC 8006C5EC DDAF010C */  jal        FUN_8006bf74
/* 5CDF0 8006C5F0 21200001 */   addu      $a0, $t0, $zero
.L8006C5F4:
/* 5CDF4 8006C5F4 1000BF8F */  lw         $ra, 0x10($sp)
/* 5CDF8 8006C5F8 00000000 */  nop
/* 5CDFC 8006C5FC 0800E003 */  jr         $ra
/* 5CE00 8006C600 1800BD27 */   addiu     $sp, $sp, 0x18
