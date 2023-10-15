.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cfe74
/* C0674 800CFE74 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* C0678 800CFE78 2000B4AF */  sw         $s4, 0x20($sp)
/* C067C 800CFE7C 21A08000 */  addu       $s4, $a0, $zero
/* C0680 800CFE80 FFFF0424 */  addiu      $a0, $zero, -1
/* C0684 800CFE84 2800BFAF */  sw         $ra, 0x28($sp)
/* C0688 800CFE88 2400B5AF */  sw         $s5, 0x24($sp)
/* C068C 800CFE8C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* C0690 800CFE90 1800B2AF */  sw         $s2, 0x18($sp)
/* C0694 800CFE94 1400B1AF */  sw         $s1, 0x14($sp)
/* C0698 800CFE98 CD6B000C */  jal        VSync
/* C069C 800CFE9C 1000B0AF */   sw        $s0, 0x10($sp)
/* C06A0 800CFEA0 E0011224 */  addiu      $s2, $zero, 0x1e0
/* C06A4 800CFEA4 481F043C */  lui        $a0, 0x1f48
/* C06A8 800CFEA8 0E008390 */  lbu        $v1, 0xe($a0)
/* C06AC 800CFEAC 00000000 */  nop
/* C06B0 800CFEB0 88006330 */  andi       $v1, $v1, 0x88
/* C06B4 800CFEB4 0F006010 */  beqz       $v1, .L800CFEF4
/* C06B8 800CFEB8 21804000 */   addu      $s0, $v0, $zero
/* C06BC 800CFEBC 21888000 */  addu       $s1, $a0, $zero
.L800CFEC0:
/* C06C0 800CFEC0 CD6B000C */  jal        VSync
/* C06C4 800CFEC4 FFFF0424 */   addiu     $a0, $zero, -1
/* C06C8 800CFEC8 23105000 */  subu       $v0, $v0, $s0
/* C06CC 800CFECC 2A104202 */  slt        $v0, $s2, $v0
/* C06D0 800CFED0 09004014 */  bnez       $v0, .L800CFEF8
/* C06D4 800CFED4 FFFF0224 */   addiu     $v0, $zero, -1
/* C06D8 800CFED8 4A70000C */  jal        FUN_8001c128
/* C06DC 800CFEDC 00000000 */   nop
/* C06E0 800CFEE0 0E002292 */  lbu        $v0, 0xe($s1)
/* C06E4 800CFEE4 00000000 */  nop
/* C06E8 800CFEE8 88004230 */  andi       $v0, $v0, 0x88
/* C06EC 800CFEEC F4FF4014 */  bnez       $v0, .L800CFEC0
/* C06F0 800CFEF0 00000000 */   nop
.L800CFEF4:
/* C06F4 800CFEF4 21100000 */  addu       $v0, $zero, $zero
.L800CFEF8:
/* C06F8 800CFEF8 03004010 */  beqz       $v0, .L800CFF08
/* C06FC 800CFEFC 481F033C */   lui       $v1, 0x1f48
/* C0700 800CFF00 21400308 */  j          .L800D0084
/* C0704 800CFF04 FFFF0224 */   addiu     $v0, $zero, -1
.L800CFF08:
/* C0708 800CFF08 01008232 */  andi       $v0, $s4, 1
/* C070C 800CFF0C 00110200 */  sll        $v0, $v0, 4
/* C0710 800CFF10 A0004234 */  ori        $v0, $v0, 0xa0
/* C0714 800CFF14 4C1F043C */  lui        $a0, 0x1f4c
/* C0718 800CFF18 0C0062A0 */  sb         $v0, 0xc($v1)
/* C071C 800CFF1C 08000224 */  addiu      $v0, $zero, 8
/* C0720 800CFF20 481F033C */  lui        $v1, 0x1f48
/* C0724 800CFF24 0C0082A0 */  sb         $v0, 0xc($a0)
/* C0728 800CFF28 481F043C */  lui        $a0, 0x1f48
/* C072C 800CFF2C 08000224 */  addiu      $v0, $zero, 8
/* C0730 800CFF30 020060A0 */  sb         $zero, 2($v1)
/* C0734 800CFF34 481F033C */  lui        $v1, 0x1f48
/* C0738 800CFF38 2080103C */  lui        $s0, %hi(D_801FBD10)
/* C073C 800CFF3C 10BD1126 */  addiu      $s1, $s0, %lo(D_801FBD10)
/* C0740 800CFF40 0A0082A0 */  sb         $v0, 0xa($a0)
/* C0744 800CFF44 FFFF0424 */  addiu      $a0, $zero, -1
/* C0748 800CFF48 080060A0 */  sb         $zero, 8($v1)
/* C074C 800CFF4C 481F033C */  lui        $v1, 0x1f48
/* C0750 800CFF50 D011258E */  lw         $a1, 0x11d0($s1)
/* C0754 800CFF54 A1000224 */  addiu      $v0, $zero, 0xa1
/* C0758 800CFF58 DF1120A2 */  sb         $zero, 0x11df($s1)
/* C075C 800CFF5C 0E0062A0 */  sb         $v0, 0xe($v1)
/* C0760 800CFF60 CD6B000C */  jal        VSync
/* C0764 800CFF64 D41125AE */   sw        $a1, 0x11d4($s1)
/* C0768 800CFF68 E0011324 */  addiu      $s3, $zero, 0x1e0
/* C076C 800CFF6C 21904000 */  addu       $s2, $v0, $zero
/* C0770 800CFF70 D411238E */  lw         $v1, 0x11d4($s1)
/* C0774 800CFF74 D011228E */  lw         $v0, 0x11d0($s1)
/* C0778 800CFF78 00000000 */  nop
/* C077C 800CFF7C 0F006214 */  bne        $v1, $v0, .L800CFFBC
/* C0780 800CFF80 21A80002 */   addu      $s5, $s0, $zero
/* C0784 800CFF84 21802002 */  addu       $s0, $s1, $zero
.L800CFF88:
/* C0788 800CFF88 CD6B000C */  jal        VSync
/* C078C 800CFF8C FFFF0424 */   addiu     $a0, $zero, -1
/* C0790 800CFF90 23105200 */  subu       $v0, $v0, $s2
/* C0794 800CFF94 2A106202 */  slt        $v0, $s3, $v0
/* C0798 800CFF98 09004014 */  bnez       $v0, .L800CFFC0
/* C079C 800CFF9C FFFF0224 */   addiu     $v0, $zero, -1
/* C07A0 800CFFA0 4A70000C */  jal        FUN_8001c128
/* C07A4 800CFFA4 00000000 */   nop
/* C07A8 800CFFA8 D411038E */  lw         $v1, 0x11d4($s0)
/* C07AC 800CFFAC D011028E */  lw         $v0, 0x11d0($s0)
/* C07B0 800CFFB0 00000000 */  nop
/* C07B4 800CFFB4 F4FF6210 */  beq        $v1, $v0, .L800CFF88
/* C07B8 800CFFB8 00000000 */   nop
.L800CFFBC:
/* C07BC 800CFFBC 21100000 */  addu       $v0, $zero, $zero
.L800CFFC0:
/* C07C0 800CFFC0 30004014 */  bnez       $v0, .L800D0084
/* C07C4 800CFFC4 FFFF0224 */   addiu     $v0, $zero, -1
/* C07C8 800CFFC8 10BDA326 */  addiu      $v1, $s5, -0x42f0
/* C07CC 800CFFCC D8116290 */  lbu        $v0, 0x11d8($v1)
/* C07D0 800CFFD0 00000000 */  nop
/* C07D4 800CFFD4 08004230 */  andi       $v0, $v0, 8
/* C07D8 800CFFD8 2A004010 */  beqz       $v0, .L800D0084
/* C07DC 800CFFDC F8FF0224 */   addiu     $v0, $zero, -8
/* C07E0 800CFFE0 DC116294 */  lhu        $v0, 0x11dc($v1)
/* C07E4 800CFFE4 00000000 */  nop
/* C07E8 800CFFE8 0108422C */  sltiu      $v0, $v0, 0x801
/* C07EC 800CFFEC 25004010 */  beqz       $v0, .L800D0084
/* C07F0 800CFFF0 F8FF0224 */   addiu     $v0, $zero, -8
/* C07F4 800CFFF4 DC116294 */  lhu        $v0, 0x11dc($v1)
/* C07F8 800CFFF8 00000000 */  nop
/* C07FC 800CFFFC 0F004010 */  beqz       $v0, .L800D003C
/* C0800 800D0000 21200000 */   addu      $a0, $zero, $zero
/* C0804 800D0004 481F073C */  lui        $a3, 0x1f48
/* C0808 800D0008 C0821400 */  sll        $s0, $s4, 0xb
/* C080C 800D000C 21306000 */  addu       $a2, $v1, $zero
/* C0810 800D0010 D001C224 */  addiu      $v0, $a2, 0x1d0
/* C0814 800D0014 21280202 */  addu       $a1, $s0, $v0
.L800D0018:
/* C0818 800D0018 0000E394 */  lhu        $v1, ($a3)
/* C081C 800D001C 01008424 */  addiu      $a0, $a0, 1
/* C0820 800D0020 0000A3A4 */  sh         $v1, ($a1)
/* C0824 800D0024 DC11C294 */  lhu        $v0, 0x11dc($a2)
/* C0828 800D0028 00000000 */  nop
/* C082C 800D002C 2A108200 */  slt        $v0, $a0, $v0
/* C0830 800D0030 F9FF4014 */  bnez       $v0, .L800D0018
/* C0834 800D0034 0200A524 */   addiu     $a1, $a1, 2
/* C0838 800D0038 10BDA326 */  addiu      $v1, $s5, -0x42f0
.L800D003C:
/* C083C 800D003C D8116290 */  lbu        $v0, 0x11d8($v1)
/* C0840 800D0040 00000000 */  nop
/* C0844 800D0044 01004230 */  andi       $v0, $v0, 1
/* C0848 800D0048 0E004014 */  bnez       $v0, .L800D0084
/* C084C 800D004C FAFF0224 */   addiu     $v0, $zero, -6
/* C0850 800D0050 C0821400 */  sll        $s0, $s4, 0xb
/* C0854 800D0054 21107000 */  addu       $v0, $v1, $s0
/* C0858 800D0058 FE015024 */  addiu      $s0, $v0, 0x1fe
/* C085C 800D005C 17000424 */  addiu      $a0, $zero, 0x17
.L800D0060:
/* C0860 800D0060 00000396 */  lhu        $v1, ($s0)
/* C0864 800D0064 FFFF8424 */  addiu      $a0, $a0, -1
/* C0868 800D0068 02120300 */  srl        $v0, $v1, 8
/* C086C 800D006C 001A0300 */  sll        $v1, $v1, 8
/* C0870 800D0070 25104300 */  or         $v0, $v0, $v1
/* C0874 800D0074 000002A6 */  sh         $v0, ($s0)
/* C0878 800D0078 F9FF8104 */  bgez       $a0, .L800D0060
/* C087C 800D007C 02001026 */   addiu     $s0, $s0, 2
/* C0880 800D0080 21100000 */  addu       $v0, $zero, $zero
.L800D0084:
/* C0884 800D0084 2800BF8F */  lw         $ra, 0x28($sp)
/* C0888 800D0088 2400B58F */  lw         $s5, 0x24($sp)
/* C088C 800D008C 2000B48F */  lw         $s4, 0x20($sp)
/* C0890 800D0090 1C00B38F */  lw         $s3, 0x1c($sp)
/* C0894 800D0094 1800B28F */  lw         $s2, 0x18($sp)
/* C0898 800D0098 1400B18F */  lw         $s1, 0x14($sp)
/* C089C 800D009C 1000B08F */  lw         $s0, 0x10($sp)
/* C08A0 800D00A0 0800E003 */  jr         $ra
/* C08A4 800D00A4 3000BD27 */   addiu     $sp, $sp, 0x30
