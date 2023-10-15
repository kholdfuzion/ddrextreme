.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_800CBF98
/* BC798 800CBF98 C8FFBD27 */  addiu      $sp, $sp, -0x38
/* BC79C 800CBF9C 2800B2AF */  sw         $s2, 0x28($sp)
/* BC7A0 800CBFA0 FEFF1224 */  addiu      $s2, $zero, -2
/* BC7A4 800CBFA4 1000A427 */  addiu      $a0, $sp, 0x10
/* BC7A8 800CBFA8 21280000 */  addu       $a1, $zero, $zero
/* BC7AC 800CBFAC 08000624 */  addiu      $a2, $zero, 8
/* BC7B0 800CBFB0 3000BFAF */  sw         $ra, 0x30($sp)
/* BC7B4 800CBFB4 2C00B3AF */  sw         $s3, 0x2c($sp)
/* BC7B8 800CBFB8 2400B1AF */  sw         $s1, 0x24($sp)
/* BC7BC 800CBFBC F6A2000C */  jal        memset
/* BC7C0 800CBFC0 2000B0AF */   sw        $s0, 0x20($sp)
/* BC7C4 800CBFC4 21880000 */  addu       $s1, $zero, $zero
/* BC7C8 800CBFC8 FDFF1324 */  addiu      $s3, $zero, -3
/* BC7CC 800CBFCC 01002226 */  addiu      $v0, $s1, 1
.L800CBFD0:
/* BC7D0 800CBFD0 1000A2A3 */  sb         $v0, 0x10($sp)
/* BC7D4 800CBFD4 21800000 */  addu       $s0, $zero, $zero
/* BC7D8 800CBFD8 1000A427 */  addiu      $a0, $sp, 0x10
.L800CBFDC:
/* BC7DC 800CBFDC 21280000 */  addu       $a1, $zero, $zero
/* BC7E0 800CBFE0 1800A627 */  addiu      $a2, $sp, 0x18
/* BC7E4 800CBFE4 592D030C */  jal        FUN_800cb564
/* BC7E8 800CBFE8 08000724 */   addiu     $a3, $zero, 8
/* BC7EC 800CBFEC 01001026 */  addiu      $s0, $s0, 1
/* BC7F0 800CBFF0 21184000 */  addu       $v1, $v0, $zero
/* BC7F4 800CBFF4 0800022A */  slti       $v0, $s0, 8
/* BC7F8 800CBFF8 F8FF4014 */  bnez       $v0, .L800CBFDC
/* BC7FC 800CBFFC 1000A427 */   addiu     $a0, $sp, 0x10
/* BC800 800CC000 09007314 */  bne        $v1, $s3, .L800CC028
/* BC804 800CC004 01003126 */   addiu     $s1, $s1, 1
/* BC808 800CC008 1000A0A3 */  sb         $zero, 0x10($sp)
/* BC80C 800CC00C 1000A427 */  addiu      $a0, $sp, 0x10
/* BC810 800CC010 21280000 */  addu       $a1, $zero, $zero
/* BC814 800CC014 1800A627 */  addiu      $a2, $sp, 0x18
/* BC818 800CC018 592D030C */  jal        FUN_800cb564
/* BC81C 800CC01C 08000724 */   addiu     $a3, $zero, 8
/* BC820 800CC020 0D300308 */  j          .L800CC034
/* BC824 800CC024 21904000 */   addu      $s2, $v0, $zero
.L800CC028:
/* BC828 800CC028 0200222A */  slti       $v0, $s1, 2
/* BC82C 800CC02C E8FF4014 */  bnez       $v0, .L800CBFD0
/* BC830 800CC030 01002226 */   addiu     $v0, $s1, 1
.L800CC034:
/* BC834 800CC034 21104002 */  addu       $v0, $s2, $zero
/* BC838 800CC038 3000BF8F */  lw         $ra, 0x30($sp)
/* BC83C 800CC03C 2C00B38F */  lw         $s3, 0x2c($sp)
/* BC840 800CC040 2800B28F */  lw         $s2, 0x28($sp)
/* BC844 800CC044 2400B18F */  lw         $s1, 0x24($sp)
/* BC848 800CC048 2000B08F */  lw         $s0, 0x20($sp)
/* BC84C 800CC04C 0800E003 */  jr         $ra
/* BC850 800CC050 3800BD27 */   addiu     $sp, $sp, 0x38
