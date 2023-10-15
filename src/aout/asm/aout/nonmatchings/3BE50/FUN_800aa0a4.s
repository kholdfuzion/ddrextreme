.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800aa0a4
/* 9A8A4 800AA0A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
/* 9A8A8 800AA0A8 1C80043C */  lui        $a0, 0x801c
/* 9A8AC 800AA0AC 1C80023C */  lui        $v0, %hi(D_801C3E88)
/* 9A8B0 800AA0B0 1400B1AF */  sw         $s1, 0x14($sp)
/* 9A8B4 800AA0B4 883E5124 */  addiu      $s1, $v0, %lo(D_801C3E88)
/* 9A8B8 800AA0B8 1800BFAF */  sw         $ra, 0x18($sp)
/* 9A8BC 800AA0BC 1000B0AF */  sw         $s0, 0x10($sp)
/* 9A8C0 800AA0C0 1800238E */  lw         $v1, 0x18($s1)
/* 9A8C4 800AA0C4 B83F9024 */  addiu      $s0, $a0, 0x3fb8
/* 9A8C8 800AA0C8 C0100300 */  sll        $v0, $v1, 3
/* 9A8CC 800AA0CC 23104300 */  subu       $v0, $v0, $v1
/* 9A8D0 800AA0D0 80100200 */  sll        $v0, $v0, 2
/* 9A8D4 800AA0D4 21105000 */  addu       $v0, $v0, $s0
/* 9A8D8 800AA0D8 00004390 */  lbu        $v1, ($v0)
/* 9A8DC 800AA0DC 00000000 */  nop
/* 9A8E0 800AA0E0 CFFF6324 */  addiu      $v1, $v1, -0x31
/* 9A8E4 800AA0E4 0200632C */  sltiu      $v1, $v1, 2
/* 9A8E8 800AA0E8 10006010 */  beqz       $v1, .L800AA12C
/* 9A8EC 800AA0EC 00000000 */   nop
/* 9A8F0 800AA0F0 00004490 */  lbu        $a0, ($v0)
/* 9A8F4 800AA0F4 84AC020C */  jal        FUN_800ab210
/* 9A8F8 800AA0F8 CFFF8424 */   addiu     $a0, $a0, -0x31
/* 9A8FC 800AA0FC 72004014 */  bnez       $v0, .L800AA2C8
/* 9A900 800AA100 FCFF0224 */   addiu     $v0, $zero, -4
/* 9A904 800AA104 1800238E */  lw         $v1, 0x18($s1)
/* 9A908 800AA108 00000000 */  nop
/* 9A90C 800AA10C C0100300 */  sll        $v0, $v1, 3
/* 9A910 800AA110 23104300 */  subu       $v0, $v0, $v1
/* 9A914 800AA114 80280200 */  sll        $a1, $v0, 2
/* 9A918 800AA118 2118B000 */  addu       $v1, $a1, $s0
/* 9A91C 800AA11C 01006490 */  lbu        $a0, 1($v1)
/* 9A920 800AA120 3A000224 */  addiu      $v0, $zero, 0x3a
/* 9A924 800AA124 03008210 */  beq        $a0, $v0, .L800AA134
/* 9A928 800AA128 02000426 */   addiu     $a0, $s0, 2
.L800AA12C:
/* 9A92C 800AA12C B2A80208 */  j          .L800AA2C8
/* 9A930 800AA130 FFFF0224 */   addiu     $v0, $zero, -1
.L800AA134:
/* 9A934 800AA134 2120A400 */  addu       $a0, $a1, $a0
/* 9A938 800AA138 0180053C */  lui        $a1, %hi(D_80016D2C)
/* 9A93C 800AA13C 2C6DA524 */  addiu      $a1, $a1, %lo(D_80016D2C)
/* 9A940 800AA140 0905010C */  jal        bcmp
/* 9A944 800AA144 0C000624 */   addiu     $a2, $zero, 0xc
/* 9A948 800AA148 5F004014 */  bnez       $v0, .L800AA2C8
/* 9A94C 800AA14C FEFF0224 */   addiu     $v0, $zero, -2
/* 9A950 800AA150 21480000 */  addu       $t1, $zero, $zero
/* 9A954 800AA154 21500000 */  addu       $t2, $zero, $zero
/* 9A958 800AA158 21580000 */  addu       $t3, $zero, $zero
/* 9A95C 800AA15C 21600000 */  addu       $t4, $zero, $zero
/* 9A960 800AA160 21680000 */  addu       $t5, $zero, $zero
/* 9A964 800AA164 21300000 */  addu       $a2, $zero, $zero
/* 9A968 800AA168 21400002 */  addu       $t0, $s0, $zero
/* 9A96C 800AA16C 21382002 */  addu       $a3, $s1, $zero
/* 9A970 800AA170 0180023C */  lui        $v0, %hi(D_80016D3C)
/* 9A974 800AA174 3C6D5824 */  addiu      $t8, $v0, %lo(D_80016D3C)
/* 9A978 800AA178 0180033C */  lui        $v1, %hi(D_80016D48)
/* 9A97C 800AA17C 486D7124 */  addiu      $s1, $v1, %lo(D_80016D48)
/* 9A980 800AA180 0180023C */  lui        $v0, %hi(D_80016D54)
/* 9A984 800AA184 546D5024 */  addiu      $s0, $v0, %lo(D_80016D54)
/* 9A988 800AA188 0180033C */  lui        $v1, %hi(D_80016D60)
/* 9A98C 800AA18C 606D6F24 */  addiu      $t7, $v1, %lo(D_80016D60)
/* 9A990 800AA190 0180023C */  lui        $v0, %hi(D_80016D6C)
/* 9A994 800AA194 6C6D4E24 */  addiu      $t6, $v0, %lo(D_80016D6C)
.L800AA198:
/* 9A998 800AA198 0600C228 */  slti       $v0, $a2, 6
/* 9A99C 800AA19C 0F004010 */  beqz       $v0, .L800AA1DC
/* 9A9A0 800AA1A0 2120D800 */   addu      $a0, $a2, $t8
/* 9A9A4 800AA1A4 1800E38C */  lw         $v1, 0x18($a3)
/* 9A9A8 800AA1A8 00000000 */  nop
/* 9A9AC 800AA1AC C0100300 */  sll        $v0, $v1, 3
/* 9A9B0 800AA1B0 23104300 */  subu       $v0, $v0, $v1
/* 9A9B4 800AA1B4 80100200 */  sll        $v0, $v0, 2
/* 9A9B8 800AA1B8 0E004224 */  addiu      $v0, $v0, 0xe
/* 9A9BC 800AA1BC 2110C200 */  addu       $v0, $a2, $v0
/* 9A9C0 800AA1C0 21104800 */  addu       $v0, $v0, $t0
/* 9A9C4 800AA1C4 00004590 */  lbu        $a1, ($v0)
/* 9A9C8 800AA1C8 00008390 */  lbu        $v1, ($a0)
/* 9A9CC 800AA1CC 00000000 */  nop
/* 9A9D0 800AA1D0 0300A310 */  beq        $a1, $v1, .L800AA1E0
/* 9A9D4 800AA1D4 0500C228 */   slti      $v0, $a2, 5
/* 9A9D8 800AA1D8 01000924 */  addiu      $t1, $zero, 1
.L800AA1DC:
/* 9A9DC 800AA1DC 0500C228 */  slti       $v0, $a2, 5
.L800AA1E0:
/* 9A9E0 800AA1E0 0F004010 */  beqz       $v0, .L800AA220
/* 9A9E4 800AA1E4 2120D100 */   addu      $a0, $a2, $s1
/* 9A9E8 800AA1E8 1800E38C */  lw         $v1, 0x18($a3)
/* 9A9EC 800AA1EC 00000000 */  nop
/* 9A9F0 800AA1F0 C0100300 */  sll        $v0, $v1, 3
/* 9A9F4 800AA1F4 23104300 */  subu       $v0, $v0, $v1
/* 9A9F8 800AA1F8 80100200 */  sll        $v0, $v0, 2
/* 9A9FC 800AA1FC 0E004224 */  addiu      $v0, $v0, 0xe
/* 9AA00 800AA200 2110C200 */  addu       $v0, $a2, $v0
/* 9AA04 800AA204 21104800 */  addu       $v0, $v0, $t0
/* 9AA08 800AA208 00004590 */  lbu        $a1, ($v0)
/* 9AA0C 800AA20C 00008390 */  lbu        $v1, ($a0)
/* 9AA10 800AA210 00000000 */  nop
/* 9AA14 800AA214 0300A310 */  beq        $a1, $v1, .L800AA224
/* 9AA18 800AA218 0800C228 */   slti      $v0, $a2, 8
/* 9AA1C 800AA21C 01000A24 */  addiu      $t2, $zero, 1
.L800AA220:
/* 9AA20 800AA220 0800C228 */  slti       $v0, $a2, 8
.L800AA224:
/* 9AA24 800AA224 19004010 */  beqz       $v0, .L800AA28C
/* 9AA28 800AA228 2120D000 */   addu      $a0, $a2, $s0
/* 9AA2C 800AA22C 1800E38C */  lw         $v1, 0x18($a3)
/* 9AA30 800AA230 00000000 */  nop
/* 9AA34 800AA234 C0100300 */  sll        $v0, $v1, 3
/* 9AA38 800AA238 23104300 */  subu       $v0, $v0, $v1
/* 9AA3C 800AA23C 80100200 */  sll        $v0, $v0, 2
/* 9AA40 800AA240 0E004224 */  addiu      $v0, $v0, 0xe
/* 9AA44 800AA244 2110C200 */  addu       $v0, $a2, $v0
/* 9AA48 800AA248 21104800 */  addu       $v0, $v0, $t0
/* 9AA4C 800AA24C 00004590 */  lbu        $a1, ($v0)
/* 9AA50 800AA250 00008390 */  lbu        $v1, ($a0)
/* 9AA54 800AA254 00000000 */  nop
/* 9AA58 800AA258 0200A310 */  beq        $a1, $v1, .L800AA264
/* 9AA5C 800AA25C 2110CF00 */   addu      $v0, $a2, $t7
/* 9AA60 800AA260 01000B24 */  addiu      $t3, $zero, 1
.L800AA264:
/* 9AA64 800AA264 00004390 */  lbu        $v1, ($v0)
/* 9AA68 800AA268 00000000 */  nop
/* 9AA6C 800AA26C 0200A310 */  beq        $a1, $v1, .L800AA278
/* 9AA70 800AA270 2110CE00 */   addu      $v0, $a2, $t6
/* 9AA74 800AA274 01000C24 */  addiu      $t4, $zero, 1
.L800AA278:
/* 9AA78 800AA278 00004390 */  lbu        $v1, ($v0)
/* 9AA7C 800AA27C 00000000 */  nop
/* 9AA80 800AA280 0200A310 */  beq        $a1, $v1, .L800AA28C
/* 9AA84 800AA284 00000000 */   nop
/* 9AA88 800AA288 01000D24 */  addiu      $t5, $zero, 1
.L800AA28C:
/* 9AA8C 800AA28C 0100C624 */  addiu      $a2, $a2, 1
/* 9AA90 800AA290 0800C228 */  slti       $v0, $a2, 8
/* 9AA94 800AA294 C0FF4014 */  bnez       $v0, .L800AA198
/* 9AA98 800AA298 00000000 */   nop
/* 9AA9C 800AA29C 09002011 */  beqz       $t1, .L800AA2C4
/* 9AAA0 800AA2A0 00000000 */   nop
/* 9AAA4 800AA2A4 07004011 */  beqz       $t2, .L800AA2C4
/* 9AAA8 800AA2A8 00000000 */   nop
/* 9AAAC 800AA2AC 05006011 */  beqz       $t3, .L800AA2C4
/* 9AAB0 800AA2B0 00000000 */   nop
/* 9AAB4 800AA2B4 04008011 */  beqz       $t4, .L800AA2C8
/* 9AAB8 800AA2B8 FDFF0224 */   addiu     $v0, $zero, -3
/* 9AABC 800AA2BC 0200A015 */  bnez       $t5, .L800AA2C8
/* 9AAC0 800AA2C0 21100000 */   addu      $v0, $zero, $zero
.L800AA2C4:
/* 9AAC4 800AA2C4 FDFF0224 */  addiu      $v0, $zero, -3
.L800AA2C8:
/* 9AAC8 800AA2C8 1800BF8F */  lw         $ra, 0x18($sp)
/* 9AACC 800AA2CC 1400B18F */  lw         $s1, 0x14($sp)
/* 9AAD0 800AA2D0 1000B08F */  lw         $s0, 0x10($sp)
/* 9AAD4 800AA2D4 0800E003 */  jr         $ra
/* 9AAD8 800AA2D8 2000BD27 */   addiu     $sp, $sp, 0x20
