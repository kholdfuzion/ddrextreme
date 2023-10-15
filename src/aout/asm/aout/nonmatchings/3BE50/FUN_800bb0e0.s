.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb0e0
/* AB8E0 800BB0E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AB8E4 800BB0E4 1000B0AF */  sw         $s0, 0x10($sp)
/* AB8E8 800BB0E8 21800000 */  addu       $s0, $zero, $zero
/* AB8EC 800BB0EC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AB8F0 800BB0F0 21988000 */  addu       $s3, $a0, $zero
/* AB8F4 800BB0F4 1400B1AF */  sw         $s1, 0x14($sp)
/* AB8F8 800BB0F8 2188A000 */  addu       $s1, $a1, $zero
/* AB8FC 800BB0FC 1800B2AF */  sw         $s2, 0x18($sp)
/* AB900 800BB100 2190C000 */  addu       $s2, $a2, $zero
/* AB904 800BB104 2000B4AF */  sw         $s4, 0x20($sp)
/* AB908 800BB108 2400BFAF */  sw         $ra, 0x24($sp)
/* AB90C 800BB10C 7E81000C */  jal        strlen
/* AB910 800BB110 21A0E000 */   addu      $s4, $a3, $zero
/* AB914 800BB114 21584000 */  addu       $t3, $v0, $zero
/* AB918 800BB118 2B104B02 */  sltu       $v0, $s2, $t3
/* AB91C 800BB11C 40004014 */  bnez       $v0, .L800BB220
/* AB920 800BB120 21680000 */   addu      $t5, $zero, $zero
/* AB924 800BB124 FFFF0424 */  addiu      $a0, $zero, -1
/* AB928 800BB128 11004012 */  beqz       $s2, .L800BB170
/* AB92C 800BB12C 21300000 */   addu      $a2, $zero, $zero
.L800BB130:
/* AB930 800BB130 1B009100 */  divu       $zero, $a0, $s1
/* AB934 800BB134 12180000 */  mflo       $v1
/* AB938 800BB138 10100000 */  mfhi       $v0
/* AB93C 800BB13C 02002016 */  bnez       $s1, .L800BB148
/* AB940 800BB140 00000000 */   nop
/* AB944 800BB144 CD010000 */  break      0, 7
.L800BB148:
/* AB948 800BB148 21684000 */   addu      $t5, $v0, $zero
/* AB94C 800BB14C 02002016 */  bnez       $s1, .L800BB158
/* AB950 800BB150 00000000 */   nop
/* AB954 800BB154 CD010000 */  break      0, 7
.L800BB158:
/* AB958 800BB158 0100C624 */   addiu     $a2, $a2, 1
/* AB95C 800BB15C 2B10D200 */  sltu       $v0, $a2, $s2
/* AB960 800BB160 03004010 */  beqz       $v0, .L800BB170
/* AB964 800BB164 21206000 */   addu      $a0, $v1, $zero
/* AB968 800BB168 F1FF6014 */  bnez       $v1, .L800BB130
/* AB96C 800BB16C 00000000 */   nop
.L800BB170:
/* AB970 800BB170 01000A24 */  addiu      $t2, $zero, 1
/* AB974 800BB174 2178C000 */  addu       $t7, $a2, $zero
/* AB978 800BB178 21300000 */  addu       $a2, $zero, $zero
/* AB97C 800BB17C 24006019 */  blez       $t3, .L800BB210
/* AB980 800BB180 21480000 */   addu      $t1, $zero, $zero
/* AB984 800BB184 1E80023C */  lui        $v0, %hi(D_801E0F10)
/* AB988 800BB188 100F4C90 */  lbu        $t4, %lo(D_801E0F10)($v0)
/* AB98C 800BB18C 21386002 */  addu       $a3, $s3, $zero
/* AB990 800BB190 21704000 */  addu       $t6, $v0, $zero
.L800BB194:
/* AB994 800BB194 12002012 */  beqz       $s1, .L800BB1E0
/* AB998 800BB198 21800000 */   addu      $s0, $zero, $zero
/* AB99C 800BB19C 21106602 */  addu       $v0, $s3, $a2
/* AB9A0 800BB1A0 00004390 */  lbu        $v1, ($v0)
/* AB9A4 800BB1A4 00000000 */  nop
/* AB9A8 800BB1A8 0D008311 */  beq        $t4, $v1, .L800BB1E0
/* AB9AC 800BB1AC 00000000 */   nop
/* AB9B0 800BB1B0 100FC825 */  addiu      $t0, $t6, 0xf10
/* AB9B4 800BB1B4 2128E000 */  addu       $a1, $a3, $zero
/* AB9B8 800BB1B8 01001026 */  addiu      $s0, $s0, 1
.L800BB1BC:
/* AB9BC 800BB1BC 2B101102 */  sltu       $v0, $s0, $s1
/* AB9C0 800BB1C0 07004010 */  beqz       $v0, .L800BB1E0
/* AB9C4 800BB1C4 21100802 */   addu      $v0, $s0, $t0
/* AB9C8 800BB1C8 00004490 */  lbu        $a0, ($v0)
/* AB9CC 800BB1CC 0000A390 */  lbu        $v1, ($a1)
/* AB9D0 800BB1D0 00000000 */  nop
/* AB9D4 800BB1D4 F9FF8314 */  bne        $a0, $v1, .L800BB1BC
/* AB9D8 800BB1D8 01001026 */   addiu     $s0, $s0, 1
/* AB9DC 800BB1DC FFFF1026 */  addiu      $s0, $s0, -1
.L800BB1E0:
/* AB9E0 800BB1E0 0F001112 */  beq        $s0, $s1, .L800BB220
/* AB9E4 800BB1E4 18005001 */   mult      $t2, $s0
/* AB9E8 800BB1E8 12180000 */  mflo       $v1
/* AB9EC 800BB1EC 00000000 */  nop
/* AB9F0 800BB1F0 00000000 */  nop
/* AB9F4 800BB1F4 18005101 */  mult       $t2, $s1
/* AB9F8 800BB1F8 0100E724 */  addiu      $a3, $a3, 1
/* AB9FC 800BB1FC 0100C624 */  addiu      $a2, $a2, 1
/* ABA00 800BB200 2A10CB00 */  slt        $v0, $a2, $t3
/* ABA04 800BB204 12500000 */  mflo       $t2
/* ABA08 800BB208 E2FF4014 */  bnez       $v0, .L800BB194
/* ABA0C 800BB20C 21482301 */   addu      $t1, $t1, $v1
.L800BB210:
/* ABA10 800BB210 0500E615 */  bne        $t7, $a2, .L800BB228
/* ABA14 800BB214 2B10B001 */   sltu      $v0, $t5, $s0
/* ABA18 800BB218 03004010 */  beqz       $v0, .L800BB228
/* ABA1C 800BB21C 00000000 */   nop
.L800BB220:
/* ABA20 800BB220 8CEC0208 */  j          .L800BB230
/* ABA24 800BB224 FFFF0224 */   addiu     $v0, $zero, -1
.L800BB228:
/* ABA28 800BB228 000089AE */  sw         $t1, ($s4)
/* ABA2C 800BB22C 01000224 */  addiu      $v0, $zero, 1
.L800BB230:
/* ABA30 800BB230 2400BF8F */  lw         $ra, 0x24($sp)
/* ABA34 800BB234 2000B48F */  lw         $s4, 0x20($sp)
/* ABA38 800BB238 1C00B38F */  lw         $s3, 0x1c($sp)
/* ABA3C 800BB23C 1800B28F */  lw         $s2, 0x18($sp)
/* ABA40 800BB240 1400B18F */  lw         $s1, 0x14($sp)
/* ABA44 800BB244 1000B08F */  lw         $s0, 0x10($sp)
/* ABA48 800BB248 0800E003 */  jr         $ra
/* ABA4C 800BB24C 2800BD27 */   addiu     $sp, $sp, 0x28
