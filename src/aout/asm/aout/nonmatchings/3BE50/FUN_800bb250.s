.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_800bb250
/* ABA50 800BB250 D0FFBD27 */  addiu      $sp, $sp, -0x30
/* ABA54 800BB254 C104093C */  lui        $t1, 0x4c1
/* ABA58 800BB258 B71D2935 */  ori        $t1, $t1, 0x1db7
/* ABA5C 800BB25C 21180000 */  addu       $v1, $zero, $zero
/* ABA60 800BB260 2800BFAF */  sw         $ra, 0x28($sp)
/* ABA64 800BB264 2400B5AF */  sw         $s5, 0x24($sp)
/* ABA68 800BB268 2000B4AF */  sw         $s4, 0x20($sp)
/* ABA6C 800BB26C 1C00B3AF */  sw         $s3, 0x1c($sp)
/* ABA70 800BB270 1800B2AF */  sw         $s2, 0x18($sp)
/* ABA74 800BB274 1400B1AF */  sw         $s1, 0x14($sp)
/* ABA78 800BB278 1000B0AF */  sw         $s0, 0x10($sp)
/* ABA7C 800BB27C 0000A790 */  lbu        $a3, ($a1)
/* ABA80 800BB280 0100A524 */  addiu      $a1, $a1, 1
/* ABA84 800BB284 1100E010 */  beqz       $a3, .L800BB2CC
/* ABA88 800BB288 21A08000 */   addu      $s4, $a0, $zero
.L800BB28C:
/* ABA8C 800BB28C 21300000 */  addu       $a2, $zero, $zero
/* ABA90 800BB290 0000A890 */  lbu        $t0, ($a1)
/* ABA94 800BB294 0100A524 */  addiu      $a1, $a1, 1
.L800BB298:
/* ABA98 800BB298 40200300 */  sll        $a0, $v1, 1
/* ABA9C 800BB29C 0710C700 */  srav       $v0, $a3, $a2
/* ABAA0 800BB2A0 01004230 */  andi       $v0, $v0, 1
/* ABAA4 800BB2A4 25208200 */  or         $a0, $a0, $v0
/* ABAA8 800BB2A8 C31F0300 */  sra        $v1, $v1, 0x1f
/* ABAAC 800BB2AC 24186900 */  and        $v1, $v1, $t1
/* ABAB0 800BB2B0 0100C624 */  addiu      $a2, $a2, 1
/* ABAB4 800BB2B4 0600C228 */  slti       $v0, $a2, 6
/* ABAB8 800BB2B8 F7FF4014 */  bnez       $v0, .L800BB298
/* ABABC 800BB2BC 26188300 */   xor       $v1, $a0, $v1
/* ABAC0 800BB2C0 21380001 */  addu       $a3, $t0, $zero
/* ABAC4 800BB2C4 F1FFE014 */  bnez       $a3, .L800BB28C
/* ABAC8 800BB2C8 00000000 */   nop
.L800BB2CC:
/* ABACC 800BB2CC 21906000 */  addu       $s2, $v1, $zero
/* ABAD0 800BB2D0 0F001024 */  addiu      $s0, $zero, 0xf
/* ABAD4 800BB2D4 1E80023C */  lui        $v0, %hi(D_801E0F30)
/* ABAD8 800BB2D8 300F4424 */  addiu      $a0, $v0, %lo(D_801E0F30)
/* ABADC 800BB2DC FFFF0324 */  addiu      $v1, $zero, -1
.L800BB2E0:
/* ABAE0 800BB2E0 21100402 */  addu       $v0, $s0, $a0
/* ABAE4 800BB2E4 FFFF1026 */  addiu      $s0, $s0, -1
/* ABAE8 800BB2E8 FDFF0316 */  bne        $s0, $v1, .L800BB2E0
/* ABAEC 800BB2EC 000040A0 */   sb        $zero, ($v0)
/* ABAF0 800BB2F0 21800000 */  addu       $s0, $zero, $zero
/* ABAF4 800BB2F4 21980000 */  addu       $s3, $zero, $zero
/* ABAF8 800BB2F8 9605113C */  lui        $s1, 0x596
/* ABAFC 800BB2FC CA853136 */  ori        $s1, $s1, 0x85ca
/* ABB00 800BB300 D1EC0208 */  j          .L800BB344
/* ABB04 800BB304 FFFF153C */   lui       $s5, 0xffff
.L800BB308:
/* ABB08 800BB308 00004690 */  lbu        $a2, ($v0)
/* ABB0C 800BB30C 00000000 */  nop
/* ABB10 800BB310 2120D100 */  addu       $a0, $a2, $s1
/* ABB14 800BB314 18004402 */  mult       $s2, $a0
/* ABB18 800BB318 12180000 */  mflo       $v1
/* ABB1C 800BB31C 24287500 */  and        $a1, $v1, $s5
/* ABB20 800BB320 00000000 */  nop
/* ABB24 800BB324 18006400 */  mult       $v1, $a0
/* ABB28 800BB328 01001026 */  addiu      $s0, $s0, 1
/* ABB2C 800BB32C 12180000 */  mflo       $v1
/* ABB30 800BB330 C2130300 */  srl        $v0, $v1, 0xf
/* ABB34 800BB334 FFFF4230 */  andi       $v0, $v0, 0xffff
/* ABB38 800BB338 2528A200 */  or         $a1, $a1, $v0
/* ABB3C 800BB33C 21906600 */  addu       $s2, $v1, $a2
/* ABB40 800BB340 21986502 */  addu       $s3, $s3, $a1
.L800BB344:
/* ABB44 800BB344 7E81000C */  jal        strlen
/* ABB48 800BB348 21208002 */   addu      $a0, $s4, $zero
/* ABB4C 800BB34C 2A100202 */  slt        $v0, $s0, $v0
/* ABB50 800BB350 EDFF4014 */  bnez       $v0, .L800BB308
/* ABB54 800BB354 21109002 */   addu      $v0, $s4, $s0
/* ABB58 800BB358 21106002 */  addu       $v0, $s3, $zero
/* ABB5C 800BB35C 2800BF8F */  lw         $ra, 0x28($sp)
/* ABB60 800BB360 2400B58F */  lw         $s5, 0x24($sp)
/* ABB64 800BB364 2000B48F */  lw         $s4, 0x20($sp)
/* ABB68 800BB368 1C00B38F */  lw         $s3, 0x1c($sp)
/* ABB6C 800BB36C 1800B28F */  lw         $s2, 0x18($sp)
/* ABB70 800BB370 1400B18F */  lw         $s1, 0x14($sp)
/* ABB74 800BB374 1000B08F */  lw         $s0, 0x10($sp)
/* ABB78 800BB378 0800E003 */  jr         $ra
/* ABB7C 800BB37C 3000BD27 */   addiu     $sp, $sp, 0x30
