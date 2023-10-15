.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002a708
/* 1AF08 8002A708 0E80023C */  lui        $v0, %hi(D_800D8D0C)
/* 1AF0C 8002A70C 0C8D438C */  lw         $v1, %lo(D_800D8D0C)($v0)
/* 1AF10 8002A710 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1AF14 8002A714 1800BFAF */  sw         $ra, 0x18($sp)
/* 1AF18 8002A718 1400B1AF */  sw         $s1, 0x14($sp)
/* 1AF1C 8002A71C 1B006010 */  beqz       $v1, .L8002A78C
/* 1AF20 8002A720 1000B0AF */   sw        $s0, 0x10($sp)
/* 1AF24 8002A724 1580023C */  lui        $v0, %hi(D_8014BA60)
/* 1AF28 8002A728 60BA4384 */  lh         $v1, %lo(D_8014BA60)($v0)
/* 1AF2C 8002A72C 00000000 */  nop
/* 1AF30 8002A730 16006014 */  bnez       $v1, .L8002A78C
/* 1AF34 8002A734 1380023C */   lui       $v0, %hi(D_8012ABA0)
/* 1AF38 8002A738 1380033C */  lui        $v1, %hi(D_8012ABD0)
/* 1AF3C 8002A73C A0AB40AC */  sw         $zero, %lo(D_8012ABA0)($v0)
/* 1AF40 8002A740 D0AB628C */  lw         $v0, %lo(D_8012ABD0)($v1)
/* 1AF44 8002A744 01001024 */  addiu      $s0, $zero, 1
/* 1AF48 8002A748 03005014 */  bne        $v0, $s0, .L8002A758
/* 1AF4C 8002A74C D0AB7124 */   addiu     $s1, $v1, -0x5430
/* 1AF50 8002A750 46A3000C */  jal        coincheck_80028d18
/* 1AF54 8002A754 21200000 */   addu      $a0, $zero, $zero
.L8002A758:
/* 1AF58 8002A758 0D80033C */  lui        $v1, %hi(D_800D2B00)
/* 1AF5C 8002A75C 002B628C */  lw         $v0, %lo(D_800D2B00)($v1)
/* 1AF60 8002A760 00000000 */  nop
/* 1AF64 8002A764 FFFF4224 */  addiu      $v0, $v0, -1
/* 1AF68 8002A768 0200422C */  sltiu      $v0, $v0, 2
/* 1AF6C 8002A76C 07004010 */  beqz       $v0, .L8002A78C
/* 1AF70 8002A770 00000000 */   nop
/* 1AF74 8002A774 0400228E */  lw         $v0, 4($s1)
/* 1AF78 8002A778 00000000 */  nop
/* 1AF7C 8002A77C 03005014 */  bne        $v0, $s0, .L8002A78C
/* 1AF80 8002A780 00000000 */   nop
/* 1AF84 8002A784 46A3000C */  jal        coincheck_80028d18
/* 1AF88 8002A788 01000424 */   addiu     $a0, $zero, 1
.L8002A78C:
/* 1AF8C 8002A78C 1800BF8F */  lw         $ra, 0x18($sp)
/* 1AF90 8002A790 1400B18F */  lw         $s1, 0x14($sp)
/* 1AF94 8002A794 1000B08F */  lw         $s0, 0x10($sp)
/* 1AF98 8002A798 0800E003 */  jr         $ra
/* 1AF9C 8002A79C 2000BD27 */   addiu     $sp, $sp, 0x20
