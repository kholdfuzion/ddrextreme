.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800be9f8
/* AF1F8 800BE9F8 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* AF1FC 800BE9FC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* AF200 800BEA00 21988000 */  addu       $s3, $a0, $zero
/* AF204 800BEA04 1000B0AF */  sw         $s0, 0x10($sp)
/* AF208 800BEA08 FEFF1024 */  addiu      $s0, $zero, -2
/* AF20C 800BEA0C 01000424 */  addiu      $a0, $zero, 1
/* AF210 800BEA10 1800B2AF */  sw         $s2, 0x18($sp)
/* AF214 800BEA14 2190C000 */  addu       $s2, $a2, $zero
/* AF218 800BEA18 1400B1AF */  sw         $s1, 0x14($sp)
/* AF21C 800BEA1C 2188A000 */  addu       $s1, $a1, $zero
/* AF220 800BEA20 2400BFAF */  sw         $ra, 0x24($sp)
/* AF224 800BEA24 CD6B000C */  jal        VSync
/* AF228 800BEA28 2000B4AF */   sw        $s4, 0x20($sp)
/* AF22C 800BEA2C 21A04000 */  addu       $s4, $v0, $zero
.L800BEA30:
/* AF230 800BEA30 CD6B000C */  jal        VSync
/* AF234 800BEA34 01000424 */   addiu     $a0, $zero, 1
/* AF238 800BEA38 00006396 */  lhu        $v1, ($s3)
/* AF23C 800BEA3C 23205400 */  subu       $a0, $v0, $s4
/* AF240 800BEA40 FFFF6330 */  andi       $v1, $v1, 0xffff
/* AF244 800BEA44 26107100 */  xor        $v0, $v1, $s1
/* AF248 800BEA48 80804230 */  andi       $v0, $v0, 0x8080
/* AF24C 800BEA4C 0A004010 */  beqz       $v0, .L800BEA78
/* AF250 800BEA50 20206330 */   andi      $v1, $v1, 0x2020
/* AF254 800BEA54 20200224 */  addiu      $v0, $zero, 0x2020
/* AF258 800BEA58 09006214 */  bne        $v1, $v0, .L800BEA80
/* AF25C 800BEA5C 00000000 */   nop
/* AF260 800BEA60 00006296 */  lhu        $v0, ($s3)
/* AF264 800BEA64 00000000 */  nop
/* AF268 800BEA68 26102202 */  xor        $v0, $s1, $v0
/* AF26C 800BEA6C 80804230 */  andi       $v0, $v0, 0x8080
/* AF270 800BEA70 08004014 */  bnez       $v0, .L800BEA94
/* AF274 800BEA74 FFFF1024 */   addiu     $s0, $zero, -1
.L800BEA78:
/* AF278 800BEA78 A5FA0208 */  j          .L800BEA94
/* AF27C 800BEA7C 21800000 */   addu      $s0, $zero, $zero
.L800BEA80:
/* AF280 800BEA80 04004012 */  beqz       $s2, .L800BEA94
/* AF284 800BEA84 FFFF8230 */   andi      $v0, $a0, 0xffff
/* AF288 800BEA88 2A105200 */  slt        $v0, $v0, $s2
/* AF28C 800BEA8C E8FF4014 */  bnez       $v0, .L800BEA30
/* AF290 800BEA90 00000000 */   nop
.L800BEA94:
/* AF294 800BEA94 1F80053C */  lui        $a1, %hi(D_801F6FF0)
/* AF298 800BEA98 F06FA28C */  lw         $v0, %lo(D_801F6FF0)($a1)
/* AF29C 800BEA9C FFFF8330 */  andi       $v1, $a0, 0xffff
/* AF2A0 800BEAA0 2A104300 */  slt        $v0, $v0, $v1
/* AF2A4 800BEAA4 02004010 */  beqz       $v0, .L800BEAB0
/* AF2A8 800BEAA8 21100002 */   addu      $v0, $s0, $zero
/* AF2AC 800BEAAC F06FA3AC */  sw         $v1, 0x6ff0($a1)
.L800BEAB0:
/* AF2B0 800BEAB0 2400BF8F */  lw         $ra, 0x24($sp)
/* AF2B4 800BEAB4 2000B48F */  lw         $s4, 0x20($sp)
/* AF2B8 800BEAB8 1C00B38F */  lw         $s3, 0x1c($sp)
/* AF2BC 800BEABC 1800B28F */  lw         $s2, 0x18($sp)
/* AF2C0 800BEAC0 1400B18F */  lw         $s1, 0x14($sp)
/* AF2C4 800BEAC4 1000B08F */  lw         $s0, 0x10($sp)
/* AF2C8 800BEAC8 0800E003 */  jr         $ra
/* AF2CC 800BEACC 2800BD27 */   addiu     $sp, $sp, 0x28
