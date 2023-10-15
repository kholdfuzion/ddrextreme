.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a90ac
/* 998AC 800A90AC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 998B0 800A90B0 1000B0AF */  sw         $s0, 0x10($sp)
/* 998B4 800A90B4 21808000 */  addu       $s0, $a0, $zero
/* 998B8 800A90B8 1400BFAF */  sw         $ra, 0x14($sp)
/* 998BC 800A90BC 0F000012 */  beqz       $s0, .L800A90FC
/* 998C0 800A90C0 FFFF0224 */   addiu     $v0, $zero, -1
/* 998C4 800A90C4 18000296 */  lhu        $v0, 0x18($s0)
/* 998C8 800A90C8 00000000 */  nop
/* 998CC 800A90CC 0A004010 */  beqz       $v0, .L800A90F8
/* 998D0 800A90D0 00000000 */   nop
/* 998D4 800A90D4 EFE9020C */  jal        FUN_800ba7bc
/* 998D8 800A90D8 00000000 */   nop
/* 998DC 800A90DC 18000496 */  lhu        $a0, 0x18($s0)
/* 998E0 800A90E0 01000324 */  addiu      $v1, $zero, 1
/* 998E4 800A90E4 FFFF8424 */  addiu      $a0, $a0, -1
/* 998E8 800A90E8 04188300 */  sllv       $v1, $v1, $a0
/* 998EC 800A90EC 24186200 */  and        $v1, $v1, $v0
/* 998F0 800A90F0 3FA40208 */  j          .L800A90FC
/* 998F4 800A90F4 0100622C */   sltiu     $v0, $v1, 1
.L800A90F8:
/* 998F8 800A90F8 21100000 */  addu       $v0, $zero, $zero
.L800A90FC:
/* 998FC 800A90FC 1400BF8F */  lw         $ra, 0x14($sp)
/* 99900 800A9100 1000B08F */  lw         $s0, 0x10($sp)
/* 99904 800A9104 0800E003 */  jr         $ra
/* 99908 800A9108 1800BD27 */   addiu     $sp, $sp, 0x18
