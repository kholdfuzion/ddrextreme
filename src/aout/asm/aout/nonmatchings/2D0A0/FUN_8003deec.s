.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003deec
/* 2E6EC 8003DEEC E8FFBD27 */  addiu      $sp, $sp, -0x18
/* 2E6F0 8003DEF0 1400BFAF */  sw         $ra, 0x14($sp)
/* 2E6F4 8003DEF4 7DC4000C */  jal        get_astruct_800311f4
/* 2E6F8 8003DEF8 1000B0AF */   sw        $s0, 0x10($sp)
/* 2E6FC 8003DEFC 21804000 */  addu       $s0, $v0, $zero
/* 2E700 8003DF00 04000386 */  lh         $v1, 4($s0)
/* 2E704 8003DF04 00000000 */  nop
/* 2E708 8003DF08 0E00622C */  sltiu      $v0, $v1, 0xe
/* 2E70C 8003DF0C A9004010 */  beqz       $v0, .L8003E1B4
/* 2E710 8003DF10 0180023C */   lui       $v0, %hi(D_80012FBC)
/* 2E714 8003DF14 BC2F4224 */  addiu      $v0, $v0, %lo(D_80012FBC)
/* 2E718 8003DF18 80180300 */  sll        $v1, $v1, 2
/* 2E71C 8003DF1C 21186200 */  addu       $v1, $v1, $v0
/* 2E720 8003DF20 0000648C */  lw         $a0, ($v1)
/* 2E724 8003DF24 00000000 */  nop
/* 2E728 8003DF28 08008000 */  jr         $a0
/* 2E72C 8003DF2C 00000000 */   nop
/* 2E730 8003DF30 0E80023C */  lui        $v0, %hi(D_800D9958)
/* 2E734 8003DF34 589940AC */  sw         $zero, %lo(D_800D9958)($v0)
/* 2E738 8003DF38 01000224 */  addiu      $v0, $zero, 1
/* 2E73C 8003DF3C 140000A6 */  sh         $zero, 0x14($s0)
/* 2E740 8003DF40 040002A6 */  sh         $v0, 4($s0)
/* 2E744 8003DF44 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2E748 8003DF48 D40E00AE */  sw         $zero, 0xed4($s0)
/* 2E74C 8003DF4C D00E00AE */  sw         $zero, 0xed0($s0)
/* 2E750 8003DF50 CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2E754 8003DF54 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2E758 8003DF58 C40E00AE */  sw         $zero, 0xec4($s0)
/* 2E75C 8003DF5C C00E00AE */  sw         $zero, 0xec0($s0)
/* 2E760 8003DF60 BC0E00AE */  sw         $zero, 0xebc($s0)
/* 2E764 8003DF64 47B3000C */  jal        FUN_8002cd1c
/* 2E768 8003DF68 21200000 */   addu      $a0, $zero, $zero
/* 2E76C 8003DF6C 24004010 */  beqz       $v0, .L8003E000
/* 2E770 8003DF70 00000000 */   nop
/* 2E774 8003DF74 14000296 */  lhu        $v0, 0x14($s0)
/* 2E778 8003DF78 00000000 */  nop
/* 2E77C 8003DF7C FFFF4224 */  addiu      $v0, $v0, -1
/* 2E780 8003DF80 140002A6 */  sh         $v0, 0x14($s0)
/* 2E784 8003DF84 00140200 */  sll        $v0, $v0, 0x10
/* 2E788 8003DF88 02004104 */  bgez       $v0, .L8003DF94
/* 2E78C 8003DF8C 04000224 */   addiu     $v0, $zero, 4
/* 2E790 8003DF90 140002A6 */  sh         $v0, 0x14($s0)
.L8003DF94:
/* 2E794 8003DF94 14000386 */  lh         $v1, 0x14($s0)
/* 2E798 8003DF98 03000224 */  addiu      $v0, $zero, 3
/* 2E79C 8003DF9C 0A006214 */  bne        $v1, $v0, .L8003DFC8
/* 2E7A0 8003DFA0 02000224 */   addiu     $v0, $zero, 2
/* 2E7A4 8003DFA4 6E19030C */  jal        FUN_800c65b8
/* 2E7A8 8003DFA8 00000000 */   nop
/* 2E7AC 8003DFAC 50004230 */  andi       $v0, $v0, 0x50
/* 2E7B0 8003DFB0 50000324 */  addiu      $v1, $zero, 0x50
/* 2E7B4 8003DFB4 02004310 */  beq        $v0, $v1, .L8003DFC0
/* 2E7B8 8003DFB8 02000224 */   addiu     $v0, $zero, 2
/* 2E7BC 8003DFBC 140002A6 */  sh         $v0, 0x14($s0)
.L8003DFC0:
/* 2E7C0 8003DFC0 14000386 */  lh         $v1, 0x14($s0)
/* 2E7C4 8003DFC4 02000224 */  addiu      $v0, $zero, 2
.L8003DFC8:
/* 2E7C8 8003DFC8 08006214 */  bne        $v1, $v0, .L8003DFEC
/* 2E7CC 8003DFCC 00000000 */   nop
/* 2E7D0 8003DFD0 6E19030C */  jal        FUN_800c65b8
/* 2E7D4 8003DFD4 00000000 */   nop
/* 2E7D8 8003DFD8 05004230 */  andi       $v0, $v0, 5
/* 2E7DC 8003DFDC 05000324 */  addiu      $v1, $zero, 5
/* 2E7E0 8003DFE0 02004310 */  beq        $v0, $v1, .L8003DFEC
/* 2E7E4 8003DFE4 01000224 */   addiu     $v0, $zero, 1
/* 2E7E8 8003DFE8 140002A6 */  sh         $v0, 0x14($s0)
.L8003DFEC:
/* 2E7EC 8003DFEC 14000386 */  lh         $v1, 0x14($s0)
/* 2E7F0 8003DFF0 01000224 */  addiu      $v0, $zero, 1
/* 2E7F4 8003DFF4 02006214 */  bne        $v1, $v0, .L8003E000
/* 2E7F8 8003DFF8 00000000 */   nop
/* 2E7FC 8003DFFC 140000A6 */  sh         $zero, 0x14($s0)
.L8003E000:
/* 2E800 8003E000 50B3000C */  jal        FUN_8002cd40
/* 2E804 8003E004 21200000 */   addu      $a0, $zero, $zero
/* 2E808 8003E008 27004010 */  beqz       $v0, .L8003E0A8
/* 2E80C 8003E00C 00000000 */   nop
/* 2E810 8003E010 14000296 */  lhu        $v0, 0x14($s0)
/* 2E814 8003E014 00000000 */  nop
/* 2E818 8003E018 01004224 */  addiu      $v0, $v0, 1
/* 2E81C 8003E01C 140002A6 */  sh         $v0, 0x14($s0)
/* 2E820 8003E020 00140200 */  sll        $v0, $v0, 0x10
/* 2E824 8003E024 03140200 */  sra        $v0, $v0, 0x10
/* 2E828 8003E028 05004228 */  slti       $v0, $v0, 5
/* 2E82C 8003E02C 02004014 */  bnez       $v0, .L8003E038
/* 2E830 8003E030 00000000 */   nop
/* 2E834 8003E034 140000A6 */  sh         $zero, 0x14($s0)
.L8003E038:
/* 2E838 8003E038 14000386 */  lh         $v1, 0x14($s0)
/* 2E83C 8003E03C 01000224 */  addiu      $v0, $zero, 1
/* 2E840 8003E040 05006214 */  bne        $v1, $v0, .L8003E058
/* 2E844 8003E044 02000224 */   addiu     $v0, $zero, 2
/* 2E848 8003E048 02000224 */  addiu      $v0, $zero, 2
/* 2E84C 8003E04C 140002A6 */  sh         $v0, 0x14($s0)
/* 2E850 8003E050 14000386 */  lh         $v1, 0x14($s0)
/* 2E854 8003E054 02000224 */  addiu      $v0, $zero, 2
.L8003E058:
/* 2E858 8003E058 08006214 */  bne        $v1, $v0, .L8003E07C
/* 2E85C 8003E05C 00000000 */   nop
/* 2E860 8003E060 6E19030C */  jal        FUN_800c65b8
/* 2E864 8003E064 00000000 */   nop
/* 2E868 8003E068 05004230 */  andi       $v0, $v0, 5
/* 2E86C 8003E06C 05000324 */  addiu      $v1, $zero, 5
/* 2E870 8003E070 02004310 */  beq        $v0, $v1, .L8003E07C
/* 2E874 8003E074 03000224 */   addiu     $v0, $zero, 3
/* 2E878 8003E078 140002A6 */  sh         $v0, 0x14($s0)
.L8003E07C:
/* 2E87C 8003E07C 14000386 */  lh         $v1, 0x14($s0)
/* 2E880 8003E080 03000224 */  addiu      $v0, $zero, 3
/* 2E884 8003E084 0A006214 */  bne        $v1, $v0, .L8003E0B0
/* 2E888 8003E088 02000224 */   addiu     $v0, $zero, 2
/* 2E88C 8003E08C 6E19030C */  jal        FUN_800c65b8
/* 2E890 8003E090 00000000 */   nop
/* 2E894 8003E094 50004230 */  andi       $v0, $v0, 0x50
/* 2E898 8003E098 50000324 */  addiu      $v1, $zero, 0x50
/* 2E89C 8003E09C 02004310 */  beq        $v0, $v1, .L8003E0A8
/* 2E8A0 8003E0A0 04000224 */   addiu     $v0, $zero, 4
/* 2E8A4 8003E0A4 140002A6 */  sh         $v0, 0x14($s0)
.L8003E0A8:
/* 2E8A8 8003E0A8 14000386 */  lh         $v1, 0x14($s0)
/* 2E8AC 8003E0AC 02000224 */  addiu      $v0, $zero, 2
.L8003E0B0:
/* 2E8B0 8003E0B0 08006214 */  bne        $v1, $v0, .L8003E0D4
/* 2E8B4 8003E0B4 00000000 */   nop
/* 2E8B8 8003E0B8 6E19030C */  jal        FUN_800c65b8
/* 2E8BC 8003E0BC 00000000 */   nop
/* 2E8C0 8003E0C0 05004230 */  andi       $v0, $v0, 5
/* 2E8C4 8003E0C4 05000324 */  addiu      $v1, $zero, 5
/* 2E8C8 8003E0C8 02004310 */  beq        $v0, $v1, .L8003E0D4
/* 2E8CC 8003E0CC 00000000 */   nop
/* 2E8D0 8003E0D0 140000A6 */  sh         $zero, 0x14($s0)
.L8003E0D4:
/* 2E8D4 8003E0D4 14000386 */  lh         $v1, 0x14($s0)
/* 2E8D8 8003E0D8 03000224 */  addiu      $v0, $zero, 3
/* 2E8DC 8003E0DC 08006214 */  bne        $v1, $v0, .L8003E100
/* 2E8E0 8003E0E0 0F80023C */   lui       $v0, 0x800f
/* 2E8E4 8003E0E4 6E19030C */  jal        FUN_800c65b8
/* 2E8E8 8003E0E8 00000000 */   nop
/* 2E8EC 8003E0EC 50004230 */  andi       $v0, $v0, 0x50
/* 2E8F0 8003E0F0 50000324 */  addiu      $v1, $zero, 0x50
/* 2E8F4 8003E0F4 02004310 */  beq        $v0, $v1, .L8003E100
/* 2E8F8 8003E0F8 0F80023C */   lui       $v0, %hi(D_800EFFA8)
/* 2E8FC 8003E0FC 140000A6 */  sh         $zero, 0x14($s0)
.L8003E100:
/* 2E900 8003E100 A8FF448C */  lw         $a0, %lo(D_800EFFA8)($v0)
/* 2E904 8003E104 00000000 */  nop
/* 2E908 8003E108 08008394 */  lhu        $v1, 8($a0)
/* 2E90C 8003E10C 00000000 */  nop
/* 2E910 8003E110 80006330 */  andi       $v1, $v1, 0x80
/* 2E914 8003E114 27006010 */  beqz       $v1, .L8003E1B4
/* 2E918 8003E118 04000324 */   addiu     $v1, $zero, 4
/* 2E91C 8003E11C 14000286 */  lh         $v0, 0x14($s0)
/* 2E920 8003E120 14000496 */  lhu        $a0, 0x14($s0)
/* 2E924 8003E124 0C004310 */  beq        $v0, $v1, .L8003E158
/* 2E928 8003E128 0A008224 */   addiu     $v0, $a0, 0xa
/* 2E92C 8003E12C 040002A6 */  sh         $v0, 4($s0)
/* 2E930 8003E130 060000A6 */  sh         $zero, 6($s0)
/* 2E934 8003E134 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2E938 8003E138 D40E00AE */  sw         $zero, 0xed4($s0)
/* 2E93C 8003E13C D00E00AE */  sw         $zero, 0xed0($s0)
/* 2E940 8003E140 CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2E944 8003E144 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2E948 8003E148 C40E00AE */  sw         $zero, 0xec4($s0)
/* 2E94C 8003E14C C00E00AE */  sw         $zero, 0xec0($s0)
/* 2E950 8003E150 6DF80008 */  j          .L8003E1B4
/* 2E954 8003E154 BC0E00AE */   sw        $zero, 0xebc($s0)
.L8003E158:
/* 2E958 8003E158 02000224 */  addiu      $v0, $zero, 2
/* 2E95C 8003E15C 6DF80008 */  j          .L8003E1B4
/* 2E960 8003E160 040002A6 */   sh        $v0, 4($s0)
/* 2E964 8003E164 71F80008 */  j          .L8003E1C4
/* 2E968 8003E168 01000224 */   addiu     $v0, $zero, 1
/* 2E96C 8003E16C D7F9000C */  jal        FUN_8003e75c
/* 2E970 8003E170 00000000 */   nop
/* 2E974 8003E174 12004010 */  beqz       $v0, .L8003E1C0
/* 2E978 8003E178 01000224 */   addiu     $v0, $zero, 1
/* 2E97C 8003E17C 70F80008 */  j          .L8003E1C0
/* 2E980 8003E180 040002A6 */   sh        $v0, 4($s0)
/* 2E984 8003E184 FCF9000C */  jal        FUN_8003e7f0
/* 2E988 8003E188 01000424 */   addiu     $a0, $zero, 1
/* 2E98C 8003E18C 0C004010 */  beqz       $v0, .L8003E1C0
/* 2E990 8003E190 01000224 */   addiu     $v0, $zero, 1
/* 2E994 8003E194 70F80008 */  j          .L8003E1C0
/* 2E998 8003E198 040002A6 */   sh        $v0, 4($s0)
/* 2E99C 8003E19C FCF9000C */  jal        FUN_8003e7f0
/* 2E9A0 8003E1A0 02000424 */   addiu     $a0, $zero, 2
/* 2E9A4 8003E1A4 06004010 */  beqz       $v0, .L8003E1C0
/* 2E9A8 8003E1A8 01000224 */   addiu     $v0, $zero, 1
/* 2E9AC 8003E1AC 70F80008 */  j          .L8003E1C0
/* 2E9B0 8003E1B0 040002A6 */   sh        $v0, 4($s0)
.L8003E1B4:
/* 2E9B4 8003E1B4 14000486 */  lh         $a0, 0x14($s0)
/* 2E9B8 8003E1B8 75F8000C */  jal        FUN_8003e1d4
/* 2E9BC 8003E1BC 00000000 */   nop
.L8003E1C0:
/* 2E9C0 8003E1C0 21100000 */  addu       $v0, $zero, $zero
.L8003E1C4:
/* 2E9C4 8003E1C4 1400BF8F */  lw         $ra, 0x14($sp)
/* 2E9C8 8003E1C8 1000B08F */  lw         $s0, 0x10($sp)
/* 2E9CC 8003E1CC 0800E003 */  jr         $ra
/* 2E9D0 8003E1D0 1800BD27 */   addiu     $sp, $sp, 0x18
