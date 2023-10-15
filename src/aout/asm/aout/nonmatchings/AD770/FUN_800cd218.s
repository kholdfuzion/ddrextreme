.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800cd218
/* BDA18 800CD218 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* BDA1C 800CD21C 2800B4AF */  sw         $s4, 0x28($sp)
/* BDA20 800CD220 21A08000 */  addu       $s4, $a0, $zero
/* BDA24 800CD224 1800B0AF */  sw         $s0, 0x18($sp)
/* BDA28 800CD228 80001024 */  addiu      $s0, $zero, 0x80
/* BDA2C 800CD22C 1C00B1AF */  sw         $s1, 0x1c($sp)
/* BDA30 800CD230 2080113C */  lui        $s1, 0x8020
/* BDA34 800CD234 2000B2AF */  sw         $s2, 0x20($sp)
/* BDA38 800CD238 6A1F123C */  lui        $s2, 0x1f6a
/* BDA3C 800CD23C 2400B3AF */  sw         $s3, 0x24($sp)
/* BDA40 800CD240 401F133C */  lui        $s3, 0x1f40
/* BDA44 800CD244 2C00BFAF */  sw         $ra, 0x2c($sp)
.L800CD248:
/* BDA48 800CD248 24109002 */  and        $v0, $s4, $s0
/* BDA4C 800CD24C 02004014 */  bnez       $v0, .L800CD258
/* BDA50 800CD250 21200000 */   addu      $a0, $zero, $zero
/* BDA54 800CD254 01000424 */  addiu      $a0, $zero, 1
.L800CD258:
/* BDA58 800CD258 78F0020C */  jal        FUN_800bc1e0
/* BDA5C 800CD25C 00000000 */   nop
/* BDA60 800CD260 08BD2296 */  lhu        $v0, -0x42f8($s1)
/* BDA64 800CD264 1000A0AF */  sw         $zero, 0x10($sp)
/* BDA68 800CD268 1000A38F */  lw         $v1, 0x10($sp)
/* BDA6C 800CD26C 02004234 */  ori        $v0, $v0, 2
/* BDA70 800CD270 000042A6 */  sh         $v0, ($s2)
/* BDA74 800CD274 1000A0AF */  sw         $zero, 0x10($sp)
/* BDA78 800CD278 1000A38F */  lw         $v1, 0x10($sp)
/* BDA7C 800CD27C 21180000 */  addu       $v1, $zero, $zero
/* BDA80 800CD280 08BD22A6 */  sh         $v0, -0x42f8($s1)
.L800CD284:
/* BDA84 800CD284 06006296 */  lhu        $v0, 6($s3)
/* BDA88 800CD288 01006324 */  addiu      $v1, $v1, 1
/* BDA8C 800CD28C 3C006228 */  slti       $v0, $v1, 0x3c
/* BDA90 800CD290 FCFF4014 */  bnez       $v0, .L800CD284
/* BDA94 800CD294 00000000 */   nop
/* BDA98 800CD298 08BD2296 */  lhu        $v0, -0x42f8($s1)
/* BDA9C 800CD29C 00000000 */  nop
/* BDAA0 800CD2A0 FDFF4230 */  andi       $v0, $v0, 0xfffd
/* BDAA4 800CD2A4 000042A6 */  sh         $v0, ($s2)
/* BDAA8 800CD2A8 1000A0AF */  sw         $zero, 0x10($sp)
/* BDAAC 800CD2AC 1000A38F */  lw         $v1, 0x10($sp)
/* BDAB0 800CD2B0 43801000 */  sra        $s0, $s0, 1
/* BDAB4 800CD2B4 E4FF0016 */  bnez       $s0, .L800CD248
/* BDAB8 800CD2B8 08BD22A6 */   sh        $v0, -0x42f8($s1)
/* BDABC 800CD2BC 2C00BF8F */  lw         $ra, 0x2c($sp)
/* BDAC0 800CD2C0 2800B48F */  lw         $s4, 0x28($sp)
/* BDAC4 800CD2C4 2400B38F */  lw         $s3, 0x24($sp)
/* BDAC8 800CD2C8 2000B28F */  lw         $s2, 0x20($sp)
/* BDACC 800CD2CC 1C00B18F */  lw         $s1, 0x1c($sp)
/* BDAD0 800CD2D0 1800B08F */  lw         $s0, 0x18($sp)
/* BDAD4 800CD2D4 0800E003 */  jr         $ra
/* BDAD8 800CD2D8 3000BD27 */   addiu     $sp, $sp, 0x30
