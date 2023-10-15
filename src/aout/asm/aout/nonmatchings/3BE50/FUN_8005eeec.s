.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8005eeec
/* 4F6EC 8005EEEC 78FFBD27 */  addiu      $sp, $sp, -0x88
/* 4F6F0 8005EEF0 9800A38F */  lw         $v1, 0x98($sp)
/* 4F6F4 8005EEF4 63000224 */  addiu      $v0, $zero, 0x63
/* 4F6F8 8005EEF8 8400BFAF */  sw         $ra, 0x84($sp)
/* 4F6FC 8005EEFC 8000BEAF */  sw         $fp, 0x80($sp)
/* 4F700 8005EF00 7C00B7AF */  sw         $s7, 0x7c($sp)
/* 4F704 8005EF04 7800B6AF */  sw         $s6, 0x78($sp)
/* 4F708 8005EF08 7400B5AF */  sw         $s5, 0x74($sp)
/* 4F70C 8005EF0C 7000B4AF */  sw         $s4, 0x70($sp)
/* 4F710 8005EF10 6C00B3AF */  sw         $s3, 0x6c($sp)
/* 4F714 8005EF14 6800B2AF */  sw         $s2, 0x68($sp)
/* 4F718 8005EF18 6400B1AF */  sw         $s1, 0x64($sp)
/* 4F71C 8005EF1C 6000B0AF */  sw         $s0, 0x60($sp)
/* 4F720 8005EF20 3000A2AF */  sw         $v0, 0x30($sp)
/* 4F724 8005EF24 3400A0AF */  sw         $zero, 0x34($sp)
/* 4F728 8005EF28 9000A6AF */  sw         $a2, 0x90($sp)
/* 4F72C 8005EF2C 0000D48C */  lw         $s4, ($a2)
/* 4F730 8005EF30 0000638C */  lw         $v1, ($v1)
/* 4F734 8005EF34 1380023C */  lui        $v0, %hi(D_80128115)
/* 4F738 8005EF38 8800A4AF */  sw         $a0, 0x88($sp)
/* 4F73C 8005EF3C 15814490 */  lbu        $a0, %lo(D_80128115)($v0)
/* 4F740 8005EF40 1380023C */  lui        $v0, %hi(D_801282E0)
/* 4F744 8005EF44 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 4F748 8005EF48 3800A3AF */  sw         $v1, 0x38($sp)
/* 4F74C 8005EF4C C0180400 */  sll        $v1, $a0, 3
/* 4F750 8005EF50 23186400 */  subu       $v1, $v1, $a0
/* 4F754 8005EF54 80180300 */  sll        $v1, $v1, 2
/* 4F758 8005EF58 21986200 */  addu       $s3, $v1, $v0
/* 4F75C 8005EF5C A000A28F */  lw         $v0, 0xa0($sp)
/* 4F760 8005EF60 9C00A38F */  lw         $v1, 0x9c($sp)
/* 4F764 8005EF64 8C00A5AF */  sw         $a1, 0x8c($sp)
/* 4F768 8005EF68 2A204300 */  slt        $a0, $v0, $v1
/* 4F76C 8005EF6C 02008010 */  beqz       $a0, .L8005EF78
/* 4F770 8005EF70 9400A7AF */   sw        $a3, 0x94($sp)
/* 4F774 8005EF74 9C00A2AF */  sw         $v0, 0x9c($sp)
.L8005EF78:
/* 4F778 8005EF78 8800A48F */  lw         $a0, 0x88($sp)
/* 4F77C 8005EF7C 00000000 */  nop
/* 4F780 8005EF80 0800838C */  lw         $v1, 8($a0)
/* 4F784 8005EF84 FFFF0224 */  addiu      $v0, $zero, -1
/* 4F788 8005EF88 43006214 */  bne        $v1, $v0, .L8005F098
/* 4F78C 8005EF8C 21F00000 */   addu      $fp, $zero, $zero
/* 4F790 8005EF90 0F80033C */  lui        $v1, %hi(D_800F001C)
/* 4F794 8005EF94 0400848C */  lw         $a0, 4($a0)
/* 4F798 8005EF98 1C00628C */  lw         $v0, %lo(D_800F001C)($v1)
/* 4F79C 8005EF9C B4000324 */  addiu      $v1, $zero, 0xb4
/* 4F7A0 8005EFA0 23F04400 */  subu       $fp, $v0, $a0
/* 4F7A4 8005EFA4 03008530 */  andi       $a1, $a0, 3
/* 4F7A8 8005EFA8 00210500 */  sll        $a0, $a1, 4
/* 4F7AC 8005EFAC 23106400 */  subu       $v0, $v1, $a0
/* 4F7B0 8005EFB0 2A10C203 */  slt        $v0, $fp, $v0
/* 4F7B4 8005EFB4 13004010 */  beqz       $v0, .L8005F004
/* 4F7B8 8005EFB8 23107E00 */   subu      $v0, $v1, $fp
/* 4F7BC 8005EFBC 23104400 */  subu       $v0, $v0, $a0
/* 4F7C0 8005EFC0 18004200 */  mult       $v0, $v0
/* 4F7C4 8005EFC4 12100000 */  mflo       $v0
/* 4F7C8 8005EFC8 8888043C */  lui        $a0, 0x8888
/* 4F7CC 8005EFCC 89888434 */  ori        $a0, $a0, 0x8889
/* 4F7D0 8005EFD0 18004400 */  mult       $v0, $a0
/* 4F7D4 8005EFD4 C0180500 */  sll        $v1, $a1, 3
/* 4F7D8 8005EFD8 21186500 */  addu       $v1, $v1, $a1
/* 4F7DC 8005EFDC 80180300 */  sll        $v1, $v1, 2
/* 4F7E0 8005EFE0 23186500 */  subu       $v1, $v1, $a1
/* 4F7E4 8005EFE4 40180300 */  sll        $v1, $v1, 1
/* 4F7E8 8005EFE8 10200000 */  mfhi       $a0
/* 4F7EC 8005EFEC 21208200 */  addu       $a0, $a0, $v0
/* 4F7F0 8005EFF0 03210400 */  sra        $a0, $a0, 4
/* 4F7F4 8005EFF4 C3170200 */  sra        $v0, $v0, 0x1f
/* 4F7F8 8005EFF8 23208200 */  subu       $a0, $a0, $v0
/* 4F7FC 8005EFFC 287C0108 */  j          .L8005F0A0
/* 4F800 8005F000 21F08300 */   addu      $fp, $a0, $v1
.L8005F004:
/* 4F804 8005F004 B400C22B */  slti       $v0, $fp, 0xb4
/* 4F808 8005F008 1F004010 */  beqz       $v0, .L8005F088
/* 4F80C 8005F00C 23F07E00 */   subu      $fp, $v1, $fp
/* 4F810 8005F010 0200C107 */  bgez       $fp, .L8005F01C
/* 4F814 8005F014 2110C003 */   addu      $v0, $fp, $zero
/* 4F818 8005F018 0F00C227 */  addiu      $v0, $fp, 0xf
.L8005F01C:
/* 4F81C 8005F01C 03290200 */  sra        $a1, $v0, 4
/* 4F820 8005F020 00110500 */  sll        $v0, $a1, 4
/* 4F824 8005F024 2320C203 */  subu       $a0, $fp, $v0
/* 4F828 8005F028 08008328 */  slti       $v1, $a0, 8
/* 4F82C 8005F02C 0F006010 */  beqz       $v1, .L8005F06C
/* 4F830 8005F030 C0100400 */   sll       $v0, $a0, 3
/* 4F834 8005F034 21104400 */  addu       $v0, $v0, $a0
/* 4F838 8005F038 80100200 */  sll        $v0, $v0, 2
/* 4F83C 8005F03C 23104400 */  subu       $v0, $v0, $a0
/* 4F840 8005F040 40100200 */  sll        $v0, $v0, 1
/* 4F844 8005F044 C0180500 */  sll        $v1, $a1, 3
/* 4F848 8005F048 21186500 */  addu       $v1, $v1, $a1
/* 4F84C 8005F04C 80180300 */  sll        $v1, $v1, 2
/* 4F850 8005F050 23186500 */  subu       $v1, $v1, $a1
/* 4F854 8005F054 02004104 */  bgez       $v0, .L8005F060
/* 4F858 8005F058 40180300 */   sll       $v1, $v1, 1
/* 4F85C 8005F05C 07004224 */  addiu      $v0, $v0, 7
.L8005F060:
/* 4F860 8005F060 C3100200 */  sra        $v0, $v0, 3
/* 4F864 8005F064 287C0108 */  j          .L8005F0A0
/* 4F868 8005F068 21F06200 */   addu      $fp, $v1, $v0
.L8005F06C:
/* 4F86C 8005F06C 0100A324 */  addiu      $v1, $a1, 1
/* 4F870 8005F070 C0100300 */  sll        $v0, $v1, 3
/* 4F874 8005F074 21104300 */  addu       $v0, $v0, $v1
/* 4F878 8005F078 80100200 */  sll        $v0, $v0, 2
/* 4F87C 8005F07C 23104300 */  subu       $v0, $v0, $v1
/* 4F880 8005F080 287C0108 */  j          .L8005F0A0
/* 4F884 8005F084 40F00200 */   sll       $fp, $v0, 1
.L8005F088:
/* 4F888 8005F088 21F00000 */  addu       $fp, $zero, $zero
/* 4F88C 8005F08C 01000224 */  addiu      $v0, $zero, 1
/* 4F890 8005F090 287C0108 */  j          .L8005F0A0
/* 4F894 8005F094 3400A2AF */   sw        $v0, 0x34($sp)
.L8005F098:
/* 4F898 8005F098 01000324 */  addiu      $v1, $zero, 1
/* 4F89C 8005F09C 3400A3AF */  sw         $v1, 0x34($sp)
.L8005F0A0:
/* 4F8A0 8005F0A0 02000B24 */  addiu      $t3, $zero, 2
/* 4F8A4 8005F0A4 2000A327 */  addiu      $v1, $sp, 0x20
/* 4F8A8 8005F0A8 21286000 */  addu       $a1, $v1, $zero
/* 4F8AC 8005F0AC 01001624 */  addiu      $s6, $zero, 1
/* 4F8B0 8005F0B0 8800A48F */  lw         $a0, 0x88($sp)
/* 4F8B4 8005F0B4 8800A28F */  lw         $v0, 0x88($sp)
/* 4F8B8 8005F0B8 28008424 */  addiu      $a0, $a0, 0x28
/* 4F8BC 8005F0BC 5800A4AF */  sw         $a0, 0x58($sp)
/* 4F8C0 8005F0C0 1800498C */  lw         $t1, 0x18($v0)
/* 4F8C4 8005F0C4 0F80023C */  lui        $v0, %hi(D_800F0058)
/* 4F8C8 8005F0C8 58004224 */  addiu      $v0, $v0, %lo(D_800F0058)
/* 4F8CC 8005F0CC 9C004824 */  addiu      $t0, $v0, 0x9c
/* 4F8D0 8005F0D0 0C014724 */  addiu      $a3, $v0, 0x10c
/* 4F8D4 8005F0D4 2800A427 */  addiu      $a0, $sp, 0x28
/* 4F8D8 8005F0D8 21308000 */  addu       $a2, $a0, $zero
/* 4F8DC 8005F0DC 4400A4AF */  sw         $a0, 0x44($sp)
/* 4F8E0 8005F0E0 21204000 */  addu       $a0, $v0, $zero
/* 4F8E4 8005F0E4 D0FF8A24 */  addiu      $t2, $a0, -0x30
/* 4F8E8 8005F0E8 4000A3AF */  sw         $v1, 0x40($sp)
/* 4F8EC 8005F0EC 0100033C */  lui        $v1, 1
/* 4F8F0 8005F0F0 7C426334 */  ori        $v1, $v1, 0x427c
.L8005F0F4:
/* 4F8F4 8005F0F4 05002015 */  bnez       $t1, .L8005F10C
/* 4F8F8 8005F0F8 0000C4AC */   sw        $a0, ($a2)
/* 4F8FC 8005F0FC 20004281 */  lb         $v0, 0x20($t2)
/* 4F900 8005F100 00000000 */  nop
/* 4F904 8005F104 03004B14 */  bne        $v0, $t3, .L8005F114
/* 4F908 8005F108 00000000 */   nop
.L8005F10C:
/* 4F90C 8005F10C 467C0108 */  j          .L8005F118
/* 4F910 8005F110 0000A7AC */   sw        $a3, ($a1)
.L8005F114:
/* 4F914 8005F114 0000A8AC */  sw         $t0, ($a1)
.L8005F118:
/* 4F918 8005F118 0400A524 */  addiu      $a1, $a1, 4
/* 4F91C 8005F11C 21400301 */  addu       $t0, $t0, $v1
/* 4F920 8005F120 2138E300 */  addu       $a3, $a3, $v1
/* 4F924 8005F124 0400C624 */  addiu      $a2, $a2, 4
/* 4F928 8005F128 FFFFD626 */  addiu      $s6, $s6, -1
/* 4F92C 8005F12C F1FFC106 */  bgez       $s6, .L8005F0F4
/* 4F930 8005F130 21208300 */   addu      $a0, $a0, $v1
/* 4F934 8005F134 21B00000 */  addu       $s6, $zero, $zero
.L8005F138:
/* 4F938 8005F138 4000A38F */  lw         $v1, 0x40($sp)
/* 4F93C 8005F13C 80201600 */  sll        $a0, $s6, 2
/* 4F940 8005F140 21106400 */  addu       $v0, $v1, $a0
/* 4F944 8005F144 0000438C */  lw         $v1, ($v0)
/* 4F948 8005F148 0100C226 */  addiu      $v0, $s6, 1
/* 4F94C 8005F14C 4800A2AF */  sw         $v0, 0x48($sp)
/* 4F950 8005F150 6C007084 */  lh         $s0, 0x6c($v1)
/* 4F954 8005F154 5800A38F */  lw         $v1, 0x58($sp)
/* 4F958 8005F158 00000000 */  nop
/* 4F95C 8005F15C 21106400 */  addu       $v0, $v1, $a0
/* 4F960 8005F160 000040AC */  sw         $zero, ($v0)
/* 4F964 8005F164 0F80023C */  lui        $v0, %hi(D_800F0028)
/* 4F968 8005F168 28004524 */  addiu      $a1, $v0, %lo(D_800F0028)
/* 4F96C 8005F16C 21109600 */  addu       $v0, $a0, $s6
/* 4F970 8005F170 C0190200 */  sll        $v1, $v0, 7
/* 4F974 8005F174 21104300 */  addu       $v0, $v0, $v1
/* 4F978 8005F178 40110200 */  sll        $v0, $v0, 5
/* 4F97C 8005F17C 23105600 */  subu       $v0, $v0, $s6
/* 4F980 8005F180 80100200 */  sll        $v0, $v0, 2
/* 4F984 8005F184 21104500 */  addu       $v0, $v0, $a1
/* 4F988 8005F188 8A004290 */  lbu        $v0, 0x8a($v0)
/* 4F98C 8005F18C 07000324 */  addiu      $v1, $zero, 7
/* 4F990 8005F190 9C014310 */  beq        $v0, $v1, .L8005F804
/* 4F994 8005F194 5000A4AF */   sw        $a0, 0x50($sp)
/* 4F998 8005F198 9A014010 */  beqz       $v0, .L8005F804
/* 4F99C 8005F19C 00000000 */   nop
/* 4F9A0 8005F1A0 8800A38F */  lw         $v1, 0x88($sp)
/* 4F9A4 8005F1A4 00000000 */  nop
/* 4F9A8 8005F1A8 1800628C */  lw         $v0, 0x18($v1)
/* 4F9AC 8005F1AC 00000000 */  nop
/* 4F9B0 8005F1B0 05004014 */  bnez       $v0, .L8005F1C8
/* 4F9B4 8005F1B4 02000224 */   addiu     $v0, $zero, 2
/* 4F9B8 8005F1B8 2000A380 */  lb         $v1, 0x20($a1)
/* 4F9BC 8005F1BC 00000000 */  nop
/* 4F9C0 8005F1C0 0C006214 */  bne        $v1, $v0, .L8005F1F4
/* 4F9C4 8005F1C4 FFFF0226 */   addiu     $v0, $s0, -1
.L8005F1C8:
/* 4F9C8 8005F1C8 657A010C */  jal        FUN_8005e994
/* 4F9CC 8005F1CC 2120C002 */   addu      $a0, $s6, $zero
/* 4F9D0 8005F1D0 21180202 */  addu       $v1, $s0, $v0
/* 4F9D4 8005F1D4 FFFF6324 */  addiu      $v1, $v1, -1
/* 4F9D8 8005F1D8 1A006200 */  div        $zero, $v1, $v0
/* 4F9DC 8005F1DC 12180000 */  mflo       $v1
/* 4F9E0 8005F1E0 02004014 */  bnez       $v0, .L8005F1EC
/* 4F9E4 8005F1E4 00000000 */   nop
/* 4F9E8 8005F1E8 CD010000 */  break      0, 7
.L8005F1EC:
/* 4F9EC 8005F1EC 21806000 */   addu      $s0, $v1, $zero
/* 4F9F0 8005F1F0 FFFF0226 */  addiu      $v0, $s0, -1
.L8005F1F4:
/* 4F9F4 8005F1F4 0700422C */  sltiu      $v0, $v0, 7
/* 4F9F8 8005F1F8 03004014 */  bnez       $v0, .L8005F208
/* 4F9FC 8005F1FC FFFF0226 */   addiu     $v0, $s0, -1
/* 4FA00 8005F200 07001024 */  addiu      $s0, $zero, 7
/* 4FA04 8005F204 FFFF0226 */  addiu      $v0, $s0, -1
.L8005F208:
/* 4FA08 8005F208 0200432C */  sltiu      $v1, $v0, 2
/* 4FA0C 8005F20C 17006010 */  beqz       $v1, .L8005F26C
/* 4FA10 8005F210 21284000 */   addu      $a1, $v0, $zero
/* 4FA14 8005F214 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 4FA18 8005F218 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 4FA1C 8005F21C 20004380 */  lb         $v1, 0x20($v0)
/* 4FA20 8005F220 00000000 */  nop
/* 4FA24 8005F224 0B006010 */  beqz       $v1, .L8005F254
/* 4FA28 8005F228 00000000 */   nop
/* 4FA2C 8005F22C 4400A48F */  lw         $a0, 0x44($sp)
/* 4FA30 8005F230 5000A38F */  lw         $v1, 0x50($sp)
/* 4FA34 8005F234 00000000 */  nop
/* 4FA38 8005F238 21108300 */  addu       $v0, $a0, $v1
/* 4FA3C 8005F23C 0000438C */  lw         $v1, ($v0)
/* 4FA40 8005F240 00000000 */  nop
/* 4FA44 8005F244 5400648C */  lw         $a0, 0x54($v1)
/* 4FA48 8005F248 00000000 */  nop
/* 4FA4C 8005F24C 08008014 */  bnez       $a0, .L8005F270
/* 4FA50 8005F250 0700A22C */   sltiu     $v0, $a1, 7
.L8005F254:
/* 4FA54 8005F254 5800A48F */  lw         $a0, 0x58($sp)
/* 4FA58 8005F258 5000A28F */  lw         $v0, 0x50($sp)
/* 4FA5C 8005F25C 00000000 */  nop
/* 4FA60 8005F260 21188200 */  addu       $v1, $a0, $v0
/* 4FA64 8005F264 01000224 */  addiu      $v0, $zero, 1
/* 4FA68 8005F268 000062AC */  sw         $v0, ($v1)
.L8005F26C:
/* 4FA6C 8005F26C 0700A22C */  sltiu      $v0, $a1, 7
.L8005F270:
/* 4FA70 8005F270 14004010 */  beqz       $v0, .L8005F2C4
/* 4FA74 8005F274 0180023C */   lui       $v0, %hi(D_80014458)
/* 4FA78 8005F278 58444224 */  addiu      $v0, $v0, %lo(D_80014458)
/* 4FA7C 8005F27C 80180500 */  sll        $v1, $a1, 2
/* 4FA80 8005F280 21186200 */  addu       $v1, $v1, $v0
/* 4FA84 8005F284 0000648C */  lw         $a0, ($v1)
/* 4FA88 8005F288 00000000 */  nop
/* 4FA8C 8005F28C 08008000 */  jr         $a0
/* 4FA90 8005F290 00000000 */   nop
/* 4FA94 8005F294 B27C0108 */  j          .L8005F2C8
/* 4FA98 8005F298 21800000 */   addu      $s0, $zero, $zero
/* 4FA9C 8005F29C B27C0108 */  j          .L8005F2C8
/* 4FAA0 8005F2A0 01001024 */   addiu     $s0, $zero, 1
/* 4FAA4 8005F2A4 B27C0108 */  j          .L8005F2C8
/* 4FAA8 8005F2A8 02001024 */   addiu     $s0, $zero, 2
/* 4FAAC 8005F2AC B27C0108 */  j          .L8005F2C8
/* 4FAB0 8005F2B0 03001024 */   addiu     $s0, $zero, 3
/* 4FAB4 8005F2B4 B27C0108 */  j          .L8005F2C8
/* 4FAB8 8005F2B8 04001024 */   addiu     $s0, $zero, 4
/* 4FABC 8005F2BC B27C0108 */  j          .L8005F2C8
/* 4FAC0 8005F2C0 05001024 */   addiu     $s0, $zero, 5
.L8005F2C4:
/* 4FAC4 8005F2C4 06001024 */  addiu      $s0, $zero, 6
.L8005F2C8:
/* 4FAC8 8005F2C8 0F80033C */  lui        $v1, %hi(D_800F0028)
/* 4FACC 8005F2CC 28006224 */  addiu      $v0, $v1, %lo(D_800F0028)
/* 4FAD0 8005F2D0 20004480 */  lb         $a0, 0x20($v0)
/* 4FAD4 8005F2D4 02000324 */  addiu      $v1, $zero, 2
/* 4FAD8 8005F2D8 0C008314 */  bne        $a0, $v1, .L8005F30C
/* 4FADC 8005F2DC 00000000 */   nop
/* 4FAE0 8005F2E0 4400A48F */  lw         $a0, 0x44($sp)
/* 4FAE4 8005F2E4 5000A38F */  lw         $v1, 0x50($sp)
/* 4FAE8 8005F2E8 00000000 */  nop
/* 4FAEC 8005F2EC 21108300 */  addu       $v0, $a0, $v1
/* 4FAF0 8005F2F0 0000438C */  lw         $v1, ($v0)
/* 4FAF4 8005F2F4 00000000 */  nop
/* 4FAF8 8005F2F8 5400648C */  lw         $a0, 0x54($v1)
/* 4FAFC 8005F2FC 00000000 */  nop
/* 4FB00 8005F300 02008010 */  beqz       $a0, .L8005F30C
/* 4FB04 8005F304 00000000 */   nop
/* 4FB08 8005F308 06001024 */  addiu      $s0, $zero, 6
.L8005F30C:
/* 4FB0C 8005F30C 3000A48F */  lw         $a0, 0x30($sp)
/* 4FB10 8005F310 00000000 */  nop
/* 4FB14 8005F314 2A100402 */  slt        $v0, $s0, $a0
/* 4FB18 8005F318 02004010 */  beqz       $v0, .L8005F324
/* 4FB1C 8005F31C 00000000 */   nop
/* 4FB20 8005F320 3000B0AF */  sw         $s0, 0x30($sp)
.L8005F324:
/* 4FB24 8005F324 3400A28F */  lw         $v0, 0x34($sp)
/* 4FB28 8005F328 00000000 */  nop
/* 4FB2C 8005F32C 1A004010 */  beqz       $v0, .L8005F398
/* 4FB30 8005F330 0F80023C */   lui       $v0, %hi(D_800F001C)
/* 4FB34 8005F334 1C00448C */  lw         $a0, %lo(D_800F001C)($v0)
/* 4FB38 8005F338 8800A28F */  lw         $v0, 0x88($sp)
/* 4FB3C 8005F33C 00000000 */  nop
/* 4FB40 8005F340 0400438C */  lw         $v1, 4($v0)
/* 4FB44 8005F344 20000224 */  addiu      $v0, $zero, 0x20
/* 4FB48 8005F348 23208300 */  subu       $a0, $a0, $v1
/* 4FB4C 8005F34C 4CFF8424 */  addiu      $a0, $a0, -0xb4
/* 4FB50 8005F350 00230400 */  sll        $a0, $a0, 0xc
/* 4FB54 8005F354 06000324 */  addiu      $v1, $zero, 6
/* 4FB58 8005F358 23187000 */  subu       $v1, $v1, $s0
/* 4FB5C 8005F35C 80180300 */  sll        $v1, $v1, 2
/* 4FB60 8005F360 23104300 */  subu       $v0, $v0, $v1
/* 4FB64 8005F364 1A008200 */  div        $zero, $a0, $v0
/* 4FB68 8005F368 12200000 */  mflo       $a0
/* 4FB6C 8005F36C 02004014 */  bnez       $v0, .L8005F378
/* 4FB70 8005F370 00000000 */   nop
/* 4FB74 8005F374 CD010000 */  break      0, 7
.L8005F378:
/* 4FB78 8005F378 F4F1000C */   jal       rsin
/* 4FB7C 8005F37C 00000000 */   nop
/* 4FB80 8005F380 02004104 */  bgez       $v0, .L8005F38C
/* 4FB84 8005F384 00000000 */   nop
/* 4FB88 8005F388 7F004224 */  addiu      $v0, $v0, 0x7f
.L8005F38C:
/* 4FB8C 8005F38C C3110200 */  sra        $v0, $v0, 7
/* 4FB90 8005F390 E77C0108 */  j          .L8005F39C
/* 4FB94 8005F394 A0005524 */   addiu     $s5, $v0, 0xa0
.L8005F398:
/* 4FB98 8005F398 80001524 */  addiu      $s5, $zero, 0x80
.L8005F39C:
/* 4FB9C 8005F39C A000A28F */  lw         $v0, 0xa0($sp)
/* 4FBA0 8005F3A0 9C00A48F */  lw         $a0, 0x9c($sp)
/* 4FBA4 8005F3A4 1600C012 */  beqz       $s6, .L8005F400
/* 4FBA8 8005F3A8 23184400 */   subu      $v1, $v0, $a0
/* 4FBAC 8005F3AC 40100300 */  sll        $v0, $v1, 1
/* 4FBB0 8005F3B0 21104300 */  addu       $v0, $v0, $v1
/* 4FBB4 8005F3B4 C0100200 */  sll        $v0, $v0, 3
/* 4FBB8 8005F3B8 21104300 */  addu       $v0, $v0, $v1
/* 4FBBC 8005F3BC C0100200 */  sll        $v0, $v0, 3
/* 4FBC0 8005F3C0 18006200 */  mult       $v1, $v0
/* 4FBC4 8005F3C4 12100000 */  mflo       $v0
/* 4FBC8 8005F3C8 A000A38F */  lw         $v1, 0xa0($sp)
/* 4FBCC 8005F3CC 00000000 */  nop
/* 4FBD0 8005F3D0 1A004300 */  div        $zero, $v0, $v1
/* 4FBD4 8005F3D4 12100000 */  mflo       $v0
/* 4FBD8 8005F3D8 02006014 */  bnez       $v1, .L8005F3E4
/* 4FBDC 8005F3DC 00000000 */   nop
/* 4FBE0 8005F3E0 CD010000 */  break      0, 7
.L8005F3E4:
/* 4FBE4 8005F3E4 1A004300 */   div       $zero, $v0, $v1
/* 4FBE8 8005F3E8 12100000 */  mflo       $v0
/* 4FBEC 8005F3EC 02006014 */  bnez       $v1, .L8005F3F8
/* 4FBF0 8005F3F0 00000000 */   nop
/* 4FBF4 8005F3F4 CD010000 */  break      0, 7
.L8005F3F8:
/* 4FBF8 8005F3F8 157D0108 */   j         .L8005F454
/* 4FBFC 8005F3FC 98005724 */   addiu     $s7, $v0, 0x98
.L8005F400:
/* 4FC00 8005F400 40100300 */  sll        $v0, $v1, 1
/* 4FC04 8005F404 21104300 */  addu       $v0, $v0, $v1
/* 4FC08 8005F408 C0100200 */  sll        $v0, $v0, 3
/* 4FC0C 8005F40C 21104300 */  addu       $v0, $v0, $v1
/* 4FC10 8005F410 C0100200 */  sll        $v0, $v0, 3
/* 4FC14 8005F414 23100200 */  negu       $v0, $v0
/* 4FC18 8005F418 18006200 */  mult       $v1, $v0
/* 4FC1C 8005F41C 12100000 */  mflo       $v0
/* 4FC20 8005F420 A000A38F */  lw         $v1, 0xa0($sp)
/* 4FC24 8005F424 00000000 */  nop
/* 4FC28 8005F428 1A004300 */  div        $zero, $v0, $v1
/* 4FC2C 8005F42C 12100000 */  mflo       $v0
/* 4FC30 8005F430 02006014 */  bnez       $v1, .L8005F43C
/* 4FC34 8005F434 00000000 */   nop
/* 4FC38 8005F438 CD010000 */  break      0, 7
.L8005F43C:
/* 4FC3C 8005F43C 1A004300 */   div       $zero, $v0, $v1
/* 4FC40 8005F440 12100000 */  mflo       $v0
/* 4FC44 8005F444 02006014 */  bnez       $v1, .L8005F450
/* 4FC48 8005F448 00000000 */   nop
/* 4FC4C 8005F44C CD010000 */  break      0, 7
.L8005F450:
/* 4FC50 8005F450 D0FE5724 */   addiu     $s7, $v0, -0x130
.L8005F454:
/* 4FC54 8005F454 21880000 */  addu       $s1, $zero, $zero
/* 4FC58 8005F458 0100C226 */  addiu      $v0, $s6, 1
/* 4FC5C 8005F45C 01008326 */  addiu      $v1, $s4, 1
/* 4FC60 8005F460 00211600 */  sll        $a0, $s6, 4
/* 4FC64 8005F464 28FF1224 */  addiu      $s2, $zero, -0xd8
/* 4FC68 8005F468 4800A2AF */  sw         $v0, 0x48($sp)
/* 4FC6C 8005F46C 0E80023C */  lui        $v0, %hi(D_800DAFA0)
/* 4FC70 8005F470 A0AF4224 */  addiu      $v0, $v0, %lo(D_800DAFA0)
/* 4FC74 8005F474 21800202 */  addu       $s0, $s0, $v0
/* 4FC78 8005F478 4C00A3AF */  sw         $v1, 0x4c($sp)
/* 4FC7C 8005F47C 5400A4AF */  sw         $a0, 0x54($sp)
/* 4FC80 8005F480 3C00B0AF */  sw         $s0, 0x3c($sp)
/* 4FC84 8005F484 3C000A24 */  addiu      $t2, $zero, 0x3c
.L8005F488:
/* 4FC88 8005F488 18002A02 */  mult       $s1, $t2
/* 4FC8C 8005F48C 12100000 */  mflo       $v0
/* 4FC90 8005F490 A4010724 */  addiu      $a3, $zero, 0x1a4
/* 4FC94 8005F494 21105E00 */  addu       $v0, $v0, $fp
/* 4FC98 8005F498 1A004700 */  div        $zero, $v0, $a3
/* 4FC9C 8005F49C 4992033C */  lui        $v1, 0x9249
/* 4FCA0 8005F4A0 3C00A28F */  lw         $v0, 0x3c($sp)
/* 4FCA4 8005F4A4 93246334 */  ori        $v1, $v1, 0x2493
/* 4FCA8 8005F4A8 00004490 */  lbu        $a0, ($v0)
/* 4FCAC 8005F4AC 10400000 */  mfhi       $t0
/* 4FCB0 8005F4B0 21209100 */  addu       $a0, $a0, $s1
/* 4FCB4 8005F4B4 06008424 */  addiu      $a0, $a0, 6
/* 4FCB8 8005F4B8 18008300 */  mult       $a0, $v1
/* 4FCBC 8005F4BC 5555063C */  lui        $a2, 0x5555
/* 4FCC0 8005F4C0 C32F0400 */  sra        $a1, $a0, 0x1f
/* 4FCC4 8005F4C4 10180000 */  mfhi       $v1
/* 4FCC8 8005F4C8 21186400 */  addu       $v1, $v1, $a0
/* 4FCCC 8005F4CC 83180300 */  sra        $v1, $v1, 2
/* 4FCD0 8005F4D0 23186500 */  subu       $v1, $v1, $a1
/* 4FCD4 8005F4D4 C0100300 */  sll        $v0, $v1, 3
/* 4FCD8 8005F4D8 23104300 */  subu       $v0, $v0, $v1
/* 4FCDC 8005F4DC 23208200 */  subu       $a0, $a0, $v0
/* 4FCE0 8005F4E0 0E80023C */  lui        $v0, %hi(D_800DAF98)
/* 4FCE4 8005F4E4 98AF4224 */  addiu      $v0, $v0, %lo(D_800DAF98)
/* 4FCE8 8005F4E8 21208200 */  addu       $a0, $a0, $v0
/* 4FCEC 8005F4EC 00008590 */  lbu        $a1, ($a0)
/* 4FCF0 8005F4F0 5655C634 */  ori        $a2, $a2, 0x5556
/* 4FCF4 8005F4F4 1800A600 */  mult       $a1, $a2
/* 4FCF8 8005F4F8 04006486 */  lh         $a0, 4($s3)
/* 4FCFC 8005F4FC C31F0500 */  sra        $v1, $a1, 0x1f
/* 4FD00 8005F500 10300000 */  mfhi       $a2
/* 4FD04 8005F504 2330C300 */  subu       $a2, $a2, $v1
/* 4FD08 8005F508 C0100600 */  sll        $v0, $a2, 3
/* 4FD0C 8005F50C 21104600 */  addu       $v0, $v0, $a2
/* 4FD10 8005F510 80100200 */  sll        $v0, $v0, 2
/* 4FD14 8005F514 23104600 */  subu       $v0, $v0, $a2
/* 4FD18 8005F518 06006386 */  lh         $v1, 6($s3)
/* 4FD1C 8005F51C 40100200 */  sll        $v0, $v0, 1
/* 4FD20 8005F520 21186200 */  addu       $v1, $v1, $v0
/* 4FD24 8005F524 0A006924 */  addiu      $t1, $v1, 0xa
/* 4FD28 8005F528 40100600 */  sll        $v0, $a2, 1
/* 4FD2C 8005F52C 21104600 */  addu       $v0, $v0, $a2
/* 4FD30 8005F530 2328A200 */  subu       $a1, $a1, $v0
/* 4FD34 8005F534 C0180500 */  sll        $v1, $a1, 3
/* 4FD38 8005F538 23186500 */  subu       $v1, $v1, $a1
/* 4FD3C 8005F53C 00110300 */  sll        $v0, $v1, 4
/* 4FD40 8005F540 23104300 */  subu       $v0, $v0, $v1
/* 4FD44 8005F544 21104500 */  addu       $v0, $v0, $a1
/* 4FD48 8005F548 21308200 */  addu       $a2, $a0, $v0
/* 4FD4C 8005F54C 0200E014 */  bnez       $a3, .L8005F558
/* 4FD50 8005F550 00000000 */   nop
/* 4FD54 8005F554 CD010000 */  break      0, 7
.L8005F558:
/* 4FD58 8005F558 21404802 */   addu      $t0, $s2, $t0
/* 4FD5C 8005F55C 04001025 */  addiu      $s0, $t0, 4
/* 4FD60 8005F560 2A105002 */  slt        $v0, $s2, $s0
/* 4FD64 8005F564 2E004010 */  beqz       $v0, .L8005F620
/* 4FD68 8005F568 A0FF022A */   slti      $v0, $s0, -0x60
/* 4FD6C 8005F56C 2C004010 */  beqz       $v0, .L8005F620
/* 4FD70 8005F570 64FF022A */   slti      $v0, $s0, -0x9c
/* 4FD74 8005F574 05004010 */  beqz       $v0, .L8005F58C
/* 4FD78 8005F578 64FF0324 */   addiu     $v1, $zero, -0x9c
/* 4FD7C 8005F57C 23107000 */  subu       $v0, $v1, $s0
/* 4FD80 8005F580 23504201 */  subu       $t2, $t2, $v0
/* 4FD84 8005F584 21482201 */  addu       $t1, $t1, $v0
/* 4FD88 8005F588 64FF1024 */  addiu      $s0, $zero, -0x9c
.L8005F58C:
/* 4FD8C 8005F58C 64FF0424 */  addiu      $a0, $zero, -0x9c
/* 4FD90 8005F590 2A109000 */  slt        $v0, $a0, $s0
/* 4FD94 8005F594 02004010 */  beqz       $v0, .L8005F5A0
/* 4FD98 8005F598 9C000226 */   addiu     $v0, $s0, 0x9c
/* 4FD9C 8005F59C 23504201 */  subu       $t2, $t2, $v0
.L8005F5A0:
/* 4FDA0 8005F5A0 21382001 */  addu       $a3, $t1, $zero
/* 4FDA4 8005F5A4 9400A48F */  lw         $a0, 0x94($sp)
/* 4FDA8 8005F5A8 3800A58F */  lw         $a1, 0x38($sp)
/* 4FDAC 8005F5AC 6A000224 */  addiu      $v0, $zero, 0x6a
/* 4FDB0 8005F5B0 1000A2AF */  sw         $v0, 0x10($sp)
/* 4FDB4 8005F5B4 1400AAAF */  sw         $t2, 0x14($sp)
/* 4FDB8 8005F5B8 0C006386 */  lh         $v1, 0xc($s3)
/* 4FDBC 8005F5BC FFFF0224 */  addiu      $v0, $zero, -1
/* 4FDC0 8005F5C0 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 4FDC4 8005F5C4 25B2010C */  jal        FUN_8006c894
/* 4FDC8 8005F5C8 1800A3AF */   sw        $v1, 0x18($sp)
/* 4FDCC 8005F5CC 9400A48F */  lw         $a0, 0x94($sp)
/* 4FDD0 8005F5D0 16006686 */  lh         $a2, 0x16($s3)
/* 4FDD4 8005F5D4 18006786 */  lh         $a3, 0x18($s3)
/* 4FDD8 8005F5D8 3800A58F */  lw         $a1, 0x38($sp)
/* 4FDDC 8005F5DC FBB2010C */  jal        FUN_8006cbec
/* 4FDE0 8005F5E0 00000000 */   nop
/* 4FDE4 8005F5E4 1A00E626 */  addiu      $a2, $s7, 0x1a
/* 4FDE8 8005F5E8 9400A48F */  lw         $a0, 0x94($sp)
/* 4FDEC 8005F5EC 3800A58F */  lw         $a1, 0x38($sp)
/* 4FDF0 8005F5F0 9BB2010C */  jal        FUN_8006ca6c
/* 4FDF4 8005F5F4 21380002 */   addu      $a3, $s0, $zero
/* 4FDF8 8005F5F8 2130A002 */  addu       $a2, $s5, $zero
/* 4FDFC 8005F5FC 9400A48F */  lw         $a0, 0x94($sp)
/* 4FE00 8005F600 3800A58F */  lw         $a1, 0x38($sp)
/* 4FE04 8005F604 2138A002 */  addu       $a3, $s5, $zero
/* 4FE08 8005F608 79B2010C */  jal        FUN_8006c9e4
/* 4FE0C 8005F60C 1000B5AF */   sw        $s5, 0x10($sp)
/* 4FE10 8005F610 3800A38F */  lw         $v1, 0x38($sp)
/* 4FE14 8005F614 00000000 */  nop
/* 4FE18 8005F618 01006324 */  addiu      $v1, $v1, 1
/* 4FE1C 8005F61C 3800A3AF */  sw         $v1, 0x38($sp)
.L8005F620:
/* 4FE20 8005F620 01003126 */  addiu      $s1, $s1, 1
/* 4FE24 8005F624 0700222A */  slti       $v0, $s1, 7
/* 4FE28 8005F628 97FF4014 */  bnez       $v0, .L8005F488
/* 4FE2C 8005F62C 3C000A24 */   addiu     $t2, $zero, 0x3c
/* 4FE30 8005F630 80001524 */  addiu      $s5, $zero, 0x80
/* 4FE34 8005F634 21288002 */  addu       $a1, $s4, $zero
/* 4FE38 8005F638 98001124 */  addiu      $s1, $zero, 0x98
/* 4FE3C 8005F63C 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FE40 8005F640 1C001024 */  addiu      $s0, $zero, 0x1c
/* 4FE44 8005F644 1000B1AF */  sw         $s1, 0x10($sp)
/* 4FE48 8005F648 1400B0AF */  sw         $s0, 0x14($sp)
/* 4FE4C 8005F64C 04006686 */  lh         $a2, 4($s3)
/* 4FE50 8005F650 FFFF1224 */  addiu      $s2, $zero, -1
/* 4FE54 8005F654 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 4FE58 8005F658 06006786 */  lh         $a3, 6($s3)
/* 4FE5C 8005F65C 0C006286 */  lh         $v0, 0xc($s3)
/* 4FE60 8005F660 7800C624 */  addiu      $a2, $a2, 0x78
/* 4FE64 8005F664 8C00E724 */  addiu      $a3, $a3, 0x8c
/* 4FE68 8005F668 1769010C */  jal        FUN_8005a45c
/* 4FE6C 8005F66C 1800A2AF */   sw        $v0, 0x18($sp)
/* 4FE70 8005F670 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FE74 8005F674 16006686 */  lh         $a2, 0x16($s3)
/* 4FE78 8005F678 18006786 */  lh         $a3, 0x18($s3)
/* 4FE7C 8005F67C 396D010C */  jal        FUN_8005b4e4
/* 4FE80 8005F680 21288002 */   addu      $a1, $s4, $zero
/* 4FE84 8005F684 21288002 */  addu       $a1, $s4, $zero
/* 4FE88 8005F688 5EFF0724 */  addiu      $a3, $zero, -0xa2
/* 4FE8C 8005F68C 01000324 */  addiu      $v1, $zero, 1
/* 4FE90 8005F690 23187600 */  subu       $v1, $v1, $s6
/* 4FE94 8005F694 40180300 */  sll        $v1, $v1, 1
/* 4FE98 8005F698 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FE9C 8005F69C 5000A28F */  lw         $v0, 0x50($sp)
/* 4FEA0 8005F6A0 FFFF6324 */  addiu      $v1, $v1, -1
/* 4FEA4 8005F6A4 1400B0AF */  sw         $s0, 0x14($sp)
/* 4FEA8 8005F6A8 21305600 */  addu       $a2, $v0, $s6
/* 4FEAC 8005F6AC 80300600 */  sll        $a2, $a2, 2
/* 4FEB0 8005F6B0 2330D600 */  subu       $a2, $a2, $s6
/* 4FEB4 8005F6B4 C0300600 */  sll        $a2, $a2, 3
/* 4FEB8 8005F6B8 2130E602 */  addu       $a2, $s7, $a2
/* 4FEBC 8005F6BC 80100300 */  sll        $v0, $v1, 2
/* 4FEC0 8005F6C0 21104300 */  addu       $v0, $v0, $v1
/* 4FEC4 8005F6C4 80100200 */  sll        $v0, $v0, 2
/* 4FEC8 8005F6C8 23104300 */  subu       $v0, $v0, $v1
/* 4FECC 8005F6CC C0100200 */  sll        $v0, $v0, 3
/* 4FED0 8005F6D0 23105600 */  subu       $v0, $v0, $s6
/* 4FED4 8005F6D4 976D010C */  jal        FUN_8005b65c
/* 4FED8 8005F6D8 1000A2AF */   sw        $v0, 0x10($sp)
/* 4FEDC 8005F6DC 21288002 */  addu       $a1, $s4, $zero
/* 4FEE0 8005F6E0 80000624 */  addiu      $a2, $zero, 0x80
/* 4FEE4 8005F6E4 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FEE8 8005F6E8 80000724 */  addiu      $a3, $zero, 0x80
/* 4FEEC 8005F6EC EB6C010C */  jal        FUN_8005b3ac
/* 4FEF0 8005F6F0 1000B5AF */   sw        $s5, 0x10($sp)
/* 4FEF4 8005F6F4 4C00B48F */  lw         $s4, 0x4c($sp)
/* 4FEF8 8005F6F8 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FEFC 8005F6FC 1000B1AF */  sw         $s1, 0x10($sp)
/* 4FF00 8005F700 04006686 */  lh         $a2, 4($s3)
/* 4FF04 8005F704 08000224 */  addiu      $v0, $zero, 8
/* 4FF08 8005F708 1400A2AF */  sw         $v0, 0x14($sp)
/* 4FF0C 8005F70C 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 4FF10 8005F710 06006786 */  lh         $a3, 6($s3)
/* 4FF14 8005F714 0C006286 */  lh         $v0, 0xc($s3)
/* 4FF18 8005F718 21288002 */  addu       $a1, $s4, $zero
/* 4FF1C 8005F71C 7800C624 */  addiu      $a2, $a2, 0x78
/* 4FF20 8005F720 A800E724 */  addiu      $a3, $a3, 0xa8
/* 4FF24 8005F724 1769010C */  jal        FUN_8005a45c
/* 4FF28 8005F728 1800A2AF */   sw        $v0, 0x18($sp)
/* 4FF2C 8005F72C 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FF30 8005F730 16006686 */  lh         $a2, 0x16($s3)
/* 4FF34 8005F734 18006786 */  lh         $a3, 0x18($s3)
/* 4FF38 8005F738 396D010C */  jal        FUN_8005b4e4
/* 4FF3C 8005F73C 21288002 */   addu      $a1, $s4, $zero
/* 4FF40 8005F740 21288002 */  addu       $a1, $s4, $zero
/* 4FF44 8005F744 2130E002 */  addu       $a2, $s7, $zero
/* 4FF48 8005F748 7AFF0724 */  addiu      $a3, $zero, -0x86
/* 4FF4C 8005F74C 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FF50 8005F750 20000224 */  addiu      $v0, $zero, 0x20
/* 4FF54 8005F754 1000B1AF */  sw         $s1, 0x10($sp)
/* 4FF58 8005F758 976D010C */  jal        FUN_8005b65c
/* 4FF5C 8005F75C 1400A2AF */   sw        $v0, 0x14($sp)
/* 4FF60 8005F760 21288002 */  addu       $a1, $s4, $zero
/* 4FF64 8005F764 80000624 */  addiu      $a2, $zero, 0x80
/* 4FF68 8005F768 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FF6C 8005F76C 80000724 */  addiu      $a3, $zero, 0x80
/* 4FF70 8005F770 EB6C010C */  jal        FUN_8005b3ac
/* 4FF74 8005F774 1000B5AF */   sw        $s5, 0x10($sp)
/* 4FF78 8005F778 01009426 */  addiu      $s4, $s4, 1
/* 4FF7C 8005F77C 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FF80 8005F780 21288002 */  addu       $a1, $s4, $zero
/* 4FF84 8005F784 1000B1AF */  sw         $s1, 0x10($sp)
/* 4FF88 8005F788 04006686 */  lh         $a2, 4($s3)
/* 4FF8C 8005F78C 5400A28F */  lw         $v0, 0x54($sp)
/* 4FF90 8005F790 10001024 */  addiu      $s0, $zero, 0x10
/* 4FF94 8005F794 1400B0AF */  sw         $s0, 0x14($sp)
/* 4FF98 8005F798 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 4FF9C 8005F79C 06006786 */  lh         $a3, 6($s3)
/* 4FFA0 8005F7A0 7800C624 */  addiu      $a2, $a2, 0x78
/* 4FFA4 8005F7A4 B0004324 */  addiu      $v1, $v0, 0xb0
/* 4FFA8 8005F7A8 0C006286 */  lh         $v0, 0xc($s3)
/* 4FFAC 8005F7AC 2138E300 */  addu       $a3, $a3, $v1
/* 4FFB0 8005F7B0 1769010C */  jal        FUN_8005a45c
/* 4FFB4 8005F7B4 1800A2AF */   sw        $v0, 0x18($sp)
/* 4FFB8 8005F7B8 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FFBC 8005F7BC 16006686 */  lh         $a2, 0x16($s3)
/* 4FFC0 8005F7C0 18006786 */  lh         $a3, 0x18($s3)
/* 4FFC4 8005F7C4 396D010C */  jal        FUN_8005b4e4
/* 4FFC8 8005F7C8 21288002 */   addu      $a1, $s4, $zero
/* 4FFCC 8005F7CC 21288002 */  addu       $a1, $s4, $zero
/* 4FFD0 8005F7D0 2130E002 */  addu       $a2, $s7, $zero
/* 4FFD4 8005F7D4 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FFD8 8005F7D8 9AFF0724 */  addiu      $a3, $zero, -0x66
/* 4FFDC 8005F7DC 1000B1AF */  sw         $s1, 0x10($sp)
/* 4FFE0 8005F7E0 976D010C */  jal        FUN_8005b65c
/* 4FFE4 8005F7E4 1400B0AF */   sw        $s0, 0x14($sp)
/* 4FFE8 8005F7E8 21288002 */  addu       $a1, $s4, $zero
/* 4FFEC 8005F7EC 80000624 */  addiu      $a2, $zero, 0x80
/* 4FFF0 8005F7F0 8C00A48F */  lw         $a0, 0x8c($sp)
/* 4FFF4 8005F7F4 80000724 */  addiu      $a3, $zero, 0x80
/* 4FFF8 8005F7F8 EB6C010C */  jal        FUN_8005b3ac
/* 4FFFC 8005F7FC 1000B5AF */   sw        $s5, 0x10($sp)
/* 50000 8005F800 01009426 */  addiu      $s4, $s4, 1
.L8005F804:
/* 50004 8005F804 4800B68F */  lw         $s6, 0x48($sp)
/* 50008 8005F808 00000000 */  nop
/* 5000C 8005F80C 0200C22A */  slti       $v0, $s6, 2
/* 50010 8005F810 49FE4014 */  bnez       $v0, .L8005F138
/* 50014 8005F814 00000000 */   nop
/* 50018 8005F818 9000A38F */  lw         $v1, 0x90($sp)
/* 5001C 8005F81C 8400BF8F */  lw         $ra, 0x84($sp)
/* 50020 8005F820 8000BE8F */  lw         $fp, 0x80($sp)
/* 50024 8005F824 7C00B78F */  lw         $s7, 0x7c($sp)
/* 50028 8005F828 7800B68F */  lw         $s6, 0x78($sp)
/* 5002C 8005F82C 7400B58F */  lw         $s5, 0x74($sp)
/* 50030 8005F830 6C00B38F */  lw         $s3, 0x6c($sp)
/* 50034 8005F834 6800B28F */  lw         $s2, 0x68($sp)
/* 50038 8005F838 6400B18F */  lw         $s1, 0x64($sp)
/* 5003C 8005F83C 6000B08F */  lw         $s0, 0x60($sp)
/* 50040 8005F840 000074AC */  sw         $s4, ($v1)
/* 50044 8005F844 3800A28F */  lw         $v0, 0x38($sp)
/* 50048 8005F848 9800A48F */  lw         $a0, 0x98($sp)
/* 5004C 8005F84C 7000B48F */  lw         $s4, 0x70($sp)
/* 50050 8005F850 000082AC */  sw         $v0, ($a0)
/* 50054 8005F854 0800E003 */  jr         $ra
/* 50058 8005F858 8800BD27 */   addiu     $sp, $sp, 0x88
