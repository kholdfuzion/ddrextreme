.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd99c
/* BE19C 800CD99C F8FFBD27 */  addiu      $sp, $sp, -8
/* BE1A0 800CD9A0 401F063C */  lui        $a2, 0x1f40
/* BE1A4 800CD9A4 0400C294 */  lhu        $v0, 4($a2)
/* BE1A8 800CD9A8 00000000 */  nop
/* BE1AC 800CD9AC 82130200 */  srl        $v0, $v0, 0xe
/* BE1B0 800CD9B0 01004230 */  andi       $v0, $v0, 1
/* BE1B4 800CD9B4 05004014 */  bnez       $v0, .L800CD9CC
/* BE1B8 800CD9B8 21408000 */   addu      $t0, $a0, $zero
/* BE1BC 800CD9BC C6360308 */  j          .L800CDB18
/* BE1C0 800CD9C0 FFFF0224 */   addiu     $v0, $zero, -1
.L800CD9C4:
/* BE1C4 800CD9C4 C1360308 */  j          .L800CDB04
/* BE1C8 800CD9C8 21280000 */   addu      $a1, $zero, $zero
.L800CD9CC:
/* BE1CC 800CD9CC 21280000 */  addu       $a1, $zero, $zero
/* BE1D0 800CD9D0 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BE1D4 800CD9D4 2138C000 */  addu       $a3, $a2, $zero
/* BE1D8 800CD9D8 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BE1DC 800CD9DC 6A1F023C */  lui        $v0, 0x1f6a
/* BE1E0 800CD9E0 10006334 */  ori        $v1, $v1, 0x10
/* BE1E4 800CD9E4 000043A4 */  sh         $v1, ($v0)
/* BE1E8 800CD9E8 0000A0AF */  sw         $zero, ($sp)
/* BE1EC 800CD9EC 0000A28F */  lw         $v0, ($sp)
/* BE1F0 800CD9F0 FFFF0634 */  ori        $a2, $zero, 0xffff
/* BE1F4 800CD9F4 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CD9F8:
/* BE1F8 800CD9F8 0400E294 */  lhu        $v0, 4($a3)
/* BE1FC 800CD9FC 00000000 */  nop
/* BE200 800CDA00 82130200 */  srl        $v0, $v0, 0xe
/* BE204 800CDA04 01004230 */  andi       $v0, $v0, 1
/* BE208 800CDA08 04004610 */  beq        $v0, $a2, .L800CDA1C
/* BE20C 800CDA0C 2080023C */   lui       $v0, %hi(D_801FBCF0)
/* BE210 800CDA10 0100A524 */  addiu      $a1, $a1, 1
/* BE214 800CDA14 F8FFA018 */  blez       $a1, .L800CD9F8
/* BE218 800CDA18 00000000 */   nop
.L800CDA1C:
/* BE21C 800CDA1C 09000011 */  beqz       $t0, .L800CDA44
/* BE220 800CDA20 F0BC45AC */   sw        $a1, %lo(D_801FBCF0)($v0)
/* BE224 800CDA24 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BE228 800CDA28 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BE22C 800CDA2C 6A1F023C */  lui        $v0, 0x1f6a
/* BE230 800CDA30 EFFF6330 */  andi       $v1, $v1, 0xffef
/* BE234 800CDA34 000043A4 */  sh         $v1, ($v0)
/* BE238 800CDA38 0000A0AF */  sw         $zero, ($sp)
/* BE23C 800CDA3C 0000A28F */  lw         $v0, ($sp)
/* BE240 800CDA40 08BD83A4 */  sh         $v1, -0x42f8($a0)
.L800CDA44:
/* BE244 800CDA44 21280000 */  addu       $a1, $zero, $zero
/* BE248 800CDA48 401F043C */  lui        $a0, 0x1f40
/* BE24C 800CDA4C FFFF0334 */  ori        $v1, $zero, 0xffff
.L800CDA50:
/* BE250 800CDA50 04008294 */  lhu        $v0, 4($a0)
/* BE254 800CDA54 00000000 */  nop
/* BE258 800CDA58 82130200 */  srl        $v0, $v0, 0xe
/* BE25C 800CDA5C 01004230 */  andi       $v0, $v0, 1
/* BE260 800CDA60 05004310 */  beq        $v0, $v1, .L800CDA78
/* BE264 800CDA64 00000000 */   nop
/* BE268 800CDA68 0100A524 */  addiu      $a1, $a1, 1
/* BE26C 800CDA6C B900A228 */  slti       $v0, $a1, 0xb9
/* BE270 800CDA70 F7FF4014 */  bnez       $v0, .L800CDA50
/* BE274 800CDA74 00000000 */   nop
.L800CDA78:
/* BE278 800CDA78 21300000 */  addu       $a2, $zero, $zero
/* BE27C 800CDA7C 401F083C */  lui        $t0, 0x1f40
/* BE280 800CDA80 FFFF0734 */  ori        $a3, $zero, 0xffff
/* BE284 800CDA84 2080043C */  lui        $a0, %hi(D_801FBD08)
/* BE288 800CDA88 08BD8394 */  lhu        $v1, %lo(D_801FBD08)($a0)
/* BE28C 800CDA8C 2080023C */  lui        $v0, %hi(D_801FBCF0)
/* BE290 800CDA90 F0BC45AC */  sw         $a1, %lo(D_801FBCF0)($v0)
/* BE294 800CDA94 6A1F023C */  lui        $v0, 0x1f6a
/* BE298 800CDA98 EFFF6330 */  andi       $v1, $v1, 0xffef
/* BE29C 800CDA9C 08BD83A4 */  sh         $v1, -0x42f8($a0)
/* BE2A0 800CDAA0 000043A4 */  sh         $v1, ($v0)
.L800CDAA4:
/* BE2A4 800CDAA4 04000295 */  lhu        $v0, 4($t0)
/* BE2A8 800CDAA8 00000000 */  nop
/* BE2AC 800CDAAC 82130200 */  srl        $v0, $v0, 0xe
/* BE2B0 800CDAB0 01004230 */  andi       $v0, $v0, 1
/* BE2B4 800CDAB4 04004710 */  beq        $v0, $a3, .L800CDAC8
/* BE2B8 800CDAB8 2080023C */   lui       $v0, %hi(D_801FBCF0)
/* BE2BC 800CDABC 0100C624 */  addiu      $a2, $a2, 1
/* BE2C0 800CDAC0 F8FFC018 */  blez       $a2, .L800CDAA4
/* BE2C4 800CDAC4 00000000 */   nop
.L800CDAC8:
/* BE2C8 800CDAC8 F0BC46AC */  sw         $a2, %lo(D_801FBCF0)($v0)
/* BE2CC 800CDACC FFFF0524 */  addiu      $a1, $zero, -1
/* BE2D0 800CDAD0 21180000 */  addu       $v1, $zero, $zero
/* BE2D4 800CDAD4 401F063C */  lui        $a2, 0x1f40
/* BE2D8 800CDAD8 01000424 */  addiu      $a0, $zero, 1
.L800CDADC:
/* BE2DC 800CDADC 0400C294 */  lhu        $v0, 4($a2)
/* BE2E0 800CDAE0 00000000 */  nop
/* BE2E4 800CDAE4 82130200 */  srl        $v0, $v0, 0xe
/* BE2E8 800CDAE8 01004230 */  andi       $v0, $v0, 1
/* BE2EC 800CDAEC B5FF4410 */  beq        $v0, $a0, .L800CD9C4
/* BE2F0 800CDAF0 00000000 */   nop
/* BE2F4 800CDAF4 01006324 */  addiu      $v1, $v1, 1
/* BE2F8 800CDAF8 0F006228 */  slti       $v0, $v1, 0xf
/* BE2FC 800CDAFC F7FF4014 */  bnez       $v0, .L800CDADC
/* BE300 800CDB00 00000000 */   nop
.L800CDB04:
/* BE304 800CDB04 2080023C */  lui        $v0, %hi(D_801FBCF0)
/* BE308 800CDB08 F0BC43AC */  sw         $v1, %lo(D_801FBCF0)($v0)
/* BE30C 800CDB0C 0200A004 */  bltz       $a1, .L800CDB18
/* BE310 800CDB10 FFFF0224 */   addiu     $v0, $zero, -1
/* BE314 800CDB14 21100000 */  addu       $v0, $zero, $zero
.L800CDB18:
/* BE318 800CDB18 0800E003 */  jr         $ra
/* BE31C 800CDB1C 0800BD27 */   addiu     $sp, $sp, 8
