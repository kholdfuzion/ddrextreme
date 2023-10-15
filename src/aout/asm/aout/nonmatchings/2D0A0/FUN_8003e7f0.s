.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8003e7f0
/* 2EFF0 8003E7F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 2EFF4 8003E7F4 1400B1AF */  sw         $s1, 0x14($sp)
/* 2EFF8 8003E7F8 21888000 */  addu       $s1, $a0, $zero
/* 2EFFC 8003E7FC 1800BFAF */  sw         $ra, 0x18($sp)
/* 2F000 8003E800 7DC4000C */  jal        get_astruct_800311f4
/* 2F004 8003E804 1000B0AF */   sw        $s0, 0x10($sp)
/* 2F008 8003E808 21804000 */  addu       $s0, $v0, $zero
/* 2F00C 8003E80C 06000386 */  lh         $v1, 6($s0)
/* 2F010 8003E810 00000000 */  nop
/* 2F014 8003E814 0C00622C */  sltiu      $v0, $v1, 0xc
/* 2F018 8003E818 6D004010 */  beqz       $v0, .L8003E9D0
/* 2F01C 8003E81C 0180023C */   lui       $v0, %hi(D_80013138)
/* 2F020 8003E820 38314224 */  addiu      $v0, $v0, %lo(D_80013138)
/* 2F024 8003E824 80180300 */  sll        $v1, $v1, 2
/* 2F028 8003E828 21186200 */  addu       $v1, $v1, $v0
/* 2F02C 8003E82C 0000648C */  lw         $a0, ($v1)
/* 2F030 8003E830 00000000 */  nop
/* 2F034 8003E834 08008000 */  jr         $a0
/* 2F038 8003E838 00000000 */   nop
/* 2F03C 8003E83C 01000224 */  addiu      $v0, $zero, 1
/* 2F040 8003E840 160000A6 */  sh         $zero, 0x16($s0)
/* 2F044 8003E844 060002A6 */  sh         $v0, 6($s0)
/* 2F048 8003E848 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2F04C 8003E84C D40E00AE */  sw         $zero, 0xed4($s0)
/* 2F050 8003E850 D00E00AE */  sw         $zero, 0xed0($s0)
/* 2F054 8003E854 CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2F058 8003E858 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2F05C 8003E85C C40E00AE */  sw         $zero, 0xec4($s0)
/* 2F060 8003E860 C00E00AE */  sw         $zero, 0xec0($s0)
/* 2F064 8003E864 BC0E00AE */  sw         $zero, 0xebc($s0)
/* 2F068 8003E868 01000224 */  addiu      $v0, $zero, 1
/* 2F06C 8003E86C 06002216 */  bne        $s1, $v0, .L8003E888
/* 2F070 8003E870 00000000 */   nop
/* 2F074 8003E874 6E19030C */  jal        FUN_800c65b8
/* 2F078 8003E878 00000000 */   nop
/* 2F07C 8003E87C 05004230 */  andi       $v0, $v0, 5
/* 2F080 8003E880 26FA0008 */  j          .L8003E898
/* 2F084 8003E884 05000324 */   addiu     $v1, $zero, 5
.L8003E888:
/* 2F088 8003E888 6E19030C */  jal        FUN_800c65b8
/* 2F08C 8003E88C 00000000 */   nop
/* 2F090 8003E890 50004230 */  andi       $v0, $v0, 0x50
/* 2F094 8003E894 50000324 */  addiu      $v1, $zero, 0x50
.L8003E898:
/* 2F098 8003E898 03004310 */  beq        $v0, $v1, .L8003E8A8
/* 2F09C 8003E89C 00000000 */   nop
/* 2F0A0 8003E8A0 78FA0008 */  j          .L8003E9E0
/* 2F0A4 8003E8A4 01000224 */   addiu     $v0, $zero, 1
.L8003E8A8:
/* 2F0A8 8003E8A8 47B3000C */  jal        FUN_8002cd1c
/* 2F0AC 8003E8AC 21200000 */   addu      $a0, $zero, $zero
/* 2F0B0 8003E8B0 0E004010 */  beqz       $v0, .L8003E8EC
/* 2F0B4 8003E8B4 00000000 */   nop
/* 2F0B8 8003E8B8 16000296 */  lhu        $v0, 0x16($s0)
/* 2F0BC 8003E8BC 00000000 */  nop
/* 2F0C0 8003E8C0 FFFF4224 */  addiu      $v0, $v0, -1
/* 2F0C4 8003E8C4 160002A6 */  sh         $v0, 0x16($s0)
/* 2F0C8 8003E8C8 00140200 */  sll        $v0, $v0, 0x10
/* 2F0CC 8003E8CC 02004104 */  bgez       $v0, .L8003E8D8
/* 2F0D0 8003E8D0 02000224 */   addiu     $v0, $zero, 2
/* 2F0D4 8003E8D4 160002A6 */  sh         $v0, 0x16($s0)
.L8003E8D8:
/* 2F0D8 8003E8D8 16000386 */  lh         $v1, 0x16($s0)
/* 2F0DC 8003E8DC 01000224 */  addiu      $v0, $zero, 1
/* 2F0E0 8003E8E0 02006214 */  bne        $v1, $v0, .L8003E8EC
/* 2F0E4 8003E8E4 00000000 */   nop
/* 2F0E8 8003E8E8 160000A6 */  sh         $zero, 0x16($s0)
.L8003E8EC:
/* 2F0EC 8003E8EC 50B3000C */  jal        FUN_8002cd40
/* 2F0F0 8003E8F0 21200000 */   addu      $a0, $zero, $zero
/* 2F0F4 8003E8F4 0B004010 */  beqz       $v0, .L8003E924
/* 2F0F8 8003E8F8 00000000 */   nop
/* 2F0FC 8003E8FC 16000296 */  lhu        $v0, 0x16($s0)
/* 2F100 8003E900 00000000 */  nop
/* 2F104 8003E904 01004224 */  addiu      $v0, $v0, 1
/* 2F108 8003E908 160002A6 */  sh         $v0, 0x16($s0)
/* 2F10C 8003E90C 00140200 */  sll        $v0, $v0, 0x10
/* 2F110 8003E910 03140200 */  sra        $v0, $v0, 0x10
/* 2F114 8003E914 03004228 */  slti       $v0, $v0, 3
/* 2F118 8003E918 02004014 */  bnez       $v0, .L8003E924
/* 2F11C 8003E91C 00000000 */   nop
/* 2F120 8003E920 160000A6 */  sh         $zero, 0x16($s0)
.L8003E924:
/* 2F124 8003E924 16000386 */  lh         $v1, 0x16($s0)
/* 2F128 8003E928 01000224 */  addiu      $v0, $zero, 1
/* 2F12C 8003E92C 04006214 */  bne        $v1, $v0, .L8003E940
/* 2F130 8003E930 0F80023C */   lui       $v0, 0x800f
/* 2F134 8003E934 02000224 */  addiu      $v0, $zero, 2
/* 2F138 8003E938 160002A6 */  sh         $v0, 0x16($s0)
/* 2F13C 8003E93C 0F80023C */  lui        $v0, %hi(D_800EFFA8)
.L8003E940:
/* 2F140 8003E940 A8FF448C */  lw         $a0, %lo(D_800EFFA8)($v0)
/* 2F144 8003E944 00000000 */  nop
/* 2F148 8003E948 08008394 */  lhu        $v1, 8($a0)
/* 2F14C 8003E94C 00000000 */  nop
/* 2F150 8003E950 80006330 */  andi       $v1, $v1, 0x80
/* 2F154 8003E954 1E006010 */  beqz       $v1, .L8003E9D0
/* 2F158 8003E958 02000224 */   addiu     $v0, $zero, 2
/* 2F15C 8003E95C 16000386 */  lh         $v1, 0x16($s0)
/* 2F160 8003E960 16000496 */  lhu        $a0, 0x16($s0)
/* 2F164 8003E964 0C006210 */  beq        $v1, $v0, .L8003E998
/* 2F168 8003E968 0A008224 */   addiu     $v0, $a0, 0xa
/* 2F16C 8003E96C 060002A6 */  sh         $v0, 6($s0)
/* 2F170 8003E970 080000A6 */  sh         $zero, 8($s0)
/* 2F174 8003E974 D80E00AE */  sw         $zero, 0xed8($s0)
/* 2F178 8003E978 D40E00AE */  sw         $zero, 0xed4($s0)
/* 2F17C 8003E97C D00E00AE */  sw         $zero, 0xed0($s0)
/* 2F180 8003E980 CC0E00AE */  sw         $zero, 0xecc($s0)
/* 2F184 8003E984 C80E00AE */  sw         $zero, 0xec8($s0)
/* 2F188 8003E988 C40E00AE */  sw         $zero, 0xec4($s0)
/* 2F18C 8003E98C C00E00AE */  sw         $zero, 0xec0($s0)
/* 2F190 8003E990 74FA0008 */  j          .L8003E9D0
/* 2F194 8003E994 BC0E00AE */   sw        $zero, 0xebc($s0)
.L8003E998:
/* 2F198 8003E998 74FA0008 */  j          .L8003E9D0
/* 2F19C 8003E99C 060003A6 */   sh        $v1, 6($s0)
/* 2F1A0 8003E9A0 C4FA000C */  jal        FUN_8003eb10
/* 2F1A4 8003E9A4 21202002 */   addu      $a0, $s1, $zero
/* 2F1A8 8003E9A8 0C004010 */  beqz       $v0, .L8003E9DC
/* 2F1AC 8003E9AC 01000224 */   addiu     $v0, $zero, 1
/* 2F1B0 8003E9B0 77FA0008 */  j          .L8003E9DC
/* 2F1B4 8003E9B4 060002A6 */   sh        $v0, 6($s0)
/* 2F1B8 8003E9B8 C2FA000C */  jal        FUN_8003eb08
/* 2F1BC 8003E9BC 21202002 */   addu      $a0, $s1, $zero
/* 2F1C0 8003E9C0 06004010 */  beqz       $v0, .L8003E9DC
/* 2F1C4 8003E9C4 01000224 */   addiu     $v0, $zero, 1
/* 2F1C8 8003E9C8 77FA0008 */  j          .L8003E9DC
/* 2F1CC 8003E9CC 060002A6 */   sh        $v0, 6($s0)
.L8003E9D0:
/* 2F1D0 8003E9D0 16000486 */  lh         $a0, 0x16($s0)
/* 2F1D4 8003E9D4 7DFA000C */  jal        FUN_8003e9f4
/* 2F1D8 8003E9D8 21282002 */   addu      $a1, $s1, $zero
.L8003E9DC:
/* 2F1DC 8003E9DC 21100000 */  addu       $v0, $zero, $zero
.L8003E9E0:
/* 2F1E0 8003E9E0 1800BF8F */  lw         $ra, 0x18($sp)
/* 2F1E4 8003E9E4 1400B18F */  lw         $s1, 0x14($sp)
/* 2F1E8 8003E9E8 1000B08F */  lw         $s0, 0x10($sp)
/* 2F1EC 8003E9EC 0800E003 */  jr         $ra
/* 2F1F0 8003E9F0 2000BD27 */   addiu     $sp, $sp, 0x20
