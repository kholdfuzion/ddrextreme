.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002b764
/* 1BF64 8002B764 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* 1BF68 8002B768 1400B1AF */  sw         $s1, 0x14($sp)
/* 1BF6C 8002B76C 21888000 */  addu       $s1, $a0, $zero
/* 1BF70 8002B770 1580033C */  lui        $v1, %hi(D_8014BA50)
/* 1BF74 8002B774 50BA6724 */  addiu      $a3, $v1, %lo(D_8014BA50)
/* 1BF78 8002B778 21280000 */  addu       $a1, $zero, $zero
/* 1BF7C 8002B77C 2C00B7AF */  sw         $s7, 0x2c($sp)
/* 1BF80 8002B780 21B86000 */  addu       $s7, $v1, $zero
/* 1BF84 8002B784 621F023C */  lui        $v0, 0x1f62
/* 1BF88 8002B788 00004624 */  addiu      $a2, $v0, 0
/* 1BF8C 8002B78C 3000BFAF */  sw         $ra, 0x30($sp)
/* 1BF90 8002B790 2800B6AF */  sw         $s6, 0x28($sp)
/* 1BF94 8002B794 2400B5AF */  sw         $s5, 0x24($sp)
/* 1BF98 8002B798 2000B4AF */  sw         $s4, 0x20($sp)
/* 1BF9C 8002B79C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1BFA0 8002B7A0 1800B2AF */  sw         $s2, 0x18($sp)
/* 1BFA4 8002B7A4 1000B0AF */  sw         $s0, 0x10($sp)
.L8002B7A8:
/* 1BFA8 8002B7A8 0000C490 */  lbu        $a0, ($a2)
/* 1BFAC 8002B7AC 0200C624 */  addiu      $a2, $a2, 2
/* 1BFB0 8002B7B0 2118E500 */  addu       $v1, $a3, $a1
/* 1BFB4 8002B7B4 0100A524 */  addiu      $a1, $a1, 1
/* 1BFB8 8002B7B8 5C0EA22C */  sltiu      $v0, $a1, 0xe5c
/* 1BFBC 8002B7BC FAFF4014 */  bnez       $v0, .L8002B7A8
/* 1BFC0 8002B7C0 000064A0 */   sb        $a0, ($v1)
/* 1BFC4 8002B7C4 2BAD000C */  jal        FUN_8002b4ac
/* 1BFC8 8002B7C8 21800000 */   addu      $s0, $zero, $zero
/* 1BFCC 8002B7CC 50BAE326 */  addiu      $v1, $s7, -0x45b0
/* 1BFD0 8002B7D0 20006284 */  lh         $v0, 0x20($v1)
/* 1BFD4 8002B7D4 00000000 */  nop
/* 1BFD8 8002B7D8 15004010 */  beqz       $v0, .L8002B830
/* 1BFDC 8002B7DC 00000000 */   nop
/* 1BFE0 8002B7E0 22006284 */  lh         $v0, 0x22($v1)
/* 1BFE4 8002B7E4 00000000 */  nop
/* 1BFE8 8002B7E8 11004010 */  beqz       $v0, .L8002B830
/* 1BFEC 8002B7EC 00000000 */   nop
/* 1BFF0 8002B7F0 26006284 */  lh         $v0, 0x26($v1)
/* 1BFF4 8002B7F4 00000000 */  nop
/* 1BFF8 8002B7F8 0D004010 */  beqz       $v0, .L8002B830
/* 1BFFC 8002B7FC 00000000 */   nop
/* 1C000 8002B800 28006284 */  lh         $v0, 0x28($v1)
/* 1C004 8002B804 00000000 */  nop
/* 1C008 8002B808 09004010 */  beqz       $v0, .L8002B830
/* 1C00C 8002B80C 00000000 */   nop
/* 1C010 8002B810 2C006284 */  lh         $v0, 0x2c($v1)
/* 1C014 8002B814 00000000 */  nop
/* 1C018 8002B818 05004010 */  beqz       $v0, .L8002B830
/* 1C01C 8002B81C 00000000 */   nop
/* 1C020 8002B820 2E006284 */  lh         $v0, 0x2e($v1)
/* 1C024 8002B824 00000000 */  nop
/* 1C028 8002B828 02004014 */  bnez       $v0, .L8002B834
/* 1C02C 8002B82C 00000000 */   nop
.L8002B830:
/* 1C030 8002B830 01001024 */  addiu      $s0, $zero, 1
.L8002B834:
/* 1C034 8002B834 03002012 */  beqz       $s1, .L8002B844
/* 1C038 8002B838 00000000 */   nop
/* 1C03C 8002B83C 9DEE020C */  jal        FUN_800bba74
/* 1C040 8002B840 10000424 */   addiu     $a0, $zero, 0x10
.L8002B844:
/* 1C044 8002B844 03000012 */  beqz       $s0, .L8002B854
/* 1C048 8002B848 00000000 */   nop
/* 1C04C 8002B84C 9DEE020C */  jal        FUN_800bba74
/* 1C050 8002B850 12000424 */   addiu     $a0, $zero, 0x12
.L8002B854:
/* 1C054 8002B854 03002016 */  bnez       $s1, .L8002B864
/* 1C058 8002B858 00000000 */   nop
/* 1C05C 8002B85C 05000012 */  beqz       $s0, .L8002B874
/* 1C060 8002B860 21400000 */   addu      $t0, $zero, $zero
.L8002B864:
/* 1C064 8002B864 98AC000C */  jal        FUN_8002b260
/* 1C068 8002B868 00000000 */   nop
/* 1C06C 8002B86C 85AE0008 */  j          .L8002BA14
/* 1C070 8002B870 00000000 */   nop
.L8002B874:
/* 1C074 8002B874 1580023C */  lui        $v0, %hi(D_8014BA50)
/* 1C078 8002B878 50BA5124 */  addiu      $s1, $v0, %lo(D_8014BA50)
/* 1C07C 8002B87C 1C0E3526 */  addiu      $s5, $s1, 0xe1c
/* 1C080 8002B880 1E0E3426 */  addiu      $s4, $s1, 0xe1e
/* 1C084 8002B884 1580023C */  lui        $v0, %hi(D_8014ABF0)
/* 1C088 8002B888 F0AB5224 */  addiu      $s2, $v0, %lo(D_8014ABF0)
/* 1C08C 8002B88C 1E0E5626 */  addiu      $s6, $s2, 0xe1e
/* 1C090 8002B890 C0100800 */  sll        $v0, $t0, 3
.L8002B894:
/* 1C094 8002B894 21385500 */  addu       $a3, $v0, $s5
/* 1C098 8002B898 21184202 */  addu       $v1, $s2, $v0
/* 1C09C 8002B89C 21804000 */  addu       $s0, $v0, $zero
/* 1C0A0 8002B8A0 0000E494 */  lhu        $a0, ($a3)
/* 1C0A4 8002B8A4 1C0E6294 */  lhu        $v0, 0xe1c($v1)
/* 1C0A8 8002B8A8 00000000 */  nop
/* 1C0AC 8002B8AC 20008214 */  bne        $a0, $v0, .L8002B930
/* 1C0B0 8002B8B0 01001325 */   addiu     $s3, $t0, 1
/* 1C0B4 8002B8B4 21301402 */  addu       $a2, $s0, $s4
/* 1C0B8 8002B8B8 21101602 */  addu       $v0, $s0, $s6
/* 1C0BC 8002B8BC 0000C494 */  lhu        $a0, ($a2)
/* 1C0C0 8002B8C0 00004394 */  lhu        $v1, ($v0)
/* 1C0C4 8002B8C4 00000000 */  nop
/* 1C0C8 8002B8C8 1A008314 */  bne        $a0, $v1, .L8002B934
/* 1C0CC 8002B8CC 1C0E4326 */   addiu     $v1, $s2, 0xe1c
/* 1C0D0 8002B8D0 21280000 */  addu       $a1, $zero, $zero
/* 1C0D4 8002B8D4 0000E294 */  lhu        $v0, ($a3)
/* 1C0D8 8002B8D8 21188000 */  addu       $v1, $a0, $zero
/* 1C0DC 8002B8DC 42180300 */  srl        $v1, $v1, 1
/* 1C0E0 8002B8E0 200E2626 */  addiu      $a2, $s1, 0xe20
/* 1C0E4 8002B8E4 08006010 */  beqz       $v1, .L8002B908
/* 1C0E8 8002B8E8 21105100 */   addu      $v0, $v0, $s1
/* 1C0EC 8002B8EC 21204000 */  addu       $a0, $v0, $zero
.L8002B8F0:
/* 1C0F0 8002B8F0 00008294 */  lhu        $v0, ($a0)
/* 1C0F4 8002B8F4 02008424 */  addiu      $a0, $a0, 2
/* 1C0F8 8002B8F8 FFFF6324 */  addiu      $v1, $v1, -1
/* 1C0FC 8002B8FC 2110A200 */  addu       $v0, $a1, $v0
/* 1C100 8002B900 FBFF6014 */  bnez       $v1, .L8002B8F0
/* 1C104 8002B904 FFFF4530 */   andi      $a1, $v0, 0xffff
.L8002B908:
/* 1C108 8002B908 27100500 */  nor        $v0, $zero, $a1
/* 1C10C 8002B90C 2118D000 */  addu       $v1, $a2, $s0
/* 1C110 8002B910 00006494 */  lhu        $a0, ($v1)
/* 1C114 8002B914 FFFF4530 */  andi       $a1, $v0, 0xffff
/* 1C118 8002B918 0300A410 */  beq        $a1, $a0, .L8002B928
/* 1C11C 8002B91C 21100000 */   addu      $v0, $zero, $zero
/* 1C120 8002B920 0100023C */  lui        $v0, 1
/* 1C124 8002B924 2510A200 */  or         $v0, $a1, $v0
.L8002B928:
/* 1C128 8002B928 36004010 */  beqz       $v0, .L8002BA04
/* 1C12C 8002B92C 00000000 */   nop
.L8002B930:
/* 1C130 8002B930 1C0E4326 */  addiu      $v1, $s2, 0xe1c
.L8002B934:
/* 1C134 8002B934 21180302 */  addu       $v1, $s0, $v1
/* 1C138 8002B938 21381502 */  addu       $a3, $s0, $s5
/* 1C13C 8002B93C 00006294 */  lhu        $v0, ($v1)
/* 1C140 8002B940 21301602 */  addu       $a2, $s0, $s6
/* 1C144 8002B944 0000E2A4 */  sh         $v0, ($a3)
/* 1C148 8002B948 21101402 */  addu       $v0, $s0, $s4
/* 1C14C 8002B94C 00006594 */  lhu        $a1, ($v1)
/* 1C150 8002B950 0000C494 */  lhu        $a0, ($a2)
/* 1C154 8002B954 2128B200 */  addu       $a1, $a1, $s2
/* 1C158 8002B958 000044A4 */  sh         $a0, ($v0)
/* 1C15C 8002B95C 0000E294 */  lhu        $v0, ($a3)
/* 1C160 8002B960 0000C394 */  lhu        $v1, ($a2)
/* 1C164 8002B964 00000000 */  nop
/* 1C168 8002B968 42180300 */  srl        $v1, $v1, 1
/* 1C16C 8002B96C 08006010 */  beqz       $v1, .L8002B990
/* 1C170 8002B970 21105100 */   addu      $v0, $v0, $s1
/* 1C174 8002B974 21204000 */  addu       $a0, $v0, $zero
.L8002B978:
/* 1C178 8002B978 0000A294 */  lhu        $v0, ($a1)
/* 1C17C 8002B97C 0200A524 */  addiu      $a1, $a1, 2
/* 1C180 8002B980 FFFF6324 */  addiu      $v1, $v1, -1
/* 1C184 8002B984 000082A4 */  sh         $v0, ($a0)
/* 1C188 8002B988 FBFF6014 */  bnez       $v1, .L8002B978
/* 1C18C 8002B98C 02008424 */   addiu     $a0, $a0, 2
.L8002B990:
/* 1C190 8002B990 01000424 */  addiu      $a0, $zero, 1
/* 1C194 8002B994 04200401 */  sllv       $a0, $a0, $t0
/* 1C198 8002B998 9DEE020C */  jal        FUN_800bba74
/* 1C19C 8002B99C 80008434 */   ori       $a0, $a0, 0x80
/* 1C1A0 8002B9A0 21400000 */  addu       $t0, $zero, $zero
/* 1C1A4 8002B9A4 50BAE626 */  addiu      $a2, $s7, -0x45b0
/* 1C1A8 8002B9A8 21101502 */  addu       $v0, $s0, $s5
/* 1C1AC 8002B9AC 21181402 */  addu       $v1, $s0, $s4
/* 1C1B0 8002B9B0 00004494 */  lhu        $a0, ($v0)
/* 1C1B4 8002B9B4 00006594 */  lhu        $a1, ($v1)
/* 1C1B8 8002B9B8 00000000 */  nop
/* 1C1BC 8002B9BC 42280500 */  srl        $a1, $a1, 1
/* 1C1C0 8002B9C0 0800A010 */  beqz       $a1, .L8002B9E4
/* 1C1C4 8002B9C4 21108600 */   addu      $v0, $a0, $a2
/* 1C1C8 8002B9C8 21204000 */  addu       $a0, $v0, $zero
.L8002B9CC:
/* 1C1CC 8002B9CC 00008294 */  lhu        $v0, ($a0)
/* 1C1D0 8002B9D0 02008424 */  addiu      $a0, $a0, 2
/* 1C1D4 8002B9D4 FFFFA524 */  addiu      $a1, $a1, -1
/* 1C1D8 8002B9D8 21100201 */  addu       $v0, $t0, $v0
/* 1C1DC 8002B9DC FBFFA014 */  bnez       $a1, .L8002B9CC
/* 1C1E0 8002B9E0 FFFF4830 */   andi      $t0, $v0, 0xffff
.L8002B9E4:
/* 1C1E4 8002B9E4 27100800 */  nor        $v0, $zero, $t0
/* 1C1E8 8002B9E8 200EC324 */  addiu      $v1, $a2, 0xe20
/* 1C1EC 8002B9EC 21187000 */  addu       $v1, $v1, $s0
/* 1C1F0 8002B9F0 00006494 */  lhu        $a0, ($v1)
/* 1C1F4 8002B9F4 FFFF4830 */  andi       $t0, $v0, 0xffff
/* 1C1F8 8002B9F8 02000411 */  beq        $t0, $a0, .L8002BA04
/* 1C1FC 8002B9FC 00000000 */   nop
/* 1C200 8002BA00 000068A4 */  sh         $t0, ($v1)
.L8002BA04:
/* 1C204 8002BA04 21406002 */  addu       $t0, $s3, $zero
/* 1C208 8002BA08 0500622A */  slti       $v0, $s3, 5
/* 1C20C 8002BA0C A1FF4014 */  bnez       $v0, .L8002B894
/* 1C210 8002BA10 C0100800 */   sll       $v0, $t0, 3
.L8002BA14:
/* 1C214 8002BA14 3000BF8F */  lw         $ra, 0x30($sp)
/* 1C218 8002BA18 2C00B78F */  lw         $s7, 0x2c($sp)
/* 1C21C 8002BA1C 2800B68F */  lw         $s6, 0x28($sp)
/* 1C220 8002BA20 2400B58F */  lw         $s5, 0x24($sp)
/* 1C224 8002BA24 2000B48F */  lw         $s4, 0x20($sp)
/* 1C228 8002BA28 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1C22C 8002BA2C 1800B28F */  lw         $s2, 0x18($sp)
/* 1C230 8002BA30 1400B18F */  lw         $s1, 0x14($sp)
/* 1C234 8002BA34 1000B08F */  lw         $s0, 0x10($sp)
/* 1C238 8002BA38 01000224 */  addiu      $v0, $zero, 1
/* 1C23C 8002BA3C 0800E003 */  jr         $ra
/* 1C240 8002BA40 3800BD27 */   addiu     $sp, $sp, 0x38
