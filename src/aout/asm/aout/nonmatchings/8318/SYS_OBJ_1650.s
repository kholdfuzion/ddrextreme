.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_1650
/* 9E34 80019634 00140400 */  sll        $v0, $a0, 0x10
/* 9E38 80019638 03340200 */  sra        $a2, $v0, 0x10
/* 9E3C 8001963C 0B00C004 */  bltz       $a2, .L8001966C
/* 9E40 80019640 21100000 */   addu      $v0, $zero, $zero
/* 9E44 80019644 0D80023C */  lui        $v0, %hi(D_800D2B9C)
/* 9E48 80019648 9C2B4284 */  lh         $v0, %lo(D_800D2B9C)($v0)
/* 9E4C 8001964C 00000000 */  nop
/* 9E50 80019650 FFFF4224 */  addiu      $v0, $v0, -1
/* 9E54 80019654 2A104600 */  slt        $v0, $v0, $a2
/* 9E58 80019658 0D80063C */  lui        $a2, %hi(D_800D2B9C)
/* 9E5C 8001965C 9C2BC694 */  lhu        $a2, %lo(D_800D2B9C)($a2)
/* 9E60 80019660 02004014 */  bnez       $v0, .L8001966C
/* 9E64 80019664 FFFFC224 */   addiu     $v0, $a2, -1
/* 9E68 80019668 21108000 */  addu       $v0, $a0, $zero
.L8001966C:
/* 9E6C 8001966C 21204000 */  addu       $a0, $v0, $zero
/* 9E70 80019670 00140500 */  sll        $v0, $a1, 0x10
/* 9E74 80019674 03340200 */  sra        $a2, $v0, 0x10
/* 9E78 80019678 0C00C004 */  bltz       $a2, .L800196AC
/* 9E7C 8001967C 00000000 */   nop
/* 9E80 80019680 0D80023C */  lui        $v0, %hi(D_800D2B9E)
/* 9E84 80019684 9E2B4284 */  lh         $v0, %lo(D_800D2B9E)($v0)
/* 9E88 80019688 00000000 */  nop
/* 9E8C 8001968C FFFF4224 */  addiu      $v0, $v0, -1
/* 9E90 80019690 2A104600 */  slt        $v0, $v0, $a2
/* 9E94 80019694 0D80063C */  lui        $a2, %hi(D_800D2B9E)
/* 9E98 80019698 9E2BC694 */  lhu        $a2, %lo(D_800D2B9E)($a2)
/* 9E9C 8001969C 05004010 */  beqz       $v0, .L800196B4
/* 9EA0 800196A0 FF03A330 */   andi      $v1, $a1, 0x3ff
/* 9EA4 800196A4 AC650008 */  j          SYS_OBJ_16CC
/* 9EA8 800196A8 FFFFC524 */   addiu     $a1, $a2, -1
.L800196AC:
/* 9EAC 800196AC 21280000 */  addu       $a1, $zero, $zero
