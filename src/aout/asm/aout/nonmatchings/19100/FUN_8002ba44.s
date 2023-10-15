.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel FUN_8002ba44
/* 1C244 8002BA44 D8FFBD27 */  addiu      $sp, $sp, -0x28
/* 1C248 8002BA48 0E80053C */  lui        $a1, 0x800e
/* 1C24C 8002BA4C 0E80023C */  lui        $v0, %hi(D_800D8D3C)
/* 1C250 8002BA50 3C8D438C */  lw         $v1, %lo(D_800D8D3C)($v0)
/* 1C254 8002BA54 FEFF0424 */  addiu      $a0, $zero, -2
/* 1C258 8002BA58 1800B2AF */  sw         $s2, 0x18($sp)
/* 1C25C 8002BA5C 21904000 */  addu       $s2, $v0, $zero
/* 1C260 8002BA60 2400BFAF */  sw         $ra, 0x24($sp)
/* 1C264 8002BA64 2000B4AF */  sw         $s4, 0x20($sp)
/* 1C268 8002BA68 1C00B3AF */  sw         $s3, 0x1c($sp)
/* 1C26C 8002BA6C 1400B1AF */  sw         $s1, 0x14($sp)
/* 1C270 8002BA70 24186400 */  and        $v1, $v1, $a0
/* 1C274 8002BA74 0B006010 */  beqz       $v1, .L8002BAA4
/* 1C278 8002BA78 1000B0AF */   sw        $s0, 0x10($sp)
/* 1C27C 8002BA7C 408DA28C */  lw         $v0, -0x72c0($a1)
/* 1C280 8002BA80 00000000 */  nop
/* 1C284 8002BA84 01004224 */  addiu      $v0, $v0, 1
/* 1C288 8002BA88 408DA2AC */  sw         $v0, -0x72c0($a1)
/* 1C28C 8002BA8C 408DA38C */  lw         $v1, -0x72c0($a1)
/* 1C290 8002BA90 00000000 */  nop
/* 1C294 8002BA94 14006328 */  slti       $v1, $v1, 0x14
/* 1C298 8002BA98 1E006014 */  bnez       $v1, .L8002BB14
/* 1C29C 8002BA9C FFFF0224 */   addiu     $v0, $zero, -1
/* 1C2A0 8002BAA0 3C8D40AE */  sw         $zero, -0x72c4($s2)
.L8002BAA4:
/* 1C2A4 8002BAA4 0E80023C */  lui        $v0, %hi(D_800D8D38)
/* 1C2A8 8002BAA8 408DA0AC */  sw         $zero, -0x72c0($a1)
/* 1C2AC 8002BAAC 388D518C */  lw         $s1, %lo(D_800D8D38)($v0)
/* 1C2B0 8002BAB0 388D40AC */  sw         $zero, -0x72c8($v0)
/* 1C2B4 8002BAB4 03002016 */  bnez       $s1, .L8002BAC4
/* 1C2B8 8002BAB8 21800000 */   addu      $s0, $zero, $zero
/* 1C2BC 8002BABC C5AE0008 */  j          .L8002BB14
/* 1C2C0 8002BAC0 21100000 */   addu      $v0, $zero, $zero
.L8002BAC4:
/* 1C2C4 8002BAC4 01001424 */  addiu      $s4, $zero, 1
/* 1C2C8 8002BAC8 3C8D428E */  lw         $v0, -0x72c4($s2)
/* 1C2CC 8002BACC 1580133C */  lui        $s3, 0x8015
/* 1C2D0 8002BAD0 01004234 */  ori        $v0, $v0, 1
/* 1C2D4 8002BAD4 3C8D42AE */  sw         $v0, -0x72c4($s2)
/* 1C2D8 8002BAD8 04101402 */  sllv       $v0, $s4, $s0
.L8002BADC:
/* 1C2DC 8002BADC 24102202 */  and        $v0, $s1, $v0
/* 1C2E0 8002BAE0 03004010 */  beqz       $v0, .L8002BAF0
/* 1C2E4 8002BAE4 50BA6426 */   addiu     $a0, $s3, -0x45b0
/* 1C2E8 8002BAE8 EDAC000C */  jal        FUN_8002b3b4
/* 1C2EC 8002BAEC 21280002 */   addu      $a1, $s0, $zero
.L8002BAF0:
/* 1C2F0 8002BAF0 01001026 */  addiu      $s0, $s0, 1
/* 1C2F4 8002BAF4 0500022A */  slti       $v0, $s0, 5
/* 1C2F8 8002BAF8 F8FF4014 */  bnez       $v0, .L8002BADC
/* 1C2FC 8002BAFC 04101402 */   sllv      $v0, $s4, $s0
/* 1C300 8002BB00 21102002 */  addu       $v0, $s1, $zero
/* 1C304 8002BB04 3C8D438E */  lw         $v1, -0x72c4($s2)
/* 1C308 8002BB08 FEFF0424 */  addiu      $a0, $zero, -2
/* 1C30C 8002BB0C 24186400 */  and        $v1, $v1, $a0
/* 1C310 8002BB10 3C8D43AE */  sw         $v1, -0x72c4($s2)
.L8002BB14:
/* 1C314 8002BB14 2400BF8F */  lw         $ra, 0x24($sp)
/* 1C318 8002BB18 2000B48F */  lw         $s4, 0x20($sp)
/* 1C31C 8002BB1C 1C00B38F */  lw         $s3, 0x1c($sp)
/* 1C320 8002BB20 1800B28F */  lw         $s2, 0x18($sp)
/* 1C324 8002BB24 1400B18F */  lw         $s1, 0x14($sp)
/* 1C328 8002BB28 1000B08F */  lw         $s0, 0x10($sp)
/* 1C32C 8002BB2C 0800E003 */  jr         $ra
/* 1C330 8002BB30 2800BD27 */   addiu     $sp, $sp, 0x28
