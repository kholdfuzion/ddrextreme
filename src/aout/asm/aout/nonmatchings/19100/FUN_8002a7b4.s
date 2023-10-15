.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002a7b4
/* 1AFB4 8002A7B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1AFB8 8002A7B8 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1AFBC 8002A7BC 50BA4624 */  addiu      $a2, $v0, %lo(D_8014BA50)
/* 1AFC0 8002A7C0 1800BFAF */  sw         $ra, 0x18($sp)
/* 1AFC4 8002A7C4 1400B1AF */  sw         $s1, 0x14($sp)
/* 1AFC8 8002A7C8 1000B0AF */  sw         $s0, 0x10($sp)
/* 1AFCC 8002A7CC 1000C384 */  lh         $v1, 0x10($a2)
/* 1AFD0 8002A7D0 21384000 */  addu       $a3, $v0, $zero
/* 1AFD4 8002A7D4 23006014 */  bnez       $v1, .L8002A864
/* 1AFD8 8002A7D8 01000224 */   addiu     $v0, $zero, 1
/* 1AFDC 8002A7DC 02000224 */  addiu      $v0, $zero, 2
/* 1AFE0 8002A7E0 0400A214 */  bne        $a1, $v0, .L8002A7F4
/* 1AFE4 8002A7E4 50BAE224 */   addiu     $v0, $a3, -0x45b0
/* 1AFE8 8002A7E8 2E00D084 */  lh         $s0, 0x2e($a2)
/* 1AFEC 8002A7EC FEA90008 */  j          .L8002A7F8
/* 1AFF0 8002A7F0 00000000 */   nop
.L8002A7F4:
/* 1AFF4 8002A7F4 2C00D084 */  lh         $s0, 0x2c($a2)
.L8002A7F8:
/* 1AFF8 8002A7F8 12004384 */  lh         $v1, 0x12($v0)
/* 1AFFC 8002A7FC 00000000 */  nop
/* 1B000 8002A800 14006010 */  beqz       $v1, .L8002A854
/* 1B004 8002A804 FFFF0224 */   addiu     $v0, $zero, -1
/* 1B008 8002A808 0E008214 */  bne        $a0, $v0, .L8002A844
/* 1B00C 8002A80C 21880000 */   addu      $s1, $zero, $zero
/* 1B010 8002A810 29A6000C */  jal        coin_left_partial_800298a4
/* 1B014 8002A814 21200000 */   addu      $a0, $zero, $zero
/* 1B018 8002A818 2A105000 */  slt        $v0, $v0, $s0
/* 1B01C 8002A81C 06004010 */  beqz       $v0, .L8002A838
/* 1B020 8002A820 00000000 */   nop
/* 1B024 8002A824 29A6000C */  jal        coin_left_partial_800298a4
/* 1B028 8002A828 01000424 */   addiu     $a0, $zero, 1
/* 1B02C 8002A82C 2A105000 */  slt        $v0, $v0, $s0
/* 1B030 8002A830 0C004014 */  bnez       $v0, .L8002A864
/* 1B034 8002A834 21102002 */   addu      $v0, $s1, $zero
.L8002A838:
/* 1B038 8002A838 01001124 */  addiu      $s1, $zero, 1
/* 1B03C 8002A83C 19AA0008 */  j          .L8002A864
/* 1B040 8002A840 21102002 */   addu      $v0, $s1, $zero
.L8002A844:
/* 1B044 8002A844 29A6000C */  jal        coin_left_partial_800298a4
/* 1B048 8002A848 00000000 */   nop
/* 1B04C 8002A84C 18AA0008 */  j          .L8002A860
/* 1B050 8002A850 2A105000 */   slt       $v0, $v0, $s0
.L8002A854:
/* 1B054 8002A854 B9A5000C */  jal        coinoption_totalcredits_800296e4
/* 1B058 8002A858 00000000 */   nop
/* 1B05C 8002A85C 2A105000 */  slt        $v0, $v0, $s0
.L8002A860:
/* 1B060 8002A860 01004238 */  xori       $v0, $v0, 1
.L8002A864:
/* 1B064 8002A864 1800BF8F */  lw         $ra, 0x18($sp)
/* 1B068 8002A868 1400B18F */  lw         $s1, 0x14($sp)
/* 1B06C 8002A86C 1000B08F */  lw         $s0, 0x10($sp)
/* 1B070 8002A870 0800E003 */  jr         $ra
/* 1B074 8002A874 2000BD27 */   addiu     $sp, $sp, 0x20
