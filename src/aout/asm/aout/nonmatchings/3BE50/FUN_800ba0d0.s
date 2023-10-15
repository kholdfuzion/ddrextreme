.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ba0d0
/* AA8D0 800BA0D0 B0FFBD27 */  addiu      $sp, $sp, -0x50
/* AA8D4 800BA0D4 4000B0AF */  sw         $s0, 0x40($sp)
/* AA8D8 800BA0D8 21800000 */  addu       $s0, $zero, $zero
/* AA8DC 800BA0DC 3800A627 */  addiu      $a2, $sp, 0x38
/* AA8E0 800BA0E0 21380000 */  addu       $a3, $zero, $zero
/* AA8E4 800BA0E4 4C00BFAF */  sw         $ra, 0x4c($sp)
/* AA8E8 800BA0E8 4800B2AF */  sw         $s2, 0x48($sp)
/* AA8EC 800BA0EC FDE9020C */  jal        FUN_800ba7f4
/* AA8F0 800BA0F0 4400B1AF */   sw        $s1, 0x44($sp)
/* AA8F4 800BA0F4 6A004010 */  beqz       $v0, .L800BA2A0
/* AA8F8 800BA0F8 FF7F023C */   lui       $v0, 0x7fff
/* AA8FC 800BA0FC 3800A38F */  lw         $v1, 0x38($sp)
/* AA900 800BA100 FFFF4234 */  ori        $v0, $v0, 0xffff
/* AA904 800BA104 24286200 */  and        $a1, $v1, $v0
/* AA908 800BA108 6600A314 */  bne        $a1, $v1, .L800BA2A4
/* AA90C 800BA10C 21100002 */   addu      $v0, $s0, $zero
/* AA910 800BA110 6400A010 */  beqz       $a1, .L800BA2A4
/* AA914 800BA114 1580103C */   lui       $s0, %hi(D_8014BA9C)
/* AA918 800BA118 1000A427 */  addiu      $a0, $sp, 0x10
/* AA91C 800BA11C 9CBA028E */  lw         $v0, %lo(D_8014BA9C)($s0)
/* AA920 800BA120 9CBA1226 */  addiu      $s2, $s0, -0x4564
/* AA924 800BA124 040040AE */  sw         $zero, 4($s2)
/* AA928 800BA128 25104500 */  or         $v0, $v0, $a1
/* AA92C 800BA12C 8CF0020C */  jal        FUN_800bc230
/* AA930 800BA130 9CBA02AE */   sw        $v0, -0x4564($s0)
/* AA934 800BA134 2400A38F */  lw         $v1, 0x24($sp)
/* AA938 800BA138 00000000 */  nop
/* AA93C 800BA13C 6C076324 */  addiu      $v1, $v1, 0x76c
/* AA940 800BA140 D0076228 */  slti       $v0, $v1, 0x7d0
/* AA944 800BA144 12004014 */  bnez       $v0, .L800BA190
/* AA948 800BA148 FFFF1124 */   addiu     $s1, $zero, -1
/* AA94C 800BA14C 00240300 */  sll        $a0, $v1, 0x10
/* AA950 800BA150 2000A587 */  lh         $a1, 0x20($sp)
/* AA954 800BA154 1C00A687 */  lh         $a2, 0x1c($sp)
/* AA958 800BA158 44B2000C */  jal        FUN_8002c910
/* AA95C 800BA15C 03240400 */   sra       $a0, $a0, 0x10
/* AA960 800BA160 40180200 */  sll        $v1, $v0, 1
/* AA964 800BA164 21186200 */  addu       $v1, $v1, $v0
/* AA968 800BA168 00210300 */  sll        $a0, $v1, 4
/* AA96C 800BA16C 23208300 */  subu       $a0, $a0, $v1
/* AA970 800BA170 40210400 */  sll        $a0, $a0, 5
/* AA974 800BA174 1800A58F */  lw         $a1, 0x18($sp)
/* AA978 800BA178 1400A38F */  lw         $v1, 0x14($sp)
/* AA97C 800BA17C 00110500 */  sll        $v0, $a1, 4
/* AA980 800BA180 23104500 */  subu       $v0, $v0, $a1
/* AA984 800BA184 80100200 */  sll        $v0, $v0, 2
/* AA988 800BA188 21208200 */  addu       $a0, $a0, $v0
/* AA98C 800BA18C 21888300 */  addu       $s1, $a0, $v1
.L800BA190:
/* AA990 800BA190 FFFF0624 */  addiu      $a2, $zero, -1
/* AA994 800BA194 21180000 */  addu       $v1, $zero, $zero
/* AA998 800BA198 0180073C */  lui        $a3, 0x8001
/* AA99C 800BA19C 9CBA048E */  lw         $a0, -0x4564($s0)
/* AA9A0 800BA1A0 01000524 */  addiu      $a1, $zero, 1
/* AA9A4 800BA1A4 080051AE */  sw         $s1, 8($s2)
/* AA9A8 800BA1A8 04106500 */  sllv       $v0, $a1, $v1
.L800BA1AC:
/* AA9AC 800BA1AC 24108200 */  and        $v0, $a0, $v0
/* AA9B0 800BA1B0 02004010 */  beqz       $v0, .L800BA1BC
/* AA9B4 800BA1B4 00000000 */   nop
/* AA9B8 800BA1B8 21306000 */  addu       $a2, $v1, $zero
.L800BA1BC:
/* AA9BC 800BA1BC 01006324 */  addiu      $v1, $v1, 1
/* AA9C0 800BA1C0 1E006228 */  slti       $v0, $v1, 0x1e
/* AA9C4 800BA1C4 F9FF4014 */  bnez       $v0, .L800BA1AC
/* AA9C8 800BA1C8 04106500 */   sllv      $v0, $a1, $v1
/* AA9CC 800BA1CC 1200C004 */  bltz       $a2, .L800BA218
/* AA9D0 800BA1D0 8888033C */   lui       $v1, 0x8888
/* AA9D4 800BA1D4 89886334 */  ori        $v1, $v1, 0x8889
/* AA9D8 800BA1D8 1800C300 */  mult       $a2, $v1
/* AA9DC 800BA1DC E073E524 */  addiu      $a1, $a3, 0x73e0
/* AA9E0 800BA1E0 C3270600 */  sra        $a0, $a2, 0x1f
/* AA9E4 800BA1E4 10180000 */  mfhi       $v1
/* AA9E8 800BA1E8 21186600 */  addu       $v1, $v1, $a2
/* AA9EC 800BA1EC 03190300 */  sra        $v1, $v1, 4
/* AA9F0 800BA1F0 23186400 */  subu       $v1, $v1, $a0
/* AA9F4 800BA1F4 00110300 */  sll        $v0, $v1, 4
/* AA9F8 800BA1F8 23104300 */  subu       $v0, $v0, $v1
/* AA9FC 800BA1FC 40100200 */  sll        $v0, $v0, 1
/* AAA00 800BA200 2310C200 */  subu       $v0, $a2, $v0
/* AAA04 800BA204 80100200 */  sll        $v0, $v0, 2
/* AAA08 800BA208 21104500 */  addu       $v0, $v0, $a1
/* AAA0C 800BA20C 0000458C */  lw         $a1, ($v0)
/* AAA10 800BA210 88E80208 */  j          .L800BA220
/* AAA14 800BA214 0100C324 */   addiu     $v1, $a2, 1
.L800BA218:
/* AAA18 800BA218 E073E58C */  lw         $a1, 0x73e0($a3)
/* AAA1C 800BA21C 0100C324 */  addiu      $v1, $a2, 1
.L800BA220:
/* AAA20 800BA220 1E000224 */  addiu      $v0, $zero, 0x1e
/* AAA24 800BA224 18006214 */  bne        $v1, $v0, .L800BA288
/* AAA28 800BA228 E903A22C */   sltiu     $v0, $a1, 0x3e9
/* AAA2C 800BA22C FFFF0624 */  addiu      $a2, $zero, -1
/* AAA30 800BA230 9CBA048E */  lw         $a0, -0x4564($s0)
/* AAA34 800BA234 00000000 */  nop
/* AAA38 800BA238 01008230 */  andi       $v0, $a0, 1
/* AAA3C 800BA23C 03004014 */  bnez       $v0, .L800BA24C
/* AAA40 800BA240 21180000 */   addu      $v1, $zero, $zero
/* AAA44 800BA244 9DE80208 */  j          .L800BA274
/* AAA48 800BA248 21300000 */   addu      $a2, $zero, $zero
.L800BA24C:
/* AAA4C 800BA24C 01006324 */  addiu      $v1, $v1, 1
.L800BA250:
/* AAA50 800BA250 1E006228 */  slti       $v0, $v1, 0x1e
/* AAA54 800BA254 07004010 */  beqz       $v0, .L800BA274
/* AAA58 800BA258 01000224 */   addiu     $v0, $zero, 1
/* AAA5C 800BA25C 04106200 */  sllv       $v0, $v0, $v1
/* AAA60 800BA260 24108200 */  and        $v0, $a0, $v0
/* AAA64 800BA264 FAFF4014 */  bnez       $v0, .L800BA250
/* AAA68 800BA268 01006324 */   addiu     $v1, $v1, 1
/* AAA6C 800BA26C FFFF6324 */  addiu      $v1, $v1, -1
/* AAA70 800BA270 21306000 */  addu       $a2, $v1, $zero
.L800BA274:
/* AAA74 800BA274 FFFF0224 */  addiu      $v0, $zero, -1
/* AAA78 800BA278 0200C214 */  bne        $a2, $v0, .L800BA284
/* AAA7C 800BA27C E8030524 */   addiu     $a1, $zero, 0x3e8
/* AAA80 800BA280 21280000 */  addu       $a1, $zero, $zero
.L800BA284:
/* AAA84 800BA284 E903A22C */  sltiu      $v0, $a1, 0x3e9
.L800BA288:
/* AAA88 800BA288 02004014 */  bnez       $v0, .L800BA294
/* AAA8C 800BA28C 9CBA0226 */   addiu     $v0, $s0, -0x4564
/* AAA90 800BA290 E073E58C */  lw         $a1, 0x73e0($a3)
.L800BA294:
/* AAA94 800BA294 00000000 */  nop
/* AAA98 800BA298 0C0045AC */  sw         $a1, 0xc($v0)
/* AAA9C 800BA29C 01001024 */  addiu      $s0, $zero, 1
.L800BA2A0:
/* AAAA0 800BA2A0 21100002 */  addu       $v0, $s0, $zero
.L800BA2A4:
/* AAAA4 800BA2A4 4C00BF8F */  lw         $ra, 0x4c($sp)
/* AAAA8 800BA2A8 4800B28F */  lw         $s2, 0x48($sp)
/* AAAAC 800BA2AC 4400B18F */  lw         $s1, 0x44($sp)
/* AAAB0 800BA2B0 4000B08F */  lw         $s0, 0x40($sp)
/* AAAB4 800BA2B4 0800E003 */  jr         $ra
/* AAAB8 800BA2B8 5000BD27 */   addiu     $sp, $sp, 0x50
