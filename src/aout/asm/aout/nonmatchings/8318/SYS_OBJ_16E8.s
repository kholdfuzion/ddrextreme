.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel SYS_OBJ_16E8
/* 9ECC 800196CC 00140400 */  sll        $v0, $a0, 0x10
/* 9ED0 800196D0 03340200 */  sra        $a2, $v0, 0x10
/* 9ED4 800196D4 0B00C004 */  bltz       $a2, .L80019704
/* 9ED8 800196D8 21100000 */   addu      $v0, $zero, $zero
/* 9EDC 800196DC 0D80023C */  lui        $v0, %hi(D_800D2B9C)
/* 9EE0 800196E0 9C2B4284 */  lh         $v0, %lo(D_800D2B9C)($v0)
/* 9EE4 800196E4 00000000 */  nop
/* 9EE8 800196E8 FFFF4224 */  addiu      $v0, $v0, -1
/* 9EEC 800196EC 2A104600 */  slt        $v0, $v0, $a2
/* 9EF0 800196F0 0D80063C */  lui        $a2, %hi(D_800D2B9C)
/* 9EF4 800196F4 9C2BC694 */  lhu        $a2, %lo(D_800D2B9C)($a2)
/* 9EF8 800196F8 02004014 */  bnez       $v0, .L80019704
/* 9EFC 800196FC FFFFC224 */   addiu     $v0, $a2, -1
/* 9F00 80019700 21108000 */  addu       $v0, $a0, $zero
.L80019704:
/* 9F04 80019704 21204000 */  addu       $a0, $v0, $zero
/* 9F08 80019708 00140500 */  sll        $v0, $a1, 0x10
/* 9F0C 8001970C 03340200 */  sra        $a2, $v0, 0x10
/* 9F10 80019710 0C00C004 */  bltz       $a2, .L80019744
/* 9F14 80019714 00000000 */   nop
/* 9F18 80019718 0D80023C */  lui        $v0, %hi(D_800D2B9E)
/* 9F1C 8001971C 9E2B4284 */  lh         $v0, %lo(D_800D2B9E)($v0)
/* 9F20 80019720 00000000 */  nop
/* 9F24 80019724 FFFF4224 */  addiu      $v0, $v0, -1
/* 9F28 80019728 2A104600 */  slt        $v0, $v0, $a2
/* 9F2C 8001972C 0D80063C */  lui        $a2, %hi(D_800D2B9E)
/* 9F30 80019730 9E2BC694 */  lhu        $a2, %lo(D_800D2B9E)($a2)
/* 9F34 80019734 05004010 */  beqz       $v0, .L8001974C
/* 9F38 80019738 FF03A330 */   andi      $v1, $a1, 0x3ff
/* 9F3C 8001973C D2650008 */  j          SYS_OBJ_1764
/* 9F40 80019740 FFFFC524 */   addiu     $a1, $a2, -1
.L80019744:
/* 9F44 80019744 21280000 */  addu       $a1, $zero, $zero
