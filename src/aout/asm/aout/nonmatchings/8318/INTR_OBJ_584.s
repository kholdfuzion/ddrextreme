.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel INTR_OBJ_584
/* BEE8 8001B6E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* BEEC 8001B6EC 1000B0AF */  sw         $s0, 0x10($sp)
/* BEF0 8001B6F0 0D80103C */  lui        $s0, %hi(D_800D2D60)
/* BEF4 8001B6F4 602D1026 */  addiu      $s0, $s0, %lo(D_800D2D60)
/* BEF8 8001B6F8 1400BFAF */  sw         $ra, 0x14($sp)
/* BEFC 8001B6FC 00000296 */  lhu        $v0, ($s0)
/* BF00 8001B700 00000000 */  nop
/* BF04 8001B704 1C004010 */  beqz       $v0, .L8001B778
/* BF08 8001B708 21100000 */   addu      $v0, $zero, $zero
/* BF0C 8001B70C 1D6E000C */  jal        FUN_8001b874
/* BF10 8001B710 00000000 */   nop
/* BF14 8001B714 0D80023C */  lui        $v0, %hi(D_800D3DF0)
/* BF18 8001B718 F03D428C */  lw         $v0, %lo(D_800D3DF0)($v0)
/* BF1C 8001B71C 0D80043C */  lui        $a0, %hi(D_800D3DF4)
/* BF20 8001B720 F43D848C */  lw         $a0, %lo(D_800D3DF4)($a0)
/* BF24 8001B724 00004394 */  lhu        $v1, ($v0)
/* BF28 8001B728 00000000 */  nop
/* BF2C 8001B72C 320003A6 */  sh         $v1, 0x32($s0)
/* BF30 8001B730 0000838C */  lw         $v1, ($a0)
/* BF34 8001B734 0D80043C */  lui        $a0, %hi(D_800D3DEC)
/* BF38 8001B738 EC3D848C */  lw         $a0, %lo(D_800D3DEC)($a0)
/* BF3C 8001B73C 340003AE */  sw         $v1, 0x34($s0)
/* BF40 8001B740 000040A4 */  sh         $zero, ($v0)
/* BF44 8001B744 00004294 */  lhu        $v0, ($v0)
/* BF48 8001B748 00000000 */  nop
/* BF4C 8001B74C 000082A4 */  sh         $v0, ($a0)
/* BF50 8001B750 0D80043C */  lui        $a0, %hi(D_800D3DF4)
/* BF54 8001B754 F43D848C */  lw         $a0, %lo(D_800D3DF4)($a0)
/* BF58 8001B758 7777033C */  lui        $v1, 0x7777
/* BF5C 8001B75C 0000828C */  lw         $v0, ($a0)
/* BF60 8001B760 77776334 */  ori        $v1, $v1, 0x7777
/* BF64 8001B764 24104300 */  and        $v0, $v0, $v1
/* BF68 8001B768 156E000C */  jal        ResetEntryInt
/* BF6C 8001B76C 000082AC */   sw        $v0, ($a0)
/* BF70 8001B770 21100002 */  addu       $v0, $s0, $zero
/* BF74 8001B774 000040A4 */  sh         $zero, ($v0)
.L8001B778:
/* BF78 8001B778 1400BF8F */  lw         $ra, 0x14($sp)
/* BF7C 8001B77C 1000B08F */  lw         $s0, 0x10($sp)
/* BF80 8001B780 0800E003 */  jr         $ra
/* BF84 8001B784 1800BD27 */   addiu     $sp, $sp, 0x18
