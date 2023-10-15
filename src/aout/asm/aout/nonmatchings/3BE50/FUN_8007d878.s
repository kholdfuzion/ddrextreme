.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8007d878
/* 6E078 8007D878 1380023C */  lui        $v0, %hi(D_80128139)
/* 6E07C 8007D87C 39814290 */  lbu        $v0, %lo(D_80128139)($v0)
/* 6E080 8007D880 B8FFBD27 */  addiu      $sp, $sp, -0x48
/* 6E084 8007D884 3800B4AF */  sw         $s4, 0x38($sp)
/* 6E088 8007D888 5800B48F */  lw         $s4, 0x58($sp)
/* 6E08C 8007D88C 3000B2AF */  sw         $s2, 0x30($sp)
/* 6E090 8007D890 5C00B28F */  lw         $s2, 0x5c($sp)
/* 6E094 8007D894 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 6E098 8007D898 6000B18F */  lw         $s1, 0x60($sp)
/* 6E09C 8007D89C 2800B0AF */  sw         $s0, 0x28($sp)
/* 6E0A0 8007D8A0 21808000 */  addu       $s0, $a0, $zero
/* 6E0A4 8007D8A4 4000B6AF */  sw         $s6, 0x40($sp)
/* 6E0A8 8007D8A8 21B0A000 */  addu       $s6, $a1, $zero
/* 6E0AC 8007D8AC 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 6E0B0 8007D8B0 21A8C000 */  addu       $s5, $a2, $zero
/* 6E0B4 8007D8B4 3400B3AF */  sw         $s3, 0x34($sp)
/* 6E0B8 8007D8B8 C0180200 */  sll        $v1, $v0, 3
/* 6E0BC 8007D8BC 23186200 */  subu       $v1, $v1, $v0
/* 6E0C0 8007D8C0 80180300 */  sll        $v1, $v1, 2
/* 6E0C4 8007D8C4 1380023C */  lui        $v0, %hi(D_801282E0)
/* 6E0C8 8007D8C8 E0824224 */  addiu      $v0, $v0, %lo(D_801282E0)
/* 6E0CC 8007D8CC 21986200 */  addu       $s3, $v1, $v0
/* 6E0D0 8007D8D0 6400A28F */  lw         $v0, 0x64($sp)
/* 6E0D4 8007D8D4 2128E000 */  addu       $a1, $a3, $zero
/* 6E0D8 8007D8D8 17004014 */  bnez       $v0, .L8007D938
/* 6E0DC 8007D8DC 4400BFAF */   sw        $ra, 0x44($sp)
/* 6E0E0 8007D8E0 21308002 */  addu       $a2, $s4, $zero
/* 6E0E4 8007D8E4 1000B1AF */  sw         $s1, 0x10($sp)
/* 6E0E8 8007D8E8 0000048E */  lw         $a0, ($s0)
/* 6E0EC 8007D8EC 55F4010C */  jal        FUN_8007d154
/* 6E0F0 8007D8F0 21384002 */   addu      $a3, $s2, $zero
/* 6E0F4 8007D8F4 FF000524 */  addiu      $a1, $zero, 0xff
/* 6E0F8 8007D8F8 21308002 */  addu       $a2, $s4, $zero
/* 6E0FC 8007D8FC 000002AE */  sw         $v0, ($s0)
/* 6E100 8007D900 10FF0224 */  addiu      $v0, $zero, -0xf0
/* 6E104 8007D904 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E108 8007D908 80020224 */  addiu      $v0, $zero, 0x280
/* 6E10C 8007D90C 2000A2AF */  sw         $v0, 0x20($sp)
/* 6E110 8007D910 28000224 */  addiu      $v0, $zero, 0x28
/* 6E114 8007D914 1400B3AF */  sw         $s3, 0x14($sp)
/* 6E118 8007D918 1800A0AF */  sw         $zero, 0x18($sp)
/* 6E11C 8007D91C 1C00A0AF */  sw         $zero, 0x1c($sp)
/* 6E120 8007D920 2400A2AF */  sw         $v0, 0x24($sp)
/* 6E124 8007D924 0000048E */  lw         $a0, ($s0)
/* 6E128 8007D928 3DAD010C */  jal        FUN_8006b4f4
/* 6E12C 8007D92C C0FE0724 */   addiu     $a3, $zero, -0x140
/* 6E130 8007D930 74F60108 */  j          .L8007D9D0
/* 6E134 8007D934 000002AE */   sw        $v0, ($s0)
.L8007D938:
/* 6E138 8007D938 0110422A */  slti       $v0, $s2, 0x1001
/* 6E13C 8007D93C 04004014 */  bnez       $v0, .L8007D950
/* 6E140 8007D940 2B401100 */   sltu      $t0, $zero, $s1
/* 6E144 8007D944 00200224 */  addiu      $v0, $zero, 0x2000
/* 6E148 8007D948 55F60108 */  j          .L8007D954
/* 6E14C 8007D94C 23185200 */   subu      $v1, $v0, $s2
.L8007D950:
/* 6E150 8007D950 21184002 */  addu       $v1, $s2, $zero
.L8007D954:
/* 6E154 8007D954 00076228 */  slti       $v0, $v1, 0x700
/* 6E158 8007D958 14004014 */  bnez       $v0, .L8007D9AC
/* 6E15C 8007D95C 0C020724 */   addiu     $a3, $zero, 0x20c
/* 6E160 8007D960 000F6228 */  slti       $v0, $v1, 0xf00
/* 6E164 8007D964 10004010 */  beqz       $v0, .L8007D9A8
/* 6E168 8007D968 AA2A043C */   lui       $a0, 0x2aaa
/* 6E16C 8007D96C ABAA8434 */  ori        $a0, $a0, 0xaaab
/* 6E170 8007D970 00F76324 */  addiu      $v1, $v1, -0x900
/* 6E174 8007D974 40110300 */  sll        $v0, $v1, 5
/* 6E178 8007D978 21104300 */  addu       $v0, $v0, $v1
/* 6E17C 8007D97C 80100200 */  sll        $v0, $v0, 2
/* 6E180 8007D980 23104300 */  subu       $v0, $v0, $v1
/* 6E184 8007D984 80100200 */  sll        $v0, $v0, 2
/* 6E188 8007D988 18004400 */  mult       $v0, $a0
/* 6E18C 8007D98C C3170200 */  sra        $v0, $v0, 0x1f
/* 6E190 8007D990 10480000 */  mfhi       $t1
/* 6E194 8007D994 031A0900 */  sra        $v1, $t1, 8
/* 6E198 8007D998 23186200 */  subu       $v1, $v1, $v0
/* 6E19C 8007D99C 0C020224 */  addiu      $v0, $zero, 0x20c
/* 6E1A0 8007D9A0 6BF60108 */  j          .L8007D9AC
/* 6E1A4 8007D9A4 23384300 */   subu      $a3, $v0, $v1
.L8007D9A8:
/* 6E1A8 8007D9A8 21380000 */  addu       $a3, $zero, $zero
.L8007D9AC:
/* 6E1AC 8007D9AC 21308002 */  addu       $a2, $s4, $zero
/* 6E1B0 8007D9B0 1EFF0224 */  addiu      $v0, $zero, -0xe2
/* 6E1B4 8007D9B4 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E1B8 8007D9B8 1400A0AF */  sw         $zero, 0x14($sp)
/* 6E1BC 8007D9BC 1800A8AF */  sw         $t0, 0x18($sp)
/* 6E1C0 8007D9C0 0000048E */  lw         $a0, ($s0)
/* 6E1C4 8007D9C4 76F3010C */  jal        FUN_8007cdd8
/* 6E1C8 8007D9C8 6500E724 */   addiu     $a3, $a3, 0x65
/* 6E1CC 8007D9CC 000002AE */  sw         $v0, ($s0)
.L8007D9D0:
/* 6E1D0 8007D9D0 00100224 */  addiu      $v0, $zero, 0x1000
/* 6E1D4 8007D9D4 0B004216 */  bne        $s2, $v0, .L8007DA04
/* 6E1D8 8007D9D8 05000224 */   addiu     $v0, $zero, 5
/* 6E1DC 8007D9DC 02002212 */  beq        $s1, $v0, .L8007D9E8
/* 6E1E0 8007D9E0 02000324 */   addiu     $v1, $zero, 2
/* 6E1E4 8007D9E4 21182002 */  addu       $v1, $s1, $zero
.L8007D9E8:
/* 6E1E8 8007D9E8 1000A3AF */  sw         $v1, 0x10($sp)
/* 6E1EC 8007D9EC 2120C002 */  addu       $a0, $s6, $zero
/* 6E1F0 8007D9F0 2128A002 */  addu       $a1, $s5, $zero
/* 6E1F4 8007D9F4 21300000 */  addu       $a2, $zero, $zero
/* 6E1F8 8007D9F8 50F5010C */  jal        FUN_8007d540
/* 6E1FC 8007D9FC 2138C000 */   addu      $a3, $a2, $zero
/* 6E200 8007DA00 21A84000 */  addu       $s5, $v0, $zero
.L8007DA04:
/* 6E204 8007DA04 11002016 */  bnez       $s1, .L8007DA4C
/* 6E208 8007DA08 02000224 */   addiu     $v0, $zero, 2
/* 6E20C 8007DA0C FF000524 */  addiu      $a1, $zero, 0xff
/* 6E210 8007DA10 21308002 */  addu       $a2, $s4, $zero
/* 6E214 8007DA14 C3000224 */  addiu      $v0, $zero, 0xc3
/* 6E218 8007DA18 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E21C 8007DA1C 28000224 */  addiu      $v0, $zero, 0x28
/* 6E220 8007DA20 1800A2AF */  sw         $v0, 0x18($sp)
/* 6E224 8007DA24 B3010224 */  addiu      $v0, $zero, 0x1b3
/* 6E228 8007DA28 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6E22C 8007DA2C 30020224 */  addiu      $v0, $zero, 0x230
/* 6E230 8007DA30 2000A2AF */  sw         $v0, 0x20($sp)
/* 6E234 8007DA34 14000224 */  addiu      $v0, $zero, 0x14
/* 6E238 8007DA38 1400B3AF */  sw         $s3, 0x14($sp)
/* 6E23C 8007DA3C 2400A2AF */  sw         $v0, 0x24($sp)
/* 6E240 8007DA40 0000048E */  lw         $a0, ($s0)
/* 6E244 8007DA44 B0F60108 */  j          .L8007DAC0
/* 6E248 8007DA48 E8FE0724 */   addiu     $a3, $zero, -0x118
.L8007DA4C:
/* 6E24C 8007DA4C 20002216 */  bne        $s1, $v0, .L8007DAD0
/* 6E250 8007DA50 FF000524 */   addiu     $a1, $zero, 0xff
/* 6E254 8007DA54 0F80023C */  lui        $v0, %hi(D_800F0014)
/* 6E258 8007DA58 1B80033C */  lui        $v1, %hi(D_801B0E58)
/* 6E25C 8007DA5C 1400428C */  lw         $v0, %lo(D_800F0014)($v0)
/* 6E260 8007DA60 580E638C */  lw         $v1, %lo(D_801B0E58)($v1)
/* 6E264 8007DA64 00000000 */  nop
/* 6E268 8007DA68 23104300 */  subu       $v0, $v0, $v1
/* 6E26C 8007DA6C FF004230 */  andi       $v0, $v0, 0xff
/* 6E270 8007DA70 2000422C */  sltiu      $v0, $v0, 0x20
/* 6E274 8007DA74 05004014 */  bnez       $v0, .L8007DA8C
/* 6E278 8007DA78 21308002 */   addu      $a2, $s4, $zero
/* 6E27C 8007DA7C FFEF4226 */  addiu      $v0, $s2, -0x1001
/* 6E280 8007DA80 5B01422C */  sltiu      $v0, $v0, 0x15b
/* 6E284 8007DA84 12004010 */  beqz       $v0, .L8007DAD0
/* 6E288 8007DA88 00000000 */   nop
.L8007DA8C:
/* 6E28C 8007DA8C C3000224 */  addiu      $v0, $zero, 0xc3
/* 6E290 8007DA90 1000A2AF */  sw         $v0, 0x10($sp)
/* 6E294 8007DA94 A0000224 */  addiu      $v0, $zero, 0xa0
/* 6E298 8007DA98 1800A2AF */  sw         $v0, 0x18($sp)
/* 6E29C 8007DA9C B3010224 */  addiu      $v0, $zero, 0x1b3
/* 6E2A0 8007DAA0 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 6E2A4 8007DAA4 40010224 */  addiu      $v0, $zero, 0x140
/* 6E2A8 8007DAA8 2000A2AF */  sw         $v0, 0x20($sp)
/* 6E2AC 8007DAAC 14000224 */  addiu      $v0, $zero, 0x14
/* 6E2B0 8007DAB0 1400B3AF */  sw         $s3, 0x14($sp)
/* 6E2B4 8007DAB4 2400A2AF */  sw         $v0, 0x24($sp)
/* 6E2B8 8007DAB8 0000048E */  lw         $a0, ($s0)
/* 6E2BC 8007DABC 60FF0724 */  addiu      $a3, $zero, -0xa0
.L8007DAC0:
/* 6E2C0 8007DAC0 3DAD010C */  jal        FUN_8006b4f4
/* 6E2C4 8007DAC4 00000000 */   nop
/* 6E2C8 8007DAC8 000002AE */  sw         $v0, ($s0)
/* 6E2CC 8007DACC FF000524 */  addiu      $a1, $zero, 0xff
.L8007DAD0:
/* 6E2D0 8007DAD0 80000624 */  addiu      $a2, $zero, 0x80
/* 6E2D4 8007DAD4 0000048E */  lw         $a0, ($s0)
/* 6E2D8 8007DAD8 8FAD010C */  jal        FUN_8006b63c
/* 6E2DC 8007DADC 21386002 */   addu      $a3, $s3, $zero
/* 6E2E0 8007DAE0 000002AE */  sw         $v0, ($s0)
/* 6E2E4 8007DAE4 2110A002 */  addu       $v0, $s5, $zero
/* 6E2E8 8007DAE8 4400BF8F */  lw         $ra, 0x44($sp)
/* 6E2EC 8007DAEC 4000B68F */  lw         $s6, 0x40($sp)
/* 6E2F0 8007DAF0 3C00B58F */  lw         $s5, 0x3c($sp)
/* 6E2F4 8007DAF4 3800B48F */  lw         $s4, 0x38($sp)
/* 6E2F8 8007DAF8 3400B38F */  lw         $s3, 0x34($sp)
/* 6E2FC 8007DAFC 3000B28F */  lw         $s2, 0x30($sp)
/* 6E300 8007DB00 2C00B18F */  lw         $s1, 0x2c($sp)
/* 6E304 8007DB04 2800B08F */  lw         $s0, 0x28($sp)
/* 6E308 8007DB08 0800E003 */  jr         $ra
/* 6E30C 8007DB0C 4800BD27 */   addiu     $sp, $sp, 0x48
