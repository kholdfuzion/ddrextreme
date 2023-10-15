.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800a05d8
/* 90DD8 800A05D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 90DDC 800A05DC 1000B0AF */  sw         $s0, 0x10($sp)
/* 90DE0 800A05E0 21808000 */  addu       $s0, $a0, $zero
/* 90DE4 800A05E4 21280000 */  addu       $a1, $zero, $zero
/* 90DE8 800A05E8 1400BFAF */  sw         $ra, 0x14($sp)
/* 90DEC 800A05EC F6A2000C */  jal        memset
/* 90DF0 800A05F0 40000624 */   addiu     $a2, $zero, 0x40
/* 90DF4 800A05F4 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 90DF8 800A05F8 FFFF0224 */  addiu      $v0, $zero, -1
/* 90DFC 800A05FC 1C00648C */  lw         $a0, %lo(D_800F001C)($v1)
/* 90E00 800A0600 1580033C */  lui        $v1, 0x8015
/* 90E04 800A0604 240002AE */  sw         $v0, 0x24($s0)
/* 90E08 800A0608 340000AE */  sw         $zero, 0x34($s0)
/* 90E0C 800A060C 380000AE */  sw         $zero, 0x38($s0)
/* 90E10 800A0610 3C0000AE */  sw         $zero, 0x3c($s0)
/* 90E14 800A0614 200004AE */  sw         $a0, 0x20($s0)
/* 90E18 800A0618 92BA6284 */  lh         $v0, -0x456e($v1)
/* 90E1C 800A061C 00000000 */  nop
/* 90E20 800A0620 03004228 */  slti       $v0, $v0, 3
/* 90E24 800A0624 02004010 */  beqz       $v0, .L800A0630
/* 90E28 800A0628 1E000224 */   addiu     $v0, $zero, 0x1e
/* 90E2C 800A062C 3C0002AE */  sw         $v0, 0x3c($s0)
.L800A0630:
/* 90E30 800A0630 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 90E34 800A0634 28004424 */  addiu      $a0, $v0, %lo(D_800F0028)
/* 90E38 800A0638 8A008390 */  lbu        $v1, 0x8a($a0)
/* 90E3C 800A063C 02000624 */  addiu      $a2, $zero, 2
/* 90E40 800A0640 07006610 */  beq        $v1, $a2, .L800A0660
/* 90E44 800A0644 21280000 */   addu      $a1, $zero, $zero
/* 90E48 800A0648 0100023C */  lui        $v0, 1
/* 90E4C 800A064C 21108200 */  addu       $v0, $a0, $v0
/* 90E50 800A0650 06434390 */  lbu        $v1, 0x4306($v0)
/* 90E54 800A0654 00000000 */  nop
/* 90E58 800A0658 03006614 */  bne        $v1, $a2, .L800A0668
/* 90E5C 800A065C 2C000626 */   addiu     $a2, $s0, 0x2c
.L800A0660:
/* 90E60 800A0660 01000524 */  addiu      $a1, $zero, 1
/* 90E64 800A0664 2C000626 */  addiu      $a2, $s0, 0x2c
.L800A0668:
/* 90E68 800A0668 18000226 */  addiu      $v0, $s0, 0x18
/* 90E6C 800A066C 21200002 */  addu       $a0, $s0, $zero
/* 90E70 800A0670 01000324 */  addiu      $v1, $zero, 1
.L800A0674:
/* 90E74 800A0674 000085AC */  sw         $a1, ($a0)
/* 90E78 800A0678 000045AC */  sw         $a1, ($v0)
/* 90E7C 800A067C 04004224 */  addiu      $v0, $v0, 4
/* 90E80 800A0680 FFFF6324 */  addiu      $v1, $v1, -1
/* 90E84 800A0684 FBFF6104 */  bgez       $v1, .L800A0674
/* 90E88 800A0688 04008424 */   addiu     $a0, $a0, 4
/* 90E8C 800A068C 2120C000 */  addu       $a0, $a2, $zero
/* 90E90 800A0690 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 90E94 800A0694 28004624 */  addiu      $a2, $v0, %lo(D_800F0028)
/* 90E98 800A0698 0100053C */  lui        $a1, 1
/* 90E9C 800A069C 7C42A534 */  ori        $a1, $a1, 0x427c
/* 90EA0 800A06A0 01000324 */  addiu      $v1, $zero, 1
.L800A06A4:
/* 90EA4 800A06A4 3C00C280 */  lb         $v0, 0x3c($a2)
/* 90EA8 800A06A8 2130C500 */  addu       $a2, $a2, $a1
/* 90EAC 800A06AC FFFF6324 */  addiu      $v1, $v1, -1
/* 90EB0 800A06B0 000082AC */  sw         $v0, ($a0)
/* 90EB4 800A06B4 FBFF6104 */  bgez       $v1, .L800A06A4
/* 90EB8 800A06B8 04008424 */   addiu     $a0, $a0, 4
/* 90EBC 800A06BC 00010424 */  addiu      $a0, $zero, 0x100
/* 90EC0 800A06C0 FD030524 */  addiu      $a1, $zero, 0x3fd
/* 90EC4 800A06C4 83BD010C */  jal        FUN_8006f60c
/* 90EC8 800A06C8 00010624 */   addiu     $a2, $zero, 0x100
/* 90ECC 800A06CC 1400BF8F */  lw         $ra, 0x14($sp)
/* 90ED0 800A06D0 1000B08F */  lw         $s0, 0x10($sp)
/* 90ED4 800A06D4 0800E003 */  jr         $ra
/* 90ED8 800A06D8 1800BD27 */   addiu     $sp, $sp, 0x18
