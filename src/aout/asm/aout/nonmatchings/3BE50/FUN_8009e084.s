.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8009e084
/* 8E884 8009E084 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* 8E888 8009E088 6000A28F */  lw         $v0, 0x60($sp)
/* 8E88C 8009E08C 003B0700 */  sll        $a3, $a3, 0xc
/* 8E890 8009E090 1A00E200 */  div        $zero, $a3, $v0
/* 8E894 8009E094 3400B3AF */  sw         $s3, 0x34($sp)
/* 8E898 8009E098 2198C000 */  addu       $s3, $a2, $zero
/* 8E89C 8009E09C 4400B7AF */  sw         $s7, 0x44($sp)
/* 8E8A0 8009E0A0 21B88000 */  addu       $s7, $a0, $zero
/* 8E8A4 8009E0A4 4000B6AF */  sw         $s6, 0x40($sp)
/* 8E8A8 8009E0A8 21B0A000 */  addu       $s6, $a1, $zero
/* 8E8AC 8009E0AC 4C00BFAF */  sw         $ra, 0x4c($sp)
/* 8E8B0 8009E0B0 4800BEAF */  sw         $fp, 0x48($sp)
/* 8E8B4 8009E0B4 3C00B5AF */  sw         $s5, 0x3c($sp)
/* 8E8B8 8009E0B8 3800B4AF */  sw         $s4, 0x38($sp)
/* 8E8BC 8009E0BC 3000B2AF */  sw         $s2, 0x30($sp)
/* 8E8C0 8009E0C0 2C00B1AF */  sw         $s1, 0x2c($sp)
/* 8E8C4 8009E0C4 2800B0AF */  sw         $s0, 0x28($sp)
/* 8E8C8 8009E0C8 12380000 */  mflo       $a3
/* 8E8CC 8009E0CC 02004014 */  bnez       $v0, .L8009E0D8
/* 8E8D0 8009E0D0 00000000 */   nop
/* 8E8D4 8009E0D4 CD010000 */  break      0, 7
.L8009E0D8:
/* 8E8D8 8009E0D8 0110E328 */   slti      $v1, $a3, 0x1001
/* 8E8DC 8009E0DC 03006014 */  bnez       $v1, .L8009E0EC
/* 8E8E0 8009E0E0 2180E000 */   addu      $s0, $a3, $zero
/* 8E8E4 8009E0E4 00200224 */  addiu      $v0, $zero, 0x2000
/* 8E8E8 8009E0E8 23804700 */  subu       $s0, $v0, $a3
.L8009E0EC:
/* 8E8EC 8009E0EC 1380053C */  lui        $a1, %hi(D_801280E0)
/* 8E8F0 8009E0F0 E080A324 */  addiu      $v1, $a1, %lo(D_801280E0)
/* 8E8F4 8009E0F4 43006490 */  lbu        $a0, 0x43($v1)
/* 8E8F8 8009E0F8 00000000 */  nop
/* 8E8FC 8009E0FC C0100400 */  sll        $v0, $a0, 3
/* 8E900 8009E100 23104400 */  subu       $v0, $v0, $a0
/* 8E904 8009E104 80100200 */  sll        $v0, $v0, 2
/* 8E908 8009E108 1380043C */  lui        $a0, %hi(D_801282E0)
/* 8E90C 8009E10C E0828324 */  addiu      $v1, $a0, %lo(D_801282E0)
/* 8E910 8009E110 21A04300 */  addu       $s4, $v0, $v1
/* 8E914 8009E114 3C00E48E */  lw         $a0, 0x3c($s7)
/* 8E918 8009E118 04008686 */  lh         $a2, 4($s4)
/* 8E91C 8009E11C 0D008010 */  beqz       $a0, .L8009E154
/* 8E920 8009E120 80001E24 */   addiu     $fp, $zero, 0x80
/* 8E924 8009E124 8888033C */  lui        $v1, 0x8888
/* 8E928 8009E128 89886334 */  ori        $v1, $v1, 0x8889
/* 8E92C 8009E12C 1E000224 */  addiu      $v0, $zero, 0x1e
/* 8E930 8009E130 23104400 */  subu       $v0, $v0, $a0
/* 8E934 8009E134 40110200 */  sll        $v0, $v0, 5
/* 8E938 8009E138 18004300 */  mult       $v0, $v1
/* 8E93C 8009E13C 10180000 */  mfhi       $v1
/* 8E940 8009E140 21186200 */  addu       $v1, $v1, $v0
/* 8E944 8009E144 03190300 */  sra        $v1, $v1, 4
/* 8E948 8009E148 C3170200 */  sra        $v0, $v0, 0x1f
/* 8E94C 8009E14C 5D780208 */  j          .L8009E174
/* 8E950 8009E150 23886200 */   subu      $s1, $v1, $v0
.L8009E154:
/* 8E954 8009E154 0008022A */  slti       $v0, $s0, 0x800
/* 8E958 8009E158 06004014 */  bnez       $v0, .L8009E174
/* 8E95C 8009E15C 21880000 */   addu      $s1, $zero, $zero
/* 8E960 8009E160 00F80326 */  addiu      $v1, $s0, -0x800
/* 8E964 8009E164 03006104 */  bgez       $v1, .L8009E174
/* 8E968 8009E168 83890300 */   sra       $s1, $v1, 6
/* 8E96C 8009E16C 3FF80326 */  addiu      $v1, $s0, -0x7c1
/* 8E970 8009E170 83890300 */  sra        $s1, $v1, 6
.L8009E174:
/* 8E974 8009E174 3800E48E */  lw         $a0, 0x38($s7)
/* 8E978 8009E178 00000000 */  nop
/* 8E97C 8009E17C 0F008228 */  slti       $v0, $a0, 0xf
/* 8E980 8009E180 12004010 */  beqz       $v0, .L8009E1CC
/* 8E984 8009E184 4992023C */   lui       $v0, 0x9249
/* 8E988 8009E188 93244234 */  ori        $v0, $v0, 0x2493
/* 8E98C 8009E18C C0180400 */  sll        $v1, $a0, 3
/* 8E990 8009E190 21186400 */  addu       $v1, $v1, $a0
/* 8E994 8009E194 80180300 */  sll        $v1, $v1, 2
/* 8E998 8009E198 21186400 */  addu       $v1, $v1, $a0
/* 8E99C 8009E19C 80180300 */  sll        $v1, $v1, 2
/* 8E9A0 8009E1A0 18006200 */  mult       $v1, $v0
/* 8E9A4 8009E1A4 06008486 */  lh         $a0, 6($s4)
/* 8E9A8 8009E1A8 00000000 */  nop
/* 8E9AC 8009E1AC 20008724 */  addiu      $a3, $a0, 0x20
/* 8E9B0 8009E1B0 10100000 */  mfhi       $v0
/* 8E9B4 8009E1B4 21104300 */  addu       $v0, $v0, $v1
/* 8E9B8 8009E1B8 C3100200 */  sra        $v0, $v0, 3
/* 8E9BC 8009E1BC C31F0300 */  sra        $v1, $v1, 0x1f
/* 8E9C0 8009E1C0 23104300 */  subu       $v0, $v0, $v1
/* 8E9C4 8009E1C4 83780208 */  j          .L8009E20C
/* 8E9C8 8009E1C8 AC005524 */   addiu     $s5, $v0, 0xac
.L8009E1CC:
/* 8E9CC 8009E1CC 8888023C */  lui        $v0, 0x8888
/* 8E9D0 8009E1D0 89884234 */  ori        $v0, $v0, 0x8889
/* 8E9D4 8009E1D4 F1FF8424 */  addiu      $a0, $a0, -0xf
/* 8E9D8 8009E1D8 C0180400 */  sll        $v1, $a0, 3
/* 8E9DC 8009E1DC 21186400 */  addu       $v1, $v1, $a0
/* 8E9E0 8009E1E0 80180300 */  sll        $v1, $v1, 2
/* 8E9E4 8009E1E4 21186400 */  addu       $v1, $v1, $a0
/* 8E9E8 8009E1E8 80180300 */  sll        $v1, $v1, 2
/* 8E9EC 8009E1EC 18006200 */  mult       $v1, $v0
/* 8E9F0 8009E1F0 06008786 */  lh         $a3, 6($s4)
/* 8E9F4 8009E1F4 10100000 */  mfhi       $v0
/* 8E9F8 8009E1F8 21104300 */  addu       $v0, $v0, $v1
/* 8E9FC 8009E1FC C3100200 */  sra        $v0, $v0, 3
/* 8EA00 8009E200 C31F0300 */  sra        $v1, $v1, 0x1f
/* 8EA04 8009E204 23104300 */  subu       $v0, $v0, $v1
/* 8EA08 8009E208 40FE5524 */  addiu      $s5, $v0, -0x1c0
.L8009E20C:
/* 8EA0C 8009E20C 2120C002 */  addu       $a0, $s6, $zero
/* 8EA10 8009E210 21286002 */  addu       $a1, $s3, $zero
/* 8EA14 8009E214 1000BEAF */  sw         $fp, 0x10($sp)
/* 8EA18 8009E218 1400B1AF */  sw         $s1, 0x14($sp)
/* 8EA1C 8009E21C 0C008386 */  lh         $v1, 0xc($s4)
/* 8EA20 8009E220 FFFF0224 */  addiu      $v0, $zero, -1
/* 8EA24 8009E224 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8EA28 8009E228 84000224 */  addiu      $v0, $zero, 0x84
/* 8EA2C 8009E22C 23905100 */  subu       $s2, $v0, $s1
/* 8EA30 8009E230 1769010C */  jal        FUN_8005a45c
/* 8EA34 8009E234 1800A3AF */   sw        $v1, 0x18($sp)
/* 8EA38 8009E238 2120C002 */  addu       $a0, $s6, $zero
/* 8EA3C 8009E23C 16008686 */  lh         $a2, 0x16($s4)
/* 8EA40 8009E240 18008786 */  lh         $a3, 0x18($s4)
/* 8EA44 8009E244 396D010C */  jal        FUN_8005b4e4
/* 8EA48 8009E248 21286002 */   addu      $a1, $s3, $zero
/* 8EA4C 8009E24C 2120C002 */  addu       $a0, $s6, $zero
/* 8EA50 8009E250 21286002 */  addu       $a1, $s3, $zero
/* 8EA54 8009E254 2130A002 */  addu       $a2, $s5, $zero
/* 8EA58 8009E258 21384002 */  addu       $a3, $s2, $zero
/* 8EA5C 8009E25C 1000BEAF */  sw         $fp, 0x10($sp)
/* 8EA60 8009E260 976D010C */  jal        FUN_8005b65c
/* 8EA64 8009E264 1400B1AF */   sw        $s1, 0x14($sp)
/* 8EA68 8009E268 2120C002 */  addu       $a0, $s6, $zero
/* 8EA6C 8009E26C 21286002 */  addu       $a1, $s3, $zero
/* 8EA70 8009E270 80000624 */  addiu      $a2, $zero, 0x80
/* 8EA74 8009E274 80000724 */  addiu      $a3, $zero, 0x80
/* 8EA78 8009E278 80000224 */  addiu      $v0, $zero, 0x80
/* 8EA7C 8009E27C EB6C010C */  jal        FUN_8005b3ac
/* 8EA80 8009E280 1000A2AF */   sw        $v0, 0x10($sp)
/* 8EA84 8009E284 3800E28E */  lw         $v0, 0x38($s7)
/* 8EA88 8009E288 00000000 */  nop
/* 8EA8C 8009E28C 14004228 */  slti       $v0, $v0, 0x14
/* 8EA90 8009E290 1A004010 */  beqz       $v0, .L8009E2FC
/* 8EA94 8009E294 01007326 */   addiu     $s3, $s3, 1
/* 8EA98 8009E298 FF000524 */  addiu      $a1, $zero, 0xff
/* 8EA9C 8009E29C 80000624 */  addiu      $a2, $zero, 0x80
/* 8EAA0 8009E2A0 AC000724 */  addiu      $a3, $zero, 0xac
/* 8EAA4 8009E2A4 EC010224 */  addiu      $v0, $zero, 0x1ec
/* 8EAA8 8009E2A8 2800E48E */  lw         $a0, 0x28($s7)
/* 8EAAC 8009E2AC F0004326 */  addiu      $v1, $s2, 0xf0
/* 8EAB0 8009E2B0 1800A2AF */  sw         $v0, 0x18($sp)
/* 8EAB4 8009E2B4 94000224 */  addiu      $v0, $zero, 0x94
/* 8EAB8 8009E2B8 2000A2AF */  sw         $v0, 0x20($sp)
/* 8EABC 8009E2BC 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8EAC0 8009E2C0 1C00A3AF */  sw         $v1, 0x1c($sp)
/* 8EAC4 8009E2C4 E0804324 */  addiu      $v1, $v0, %lo(D_801280E0)
/* 8EAC8 8009E2C8 1000B2AF */  sw         $s2, 0x10($sp)
/* 8EACC 8009E2CC 59006990 */  lbu        $t1, 0x59($v1)
/* 8EAD0 8009E2D0 20000824 */  addiu      $t0, $zero, 0x20
/* 8EAD4 8009E2D4 2400A8AF */  sw         $t0, 0x24($sp)
/* 8EAD8 8009E2D8 1380083C */  lui        $t0, %hi(D_801282E0)
/* 8EADC 8009E2DC E0820325 */  addiu      $v1, $t0, %lo(D_801282E0)
/* 8EAE0 8009E2E0 C0100900 */  sll        $v0, $t1, 3
/* 8EAE4 8009E2E4 23104900 */  subu       $v0, $v0, $t1
/* 8EAE8 8009E2E8 80100200 */  sll        $v0, $v0, 2
/* 8EAEC 8009E2EC 21104300 */  addu       $v0, $v0, $v1
/* 8EAF0 8009E2F0 3DAD010C */  jal        FUN_8006b4f4
/* 8EAF4 8009E2F4 1400A2AF */   sw        $v0, 0x14($sp)
/* 8EAF8 8009E2F8 2800E2AE */  sw         $v0, 0x28($s7)
.L8009E2FC:
/* 8EAFC 8009E2FC 3800E28E */  lw         $v0, 0x38($s7)
/* 8EB00 8009E300 00000000 */  nop
/* 8EB04 8009E304 0B004228 */  slti       $v0, $v0, 0xb
/* 8EB08 8009E308 18004014 */  bnez       $v0, .L8009E36C
/* 8EB0C 8009E30C FF000524 */   addiu     $a1, $zero, 0xff
/* 8EB10 8009E310 80000624 */  addiu      $a2, $zero, 0x80
/* 8EB14 8009E314 C0FE0724 */  addiu      $a3, $zero, -0x140
/* 8EB18 8009E318 F0004226 */  addiu      $v0, $s2, 0xf0
/* 8EB1C 8009E31C 2800E48E */  lw         $a0, 0x28($s7)
/* 8EB20 8009E320 94000324 */  addiu      $v1, $zero, 0x94
/* 8EB24 8009E324 2000A3AF */  sw         $v1, 0x20($sp)
/* 8EB28 8009E328 1380033C */  lui        $v1, %hi(D_801280E0)
/* 8EB2C 8009E32C 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8EB30 8009E330 E0806224 */  addiu      $v0, $v1, %lo(D_801280E0)
/* 8EB34 8009E334 1000B2AF */  sw         $s2, 0x10($sp)
/* 8EB38 8009E338 1800A0AF */  sw         $zero, 0x18($sp)
/* 8EB3C 8009E33C 59004890 */  lbu        $t0, 0x59($v0)
/* 8EB40 8009E340 20000324 */  addiu      $v1, $zero, 0x20
/* 8EB44 8009E344 2400A3AF */  sw         $v1, 0x24($sp)
/* 8EB48 8009E348 C0100800 */  sll        $v0, $t0, 3
/* 8EB4C 8009E34C 23104800 */  subu       $v0, $v0, $t0
/* 8EB50 8009E350 80100200 */  sll        $v0, $v0, 2
/* 8EB54 8009E354 1380083C */  lui        $t0, %hi(D_801282E0)
/* 8EB58 8009E358 E0820325 */  addiu      $v1, $t0, %lo(D_801282E0)
/* 8EB5C 8009E35C 21104300 */  addu       $v0, $v0, $v1
/* 8EB60 8009E360 3DAD010C */  jal        FUN_8006b4f4
/* 8EB64 8009E364 1400A2AF */   sw        $v0, 0x14($sp)
/* 8EB68 8009E368 2800E2AE */  sw         $v0, 0x28($s7)
.L8009E36C:
/* 8EB6C 8009E36C 3C00E38E */  lw         $v1, 0x3c($s7)
/* 8EB70 8009E370 00000000 */  nop
/* 8EB74 8009E374 03006010 */  beqz       $v1, .L8009E384
/* 8EB78 8009E378 1E000224 */   addiu     $v0, $zero, 0x1e
/* 8EB7C 8009E37C 04006214 */  bne        $v1, $v0, .L8009E390
/* 8EB80 8009E380 FF000524 */   addiu     $a1, $zero, 0xff
.L8009E384:
/* 8EB84 8009E384 00100224 */  addiu      $v0, $zero, 0x1000
/* 8EB88 8009E388 AB000212 */  beq        $s0, $v0, .L8009E638
/* 8EB8C 8009E38C FF000524 */   addiu     $a1, $zero, 0xff
.L8009E390:
/* 8EB90 8009E390 80000624 */  addiu      $a2, $zero, 0x80
/* 8EB94 8009E394 2138A002 */  addu       $a3, $s5, $zero
/* 8EB98 8009E398 64000224 */  addiu      $v0, $zero, 0x64
/* 8EB9C 8009E39C 2800E48E */  lw         $a0, 0x28($s7)
/* 8EBA0 8009E3A0 4001A326 */  addiu      $v1, $s5, 0x140
/* 8EBA4 8009E3A4 1000A2AF */  sw         $v0, 0x10($sp)
/* 8EBA8 8009E3A8 54010224 */  addiu      $v0, $zero, 0x154
/* 8EBAC 8009E3AC 1800A3AF */  sw         $v1, 0x18($sp)
/* 8EBB0 8009E3B0 80000324 */  addiu      $v1, $zero, 0x80
/* 8EBB4 8009E3B4 1C00A2AF */  sw         $v0, 0x1c($sp)
/* 8EBB8 8009E3B8 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8EBBC 8009E3BC E0805424 */  addiu      $s4, $v0, %lo(D_801280E0)
/* 8EBC0 8009E3C0 2000A3AF */  sw         $v1, 0x20($sp)
/* 8EBC4 8009E3C4 59008892 */  lbu        $t0, 0x59($s4)
/* 8EBC8 8009E3C8 20000324 */  addiu      $v1, $zero, 0x20
/* 8EBCC 8009E3CC 2400A3AF */  sw         $v1, 0x24($sp)
/* 8EBD0 8009E3D0 1380033C */  lui        $v1, %hi(D_801282E0)
/* 8EBD4 8009E3D4 E0827224 */  addiu      $s2, $v1, %lo(D_801282E0)
/* 8EBD8 8009E3D8 C0100800 */  sll        $v0, $t0, 3
/* 8EBDC 8009E3DC 23104800 */  subu       $v0, $v0, $t0
/* 8EBE0 8009E3E0 80100200 */  sll        $v0, $v0, 2
/* 8EBE4 8009E3E4 21105200 */  addu       $v0, $v0, $s2
/* 8EBE8 8009E3E8 3DAD010C */  jal        FUN_8006b4f4
/* 8EBEC 8009E3EC 1400A2AF */   sw        $v0, 0x14($sp)
/* 8EBF0 8009E3F0 2800E2AE */  sw         $v0, 0x28($s7)
/* 8EBF4 8009E3F4 00100224 */  addiu      $v0, $zero, 0x1000
/* 8EBF8 8009E3F8 90000212 */  beq        $s0, $v0, .L8009E63C
/* 8EBFC 8009E3FC 21106002 */   addu      $v0, $s3, $zero
/* 8EC00 8009E400 72008292 */  lbu        $v0, 0x72($s4)
/* 8EC04 8009E404 00000000 */  nop
/* 8EC08 8009E408 C0180200 */  sll        $v1, $v0, 3
/* 8EC0C 8009E40C 23186200 */  subu       $v1, $v1, $v0
/* 8EC10 8009E410 80180300 */  sll        $v1, $v1, 2
/* 8EC14 8009E414 0004022A */  slti       $v0, $s0, 0x400
/* 8EC18 8009E418 15004014 */  bnez       $v0, .L8009E470
/* 8EC1C 8009E41C 21907200 */   addu      $s2, $v1, $s2
/* 8EC20 8009E420 0008022A */  slti       $v0, $s0, 0x800
/* 8EC24 8009E424 08004014 */  bnez       $v0, .L8009E448
/* 8EC28 8009E428 00FC0326 */   addiu     $v1, $s0, -0x400
/* 8EC2C 8009E42C 0018022A */  slti       $v0, $s0, 0x1800
/* 8EC30 8009E430 10004014 */  bnez       $v0, .L8009E474
/* 8EC34 8009E434 C8001424 */   addiu     $s4, $zero, 0xc8
/* 8EC38 8009E438 001C022A */  slti       $v0, $s0, 0x1c00
/* 8EC3C 8009E43C 0C004010 */  beqz       $v0, .L8009E470
/* 8EC40 8009E440 001C0324 */   addiu     $v1, $zero, 0x1c00
/* 8EC44 8009E444 23187000 */  subu       $v1, $v1, $s0
.L8009E448:
/* 8EC48 8009E448 40100300 */  sll        $v0, $v1, 1
/* 8EC4C 8009E44C 21104300 */  addu       $v0, $v0, $v1
/* 8EC50 8009E450 C0100200 */  sll        $v0, $v0, 3
/* 8EC54 8009E454 21104300 */  addu       $v0, $v0, $v1
/* 8EC58 8009E458 C0100200 */  sll        $v0, $v0, 3
/* 8EC5C 8009E45C 05004104 */  bgez       $v0, .L8009E474
/* 8EC60 8009E460 83A20200 */   sra       $s4, $v0, 0xa
/* 8EC64 8009E464 FF034224 */  addiu      $v0, $v0, 0x3ff
/* 8EC68 8009E468 1D790208 */  j          .L8009E474
/* 8EC6C 8009E46C 83A20200 */   sra       $s4, $v0, 0xa
.L8009E470:
/* 8EC70 8009E470 21A00000 */  addu       $s4, $zero, $zero
.L8009E474:
/* 8EC74 8009E474 20001024 */  addiu      $s0, $zero, 0x20
/* 8EC78 8009E478 2120C002 */  addu       $a0, $s6, $zero
/* 8EC7C 8009E47C 21286002 */  addu       $a1, $s3, $zero
/* 8EC80 8009E480 06004786 */  lh         $a3, 6($s2)
/* 8EC84 8009E484 18001524 */  addiu      $s5, $zero, 0x18
/* 8EC88 8009E488 1000B0AF */  sw         $s0, 0x10($sp)
/* 8EC8C 8009E48C 1400B5AF */  sw         $s5, 0x14($sp)
/* 8EC90 8009E490 04004686 */  lh         $a2, 4($s2)
/* 8EC94 8009E494 FFFF1E24 */  addiu      $fp, $zero, -1
/* 8EC98 8009E498 1C00BEAF */  sw         $fp, 0x1c($sp)
/* 8EC9C 8009E49C 0C004286 */  lh         $v0, 0xc($s2)
/* 8ECA0 8009E4A0 C800C624 */  addiu      $a2, $a2, 0xc8
/* 8ECA4 8009E4A4 1769010C */  jal        FUN_8005a45c
/* 8ECA8 8009E4A8 1800A2AF */   sw        $v0, 0x18($sp)
/* 8ECAC 8009E4AC 2120C002 */  addu       $a0, $s6, $zero
/* 8ECB0 8009E4B0 16004686 */  lh         $a2, 0x16($s2)
/* 8ECB4 8009E4B4 18004786 */  lh         $a3, 0x18($s2)
/* 8ECB8 8009E4B8 396D010C */  jal        FUN_8005b4e4
/* 8ECBC 8009E4BC 21286002 */   addu      $a1, $s3, $zero
/* 8ECC0 8009E4C0 2120C002 */  addu       $a0, $s6, $zero
/* 8ECC4 8009E4C4 21286002 */  addu       $a1, $s3, $zero
/* 8ECC8 8009E4C8 D4FE8626 */  addiu      $a2, $s4, -0x12c
/* 8ECCC 8009E4CC 3CFF0724 */  addiu      $a3, $zero, -0xc4
/* 8ECD0 8009E4D0 1000B0AF */  sw         $s0, 0x10($sp)
/* 8ECD4 8009E4D4 976D010C */  jal        FUN_8005b65c
/* 8ECD8 8009E4D8 1400B5AF */   sw        $s5, 0x14($sp)
/* 8ECDC 8009E4DC 2120C002 */  addu       $a0, $s6, $zero
/* 8ECE0 8009E4E0 21286002 */  addu       $a1, $s3, $zero
/* 8ECE4 8009E4E4 80000624 */  addiu      $a2, $zero, 0x80
/* 8ECE8 8009E4E8 80000724 */  addiu      $a3, $zero, 0x80
/* 8ECEC 8009E4EC 80001124 */  addiu      $s1, $zero, 0x80
/* 8ECF0 8009E4F0 EB6C010C */  jal        FUN_8005b3ac
/* 8ECF4 8009E4F4 1000B1AF */   sw        $s1, 0x10($sp)
/* 8ECF8 8009E4F8 01007326 */  addiu      $s3, $s3, 1
/* 8ECFC 8009E4FC C000822A */  slti       $v0, $s4, 0xc0
/* 8ED00 8009E500 06004786 */  lh         $a3, 6($s2)
/* 8ED04 8009E504 04004686 */  lh         $a2, 4($s2)
/* 8ED08 8009E508 02004014 */  bnez       $v0, .L8009E514
/* 8ED0C 8009E50C 21188002 */   addu      $v1, $s4, $zero
/* 8ED10 8009E510 BF000324 */  addiu      $v1, $zero, 0xbf
.L8009E514:
/* 8ED14 8009E514 21806000 */  addu       $s0, $v1, $zero
/* 8ED18 8009E518 2120C002 */  addu       $a0, $s6, $zero
/* 8ED1C 8009E51C 0C004286 */  lh         $v0, 0xc($s2)
/* 8ED20 8009E520 21286002 */  addu       $a1, $s3, $zero
/* 8ED24 8009E524 1000B0AF */  sw         $s0, 0x10($sp)
/* 8ED28 8009E528 1400B5AF */  sw         $s5, 0x14($sp)
/* 8ED2C 8009E52C 1C00BEAF */  sw         $fp, 0x1c($sp)
/* 8ED30 8009E530 1769010C */  jal        FUN_8005a45c
/* 8ED34 8009E534 1800A2AF */   sw        $v0, 0x18($sp)
/* 8ED38 8009E538 2120C002 */  addu       $a0, $s6, $zero
/* 8ED3C 8009E53C 16004686 */  lh         $a2, 0x16($s2)
/* 8ED40 8009E540 18004786 */  lh         $a3, 0x18($s2)
/* 8ED44 8009E544 396D010C */  jal        FUN_8005b4e4
/* 8ED48 8009E548 21286002 */   addu      $a1, $s3, $zero
/* 8ED4C 8009E54C 2120C002 */  addu       $a0, $s6, $zero
/* 8ED50 8009E550 21286002 */  addu       $a1, $s3, $zero
/* 8ED54 8009E554 D4FE0624 */  addiu      $a2, $zero, -0x12c
/* 8ED58 8009E558 3CFF0724 */  addiu      $a3, $zero, -0xc4
/* 8ED5C 8009E55C 1000B0AF */  sw         $s0, 0x10($sp)
/* 8ED60 8009E560 976D010C */  jal        FUN_8005b65c
/* 8ED64 8009E564 1400B5AF */   sw        $s5, 0x14($sp)
/* 8ED68 8009E568 2120C002 */  addu       $a0, $s6, $zero
/* 8ED6C 8009E56C 21286002 */  addu       $a1, $s3, $zero
/* 8ED70 8009E570 80000624 */  addiu      $a2, $zero, 0x80
/* 8ED74 8009E574 80000724 */  addiu      $a3, $zero, 0x80
/* 8ED78 8009E578 EB6C010C */  jal        FUN_8005b3ac
/* 8ED7C 8009E57C 1000B1AF */   sw        $s1, 0x10($sp)
/* 8ED80 8009E580 01007326 */  addiu      $s3, $s3, 1
/* 8ED84 8009E584 FF000524 */  addiu      $a1, $zero, 0xff
/* 8ED88 8009E588 80000624 */  addiu      $a2, $zero, 0x80
/* 8ED8C 8009E58C F4FE8726 */  addiu      $a3, $s4, -0x10c
/* 8ED90 8009E590 3CFF0824 */  addiu      $t0, $zero, -0xc4
/* 8ED94 8009E594 34008226 */  addiu      $v0, $s4, 0x34
/* 8ED98 8009E598 2800E48E */  lw         $a0, 0x28($s7)
/* 8ED9C 8009E59C 2C001224 */  addiu      $s2, $zero, 0x2c
/* 8EDA0 8009E5A0 1800A2AF */  sw         $v0, 0x18($sp)
/* 8EDA4 8009E5A4 1380023C */  lui        $v0, %hi(D_801280E0)
/* 8EDA8 8009E5A8 E0805124 */  addiu      $s1, $v0, %lo(D_801280E0)
/* 8EDAC 8009E5AC 1000A8AF */  sw         $t0, 0x10($sp)
/* 8EDB0 8009E5B0 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 8EDB4 8009E5B4 59002392 */  lbu        $v1, 0x59($s1)
/* 8EDB8 8009E5B8 30000224 */  addiu      $v0, $zero, 0x30
/* 8EDBC 8009E5BC 2000A2AF */  sw         $v0, 0x20($sp)
/* 8EDC0 8009E5C0 2400B5AF */  sw         $s5, 0x24($sp)
/* 8EDC4 8009E5C4 C0100300 */  sll        $v0, $v1, 3
/* 8EDC8 8009E5C8 23104300 */  subu       $v0, $v0, $v1
/* 8EDCC 8009E5CC 80100200 */  sll        $v0, $v0, 2
/* 8EDD0 8009E5D0 1380033C */  lui        $v1, %hi(D_801282E0)
/* 8EDD4 8009E5D4 E0827024 */  addiu      $s0, $v1, %lo(D_801282E0)
/* 8EDD8 8009E5D8 21105000 */  addu       $v0, $v0, $s0
/* 8EDDC 8009E5DC 3DAD010C */  jal        FUN_8006b4f4
/* 8EDE0 8009E5E0 1400A2AF */   sw        $v0, 0x14($sp)
/* 8EDE4 8009E5E4 21204000 */  addu       $a0, $v0, $zero
/* 8EDE8 8009E5E8 FF000524 */  addiu      $a1, $zero, 0xff
/* 8EDEC 8009E5EC 80000624 */  addiu      $a2, $zero, 0x80
/* 8EDF0 8009E5F0 C4FE8726 */  addiu      $a3, $s4, -0x13c
/* 8EDF4 8009E5F4 3CFF0824 */  addiu      $t0, $zero, -0xc4
/* 8EDF8 8009E5F8 2800E2AE */  sw         $v0, 0x28($s7)
/* 8EDFC 8009E5FC 04008226 */  addiu      $v0, $s4, 4
/* 8EE00 8009E600 1000A8AF */  sw         $t0, 0x10($sp)
/* 8EE04 8009E604 1800A2AF */  sw         $v0, 0x18($sp)
/* 8EE08 8009E608 1C00B2AF */  sw         $s2, 0x1c($sp)
/* 8EE0C 8009E60C 59002392 */  lbu        $v1, 0x59($s1)
/* 8EE10 8009E610 10000224 */  addiu      $v0, $zero, 0x10
/* 8EE14 8009E614 2000A2AF */  sw         $v0, 0x20($sp)
/* 8EE18 8009E618 2400B5AF */  sw         $s5, 0x24($sp)
/* 8EE1C 8009E61C C0100300 */  sll        $v0, $v1, 3
/* 8EE20 8009E620 23104300 */  subu       $v0, $v0, $v1
/* 8EE24 8009E624 80100200 */  sll        $v0, $v0, 2
/* 8EE28 8009E628 21105000 */  addu       $v0, $v0, $s0
/* 8EE2C 8009E62C 3DAD010C */  jal        FUN_8006b4f4
/* 8EE30 8009E630 1400A2AF */   sw        $v0, 0x14($sp)
/* 8EE34 8009E634 2800E2AE */  sw         $v0, 0x28($s7)
.L8009E638:
/* 8EE38 8009E638 21106002 */  addu       $v0, $s3, $zero
.L8009E63C:
/* 8EE3C 8009E63C 4C00BF8F */  lw         $ra, 0x4c($sp)
/* 8EE40 8009E640 4800BE8F */  lw         $fp, 0x48($sp)
/* 8EE44 8009E644 4400B78F */  lw         $s7, 0x44($sp)
/* 8EE48 8009E648 4000B68F */  lw         $s6, 0x40($sp)
/* 8EE4C 8009E64C 3C00B58F */  lw         $s5, 0x3c($sp)
/* 8EE50 8009E650 3800B48F */  lw         $s4, 0x38($sp)
/* 8EE54 8009E654 3400B38F */  lw         $s3, 0x34($sp)
/* 8EE58 8009E658 3000B28F */  lw         $s2, 0x30($sp)
/* 8EE5C 8009E65C 2C00B18F */  lw         $s1, 0x2c($sp)
/* 8EE60 8009E660 2800B08F */  lw         $s0, 0x28($sp)
/* 8EE64 8009E664 0800E003 */  jr         $ra
/* 8EE68 8009E668 5000BD27 */   addiu     $sp, $sp, 0x50
