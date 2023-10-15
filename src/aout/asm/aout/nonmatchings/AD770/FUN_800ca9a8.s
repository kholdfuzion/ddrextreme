.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800ca9a8
/* BB1A8 800CA9A8 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* BB1AC 800CA9AC 2000B4AF */  sw         $s4, 0x20($sp)
/* BB1B0 800CA9B0 21A08000 */  addu       $s4, $a0, $zero
/* BB1B4 800CA9B4 2400B5AF */  sw         $s5, 0x24($sp)
/* BB1B8 800CA9B8 21A8A000 */  addu       $s5, $a1, $zero
/* BB1BC 800CA9BC 1000B0AF */  sw         $s0, 0x10($sp)
/* BB1C0 800CA9C0 2180C000 */  addu       $s0, $a2, $zero
/* BB1C4 800CA9C4 2800B6AF */  sw         $s6, 0x28($sp)
/* BB1C8 800CA9C8 21B0E000 */  addu       $s6, $a3, $zero
/* BB1CC 800CA9CC 1400B1AF */  sw         $s1, 0x14($sp)
/* BB1D0 800CA9D0 21880000 */  addu       $s1, $zero, $zero
/* BB1D4 800CA9D4 3000BFAF */  sw         $ra, 0x30($sp)
/* BB1D8 800CA9D8 2C00B7AF */  sw         $s7, 0x2c($sp)
/* BB1DC 800CA9DC 1C00B3AF */  sw         $s3, 0x1c($sp)
/* BB1E0 800CA9E0 2F2D030C */  jal        FUN_800cb4bc
/* BB1E4 800CA9E4 1800B2AF */   sw        $s2, 0x18($sp)
/* BB1E8 800CA9E8 03004014 */  bnez       $v0, .L800CA9F8
/* BB1EC 800CA9EC 21900000 */   addu      $s2, $zero, $zero
/* BB1F0 800CA9F0 992A0308 */  j          .L800CAA64
/* BB1F4 800CA9F4 F4FF0224 */   addiu     $v0, $zero, -0xc
.L800CA9F8:
/* BB1F8 800CA9F8 2A103602 */  slt        $v0, $s1, $s6
/* BB1FC 800CA9FC 18004010 */  beqz       $v0, .L800CAA60
/* BB200 800CAA00 21980002 */   addu      $s3, $s0, $zero
/* BB204 800CAA04 FDFF1724 */  addiu      $s7, $zero, -3
/* BB208 800CAA08 21800000 */  addu       $s0, $zero, $zero
.L800CAA0C:
/* BB20C 800CAA0C 4A70000C */  jal        FUN_8001c128
/* BB210 800CAA10 00000000 */   nop
/* BB214 800CAA14 21208002 */  addu       $a0, $s4, $zero
/* BB218 800CAA18 2128B202 */  addu       $a1, $s5, $s2
/* BB21C 800CAA1C 21307202 */  addu       $a2, $s3, $s2
/* BB220 800CAA20 6B2D030C */  jal        FUN_800cb5ac
/* BB224 800CAA24 08000724 */   addiu     $a3, $zero, 8
/* BB228 800CAA28 21884000 */  addu       $s1, $v0, $zero
/* BB22C 800CAA2C 05002012 */  beqz       $s1, .L800CAA44
/* BB230 800CAA30 00000000 */   nop
/* BB234 800CAA34 01001026 */  addiu      $s0, $s0, 1
/* BB238 800CAA38 0900022A */  slti       $v0, $s0, 9
/* BB23C 800CAA3C F3FF4014 */  bnez       $v0, .L800CAA0C
/* BB240 800CAA40 00000000 */   nop
.L800CAA44:
/* BB244 800CAA44 06003712 */  beq        $s1, $s7, .L800CAA60
/* BB248 800CAA48 0900022A */   slti      $v0, $s0, 9
/* BB24C 800CAA4C 04004010 */  beqz       $v0, .L800CAA60
/* BB250 800CAA50 08005226 */   addiu     $s2, $s2, 8
/* BB254 800CAA54 2A105602 */  slt        $v0, $s2, $s6
/* BB258 800CAA58 ECFF4014 */  bnez       $v0, .L800CAA0C
/* BB25C 800CAA5C 21800000 */   addu      $s0, $zero, $zero
.L800CAA60:
/* BB260 800CAA60 21102002 */  addu       $v0, $s1, $zero
.L800CAA64:
/* BB264 800CAA64 3000BF8F */  lw         $ra, 0x30($sp)
/* BB268 800CAA68 2C00B78F */  lw         $s7, 0x2c($sp)
/* BB26C 800CAA6C 2800B68F */  lw         $s6, 0x28($sp)
/* BB270 800CAA70 2400B58F */  lw         $s5, 0x24($sp)
/* BB274 800CAA74 2000B48F */  lw         $s4, 0x20($sp)
/* BB278 800CAA78 1C00B38F */  lw         $s3, 0x1c($sp)
/* BB27C 800CAA7C 1800B28F */  lw         $s2, 0x18($sp)
/* BB280 800CAA80 1400B18F */  lw         $s1, 0x14($sp)
/* BB284 800CAA84 1000B08F */  lw         $s0, 0x10($sp)
/* BB288 800CAA88 0800E003 */  jr         $ra
/* BB28C 800CAA8C 3800BD27 */   addiu     $sp, $sp, 0x38
