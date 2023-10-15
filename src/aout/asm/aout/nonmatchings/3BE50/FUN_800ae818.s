.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ae818
/* 9F018 800AE818 E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 9F01C 800AE81C 1000B0AF */  sw         $s0, 0x10($sp)
/* 9F020 800AE820 C0810400 */  sll        $s0, $a0, 7
/* 9F024 800AE824 21800402 */  addu       $s0, $s0, $a0
/* 9F028 800AE828 C0811000 */  sll        $s0, $s0, 7
/* 9F02C 800AE82C 1D80023C */  lui        $v0, %hi(D_801C81F8)
/* 9F030 800AE830 F8814224 */  addiu      $v0, $v0, %lo(D_801C81F8)
/* 9F034 800AE834 21800202 */  addu       $s0, $s0, $v0
/* 9F038 800AE838 21200002 */  addu       $a0, $s0, $zero
/* 9F03C 800AE83C 21280000 */  addu       $a1, $zero, $zero
/* 9F040 800AE840 1400BFAF */  sw         $ra, 0x14($sp)
/* 9F044 800AE844 F6A2000C */  jal        memset
/* 9F048 800AE848 80000624 */   addiu     $a2, $zero, 0x80
/* 9F04C 800AE84C 1400BF8F */  lw         $ra, 0x14($sp)
/* 9F050 800AE850 0180033C */  lui        $v1, %hi(D_80016E68)
/* 9F054 800AE854 686E6624 */  addiu      $a2, $v1, %lo(D_80016E68)
/* 9F058 800AE858 0300C288 */  lwl        $v0, 3($a2)
/* 9F05C 800AE85C 0000C298 */  lwr        $v0, ($a2)
/* 9F060 800AE860 0700C488 */  lwl        $a0, 7($a2)
/* 9F064 800AE864 0400C498 */  lwr        $a0, 4($a2)
/* 9F068 800AE868 0B00C588 */  lwl        $a1, 0xb($a2)
/* 9F06C 800AE86C 0800C598 */  lwr        $a1, 8($a2)
/* 9F070 800AE870 030002AA */  swl        $v0, 3($s0)
/* 9F074 800AE874 000002BA */  swr        $v0, ($s0)
/* 9F078 800AE878 070004AA */  swl        $a0, 7($s0)
/* 9F07C 800AE87C 040004BA */  swr        $a0, 4($s0)
/* 9F080 800AE880 0B0005AA */  swl        $a1, 0xb($s0)
/* 9F084 800AE884 080005BA */  swr        $a1, 8($s0)
/* 9F088 800AE888 0F00C288 */  lwl        $v0, 0xf($a2)
/* 9F08C 800AE88C 0C00C298 */  lwr        $v0, 0xc($a2)
/* 9F090 800AE890 1300C488 */  lwl        $a0, 0x13($a2)
/* 9F094 800AE894 1000C498 */  lwr        $a0, 0x10($a2)
/* 9F098 800AE898 1700C588 */  lwl        $a1, 0x17($a2)
/* 9F09C 800AE89C 1400C598 */  lwr        $a1, 0x14($a2)
/* 9F0A0 800AE8A0 0F0002AA */  swl        $v0, 0xf($s0)
/* 9F0A4 800AE8A4 0C0002BA */  swr        $v0, 0xc($s0)
/* 9F0A8 800AE8A8 130004AA */  swl        $a0, 0x13($s0)
/* 9F0AC 800AE8AC 100004BA */  swr        $a0, 0x10($s0)
/* 9F0B0 800AE8B0 170005AA */  swl        $a1, 0x17($s0)
/* 9F0B4 800AE8B4 140005BA */  swr        $a1, 0x14($s0)
/* 9F0B8 800AE8B8 1B00C288 */  lwl        $v0, 0x1b($a2)
/* 9F0BC 800AE8BC 1800C298 */  lwr        $v0, 0x18($a2)
/* 9F0C0 800AE8C0 1C00C480 */  lb         $a0, 0x1c($a2)
/* 9F0C4 800AE8C4 1B0002AA */  swl        $v0, 0x1b($s0)
/* 9F0C8 800AE8C8 180002BA */  swr        $v0, 0x18($s0)
/* 9F0CC 800AE8CC 1C0004A2 */  sb         $a0, 0x1c($s0)
/* 9F0D0 800AE8D0 1000B08F */  lw         $s0, 0x10($sp)
/* 9F0D4 800AE8D4 01000224 */  addiu      $v0, $zero, 1
/* 9F0D8 800AE8D8 0800E003 */  jr         $ra
/* 9F0DC 800AE8DC 1800BD27 */   addiu     $sp, $sp, 0x18
