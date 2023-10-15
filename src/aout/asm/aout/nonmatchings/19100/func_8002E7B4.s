.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_8002E7B4
/* 1EFB4 8002E7B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 1EFB8 8002E7B8 1000B0AF */  sw         $s0, 0x10($sp)
/* 1EFBC 8002E7BC 21808000 */  addu       $s0, $a0, $zero
/* 1EFC0 8002E7C0 3E29023C */  lui        $v0, 0x293e
/* 1EFC4 8002E7C4 41594234 */  ori        $v0, $v0, 0x5941
/* 1EFC8 8002E7C8 40181000 */  sll        $v1, $s0, 1
/* 1EFCC 8002E7CC 21187000 */  addu       $v1, $v1, $s0
/* 1EFD0 8002E7D0 80210300 */  sll        $a0, $v1, 6
/* 1EFD4 8002E7D4 21186400 */  addu       $v1, $v1, $a0
/* 1EFD8 8002E7D8 80180300 */  sll        $v1, $v1, 2
/* 1EFDC 8002E7DC 21187000 */  addu       $v1, $v1, $s0
/* 1EFE0 8002E7E0 80180300 */  sll        $v1, $v1, 2
/* 1EFE4 8002E7E4 21187000 */  addu       $v1, $v1, $s0
/* 1EFE8 8002E7E8 40190300 */  sll        $v1, $v1, 5
/* 1EFEC 8002E7EC 18006200 */  mult       $v1, $v0
/* 1EFF0 8002E7F0 01000424 */  addiu      $a0, $zero, 1
/* 1EFF4 8002E7F4 C31F0300 */  sra        $v1, $v1, 0x1f
/* 1EFF8 8002E7F8 1800BFAF */  sw         $ra, 0x18($sp)
/* 1EFFC 8002E7FC 1400B1AF */  sw         $s1, 0x14($sp)
/* 1F000 8002E800 10100000 */  mfhi       $v0
/* 1F004 8002E804 83120200 */  sra        $v0, $v0, 0xa
/* 1F008 8002E808 CD6B000C */  jal        VSync
/* 1F00C 8002E80C 23804300 */   subu      $s0, $v0, $v1
/* 1F010 8002E810 FFFF5130 */  andi       $s1, $v0, 0xffff
/* 1F014 8002E814 09BA0008 */  j          .L8002E824
/* 1F018 8002E818 FFFF1032 */   andi      $s0, $s0, 0xffff
.L8002E81C:
/* 1F01C 8002E81C 7CAA000C */  jal        vsync_8002a9f0
/* 1F020 8002E820 00000000 */   nop
.L8002E824:
/* 1F024 8002E824 CD6B000C */  jal        VSync
/* 1F028 8002E828 01000424 */   addiu     $a0, $zero, 1
/* 1F02C 8002E82C 23105100 */  subu       $v0, $v0, $s1
/* 1F030 8002E830 FFFF4230 */  andi       $v0, $v0, 0xffff
/* 1F034 8002E834 2B105000 */  sltu       $v0, $v0, $s0
/* 1F038 8002E838 F8FF4014 */  bnez       $v0, .L8002E81C
/* 1F03C 8002E83C 00000000 */   nop
/* 1F040 8002E840 1800BF8F */  lw         $ra, 0x18($sp)
/* 1F044 8002E844 1400B18F */  lw         $s1, 0x14($sp)
/* 1F048 8002E848 1000B08F */  lw         $s0, 0x10($sp)
/* 1F04C 8002E84C 0800E003 */  jr         $ra
/* 1F050 8002E850 2000BD27 */   addiu     $sp, $sp, 0x20
