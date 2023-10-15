.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002e5d8
/* 1EDD8 8002E5D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1EDDC 8002E5DC 1580023C */  lui        $v0, %hi(D_8014CB80)
/* 1EDE0 8002E5E0 80CB448C */  lw         $a0, %lo(D_8014CB80)($v0)
/* 1EDE4 8002E5E4 02000324 */  addiu      $v1, $zero, 2
/* 1EDE8 8002E5E8 1800B2AF */  sw         $s2, 0x18($sp)
/* 1EDEC 8002E5EC 21904000 */  addu       $s2, $v0, $zero
/* 1EDF0 8002E5F0 1C00BFAF */  sw         $ra, 0x1c($sp)
/* 1EDF4 8002E5F4 1400B1AF */  sw         $s1, 0x14($sp)
/* 1EDF8 8002E5F8 28008314 */  bne        $a0, $v1, .L8002E69C
/* 1EDFC 8002E5FC 1000B0AF */   sw        $s0, 0x10($sp)
/* 1EE00 8002E600 00F2043C */  lui        $a0, 0xf200
/* 1EE04 8002E604 C25F000C */  jal        StopRCnt
/* 1EE08 8002E608 02008434 */   ori       $a0, $a0, 2
/* 1EE0C 8002E60C 80CB40AE */  sw         $zero, -0x3480($s2)
/* 1EE10 8002E610 00F2043C */  lui        $a0, 0xf200
/* 1EE14 8002E614 B65F000C */  jal        StartRCnt
/* 1EE18 8002E618 02008434 */   ori       $a0, $a0, 2
/* 1EE1C 8002E61C 21800000 */  addu       $s0, $zero, $zero
/* 1EE20 8002E620 8BB90008 */  j          .L8002E62C
/* 1EE24 8002E624 1580113C */   lui       $s1, 0x8015
.L8002E628:
/* 1EE28 8002E628 01001026 */  addiu      $s0, $s0, 1
.L8002E62C:
/* 1EE2C 8002E62C 0400022A */  slti       $v0, $s0, 4
/* 1EE30 8002E630 09004010 */  beqz       $v0, .L8002E658
/* 1EE34 8002E634 00000000 */   nop
/* 1EE38 8002E638 CD6B000C */  jal        VSync
/* 1EE3C 8002E63C 21200000 */   addu      $a0, $zero, $zero
/* 1EE40 8002E640 7CAA000C */  jal        vsync_8002a9f0
/* 1EE44 8002E644 00000000 */   nop
/* 1EE48 8002E648 1F05030C */  jal        FUN_800c147c
/* 1EE4C 8002E64C 00000000 */   nop
/* 1EE50 8002E650 F5FF4014 */  bnez       $v0, .L8002E628
/* 1EE54 8002E654 00000000 */   nop
.L8002E658:
/* 1EE58 8002E658 CD6B000C */  jal        VSync
/* 1EE5C 8002E65C 21200000 */   addu      $a0, $zero, $zero
/* 1EE60 8002E660 7CAA000C */  jal        vsync_8002a9f0
/* 1EE64 8002E664 00000000 */   nop
/* 1EE68 8002E668 04000224 */  addiu      $v0, $zero, 4
/* 1EE6C 8002E66C 03000216 */  bne        $s0, $v0, .L8002E67C
/* 1EE70 8002E670 00000000 */   nop
/* 1EE74 8002E674 DFB9000C */  jal        FUN_8002e77c
/* 1EE78 8002E678 01000424 */   addiu     $a0, $zero, 1
.L8002E67C:
/* 1EE7C 8002E67C 00F2043C */  lui        $a0, 0xf200
/* 1EE80 8002E680 C25F000C */  jal        StopRCnt
/* 1EE84 8002E684 02008434 */   ori       $a0, $a0, 2
/* 1EE88 8002E688 00F2043C */  lui        $a0, 0xf200
/* 1EE8C 8002E68C 84CB228E */  lw         $v0, -0x347c($s1)
/* 1EE90 8002E690 02008434 */  ori        $a0, $a0, 2
/* 1EE94 8002E694 B65F000C */  jal        StartRCnt
/* 1EE98 8002E698 80CB42AE */   sw        $v0, -0x3480($s2)
.L8002E69C:
/* 1EE9C 8002E69C 1C00BF8F */  lw         $ra, 0x1c($sp)
/* 1EEA0 8002E6A0 1800B28F */  lw         $s2, 0x18($sp)
/* 1EEA4 8002E6A4 1400B18F */  lw         $s1, 0x14($sp)
/* 1EEA8 8002E6A8 1000B08F */  lw         $s0, 0x10($sp)
/* 1EEAC 8002E6AC 0800E003 */  jr         $ra
/* 1EEB0 8002E6B0 2000BD27 */   addiu     $sp, $sp, 0x20
