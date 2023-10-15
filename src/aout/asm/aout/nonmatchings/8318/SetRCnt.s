.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SetRCnt
/* 8604 80017E04 FFFF8830 */  andi       $t0, $a0, 0xffff
/* 8608 80017E08 03000229 */  slti       $v0, $t0, 3
/* 860C 80017E0C 03004014 */  bnez       $v0, .L80017E1C
/* 8610 80017E10 48000724 */   addiu     $a3, $zero, 0x48
/* 8614 80017E14 A65F0008 */  j          COUNTER_OBJ_94
/* 8618 80017E18 21100000 */   addu      $v0, $zero, $zero
.L80017E1C:
/* 861C 80017E1C 0D80023C */  lui        $v0, %hi(D_800D2B2C)
/* 8620 80017E20 2C2B428C */  lw         $v0, %lo(D_800D2B2C)($v0)
/* 8624 80017E24 00190800 */  sll        $v1, $t0, 4
/* 8628 80017E28 21186200 */  addu       $v1, $v1, $v0
/* 862C 80017E2C 0200022D */  sltiu      $v0, $t0, 2
/* 8630 80017E30 040060A4 */  sh         $zero, 4($v1)
/* 8634 80017E34 080065A4 */  sh         $a1, 8($v1)
/* 8638 80017E38 08004010 */  beqz       $v0, .L80017E5C
/* 863C 80017E3C 1000C230 */   andi      $v0, $a2, 0x10
/* 8640 80017E40 02004010 */  beqz       $v0, .L80017E4C
/* 8644 80017E44 0100C230 */   andi      $v0, $a2, 1
/* 8648 80017E48 49000724 */  addiu      $a3, $zero, 0x49
.L80017E4C:
/* 864C 80017E4C 0A004014 */  bnez       $v0, COUNTER_OBJ_74
/* 8650 80017E50 0010C230 */   andi      $v0, $a2, 0x1000
/* 8654 80017E54 9E5F0008 */  j          COUNTER_OBJ_74
/* 8658 80017E58 0001E734 */   ori       $a3, $a3, 0x100
.L80017E5C:
/* 865C 80017E5C 02000224 */  addiu      $v0, $zero, 2
/* 8660 80017E60 05000215 */  bne        $t0, $v0, COUNTER_OBJ_74
/* 8664 80017E64 0010C230 */   andi      $v0, $a2, 0x1000
/* 8668 80017E68 0100C230 */  andi       $v0, $a2, 1
/* 866C 80017E6C 02004014 */  bnez       $v0, COUNTER_OBJ_74
/* 8670 80017E70 0010C230 */   andi      $v0, $a2, 0x1000
/* 8674 80017E74 48020724 */  addiu      $a3, $zero, 0x248
