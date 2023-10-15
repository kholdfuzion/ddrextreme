.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002a8e8
/* 1B0E8 8002A8E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 1B0EC 8002A8EC 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1B0F0 8002A8F0 50BA4624 */  addiu      $a2, $v0, %lo(D_8014BA50)
/* 1B0F4 8002A8F4 1000BFAF */  sw         $ra, 0x10($sp)
/* 1B0F8 8002A8F8 1000C384 */  lh         $v1, 0x10($a2)
/* 1B0FC 8002A8FC 00000000 */  nop
/* 1B100 8002A900 13006014 */  bnez       $v1, .L8002A950
/* 1B104 8002A904 21388000 */   addu      $a3, $a0, $zero
/* 1B108 8002A908 1380023C */  lui        $v0, %hi(D_8012ABD0)
/* 1B10C 8002A90C D0AB4224 */  addiu      $v0, $v0, %lo(D_8012ABD0)
/* 1B110 8002A910 80180700 */  sll        $v1, $a3, 2
/* 1B114 8002A914 21186200 */  addu       $v1, $v1, $v0
/* 1B118 8002A918 0000648C */  lw         $a0, ($v1)
/* 1B11C 8002A91C 00000000 */  nop
/* 1B120 8002A920 0B008010 */  beqz       $a0, .L8002A950
/* 1B124 8002A924 00000000 */   nop
/* 1B128 8002A928 1200C284 */  lh         $v0, 0x12($a2)
/* 1B12C 8002A92C 00000000 */  nop
/* 1B130 8002A930 05004010 */  beqz       $v0, .L8002A948
/* 1B134 8002A934 00000000 */   nop
/* 1B138 8002A938 64A5000C */  jal        FUN_80029590
/* 1B13C 8002A93C 2120E000 */   addu      $a0, $a3, $zero
/* 1B140 8002A940 54AA0008 */  j          .L8002A950
/* 1B144 8002A944 00000000 */   nop
.L8002A948:
/* 1B148 8002A948 70A4000C */  jal        coindecrease_800291c0
/* 1B14C 8002A94C 2120A000 */   addu      $a0, $a1, $zero
.L8002A950:
/* 1B150 8002A950 1000BF8F */  lw         $ra, 0x10($sp)
/* 1B154 8002A954 00000000 */  nop
/* 1B158 8002A958 0800E003 */  jr         $ra
/* 1B15C 8002A95C 1800BD27 */   addiu     $sp, $sp, 0x18
